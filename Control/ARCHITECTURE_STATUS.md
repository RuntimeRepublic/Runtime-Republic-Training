# ARCHITECTURE STATUS — Runtime-Republic Training

PHASE:
Phase 0 — Foundation (started 2026-10-30)

DIRECTION:
A training repository. It develops people's understanding of the AGCL, NBBF and NBEF
frameworks, AI and GitHub, and will create software that bridges the gaps so people can
work together asynchronously online to achieve the ideals of the AGCL (Human Engineer,
2026-10-30). Lessons are essays first, then narrated word for word as podcasts. Training
material teaches the frameworks but never sets their rules; the canonical control-document
repositories do.

CURRENT PRIORITIES:
- Human Engineer reviews and approves CONTROL 01, 02, 04 and 05 (all Draft)
- Supporting images: 5 Claude for Citizens, 5 Claude for Office Holders and 5 GitHub for Everyone lessons still pending
- Human Engineer sets lesson lists for the planned courses
- Human Engineer reviews CONTROL 06 (Draft) and fills its markers: voice, publishing route, outro, site embedding, MP3 move threshold

COMPLETED:
- Repository created from Control-Engineering-Template
- Project initialized; CLAUDE.md adapted for a training repository
- CONTROL 01, 02, 04 drafted; CONTROL 05 Lesson Standard added
- CONTROL 03, 10, 15, 16 scoped to Phase 3 (software)
- Claude for Citizens course: 5 lessons in Draft, for citizens joining from Facebook or X
- Claude for Office Holders course: 5 lessons in Draft, nonpartisan, for state and local elected officials
- Claude for Office Holders bonus Lesson 06 (GitHub within the Open Meetings Act), Approved by the Human Engineer (2026-10-30), with image
- Building With Claude course moved to private repo Lean-Office-Pro-LLC (business and developer content)
- Course pages for AGCL (NBLF), NBBF, NBEF (planned)
- GitHub for Everyone course: 7 lessons in Draft, all 7 with images, brought over from PR #1 (closed)
- SOURCES.md and official CC BY 4.0 LICENSE brought over from PR #1
- scripts/check-lessons.sh with 10 tests, run in CI
- Learner README and CC BY 4.0 license notice
- The One-Hour Rule course: 5 lessons Approved by the Human Engineer (2026-10-30), with images (Kansas bill transparency and KOMA)
- Reading the Draft course (Long length): Lessons 01–02 Approved by the Human Engineer (2026-10-30), with images
- Claude and GitHub and ChatGPT and GitHub courses (Short length): 3 lessons each in Review, images pending
- Phase 2 groundwork: CONTROL 06 Audio & Podcast Standard drafted; CONTROL 02 and 04 updated; audio.config.yml and pronunciations.yml added; .gitignore allows lesson.mp3 only

NEXT:
- Approve the Phase 0 CONTROL documents (exit gate, CONTROL 02 §2)
- Phase 1: image standards; first framework course lessons
- Phase 2 groundwork: narration pipeline (src/, tests/, workflow) on a feature branch under CONTROL 03, 10, 15, 16 and 06; first test lesson One-Hour Rule 01

DECISIONS LOG:

| Date | Decision | Recorded in |
|---|---|---|
| 2026-10-30 | Project started from Control-Engineering-Template | — |
| 2026-10-30 | Repository is for training; essays and podcasts are delivery formats | CONTROL 01 |
| 2026-10-30 | Mission: frameworks, AI, GitHub, and bridge software for asynchronous collaboration toward AGCL ideals | CONTROL 01 §2 |
| 2026-10-30 | Training material is not authority; canonical control repositories win | CONTROL 01 §6 |
| 2026-10-30 | Human Engineer is sole lesson approver (assumed; confirm) | CONTROL 05 §4 |
| 2026-10-30 | Image standards deferred to Phase 1 | CONTROL 05 §5 |
| 2026-10-30 | Three lesson lengths per series: Short (about 3 min), Standard (5–7 min), Long (10–12 min) | CONTROL 05 §6 v1.2 |
| 2026-10-30 | Software license not yet chosen; decide before Phase 3 | README.md (License) |
| 2026-10-30 | Building With Claude moved to private repo Lean-Office-Pro-LLC; Claude for Citizens added as the public citizen version | PR #5 |
| 2026-10-30 | PR #1 (essay setup) superseded by the merged course structure; its essays, images, LICENSE and SOURCES.md moved in, PR #1 closed | PR #3 |
| 2026-10-31 | Narrator is a GitHub Action pipeline in this repository (Republic Radio), replacing Essay-Audio-Runtime; Essay-Audio-Runtime parked | CONTROL 02 §4, CONTROL 06 |
| 2026-10-31 | Phase 2 groundwork may be prepared while Phases 0–1 finish; no narration runs on main before the Phase 1 exit gate | CONTROL 02 §4 |
| 2026-10-31 | Each narration arrives as a pull request; merging it is the Human Engineer's acceptance | CONTROL 06 §3.6 |
| 2026-11-04 | Training is nonpartisan: any team may declare a party; Runtime Republic trains any team that supports the AGCL control documents as directional goals; paid software and consulting belong to Lean Office Pro LLC | CONTROL 07 (Draft) |

VERIFICATION LOG:

| Date | Build | Check | Result |
|---|---|---|---|
| 2026-10-30 | Phase 0 PR | scripts/test-check-lessons.sh | 10 passed, 0 failed |
| 2026-10-30 | Phase 0 PR | scripts/check-lessons.sh | 5 lessons, 0 errors |
| 2026-10-30 | Phase 0 PR | scripts/check-controls.sh | 0 errors; warnings only in Phase 3 documents |
| 2026-10-30 | PR #3 | scripts/check-lessons.sh | 12 lessons, 0 errors |
| 2026-10-30 | PR #5 | scripts/check-lessons.sh | 12 lessons, 0 errors |
| 2026-10-30 | PR #6 | scripts/check-lessons.sh | 17 lessons, 0 errors |
| 2026-10-30 | One-Hour Rule PR | scripts/check-lessons.sh | 22 lessons, 0 errors |
| 2026-10-31 | Republic Radio groundwork PR | scripts/check-controls.sh | 0 errors; warnings are unfilled markers in CONTROL 03, 06, 10, 15, 16 |
| 2026-10-31 | Republic Radio groundwork PR | scripts/check-lessons.sh | 31 lessons, 0 errors |
| 2026-10-31 | Republic Radio groundwork PR | scripts/test-check-lessons.sh | 12 passed, 0 failed |
