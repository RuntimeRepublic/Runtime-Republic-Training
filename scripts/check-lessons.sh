#!/usr/bin/env bash
# Checks every lesson against CONTROL 05 (header, status rules, image shown) and
# CONTROL 04 (folder naming, images kept in Images/<course>/ beside Courses/).
#
# Usage: scripts/check-lessons.sh [courses-dir]
# Exit 0 when every lesson passes, 1 when any check fails.

set -uo pipefail

dir="${1:-Courses}"
images_root="$(dirname "$dir")/Images"
errors=0
count=0

fail() {
  echo "ERROR: $1"
  errors=$((errors + 1))
}

# Value of a header line, from the block above the first '---'.
field() {
  awk -v key="$1" '
    /^---[[:space:]]*$/ { exit }
    index($0, key ": ") == 1 { sub("^" key ": ", ""); sub(/\r$/, ""); print; exit }
  ' "$2"
}

if [[ ! -d "$dir" ]]; then
  echo "No $dir folder; nothing to check."
  exit 0
fi

shopt -s nullglob
for lesson in "$dir"/*/*/lesson.md; do
  count=$((count + 1))
  folder="$(basename "$(dirname "$lesson")")"
  course="$(basename "$(dirname "$(dirname "$lesson")")")"
  rel="${lesson#./}"

  # CONTROL 04 §2: lesson folders hold text only; images live in Images/<course>/.
  for stray in "$(dirname "$lesson")"/*.{png,jpg,jpeg,gif,webp,svg,PNG,JPG,JPEG}; do
    fail "$rel — image $(basename "$stray") belongs in Images/$course/ (run scripts/move-lesson-images.ps1)"
  done

  if [[ ! "$folder" =~ ^[0-9]{2}-[a-z0-9]+(-[a-z0-9]+)*$ ]]; then
    fail "$rel — folder must be NN-lowercase-title (CONTROL 04 §3)"
  fi

  if ! head -n 1 "$lesson" | grep -q '^# '; then
    fail "$rel — first line must be '# <Lesson title>'"
  fi

  missing=0
  for key in Course Lesson Status Runtime Image Podcast Sources "Approved by" License; do
    if [[ -z "$(field "$key" "$lesson")" ]]; then
      fail "$rel — missing header line '$key:'"
      missing=1
    fi
  done
  [[ $missing -eq 1 ]] && continue

  status="$(field Status "$lesson")"
  image="$(field Image "$lesson")"
  podcast="$(field Podcast "$lesson")"
  approved="$(field "Approved by" "$lesson")"

  # CONTROL 05 §5: once an image is named, the header must show it from Images/<course>/.
  link="../../../Images/$course/$image"
  if [[ "$image" != "Pending" ]]; then
    if ! awk -v img="$link" '/^---[[:space:]]*$/ { exit } index($0, "![") == 1 && index($0, "](" img ")") > 0 { found = 1 } END { exit !found }' "$lesson"; then
      fail "$rel — header must show the image with a line like ![Title]($link) (CONTROL 05 §5)"
    fi
  fi

  case "$status" in
    Draft|Review) continue ;;
    Approved|Narrated|Published) ;;
    *) fail "$rel — Status '$status' is not one of Draft, Review, Approved, Narrated, Published"; continue ;;
  esac

  if [[ "$image" == "Pending" ]]; then
    fail "$rel — Status $status needs a supporting image (CONTROL 05 §5)"
  elif [[ ! -f "$images_root/$course/$image" ]]; then
    fail "$rel — Image '$image' is not in Images/$course/"
  fi

  if [[ "$approved" == "—" || "$approved" == "-" ]]; then
    fail "$rel — Status $status needs 'Approved by: <name>, <date>'"
  fi

  if [[ "$status" != "Approved" && "$podcast" == "Not recorded" ]]; then
    fail "$rel — Status $status needs 'Podcast: Recorded <date>'"
  fi
done
shopt -u nullglob

echo "Checked $count lesson(s): $errors error(s)."
[[ $errors -eq 0 ]]
