CONTROL 09 — Doctrinal Foundations Standard

Version: 1.0
Date: 2026-11-04
Status: Draft — pending Human Engineer approval
Project: Runtime-Republic Training

---

# 1. Purpose

Defines how Runtime Republic explains *why* the AGCL is built the way it is, through three
lenses: a first-principles review, a design rationale, and political theology. Lessons that
teach foundations follow this document.

---

# 2. Core Principle

**Controls decide; foundations explain.** A foundation never creates, changes or overrides
a CONTROL document or a canonical AGCL document. Where they differ, the control wins and
the foundation is corrected (CONTROL 01 §6; AGCL Doctrinal Foundations §I).

---

# 3. Model / Rules

## 3.1 The three lenses

| Lens | Question it answers | Audience | Form |
|---|---|---|---|
| First-principles review | What is the idea, in plain words? | Any citizen | One or two sentences per principle |
| Design rationale | Why this rule, and not another? | Engineers, office holders | One record per AGCL control or Point |
| Political theology | How does the rule relate to Scripture? | Readers who want the moral basis | Classified Scripture links |

Each foundation is recorded through all three lenses, so the same idea can be taught to a
citizen, defended to an engineer, and grounded for a believer without changing its meaning.

## 3.2 First-principles review

1. Each principle is one or two short sentences in plain words, readable aloud (CONTROL 05 §6).
2. Each principle names the AGCL control or Point it explains.
3. A principle never states anything the canonical AGCL documents do not support.

## 3.3 Design rationale

4. Each record answers five questions, in this order:
   a. **Problem:** what failure does the rule prevent?
   b. **Rule:** which AGCL control or Point, and what it requires.
   c. **Mechanism:** why this mechanism was chosen.
   d. **Alternative:** the obvious alternative and why it was rejected.
   e. **Check:** how anyone can tell the rule is working.
5. The rationale is recorded separately from the rule. Changing a rationale never changes
   the rule; changing the rule requires the canonical AGCL repository.

## 3.4 Political theology

6. Every Scripture link carries exactly one classification:

| Class | Meaning | Example wording |
|---|---|---|
| Command | The text directly commands this | "Scripture commands…" |
| Principle | The text states a principle the rule applies | "Scripture teaches…" |
| Precedent | The text records an example the rule follows | "Scripture shows…" |
| Analogy | The text governs something else; the rule reasons by comparison | "By analogy…" |
| Modern design | No scriptural basis; an engineering choice | "The AGCL adds…" |

7. A link is never described with stronger wording than its class allows.
8. Every link that has a counter-text names it (a passage that limits, qualifies or cuts
   against the claim).
9. Scripture is quoted from the King James Version.
10. A rule with no scriptural basis is classified Modern design, never stretched to fit.

## 3.5 Foundations Register

Starting entries (2026-11-04). New entries are added only with Human Engineer approval.

### F1 — Nothing exists simply because it exists

| Lens | Entry |
|---|---|
| First principle | Every authority and every tax must earn its next term. When its purpose is met or its time runs out, it ends unless people deliberately renew it. |
| Design rationale | **Problem:** temporary authority and taxes become permanent by default. **Rule:** AGCL Control 00A — authority expires automatically (A1); renewal needs affirmative action (A2); unmet metrics end it early (A3). The same decay applies to debt and spending: Control 00E rule E1 (every debt needs a sunset), Control 00F rule F7 (thresholds trigger automatic funding reduction), Point 09 (debt falls at least 0.25% per quarter, compounded, to zero) and Points 05.1 and 05.3 (spending falls annually until debt is zero). **Mechanism:** a timer plus metrics forces Plan-Do-Check-Act: Plan (defined problem, duration, metrics), Do (act within the window), Check (A3), Act (A2 renew, or expire). **Alternative:** open-ended authority with repeal by vote; rejected because the burden falls on those who want it ended. **Check:** every authority shows its expiration date and metrics publicly. |
| Political theology | Exodus 36:3–7 — collection stopped once the need was met (**Precedent**; a voluntary offering, not a tax). Leviticus 25:10–16 — land priced by years left to the Jubilee, so a claim shrank to zero (**Analogy**; governs land, not taxes). Deuteronomy 15:1–2, 12 — debts and servants released every seventh year (**Analogy**). Genesis 41:34–36 with 47:24–26 — Joseph's one-fifth, tied to seven years, became permanent (**Precedent**, cautionary). Automatic expiration and metrics are **Modern design**. |
| Not in the AGCL | A tax rate that falls by itself as the remaining need shrinks. The AGCL applies decay to authority, debt and spending, not to a tax rate; teach a tax taper only as a proposal. The "0.025% quarterly" figure seen elsewhere is a misstatement of Point 09's 0.25% per quarter debt reduction; cite Point 09 instead. |

