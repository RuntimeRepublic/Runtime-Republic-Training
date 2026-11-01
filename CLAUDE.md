# Runtime-Republic Training — AI Assistant Rules

Read before any change. Full protocol: `Control/CONTROL 08 — AI Development Interaction Protocol.md`.

This is a training repository. Today it holds lessons (essays that become podcasts).
Software comes later (CONTROL 02, Phase 3).

## Start of every task
1. Read `Control/ARCHITECTURE_STATUS.md` and the CONTROL documents the task names.
2. Only modify the files specified. Do not modify any other files.
3. Do not edit CONTROL documents unless the task says so.

## Authority
- Training material teaches; it never sets rules. The canonical rules for AGCL, NBBF and
  NBEF live in their own control-document repositories (CONTROL 01 §6).
- Never invent framework doctrine. If a lesson needs a fact the source repositories do not
  state, stop and ask the Human Engineer.

## Lessons (CONTROL 05)
- One lesson per folder: `Courses/<course>/<NN-lesson-name>/lesson.md`.
- Every `lesson.md` starts with the CONTROL 05 header block.
- Only the Human Engineer sets `Status: Approved` or later. AI may draft and revise.
- A lesson cannot move past `Review` until its supporting image exists (CONTROL 05 §5).
- Images live in `Images/<course>/`, never in the lesson folder. Show it under the title with
  `![<title>](../../../Images/<course>/<image file>)`; `scripts/move-lesson-images.ps1` fixes strays (CONTROL 05 §5).
- Narration reads the approved text exactly; never rewrite an approved lesson for audio.
- Run `scripts/check-lessons.sh` after adding or editing any lesson.

## Commits (CONTROL 14)
- One logical change per commit: `[Layer] - [Action] - [Object]`
  e.g. `[Lesson] - Added - Claude for Citizens 01 From Turing to Your Kitchen Table`

## CONTROL documents (CONTROL 04 §3)
- New documents start from `Control/_TEMPLATE — New CONTROL Document.md`.
- Every document is listed in CONTROL 00.
- Run `scripts/check-controls.sh` after editing any CONTROL document.
- Replace `{{FILL: …}}` markers only with facts from the Human Engineer or the codebase — never invent them.

## Software (Phase 3 and later)
When code is added, CONTROL 03, 10, 15 and 16 apply in full: layered architecture,
`// Layer:` and `// Governed by:` file headers, and tests in the same commit as every behavior change.
