CONTROL 04 — Repository Structure & Code Organization

Version: 1.2
Date: 2026-11-01
Status: Draft — pending Human Engineer approval
Change: 1.2 moves lesson images to `Images/<course>/`, so lesson folders hold text only and a whole course folder fits in a Claude Project; `scripts/move-lesson-images.ps1` moves them. 1.1 adds the narration pipeline, audio configuration, `lesson.mp3` and the GitHub Pages folder (CONTROL 06).
Project: Runtime-Republic Training

---

# 1. Structure

```
Runtime-Republic Training/
│
├── README.md                 Front door for learners: courses and where to start
├── LICENSE                   CC BY 4.0 legal text for all training material
├── SOURCES.md                Links behind the dated and numeric facts in lessons
├── CLAUDE.md                 AI assistant rules (CONTROL 08)
├── audio.config.yml          Narration voice, model and format (CONTROL 06)
├── pronunciations.yml        Audio-only spelling swaps (CONTROL 06 §3.2)
│
├── Courses/
│   ├── README.md             Course catalog
│   └── <course>/
│       ├── README.md         Course page: purpose, lesson list, source repositories
│       └── <NN-lesson-name>/
│           ├── lesson.md     The essay, with the CONTROL 05 header
│           └── lesson.mp3    Narration, once merged (CONTROL 06 §3.5)
│
├── Images/
│   └── <course>/
│       └── <image file>      Supporting image for a lesson (CONTROL 05 §5)
│
├── src/                      Software, layered per CONTROL 10: the narration pipeline
│                             from Phase 2, bridge software from Phase 3
├── tests/                    Tests for everything in src/ (CONTROL 15)
├── docs/                     GitHub Pages: player pages and podcast.xml (CONTROL 06 §3.7)
│
├── Control/                  CONTROL documents + ARCHITECTURE_STATUS.md
├── scripts/                  init-project.sh, check-controls.sh, check-lessons.sh,
│                             move-lesson-images.ps1
└── .github/                  CI and narration workflows, PR template
```

`src/`, `tests/` and `docs/` do not exist until the narration pipeline is added (CONTROL 02 Phase 2).

---

# 2. Placement Rules

| If the file… | It goes in… |
|---|---|
| teaches one topic | `Courses/<course>/<NN-lesson-name>/lesson.md` |
| illustrates a lesson | `Images/<course>/`, never the lesson folder |
| narrates a lesson | `lesson.mp3` in the same lesson folder |
| configures narration | `audio.config.yml` or `pronunciations.yml` at the root |
| is a player page or the podcast feed | `docs/` |
| describes a course | `Courses/<course>/README.md` |
| sets a rule for this repository | `Control/` |
| checks the repository | `scripts/` |
| is software (narration pipeline, bridge software) | `src/`, by layer per CONTROL 10 |

---

# 3. Naming Rules

• Course folders: lowercase words joined by hyphens, e.g. `claude-for-citizens`.
• Lesson folders: two-digit order number, then lowercase hyphenated title, e.g. `01-from-turing-to-claude`.
• The order number is the lesson's place in the course and never changes once a lesson is approved.

---

# 4. Control Folder Rules

• File name: `CONTROL NN — Title.md`, two-digit number, em dash.
• Every document starts with the header block (title, Version, Date, Status)
  and ends with `END OF DOCUMENT`.
• Every document is listed in CONTROL 00.
• New documents start from `Control/_TEMPLATE — New CONTROL Document.md`.

---

# 5. Never Committed

Secrets (keys, certificates, `.env`, service config files with credentials),
build output, IDE user files, and every audio file except a lesson's own
`lesson.mp3` (CONTROL 06 §3.5). See `.gitignore` and CONTROL 16.

---

END OF DOCUMENT
