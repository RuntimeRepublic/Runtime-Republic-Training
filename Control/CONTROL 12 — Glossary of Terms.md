CONTROL 12 — Glossary of Terms

Version: 1.0
Date: 2026-11-03
Status: Draft — pending Human Engineer approval
Project: Runtime-Republic Training

---

# 1. Purpose

Defines every term this repository owns, in one place, so lessons, CONTROL documents
and the RuntimeRepublic master glossary all use the same meaning.

---

# 2. Core Principle

**One term, one owner, one definition.** Each term is defined only in the repository
that owns it. Other repositories, including the RuntimeRepublic master list, point to
that definition and never restate it differently.

---

# 3. Model / Rules

## 3.1 Rules

1. Every term this repository introduces is listed in §3.2.
2. A term owned by another repository is listed only with its name, its expansion and a
   link to its owner. Its meaning is never written here (CONTROL 01 §6).
3. Framework terms (AGCL, NBBF, NBEF and their parts) are defined only in their canonical
   repositories. This repository never adds to or reinterprets them.
4. Every row uses the same three columns: Term, Meaning, Owner. The RuntimeRepublic
   master list is built from these rows, so the format does not change.
5. A new term is added in the same commit as the first lesson or CONTROL document that
   uses it (CONTROL 14).
6. Other sections that once held a glossary (CONTROL 01 §7) point here instead.

## 3.2 Terms owned by this repository

| Term | Meaning | Owner |
|---|---|---|
| Course | An ordered set of lessons on one subject. | Runtime-Republic-Training |
| Lesson | One topic, delivered as an essay and, once approved, a podcast episode. | Runtime-Republic-Training |
| Training material | Lessons, essays and podcasts. Material that teaches but never sets rules; the canonical control document wins any disagreement (CONTROL 01 §6). | Runtime-Republic-Training |
| Draft | Lesson status: being written. Anyone, including AI, may set it (CONTROL 05 §4). | Runtime-Republic-Training |
| Review | Lesson status: ready for the Human Engineer to read. Anyone, including AI, may set it. | Runtime-Republic-Training |
| Approved | Lesson status: text is final. Only the Human Engineer may set it; needs an image and `Approved by`. | Runtime-Republic-Training |
| Narrated | Lesson status: podcast recorded from the approved text. Human Engineer only. | Runtime-Republic-Training |
| Published | Lesson status: released on RuntimeRepublic.com and BlueprintLiberty.com. Human Engineer only. | Runtime-Republic-Training |
| Lesson header | The block of fields at the top of every `lesson.md`, ending at the first `---` line (CONTROL 05 §3). | Runtime-Republic-Training |
| Supporting image | The picture every lesson needs before it can be Approved, kept in `Images/<course>/` (CONTROL 05 §5). | Runtime-Republic-Training |
| Short / Standard / Long | The three lesson lengths: about 3 minutes, 5–7 minutes, 10–12 minutes (CONTROL 05 §6). | Runtime-Republic-Training |
| Republic Radio | The audio arm of Runtime Republic: the narration pipeline in this repository that turns Approved lessons into podcast episodes (CONTROL 06). | Runtime-Republic-Training |
| Narration pipeline | The GitHub Action and Python script that narrate Approved lessons, using ElevenLabs as a voice only (CONTROL 02 §4, CONTROL 06). | Runtime-Republic-Training |
| Spoken text | The H1 title, then everything after the header's closing `---`, up to the series-navigation marker (CONTROL 06 §3.1). | Runtime-Republic-Training |
| Pronunciation swap | An exact, case-sensitive, audio-only spelling change listed in `pronunciations.yml`, applied in memory just before narration. `lesson.md` is never changed (CONTROL 06 §3.2). | Runtime-Republic-Training |
| Word-for-word check | The transcript of a narration compared word by word with the spoken text. Below `min_word_match` (default 0.98), the run fails (CONTROL 06 §3.4). | Runtime-Republic-Training |
| Text fingerprint | The SHA-256 of a lesson's spoken text, stored in its audio block. A lesson is re-narrated only when it changes (CONTROL 06 §3.5). | Runtime-Republic-Training |
| Narration pull request | The pull request that delivers each narration. Merging it is the Human Engineer's acceptance; closing it rejects the narration (CONTROL 06 §3.6). | Runtime-Republic-Training |

## 3.3 Terms owned elsewhere (name and link only)

| Term | Meaning | Owner |
|---|---|---|
| AGCL | American Gold Contract for Liberty. Taught as NBLF. | [AGCL-Control-Documents](https://github.com/jhodges07/AGCL-Control-Documents) |
| NBLF | Node-Based Liberty Framework, the course name for AGCL topics. | [AGCL-Control-Documents](https://github.com/jhodges07/AGCL-Control-Documents) |
| NBBF | Node-Based Budget Framework. | [NBBF-Control-Documents](https://github.com/jhodges07/NBBF-Control-Documents) |
| NBEF | Node-Based Education Framework. | [NBEF-Control-Documents](https://github.com/jhodges07/NBEF-Control-Documents) |
| One-Hour Rule | See the owner's glossary. | {{FILL: Legislative-Manager link, once its CONTROL 12 exists}} |
| Human Engineer | See the master glossary. | {{FILL: RuntimeRepublic link, once the master list exists}} |
| CONTROL document | See the master glossary. | {{FILL: RuntimeRepublic link, once the master list exists}} |
| Agentic Civics (HSAC) | See the master glossary. | {{FILL: RuntimeRepublic link, once the master list exists}} |
| Constitutional republic | See the master glossary. | {{FILL: RuntimeRepublic link, once the master list exists}} |

---

# 4. Edge Cases (must be tested)

| Case | Handling |
|---|---|
| A term is defined in two repositories | The owner's definition wins; the other repository replaces its row with a link |
| A row is missing a column | The master-list build fails and names the row |
| A lesson uses a term this repository owns but §3.2 lacks | Added in the same commit as the lesson |
| A framework term appears in §3.2 | Moved to §3.3 as a name and link only |

---

# 5. Enforcement

• `scripts/check-controls.sh` requires this document to be listed in CONTROL 00.
• The RuntimeRepublic master list is built from §3.2 of every repository's CONTROL 12.
  {{FILL: name and location of the build script, once the Human Engineer approves it}}
• Review: the Human Engineer merges every change to this document (CONTROL 08 §4).

---

# 6. Relationship to Other Controls

• CONTROL 01 — Project Goal & Scope (§6 authority of training material; §7 now points here)
• CONTROL 05 — Lesson Standard & Approval Workflow
• CONTROL 06 — Audio & Podcast Standard
• CONTROL 10 — Architectural Separation & Logic Sovereignty (no duplicate concepts)

---

# 7. Revision Policy

Changes require Human Engineer approval and a version bump with a one-line
`Change:` note under the header.

---

END OF DOCUMENT
