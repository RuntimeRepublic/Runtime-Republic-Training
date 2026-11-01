CONTROL 00 — Document Index & Architecture Navigation Map

Version: 1.0
Date: 2026-10-30
Status: Authoritative (System-Wide)
Project: Runtime-Republic Training

---

Every CONTROL document in `Control/` must be listed here
(`scripts/check-controls.sh` enforces this).

Numbering follows the UNBKE control set. Keep these numbers for these concepts
in every project; use free numbers (05–07, 09, 12–13, 17+) for project-specific models.

---

FOUNDATION

```
CONTROL 01 — Project Goal & Scope
CONTROL 02 — Development Phase Plan
```

STRUCTURE

```
CONTROL 03 — Coding Standards & Class Design Rules
CONTROL 04 — Repository Structure & Code Organization
```

OPERATIONAL TRUTH (project-specific models)

```
CONTROL 05 — Lesson Standard & Approval Workflow
CONTROL 06 — Audio & Podcast Standard
```

AI + EXECUTION

```
CONTROL 08 — AI Development Interaction Protocol
CONTROL 11 — Incremental Development & Single-Threaded Execution
CONTROL 14 — Source Control & Commit Governance
CONTROL 15 — Testing & Verification Standard
```

SYSTEM GOVERNANCE

```
CONTROL 10 — Architectural Separation & Logic Sovereignty
CONTROL 16 — Release, Security & Readiness
```

STATUS

```
ARCHITECTURE_STATUS.md — current phase, completed items, next items
```

==================================================================

SYSTEM AUTHORITY PIPELINE (default — adjust in CONTROL 10)

```
User Action
↓
Presentation (UI / API)        transport and display only
↓
Application (use cases)        orchestration
↓
Logic                          ALL business rules
↓
Domain                         pure models
```

Infrastructure implements the ports Application defines.

---

END OF DOCUMENT
