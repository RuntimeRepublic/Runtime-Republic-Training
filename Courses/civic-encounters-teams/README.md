# Civic Encounters: Teams

**Status:** Planned. Outline only, no lessons yet. Rebuilt 2026-11-14 from James Hodges's memory
of a lost draft; nothing here is approved.

The goal of the Civic Encounters Challenge is to get people to start civic teams. This series
follows one team from two friends at a kitchen table to a joint delegation, adding one new
kind of person in each episode, each for a concrete reason.

**Teaching purpose (James, 2026-11-14):** show how the overall system works: how the American
Gold Contract for Liberty (AGCL, the U.S. NBLF) works together with the Node-Based Budgeting
Framework (NBBF). A last group, which handles the Node-Based Educational Framework (NBEF), is
described but has no meeting in the series.

**Why it matters (James, 2026-11-14):** every team works toward the highest level, CE5. The
purpose of the whole exercise is to end the class struggle in today's politics, where
different sides are pitted against each other. Everyone works it out together; no group is
on an opposing side.

**The dashboard (James, 2026-11-14):** the series teaches the dashboard. As teams work, they
submit evidence, and that evidence changes the dashboard. Evidence is the only way the
dashboard changes. Once a member is fully set up with Claude or ChatGPT, they can open and
read the dashboard.

**Naming (James, 2026-11-14):** to AI and the system they are **teams**. To people, each group
calls itself whatever it wants. In this series Gary's group calls itself a **Study Circle**.