### F2 — Ownership is protected from the state

| Lens | Entry |
|---|---|
| First principle | What you own cannot be taken by recurring government claims, and nothing may be pooled before its owner is known. |
| Design rationale | **Rule:** AGCL Point 09 ("property ownership becomes absolute") and Control 00C ("ownership precedes pooling"). Remaining questions follow §3.3 rule 4; {{FILL: problem, mechanism, alternative and check for F2, from the Human Engineer}}. |
| Political theology | Exodus 20:15, 17 — no stealing or coveting (**Principle**). 1 Kings 21 — Naboth refuses the king his vineyard (**Precedent**). Counter-texts: Leviticus 25:23 (the land belongs to God) and Leviticus 19:9–10 (gleanings left for the poor). "Absolute" is **Modern design**. |

### F3 — Taxation is legitimate but bounded

| Lens | Entry |
|---|---|
| First principle | Government may tax, but it must show why each tax continues. |
| Design rationale | Applies F1 to revenue: AGCL Points 01, 02 and 05.2 (consumption taxation, revenue sharing, clawback). {{FILL: full rationale record for F3, from the Human Engineer}} |
| Political theology | Matthew 22:21 and Romans 13:6–7 — taxes are owed to governing authorities (**Command**; a counter-text to any claim that taxation is wrong). 1 Samuel 8:10–18 — rulers who take the people's resources become oppressive (**Precedent**). |

---

# 4. Edge Cases

| Case | Handling |
|---|---|
| A foundation conflicts with a CONTROL or AGCL document | The control wins; the foundation is corrected (§2) |
| A rule has no scriptural basis | Classified Modern design (rule 10) |
| A lesson says "Scripture commands" for an Analogy | Returned in review (rule 7) |
| A Scripture link omits a known counter-text | Returned in review (rule 8) |
| A claimed AGCL provision cannot be found in the canonical repository | Not taught as AGCL; recorded under "Not in the AGCL" |
| A reader rejects the theology lens | The first-principles and rationale lenses still stand on their own |

---

# 5. Enforcement

• Lessons that teach foundations are checked against this document in lesson review,
  before the Human Engineer sets `Approved` (CONTROL 05 §4).
• The Register (§3.5) changes only by Human Engineer approval, in its own pull request.
• No script enforces this document.

---

# 6. Relationship to Other Controls

• CONTROL 01 — Project Goal & Scope (training material is not authority; canonical sources)
• CONTROL 05 — Lesson Standard & Approval Workflow (review; writing for the ear)
• CONTROL 12 — Glossary of Terms (lens and classification terms to be added)
• AGCL — Doctrinal Foundations and Economic Lineage (the economic counterpart; non-operative)
• AGCL — Control 00A Authority and Expiration; 00C Property Rights and Pooling;
  00E Debt and Intergenerational Liability; 00F Uncertainty and Black-Swan Stress;
  Points 05.1, 05.3 and 09

---

# 7. Revision Policy

Changes require Human Engineer approval and a version bump with a one-line
`Change:` note under the header.

---

END OF DOCUMENT
