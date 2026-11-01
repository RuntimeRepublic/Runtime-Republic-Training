#!/usr/bin/env bash
# Proves scripts/check-lessons.sh catches every edge case in CONTROL 05 §7.
# Builds throwaway lessons in a temp folder; touches nothing in the repository.
#
# Usage: scripts/test-check-lessons.sh

set -uo pipefail

root="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
check="$root/scripts/check-lessons.sh"
tmp="$(mktemp -d)"
trap 'rm -rf "$tmp"' EXIT

passed=0
failed=0

# write_lesson <folder> <status> <image> <podcast> <approved> [omit-key]
write_lesson() {
  local d="$tmp/Courses/test-course/$1"
  mkdir -p "$d"
  {
    echo "# Test lesson"
    echo
    if [[ "$3" != "Pending" && "${6:-}" != "NoEmbed" ]]; then echo "![Test lesson](../../../Images/test-course/$3)"; echo; fi
    echo "Course: Test Course"
    echo "Lesson: 01 of 01"
    [[ "${6:-}" != "Status" ]] && echo "Status: $2"
    echo "Runtime: about 6 minutes"
    echo "Image: $3"
    echo "Podcast: $4"
    echo "Sources: None"
    echo "Approved by: $5"
    echo "License: CC BY 4.0"
    echo
    echo "---"
    echo
    echo "Lesson text."
  } > "$d/lesson.md"
}

# expect <pass|fail> <name>
expect() {
  if "$check" "$tmp/Courses" > "$tmp/out.txt" 2>&1; then result=pass; else result=fail; fi
  if [[ "$result" == "$1" ]]; then
    echo "ok    $2"
    passed=$((passed + 1))
  else
    echo "FAIL  $2 (expected $1, got $result)"
    sed 's/^/      /' "$tmp/out.txt"
    failed=$((failed + 1))
  fi
  rm -rf "$tmp/Courses" "$tmp/Images"
}

write_lesson 01-draft Draft Pending "Not recorded" "—"
expect pass test_draftWithPendingImage_passes

write_lesson 01-approved Approved image.png "Not recorded" "Human Engineer, 2026-10-30"
mkdir -p "$tmp/Images/test-course" && touch "$tmp/Images/test-course/image.png"
expect pass test_approvedWithImageAndApprover_passes

write_lesson 01-narrated Narrated image.png "Recorded 2026-11-01" "Human Engineer, 2026-10-30"
mkdir -p "$tmp/Images/test-course" && touch "$tmp/Images/test-course/image.png"
expect pass test_narratedWithRecording_passes

write_lesson 01-no-status Draft Pending "Not recorded" "—" Status
expect fail test_missingHeaderLine_fails

write_lesson 01-bad-status Finished Pending "Not recorded" "—"
expect fail test_unknownStatus_fails

write_lesson 01-no-image Approved Pending "Not recorded" "Human Engineer, 2026-10-30"
expect fail test_approvedWithPendingImage_fails

write_lesson 01-missing-file Approved image.png "Not recorded" "Human Engineer, 2026-10-30"
expect fail test_approvedWithImageFileMissing_fails

write_lesson 01-no-approver Approved image.png "Not recorded" "—"
mkdir -p "$tmp/Images/test-course" && touch "$tmp/Images/test-course/image.png"
expect fail test_approvedWithoutApprover_fails

write_lesson 01-not-recorded Published image.png "Not recorded" "Human Engineer, 2026-10-30"
mkdir -p "$tmp/Images/test-course" && touch "$tmp/Images/test-course/image.png"
expect fail test_publishedWithoutRecording_fails

write_lesson Bad_Folder Draft Pending "Not recorded" "—"
expect fail test_badFolderName_fails

write_lesson 01-not-shown Draft image.png "Not recorded" "—" NoEmbed
mkdir -p "$tmp/Images/test-course" && touch "$tmp/Images/test-course/image.png"
expect fail test_imageNamedButNotShown_fails

write_lesson 01-shown Draft image.png "Not recorded" "—"
mkdir -p "$tmp/Images/test-course" && touch "$tmp/Images/test-course/image.png"
expect pass test_draftWithImageShown_passes

write_lesson 01-image-in-folder Approved image.png "Not recorded" "Human Engineer, 2026-10-30"
mkdir -p "$tmp/Images/test-course" && touch "$tmp/Images/test-course/image.png"
touch "$tmp/Courses/test-course/01-image-in-folder/image.png"
expect fail test_imageLeftInLessonFolder_fails

write_lesson 01-old-link Approved image.png "Not recorded" "Human Engineer, 2026-10-30"
mkdir -p "$tmp/Images/test-course" && touch "$tmp/Images/test-course/image.png"
sed -i.bak 's#](../../../Images/test-course/image.png)#](image.png)#' "$tmp/Courses/test-course/01-old-link/lesson.md" && rm -f "$tmp/Courses/test-course/01-old-link/lesson.md.bak"
expect fail test_headerLinksOldLocation_fails

echo
echo "$passed passed, $failed failed."
[[ $failed -eq 0 ]]
