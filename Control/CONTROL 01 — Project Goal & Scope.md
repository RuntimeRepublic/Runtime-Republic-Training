CONTROL 01 — Project Goal & Scope

Version: 1.1
Date: 2026-11-03
Status: Draft — pending Human Engineer approval
Change: 1.1 moves the glossary (§7) to CONTROL 12 — Glossary of Terms.
Project: Runtime-Republic Training

---

# 1. Purpose

This document defines **what Runtime-Republic Training is, what it must achieve, and what it must not do**.

Every other CONTROL document serves the goals defined here.

---

# 2. Mission

Develop people's understanding of the AGCL, NBBF and NBEF frameworks, of AI and of GitHub,
and create software solutions that bridge the gaps, so people can easily work together
asynchronously online to achieve the ideals of the AGCL.

---

# 3. Goals

Each goal names the CONTROL document that governs it.

## G1 — Framework understanding
Learners can explain the AGCL (taught as the Node-Based Liberty Framework, NBLF),
the Node-Based Budget Framework (NBBF) and the Node-Based Education Framework (NBEF),
and find the canonical control documents behind each lesson. See CONTROL 05.

## G2 — AI and GitHub skills
Learners can use AI assistants such as Claude under human control, and use GitHub
(repositories, issues, branches, pull requests) to contribute to shared work. See CONTROL 05.

## G3 — Asynchronous collaboration
Learners can work together online without meeting at the same time: written decisions,
clean handoffs, and changes proposed and approved through pull requests. See CONTROL 05.

## G4 — Lessons in more than one format
Each lesson is written first as an essay, then narrated exactly as approved to become a
podcast episode. See CONTROL 05.

## G5 — Bridge software
Software that removes the gaps people hit when collaborating asynchronously. Built only
after the curriculum foundation is in place (CONTROL 02, Phase 3), under CONTROL 03, 10, 15 and 16.

## G6 — Engineering integrity
All material is documented, versioned, reviewed and traceable.
See CONTROL 08, 11 and 14.

---

# 4. Success Criteria (first release)

1. A learner opening the README can see every course and where to start.
2. Every lesson carries the CONTROL 05 header and passes `scripts/check-lessons.sh`.
3. Every approved lesson has its supporting image and links to its source control documents.
4. At least one full course is approved and ready for narration.

---

# 5. Out of Scope

• Setting or changing framework rules. Canonical AGCL, NBBF and NBEF rules live in their own
  repositories; this repository only teaches them.
• Storing finished audio files until the podcast phase defines where they live (CONTROL 02, Phase 2).
• Software until Phase 3.

---

# 6. Authority of Training Material

Lessons, essays and podcasts are training material, not authority. Where a lesson and a
canonical control document disagree, the control document wins and the lesson is corrected.

| Framework | Canonical source |
|---|---|
| AGCL (NBLF) | https://github.com/jhodges07/AGCL-Control-Documents |
| NBBF | https://github.com/jhodges07/NBBF-Control-Documents |
| NBEF | https://github.com/jhodges07/NBEF-Control-Documents |

---

# 7. Glossary

All terms are defined in CONTROL 12 — Glossary of Terms.

------|---------|
| AGCL | American Gold Contract for Liberty |
| NBLF | Node-Based Liberty Framework — the course name for AGCL topics |
| NBBF | Node-Based Budget Framework |
| NBEF | Node-Based Education Framework |
| Course | An ordered set of lessons on one subject |
| Lesson | One topic, delivered as an essay and, once approved, a podcast episode |
| Human Engineer | The person with final approval authority over this repository |

---

# 8. Relationship to Other Controls

• CONTROL 02 — Development Phase Plan
• CONTROL 05 — Lesson Standard & Approval Workflow

---

# 9. Revision Policy

Changes to goals require explicit Human Engineer approval and a version bump.

---

END OF DOCUMENT
