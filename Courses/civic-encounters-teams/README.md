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

### Personal finance is the hook (James, 2026-11-14)

- People come for personal finance management with AI. Joining a study or a team is optional.
- Anyone who manages their finances this way is already doing the CE1 work, so they meet CE1
  without extra effort; the studies and teams are the next step for those who choose them.
- The Personal-Finance-Management repo is completed alongside this essay series.
- James promotes the repo with an essay on how to harness AI for successful personal finance
  management. James is the first user.
- It is also an upsell in the phone app and on the desktop.

### Onboarding test log (James as the first member, 2026-11-14)

A ChatGPT project was set up as a new member would set one up, and run through an 8-part
onboarding test prompt. Findings are kept generic here; no account details.

| Part | Result | Lesson for the series and setup steps |
|---|---|---|
| 1. What the AI can reach | Partial pass | Bank and card links worked for some institutions; one bank's sync failed, so its transactions and subscriptions are missing. No email or cloud drive connected, so emailed bills can't be collected. The GitHub connector had write and admin permission, more than a member needs. Scheduled tasks available. |

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

**Study submission rules (James, 2026-11-14):**
- The study dataset collects broad categories only. No personal data. The detailed rows above
  stay in the member's own Claude or ChatGPT project.
- The member's AI builds the study dataset and pushes it by itself, but only after the member
  has seen it first.
- Nothing is pushed to a study without a JSON or CSV file that the member has reviewed first
  (James, 2026-11-14). The reviewed file is exactly what gets pushed.
- The study push is always a human command. Members may run scheduled tasks to track their
  budget, but the study push is never scheduled.
- Open: are category totals sent as dollar amounts, percentages or ranges?

### Consumer group dataset v3 (Claude proposal, not approved)

Modeled on AGCL, NBBF, NBEF and the dashboard brainstorm. This is what a group pushes, by human
command, after members see it. Broad categories and percentages only; no personal data.

**Group header (per month):** team ID, county, state, member count (above a minimum), owners and
renters (counts), members at each CE level.

**Four-budget split:** the group's average share of household money going to each budget, in
percent, each graded verified or estimated:

| Budget | Broken out by |
|---|---|
| Federal | income, payroll, excise, tariffs hidden in prices |
| State | income, sales, vehicle, fees |
| Local | county, city, school district, special districts (property tax, sales, franchise fees) |
| Family or individual | what the household keeps and decides on |

**Who gets paid first:** for each tax category, a count of how it is taken: before the family
sees the money (withholding, mortgage escrow), billed after, at the register, or hidden in
price or rent.

**Control tests, per government level (counts of categories that pass):**

| Test | Source |
|---|---|
| Defined: authority cited | AGCL governing principle; NBBF 01 §5.3 |
| Limited: ceiling or cap | AGCL governing principle; NBBF 01 §5.4 |
| Transparent: shown where paid | AGCL 00B, 00G |
| Measurable: a pass/fail test exists | AGCL governing principle; NBBF 01 §5.7 |
| Reversible: ends or can be exited | AGCL 00A, 00D; NBBF 01 §5.9 |
| Human Owner named | NBBF 01 §5.2 |
| No recurring tax on owned property without title | AGCL 00C Rule C8 |
| Education spending mapped as current state, proposed state, transition | NBEF CONTROL 00 §14 (NBEF has only its root control today; education doctrine is not yet adopted) |

**Civic contact counts per level:** contacts made, replies received, each with a public source.
Elected officials' names and government replies stay real.

### Four-budget priority rank on the dashboard (James, 2026-11-14)

The dashboard shows the priority rank of four budgets: Federal, State, Local, and Family or
individual. The goal is to push the family and individual budget to the top, as the nation's
top priority.

Claude proposal for how the rank is computed: first by **who gets paid first** (claim order),
then by **share kept**. Today withholding and property tax liens put government ahead of the
family. Under AGCL Point 01 (no income or payroll tax) and Point 02 (no property tax), the
government is paid only when the family chooses to buy, so the family moves to first.

### What CE5 means (James, 2026-11-14)

CE5 is the ideal of all three frameworks (AGCL/NBLF, NBBF, NBEF) in practice:

