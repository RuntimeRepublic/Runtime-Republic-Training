# Every Dollar in the Open

Course: Every Dollar in the Open
Lesson: 01 of 06
Status: Draft
Runtime: about 6 minutes
Image: Pending
Podcast: Not recorded
Sources: Article I, Section 9, Clause 7, U.S. Constitution; AGCL plan/02_revenue_sharing.md
Approved by: —
License: CC BY 4.0
Audience: Team treasurers, admins and members

---

Every group that takes money faces the same quiet question. Where did it go?

Most groups answer that question with trust. The treasurer is a good person. The books are kept in a spreadsheet on somebody's laptop. Once a year, maybe, someone reads a summary at a meeting. And most of the time, that's fine. Until it isn't. A treasurer moves away. A file gets lost. A member asks a hard question and nobody can answer it. Trust that can't be checked turns into suspicion that can't be cleared.

Most reform tries to fix that by sweeping out the bad actor and promising to do better. But a house swept clean and left empty doesn't stay clean for long.

Runtime Republic runs on a different idea. Liberty is the art of elite capture avoidance. Money is the easiest thing in any group to capture, so it should be the easiest thing to check. That isn't a new idea. The Framers wrote it into the Constitution: Article One, Section Nine requires a regular statement and account of all public money, published from time to time. Open accounts are one of the oldest stones in the Republic. What's new is the tools.

Here's the plan, starting January 1, 2027.

Start with what the group already has: a bank account. Nobody needs to switch to crypto, and members don't need wallets. Donations come in the way they always have, by check, by card, by transfer. The bank stays the bank.

What changes is the record.

Each month, the treasurer exports the deposits from the bank. Every donation becomes one row in a simple file kept in the team's GitHub repository. Date. Amount. The bank's reference number. And a receipt code, never a name. Anyone can read that a twenty-five-dollar gift came in that week. Nobody learns who gave it.

Then comes the step that makes it a blockchain record. The treasurer runs the file through a free tool called OpenTimestamps. It takes a fingerprint of the file, a short code called a hash, and stamps that fingerprint onto the Bitcoin blockchain. The file itself doesn't go on the chain, only its fingerprint. But that fingerprint is permanent and public, and it matches only that exact file.

So if anyone changes a single row later, the fingerprint won't match anymore. Anyone can check it. The record can't be quietly rewritten.

That's the donation side. The spending side is where groups usually get into trouble, so it needs a little more structure.

It starts before any money moves. When the team wants to spend, an admin opens an issue on GitHub titled SPEND, and says how much, who gets paid, what it's for, and which team goal it serves. Then the second admin approves it, right there in the issue, in writing, with a date.

That's a two-signature rule. Every Runtime Republic team already has two admins, so it costs nothing extra. One person can't spend the group's money alone, and the approval is public before the check is written, not explained after.

Then the treasurer pays from the bank and keeps the receipt.

Each payment becomes a row in a second file, the spending file. Date, amount, bank reference. Who got paid: a business by its name, a person by role or call sign, like "Longbow, reimbursement for printing." What it was for. A link back to the approval. And a copy of the receipt with personal details blacked out.

At the end of the month, the treasurer runs one check. Starting balance, plus donations, minus spending, equals the ending bank balance.

If the numbers match the bank statement, both files get stamped together on the blockchain, and the month is closed. If they don't match, the gap sits right there in public, and the team finds it and fixes it. That's not a failure of the system. That's the system working.

And members don't have to take the treasurer's word for it. Each member keeps an AI assistant connected to the team's repository. It can rerun the math and check the stamps. The assistant checks. People decide.

There's one more step, and it's what turns bookkeeping into Lean Civics.

Every spend is tested like a node in the Node-Based Budgeting Framework. It has an owner, a cost, a stated output, and a pass or fail check. "We spent forty dollars on two hundred flyers. It passes if they're handed out by Saturday." At the weekly close, the team looks back. If nobody can say, it gets flagged.

That's the same thing the Lean Civics Challenge asks of government. A team that runs its own money this way isn't just tidying its books. It's laying, in its own small way, the foundation it wants government built on.

It also lines up with AGCL Point 02, which calls for tracing tax dollars by blockchain at every level of government. A team that has traced its own dollars for a year can say, with evidence, that it works. When the storms come, a record built on rock doesn't fall.

A few guardrails. Never put names, home addresses, or account numbers in a public file, and never on the chain. A 501(c)(3) still owes a written thank-you for any single gift of two hundred fifty dollars or more, and can't spend for or against candidates. If a group spends on Kansas candidates or ballot questions, check with the Governmental Ethics Commission first.

None of this takes a programmer. It takes a bank export, a spreadsheet, a free stamping tool, and two admins who sign their names.

Recap. Keep the bank. Write every dollar in and out where everyone can see it, with receipt codes instead of names. Approve every spend in public with two admins. Balance the books each month and stamp them on the blockchain. Let members' assistants check the math. Money comes in the open and goes out in the open, on a foundation as old as the Republic.

<!-- series-navigation: start -->

---

### Continue reading

[Series index](../README.md) · [Next essay →](../02-the-keg-question/lesson.md)

[All series in this repository](../../README.md) · [Repository home](../../../README.md)

<!-- series-navigation: end -->
