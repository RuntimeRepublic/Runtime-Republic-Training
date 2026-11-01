<#
.SYNOPSIS
    Moves lesson images out of the lesson folders into Images/<course>/ and points
    each lesson's header image line at the new location (CONTROL 04 §2, CONTROL 05 §5).

.DESCRIPTION
    Lesson folders stay text-only, so a whole course folder (Courses/<course>/) is small
    enough to add to a Claude Project in one click. The image still shows at the top of
    every lesson on GitHub, through a relative link:

        ![<Lesson title>](../../../Images/<course>/<image file>)

    The `Image:` header line keeps the bare file name.

    Safe to run any time: lessons already moved are left alone. Without -Apply it only
    reports what it would do. Uses `git mv` for tracked files so history follows them.

.PARAMETER Apply
    Make the changes. Without it, nothing is touched (dry run).

.PARAMETER RepoRoot
    Repository root. Defaults to the folder above this script.

.EXAMPLE
    .\scripts\move-lesson-images.ps1            # dry run: show what would change
    .\scripts\move-lesson-images.ps1 -Apply     # move images and update lessons
#>
[CmdletBinding()]
param(
    [switch]$Apply,
    [string]$RepoRoot = (Split-Path -Parent $PSScriptRoot)
)

Set-StrictMode -Version 2.0
$ErrorActionPreference = 'Stop'

$imageExtensions = @('.png', '.jpg', '.jpeg', '.gif', '.webp', '.svg')
$coursesDir = Join-Path $RepoRoot 'Courses'
$imagesDir  = Join-Path $RepoRoot 'Images'
$utf8NoBom  = New-Object System.Text.UTF8Encoding($false)

if (-not (Test-Path -LiteralPath $coursesDir -PathType Container)) {
    Write-Error "No Courses folder under $RepoRoot. Run from the repository, or pass -RepoRoot."
}

$useGit = $false
if (Get-Command git -ErrorAction SilentlyContinue) {
    & git -C $RepoRoot rev-parse --is-inside-work-tree *> $null
    $useGit = ($LASTEXITCODE -eq 0)
}

function Test-Tracked([string]$path) {
    if (-not $useGit) { return $false }
    & git -C $RepoRoot ls-files --error-unmatch -- $path *> $null
    return ($LASTEXITCODE -eq 0)
}

function Move-ImageFile([string]$from, [string]$to) {
    $targetFolder = Split-Path -Parent $to
    if (-not (Test-Path -LiteralPath $targetFolder)) {
        New-Item -ItemType Directory -Path $targetFolder -Force | Out-Null
    }
    if (Test-Tracked $from) {
        & git -C $RepoRoot mv -- $from $to
        if ($LASTEXITCODE -ne 0) { throw "git mv failed: $from" }
    } else {
        Move-Item -LiteralPath $from -Destination $to
    }
}

$moved = 0; $relinked = 0; $problems = 0; $lessons = 0
$mode = 'DRY RUN'
if ($Apply) { $mode = 'APPLY' }
Write-Host "[$mode] Repository: $RepoRoot"

foreach ($lessonFile in Get-ChildItem -Path $coursesDir -Filter 'lesson.md' -Recurse -File) {
    $lessonDir = $lessonFile.Directory
    $course    = $lessonDir.Parent.Name
    # Only Courses/<course>/<NN-lesson>/lesson.md
    if ($lessonDir.Parent.Parent.FullName -ne (Get-Item -LiteralPath $coursesDir).FullName) { continue }
    $lessons++
    $rel = "Courses/$course/$($lessonDir.Name)/lesson.md"
    $courseImages = Join-Path $imagesDir $course

    # 1. Move every image file out of the lesson folder.
    $localImages = @(Get-ChildItem -LiteralPath $lessonDir.FullName -File |
        Where-Object { $imageExtensions -contains $_.Extension.ToLowerInvariant() })
    foreach ($img in $localImages) {
        $target = Join-Path $courseImages $img.Name
        if (Test-Path -LiteralPath $target) {
            Write-Warning "$rel - Images/$course/$($img.Name) already exists; left $($img.Name) in place. Rename one of them."
            $problems++
            continue
        }
        Write-Host "  move   Courses/$course/$($lessonDir.Name)/$($img.Name) -> Images/$course/$($img.Name)"
        if ($Apply) { Move-ImageFile $img.FullName $target }
        $moved++
    }

    # 2. Point the header image line at Images/<course>/.
    $text = [System.IO.File]::ReadAllText($lessonFile.FullName)
    $headerEnd = [regex]::Match($text, '(?m)^---[ \t]*\r?$')
    if (-not $headerEnd.Success) { Write-Warning "$rel - no '---' line ending the header; skipped"; $problems++; continue }
    $header = $text.Substring(0, $headerEnd.Index)

    $imageLine = [regex]::Match($header, '(?m)^Image:[ \t]*(.+?)[ \t]*\r?$')
    if (-not $imageLine.Success) { continue }
    $imageName = $imageLine.Groups[1].Value
    if ($imageName -eq 'Pending') { continue }
    # The Image: line holds a bare file name; drop any folder someone typed in.
    $imageName = ($imageName -split '[\\/]')[-1]

    $newLink = "../../../Images/$course/$imageName"
    $embed = '(?m)^(!\[[^\]]*\]\()(?:\./)?' + [regex]::Escape($imageName) + '(\))'
    if ([regex]::IsMatch($header, $embed)) {
        $newHeader = [regex]::Replace($header, $embed, { param($m) $m.Groups[1].Value + $newLink + $m.Groups[2].Value })
        Write-Host "  relink $rel -> $newLink"
        if ($Apply) {
            [System.IO.File]::WriteAllText($lessonFile.FullName, $newHeader + $text.Substring($headerEnd.Index), $utf8NoBom)
        }
        $relinked++
    }

    $willExist = (Test-Path -LiteralPath (Join-Path $courseImages $imageName)) -or
                 (@($localImages | Where-Object { $_.Name -eq $imageName }).Count -gt 0)
    if (-not $willExist) {
        Write-Warning "$rel - Image '$imageName' is not in the lesson folder or Images/$course/"
        $problems++
    }
}

Write-Host ""
Write-Host "[$mode] $lessons lesson(s): $moved image(s) to move, $relinked link(s) to update, $problems problem(s)."
if (-not $Apply -and ($moved + $relinked) -gt 0) {
    Write-Host "Run again with -Apply to make these changes."
}
if ($Apply -and ($moved + $relinked) -gt 0) {
    Write-Host "Next: run scripts/check-lessons.sh (Git Bash), review with 'git status', then commit."
}
if ($problems -gt 0) { exit 1 }