- **Blockchain tax-dollar tracing** at every level (AGCL Point 02 requires it for revenue sharing).
- **Intergenerational wealth on an upward climb** (AGCL Point 05.1, the Sinking Liberty Fund).
- **National debt has stopped growing** and is on a decline path that reaches zero by **2075**.
  (AGCL Point 09 requires continuous decline to zero but states no year; 2075 is James's target.)
- **At CE5 a user can track their tax dollars in $100 groups** and divert them away from
  non-enumerated spending items they do not support. (New idea; AGCL Point 05.1 already gives
  priority to eliminating non-enumerated programs, but no AGCL document yet describes this.)

**Dashboard additions (James, 2026-11-14):** debt for every level (federal, state, local), what a
taxpayer pays toward each, and the sinking fund balance.

### How a group proves CE5 at all three levels (Claude proposal, not approved)

For each level (federal, state, local), all four must be true:

1. **CE1–CE4 evidence is complete** for that level's taxes: every category traced, every receiver
   named, every Human Owner found, dated contacts on record.
2. **The government changed, shown by its own public record:** federal, H.R. 25 enacted plus the
   AGCL completion layer; state, Point 02 certification filed and passing; local, property tax
   eliminated and every local budget item meeting the NBBF Node fields.
3. **The group's own data shows it (the PDCA smoke test):** the next month's current-state map
   shows the old rows gone, or every remaining row passing all the control tests, and the
   Family budget ranked first.
4. **Reviewed:** AI review, then human review by another team, citing each control section and
   version.

Gaps: NBEF has no adopted education doctrine yet, so the NBEF part of CE5 can't be tested; the
10-point rating stays parked.

### Study ideas source (James, 2026-11-14)

[Florida FairTax Educational Association white papers](https://flfairtax.org/fairtax-white-papers/)
list six papers. Each makes claims a study can test with members' own data. That is the PDCA
point of the series: today claims are made with no way to test them; the studies test them.

| White paper | Study it suggests |
|---|---|
| Families' income | Consumer study (core) |
| Low to medium incomes / young families | Consumer study, shown as shares, not incomes |
| Home ownership | Consumer study: homeowner and renter modules |
| Small business | Walt's business study (below) |
| Retailers | Business study: retailer module |
| Agriculture and farming | Future business study |

Caveats from reading two of the papers (home ownership, small business), 2026-11-14: they are
advocacy papers from Americans for Fair Taxation (home ownership paper dated 2006, updated
2013); much of the data is 1996–2013; several key figures have no source. The studies treat
their claims as claims to test, and record evidence that challenges them as well as supports
them.

Testable claims, for example:
- Home ownership: the paper's worked example says a $230,000 new home costs about 10.6% less in
  total under the FairTax (taxes on principal and interest removed, lower rate assumed). The
  rate (2.82%) is a projection, and the paper's $69,000 tax figure needs its rate basis
  clarified.
- Small business: tax compliance cost per employee is far higher for the smallest firms (the
  paper cites $7,274 per employee for firms with 1–5 employees, DeLuca et al., 2007).

**Why James shared the white papers (2026-11-14):** to see what others have done when
reforming a tax system. This project is a similar concept, but more comprehensive.

### Economists' open letter (precedent)

- "An Open Letter to the President, the Congress, and the American people Concerning Reform of
  the Federal Tax Code," April 2005, written by Prof. David L. Kendall (University of
  Virginia's College at Wise). It urged passage of H.R. 25 and S. 25 and repeal of the 16th
  Amendment. James has two copies: the April 8, 2005 version and a June 21, 2005 "new
  signers" version. The June version keeps every April signer and adds four: Jack A.
  Chambless, Franklin Lopez (Tulane), Drew Johnson (Davenport Institute, Pepperdine) and
  John Semmens.
- Signers: about 80 business and university economists (FairTax.org's own count is 80),
  including one Nobel laureate, Vernon L. Smith, and Laurence J. Kotlikoff.
- James remembers a list of over 200 economists endorsing the FairTax. UNVERIFIED: not found
  yet; the 2005 letter has about 80.
- Lesson for the series: in a 2021 FairTax.org piece, Kendall said the letter did not change
  the outcome; the 2005 tax reform panel did not endorse the plan. A letter alone is CE4.
  The series argues that teams, evidence and a public dashboard are what a letter lacked.
- Opposing evidence to record: Americans for Tax Reform wrote to members of Congress in
  August 2023 urging them to reconsider co-sponsoring the FairTax Act of 2023.

### Karen Walby testimony (precedent)

- Written testimony of Karen Walby, Ph.D., Chief Economist, Americans for Fair Taxation, to
  the House Ways and Means Committee hearing on fundamental tax reform, January 20, 2011.
  File: James's copy (PDF, 10 pages).
- Main measure: the cost of complying with the income tax. Figures it cites, with its sources:
  6.1 billion hours a year (Taxpayer Advocate Service, 2010 report); over $265 billion, a
  22.2-cent surcharge per dollar collected (Tax Foundation, 2005); small firms spend 3 to 4
  dollars complying for every dollar of tax (National Commission on Economic Growth and Tax
  Reform); state sales tax administration about 0.7% of revenue (Due and Mikesell, 1994); a
  Minnesota sales tax gap of 9.9% (2000 study) against an income tax noncompliance rate of
  15–16.6% (IRS).
- Caveats: advocacy testimony; most data is from 1994–2010.
- Study idea (Claude proposal): add **hours spent on taxes and preparer fees** to the consumer
  study too, not just Walt's. It is the Lean "waste" measure, and members already log time
  in the PFM friction log.

### Walt's first business study dataset (Claude proposal, not approved)

Built from the small-business paper's measures, for a rental owner. Broad categories and
shares only; pushed only as a reviewed JSON or CSV file.

| Field | Why |
|---|---|
| Entity type (sole owner, LLC, S-corp, other) and number of rental units | Most small businesses are pass-through entities, taxed on the owner's return |
| Hours per year on tax compliance, and outside preparer fees | The paper's main claim: compliance is the biggest burden |
| Taxes by type: income, self-employment, payroll, property, sales, fees | Current-state map, same as the consumer study |
| Property tax per unit, as a share of rent | Ties to Linda's question: how much of her rent is property tax |
| Who receives each tax, and does it ever end | Same control tests as the consumer study (AGCL, NBBF) |
| Future state: which rows end under H.R. 25 plus Point 02 | The PDCA comparison |

**Every team gets its own series (James, 2026-11-14; name of the record still to find):** as a
team makes progress with evidence, AI writes scripts like this series, based on that team's
real work. Like the TV show *Dragnet*, the team members' names are changed. Elected officials'
names and the county government's replies are not changed.

Planned as two versions, like the main series: Standard (5–7 minutes) and Short (about
3 minutes), with the Standard text as the master.

---

## Outline (updated Nov 15, 2026)

James decided on Nov 15, 2026: keep the Nov 14 outline and add three episodes, spread through the story.
James decided the episode 3 turning point: both. Walt is squeezed by property tax too and becomes an ally,
and Peggy's estimate of the tax inside the rent is the key evidence.

| # | Episode | What happens | Source |
|---|---|---|---|
| 1 | Gary and Mike | Gary jokes aliens take his money; Mike challenges him to track one month and find every tax. | James |
| 2 | The neighbor | Linda, a renter, is told to ask her landlord how much of her rent is property tax. | James |
| 3 | The landlord and his bookkeeper | Walt is squeezed too and becomes an ally; Peggy's estimate is the key evidence. | James |
| 4 | Who Gets Paid First? | The team lines up each household's real budget order; government is paid before family. | Added Nov 15 |
| 5 | The county insider | Sam, in county finance, feels the pain too. | James |
| 6 | How the Rules Fit Together | How AGCL (NBLF) works with NBBF; an NBEF group is described but does not meet. | Added Nov 15 (James's teaching purpose) |
| 7 | Too big for one table | Past 7 members, the team splits; Walt starts a business team; everyone stays on a consumer team. | James |
| 8 | Talking Back | Gary writes his Representative about the gas tax, with a stamped reply card (pays off the stamps line). | Added Nov 15 |
| 9 | The delegation (CE4) | Consumer and business teams bring one evidence packet to the officials who set the levies. | Guess |

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
4. ~~At the landlord meeting~~ Decided (James, 2026-11-15): both. Walt is squeezed too and becomes an ally; Peggy's estimate is the key evidence.

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
