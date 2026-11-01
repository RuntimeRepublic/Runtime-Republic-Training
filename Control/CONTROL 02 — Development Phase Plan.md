CONTROL 02 — Development Phase Plan

Version: 1.1
Date: 2026-10-31
Status: Draft — pending Human Engineer approval
Change: 1.1 narrates with a GitHub Action pipeline under CONTROL 06 instead of Essay-Audio-Runtime, and lets Phase 2 groundwork be prepared while Phases 0–1 finish (Human Engineer, 2026-10-31).
Project: Runtime-Republic Training

---

# 1. Purpose

Defines the ordered phases of development. A phase may not begin until the
previous phase's exit gate is met (CONTROL 11: incremental, single-threaded execution).

---

# 2. Phase 0 — Foundation

Deliverables:

• CONTROL 00–02, 04, 05, 08, 11 and 14 filled in for a training repository
• Course and lesson structure per CONTROL 04
• `scripts/check-lessons.sh` and its test, run in CI on every push
• README that works as a front door for learners; CC BY 4.0 license notice

Exit gate: CI green; Human Engineer approves CONTROL 01, 02, 04 and 05.

---

# 3. Phase 1 — Curriculum

Deliverables:

• Course pages for GitHub for Everyone, Claude for Citizens, Claude for Office Holders, AGCL (NBLF), NBBF and NBEF
• Lessons drafted, illustrated and approved per CONTROL 05
• Image standards written (deferred by the Human Engineer until this phase)

Exit gate: at least one full course has every lesson at `Status: Approved`.

---

# 4. Phase 2 — Podcasts

Deliverables:

• Approved lessons narrated exactly as written by the narration pipeline: a GitHub
  Action and Python script in this repository, using ElevenLabs as a voice only.
  Replaces Essay-Audio-Runtime as the narrator (Human Engineer, 2026-10-31).
• CONTROL 06 — Audio & Podcast Standard: where episode files live, naming, the
  word-for-word check, and publishing to RuntimeRepublic.com and BlueprintLiberty.com
• CONTROL 03, 10, 15 and 16 applied to the narration pipeline (Python), since it is software

Groundwork (CONTROL 06, configuration files, the pipeline on a feature branch) may be
prepared while Phases 0 and 1 finish. No narration runs on `main` until the Phase 1
exit gate is met.

Exit gate: one full course published as podcast episodes.

---

# 5. Phase 3 — Bridge Software

Deliverables:

• A CONTROL document naming the first collaboration gap to close, chosen by the Human Engineer
• CONTROL 03, 10, 15 and 16 filled in for the chosen language
• Software built in layers, with tests, under those documents

Exit gate: defined in the Phase 3 CONTROL document.

---

# 6. Revision Policy

Phases may be reordered only by Human Engineer decision recorded in
`Control/ARCHITECTURE_STATUS.md`.

---

END OF DOCUMENT
