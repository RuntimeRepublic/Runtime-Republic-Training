# Every Dollar in the Open: How a Group Can Track Its Money by Blockchain

Course: Every Dollar in the Open
Lesson: 01 of 04 (series continues)
Status: Draft
Runtime: about 6 minutes
Image: Pending
Podcast: Not recorded
Sources: None
Approved by: —
License: CC BY 4.0
Audience: Team treasurers, admins and members

---

Every group that takes money faces the same quiet question. Where did it go?

Most groups answer that question with trust. The treasurer is a good person. The books are kept in a spreadsheet on somebody's laptop. Once a year, maybe, someone reads a summary at a meeting. And most of the time, that's fine. Until it isn't. A treasurer moves away. A file gets lost. A member asks a hard question and nobody can answer it. Trust that can't be checked turns into suspicion that can't be cleared.

Runtime Republic runs on a different idea. Liberty is the art of elite capture avoidance. Money is the easiest thing in any group to capture, so it should be the easiest thing to check.

Here's the plan, starting January 1, 2027.

Start with what the group already has: a bank account. Nobody needs to switch to crypto, and members don't need wallets. Donations come in the way they always have, by check, by card, by transfer. The bank stays the bank.

What changes is the record.

Each month, the treasurer exports the deposits from the bank. Every donation becomes one row in a simple file kept in the team's GitHub repository. Date. Amount. The bank's reference number. And a member ID or call sign, never a name. Longbow gave twenty-five dollars on the fifth. Anyone can read that. Nobody learns who Longbow is from the public file.

Then comes the step that makes it a blockchain record. The treasurer runs the file through a free tool called OpenTimestamps. It takes a fingerprint of the file, a short code called a hash, and stamps that fingerprint onto the Bitcoin blockchain. The file itself doesn't go on the chain, only its fingerprint. But that fingerprint is permanent and public, and it matches only that exact file.

So if anyone changes a single row later, adding a donation that never happened or erasing one that did, the fingerprint won't match anymore. Anyone can check it. The record can't be quietly rewritten.

That's the donation side. The spending side is where groups usually get into trouble, so it needs a little more structure.

It starts before any money moves. When the team wants to spend, an admin opens an issue on GitHub. They title it SPEND, and say what for: how much, who gets paid, what it's for, and which team goal it serves. Then the second admin approves it, right there in the issue, in writing, with a date.

That's a two-signature rule. Every Runtime Republic team already has two admins, so the rule costs nothing extra. One person can't spend the group's money alone, and the approval is public before the check is written, not explained after.

Then the treasurer pays from the bank and keeps the receipt.

Each payment becomes a row in a second file, the spending file. Date, amount, bank reference. Who got paid: a business by its name, a person by role or call sign, like "Longbow, reimbursement for printing." What it was for. Which budget line. A link back to the approval issue. And a copy of the receipt with personal details blacked out.

At the end of the month, the treasurer runs one check. Starting balance, plus donations, minus spending, equals the ending bank balance.

If the numbers match the bank statement, both files get stamped together on the blockchain, and the month is closed. If they don't match, the gap sits right there in public, and the team finds it and fixes it. That's not a failure of the system. That's the system working.

There's one more step, and it's what turns bookkeeping into Lean Civics.

Every spend is tested like a node in the Node-Based Budgeting Framework. It has an owner, a cost, a stated output, and a pass or fail check. "We spent forty dollars on two hundred flyers. It passes if they're handed out by Saturday." At the weekly close, the team looks back. Did the flyers go out? If yes, it passed. If nobody can say, it gets flagged.

That's the same thing the Lean Civics Challenge asks of government. Today, a law promises to do something, and there's no test. The people who passed it are long gone by the time anyone notices. A team that runs its own money this way is practicing the exact discipline it's asking government to adopt. It's cleaning its own house first.

It also lines up with AGCL Point 02, which calls for tracing tax dollars by blockchain at every level of government. A team that has traced its own dollars for a year can say, with evidence, that it works. Not in theory. In its own books.

A few guardrails keep this honest and safe.

Never put names, home addresses, or account numbers in a public file, and never on the chain. The chain is forever.

If the group is a 501(c)(3), the blockchain record doesn't replace the written thank-you letter the law requires for any single gift of two hundred fifty dollars or more. And a 501(c)(3) can't spend money for or against candidates at all.

If a group spends money on Kansas candidates or ballot questions, Kansas campaign finance law may require reports. Check with the Governmental Ethics Commission before the first dollar moves.

None of this takes a programmer. It takes a bank export, a spreadsheet, a free stamping tool, and two admins who sign their names.

That's the whole idea. Money comes in the open. Money goes out the open. Every month, the books are sealed with a fingerprint nobody can fake.

A group that can prove where its money went has nothing to fear from hard questions. And a group with nothing to fear is much harder to capture.

---

[Every Dollar in the Open](../README.md) · [All series in this repository](../../README.md)