**Member setup and the studies (James's memory of the lost draft, 2026-11-14):**
- Each member sets up their own project in Claude or ChatGPT. The series explains how, including security.
- That project supports an online **consumer study**: home ownership or renting, and how consumers are affected, meaning every tax they pay.
- When business teams come into play, the AI prompts their members to submit to a **business study** as well.
- Why the studies matter: people can't picture how a new system would work until they see it with their own numbers.
- The problem the series names: property tax systems are easy for government officials to apply but brutal on homeowners.

**More from James (2026-11-14):**
- Each study's dataset must be decided before writing: at least the consumer dataset and Walt's first business dataset.
- **Mike champions the power of AI.** He already runs his budget with AI and found and cancelled services and subscriptions he had lost track of. The point: today's tax system is one that people at CE1 have lost track of, the same way.
- One essay answers the question "What happens if we fail?" The answer: the AGCL documents and PDCA (Plan-Do-Check-Act).
- This is a **Lean Civics workshop**: ongoing, growing and never-ending.
- Think of it as a system, with smoke tests like those used in software development.

- **Why the studies exist (James, 2026-11-14):** like a Lean manufacturing team, first map the current state (a current-state Value Stream Map), then brainstorm a future-state map, then run PDCA with a smoke test to see if it works.
- **The problem today:** a bill claims it will do A, and there is no way to test it. Only outside outrage changes anything, and the people who passed it are long gone. Thomas Sowell writes whole books about this.
- **Overarching question:** why can't we get rid of property tax? We do know something about the answer, and the series has to show it.
- **Design rule:** the study datasets are designed from the control documents (AGCL, NBBF, NBEF), not from scratch.
- **Still to define:** the "Aha factors", the simple, really big idea this series promotes.

### Series acceptance test (James, 2026-11-14)

The control documents in [Personal-Finance-Management](https://github.com/jhodges07/Personal-Finance-Management)
must cover everything this series does, so that a one-paragraph request to an AI ("create a
6-part series based on this repo") produces a similar series, with only slight story
variations. Everything decided here must end up in those control documents.

Status 2026-11-14: the repository's `main` branch holds only its README. The control documents
from CWC #002 are on James's PC and not yet committed (pending in Cursor).

### Consumer study dataset (Claude proposal v2, not approved)

Built from the control documents. It is the household's **current-state value stream map** of
taxes: one row per tax or fee the household pays, directly or hidden in a price or rent.

**Sources used:** AGCL Master Framework (governing principle: authority must be defined,
limited, transparent, measurable and reversible; six execution elements); AGCL Point 01
(H.R. 25) and Point 02 (state and local revenue sharing); AGCL 00C Rule C8 (no recurring tax on
owned property without title); NBBF CONTROL 01 §5 (required Node fields: Human Owner, authority,
cost, outputs, performance metrics, signaling, exit); NBBF CONTROL 06 §06.2 (cost is a claim, not
a fact). Files read from the local clones on 2026-11-14.

**Household (once):** own or rent; county; people in household; time spent on the study (Lean).

**Each tax or fee row (current state):**

| # | Field | Control source | Example |
|---|---|---|---|
| 1 | Tax or fee name and type | AGCL 01, 02 | County property tax; sales tax; payroll tax; utility franchise fee |
| 2 | How it reaches you | AGCL 00B signal visibility | PDF bill, paper mail, withheld from pay, at the register, hidden in rent or prices |
| 3 | Amount, how often, evidence date | NBBF 01 §5.4 | From the bill, statement or the landlord's estimate |
| 4 | Who receives it | AGCL 02 federal/state/local split | Federal, state, county, city, school district, special district (no double counting) |
| 5 | Who set it (the Human Owner) | NBBF 01 §5.2 | The body that voted, the year, and an official contact |
| 6 | What it promised to do | NBBF 01 §5.6 | Stated purpose of the levy or law |
| 7 | Is there a pass/fail test? | NBBF 01 §5.7; NBBF 06 §06.2 | Yes, no, or can't find one |
| 8 | Does it ever end? | AGCL 00A expiration | Sunset date, or perpetual |
| 9 | Can you exit it? | AGCL 00D exit | By choice (buy less), only by moving, or never |
| 10 | Property: does the taxing body hold title? What happens if unpaid? | AGCL 00C Rule C8 | No title; tax lien and possible foreclosure |
| 11 | Lost-track flag | Mike's story | Found by the AI review; cancelled, kept or disputed |

**Future state (one column per row):** under H.R. 25 plus Point 02 revenue sharing, is this row
eliminated, replaced by a visible point-of-sale tax, or kept as a fixed exception (motor fuel
excise, legacy activity fees)?

**PDCA smoke test (proposal):** a row passes when fields 1–5 are filled from evidence. The study
passes its first smoke test when every row has a receiver and evidence, and the household's
total matches its bank and card statements for the month.

**Privacy:** everything stays in the member's own Claude or ChatGPT project. Only counts and
anonymous totals leave it. No names, addresses or account numbers.

### Walt's first business study dataset

Next decision.

**Every team gets its own series (James, 2026-11-14; name of the record still to find):** as a
team makes progress with evidence, AI writes scripts like this series, based on that team's
real work. Like the TV show *Dragnet*, the team members' names are changed. Elected officials'
names and the county government's replies are not changed.

Planned as two versions, like the main series: Standard (5–7 minutes) and Short (about
3 minutes), with the Standard text as the master.

---

## Outline

Source tags: **James** = remembered from the lost draft; **Guess** = Claude's suggestion, not yet confirmed.

| # | Episode | What happens | Source |
|---|---|---|---|
| 1 | Gary and Mike | Gary can't figure out where his money goes and jokes that aliens are taking it. Mike agrees it feels that way and challenges him to track his budget for one month and find every tax. They agree to meet next week to check progress. | James |
| 2 | The neighbor | The second meeting is online, and Gary joins by phone. He brings a neighbor. She rents, has family members, and already knows property taxes are an issue. Talk turns to property tax, and they suggest she ask her landlord for an estimate of how much of her rent is property tax, and simply tell him, "We're working on ideas to end property taxes." | James (Gary brings her) |
| 3 | The landlord and his bookkeeper | That line draws them in, and they come to the next meeting. She, the bookkeeper, shows how property tax flows into rent. The team now has a renter, a property owner and someone who knows the books. | James: they came. Guess: what happens |
| 4 | The county insider | The bookkeeper knows someone in the county finance office who feels the pain too: she pays the same taxes and sees the levies, late notices and families falling behind from the inside. People inside government want this fixed as well. | James |
| 5 | Too big for one table | The team passes 7 members and talks about splitting, then splits to form new teams instead of growing into one big group. The landlord starts a business team of apartment and house rental owners. Every business-team member also stays on a consumer team. AI like Claude, GitHub and Runtime Republic keep all the teams connected: shared evidence, shared records, one registry. | James |
| 6 | The delegation (CE4) | The consumer and business teams bring one evidence packet to the officials who set the levies: renters, owners, the books, and a view from inside the county. | Guess |

## Characters

| Character | Role | Name |
|---|---|---|
| Gary | Can't find where his money goes; joins by phone and gets bills by mail, then buys a laptop | Gary (existing) |
| Mike | Tracks his money; challenges Gary | Mike (existing) |
| The neighbor (she) | Renter with family; knows property taxes are an issue; Gary brings her | Linda |
| The landlord (he) | Rental owner; starts the business team | Walt |
| The bookkeeper (she) | Knows the landlord's books | Peggy |
| The county employee | Works in the county finance office | Sam |

## Series rules (from the outline)

1. Teams talk about splitting after 7 members (decided by James, 2026-11-14).
2. Every member of any other kind of team (business, civic or others) must also belong to a consumer team, so everyone works it out together instead of on opposing sides (James, 2026-11-14).
3. Teams stay connected through AI (such as Claude), GitHub and Runtime Republic.
4. The county employee takes part as a taxpayer on her own time, shares no inside information, and may stay anonymous in the records.
5. The first meeting (Gary and Mike) is in person. Every meeting after that is online (James, 2026-11-14).
6. Red teams and blue teams are not part of this series; they were for the dashboard discussion only (James, 2026-11-14).
7. Gary joins the online meetings by phone because he has no laptop. He gets his bills by mail, while everyone else uses PDFs and AI to set up the budget for the challenge. He later gives in and buys a laptop. This contrast is one of the series goals (James, 2026-11-14).
8. Gary thinks that once his bills come as PDFs he won't need stamps anymore. Mike points out he will: higher Civic Encounter levels mean writing to government, and that still takes mail (James, 2026-11-14).

## Open decisions

Next, one question at a time: approve the consumer dataset, then Walt's business dataset, then the name of the AI-written team story record (James remembers "log"), then team types.


1. ~~Team size limit~~ Decided: teams talk about splitting after 7 members.
2. ~~Who brings the neighbor~~ Decided: Gary.
2a. ~~The phone-only man~~ Decided: Gary.
2b. ~~New name for "team"~~ Decided: "team" for AI and the system; each group picks its own name; Gary's is a Study Circle.
3. ~~Names~~ Decided: Linda (neighbor), Walt (landlord), Peggy (bookkeeper), Sam (county employee).
4. At the landlord meeting: is the landlord squeezed too and an ally, is the bookkeeper's estimate the key evidence, or both?

---

## Series production checklist

What must exist before the first essay is written, and what each essay needs.

### Before writing (once per series)

| # | Item | Count | Status |
|---|---|---|---|
| S1 | Series goal in one sentence | 1 | Done (above) |
| S2 | Episode outline, approved by James | 1 | Draft (above) |
| S3 | Length decision (Standard, Short or both) | 1 | Both, Standard is master |
| S4 | Character list with names | 6 | 6 named |
| S5 | Series rules | 8 | Drafted (above) |
| S6 | Open decisions resolved | 4 | 3 of 4 |
| S7 | Series README for each version | 2 | This file; Short README later |
| S8 | Catalog row in `Courses/README.md` for each version | 2 | Later |

### For each essay

| # | Item | Count for this series |
|---|---|---|
| E1 | Beat sheet: the episode's scenes in order, approved | 6 |
| E2 | Facts the essay states, each with a source in `SOURCES.md` | as needed per episode |
| E3 | At least one economist quote, by name only, where AGCL supports the point (none in episode 1's lead-in) | 12 (6 Standard + 6 Short) |
| E4 | ~~Red team / blue team notes~~ Not used in this series (James, 2026-11-14) | 0 |
| E5 | Standard essay text, 850–1,000 words | 6 |
| E6 | Short episode text, 400–550 words, pointing back to its Standard essay | 6 |
| E7 | Header, recap and navigation per CONTROL 05 | 12 |
| E8 | Image prompt for ChatGPT; the Short episode reuses the Standard image | 6 |
| E9 | `scripts/check-lessons.sh` passes | every pull request |
| E10 | James's listening review | 12 |
| E11 | James sets Status: Approved | 12 |

### Workflow

1. Outline and checklist saved to GitHub first (this file).
2. Resolve open decisions and names.
3. Write a beat sheet for one episode, save it here, get approval.
4. Write the Standard essay, then its Short version, in one pull request.
5. Listening review, revise, then the next episode.

Every step is committed to GitHub the same day.

---

[All series in this repository](../README.md) · [Repository home](../../README.md)
