# Every Dollar in the Open: How a Group Can Track Its Money by Blockchain

Course: Every Dollar in the Open
Lesson: 01 of 06
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

Most groups answer with trust. The treasurer is a good person. The books live on somebody's laptop. And most of the time, that's fine. Until a treasurer moves away, a file gets lost, or a member asks a hard question nobody can answer. Trust that can't be checked turns into suspicion that can't be cleared.

Runtime Republic runs on a different idea. Liberty is the art of elite capture avoidance. Money is the easiest thing in any group to capture, so it should be the easiest thing to check.

Here's the plan, starting January 1, 2027.

Keep the bank account. Nobody needs crypto or a wallet. Donations come in the way they always have. What changes is the record.

Start with the donor. Every time someone gives, the treasurer hands them a private receipt code, a string of letters and numbers. Only the donor keeps it. The public file never shows the code itself, only a scrambled version of it, called a hash. Nobody can work backward from the hash to the code, or from the code to the person. No names. No call signs. Dates are shown by week, not by day, so in a small group nobody can guess who gave from the timing.

Next, every gift is cut into ten-dollar blocks. A thirty-dollar gift becomes three blocks. A twenty-five-dollar gift becomes two ten-dollar blocks and one five-dollar block. Each block is tied to its donor's code.

Now the spending side. Before any money moves, an admin opens an issue on GitHub titled SPEND. It says how much, who gets paid, what it's for, and which team goal it serves. Then the second admin approves it, in writing, in public. One person can't spend the group's money alone.

When a spend is approved, blocks are drawn from the pool at random. Not the treasurer's choice. The random seed is the newest Bitcoin block at the moment of approval, plus the issue number. Anyone can rerun the draw and get the same blocks. Nobody can steer whose money pays for what.

Most spends aren't round numbers. Say the team spends forty-three dollars. Four whole blocks cover forty. The fifth block splits. Three dollars is spent, and the other seven becomes a change block that goes back into the pool, still tied to the same donor. It works the same way Bitcoin makes change.

Each payment becomes a row in the spending file. The amount, the week, who got paid, what for, a link to the approval, the blocks that paid for it, and a receipt with personal details blacked out.

At the end of the month, the treasurer runs one check. Starting balance, plus donations, minus spending, equals the ending bank balance. If it matches, both files are run through a free tool called OpenTimestamps. It stamps a fingerprint of each file onto the Bitcoin blockchain. The files don't go on the chain, only their fingerprints. Change one row later, and the fingerprint won't match. The record can't be quietly rewritten.

If the numbers don't match, the gap sits in public, and the team finds it and fixes it. That's the system working.

Then comes the part donors like best. On a lookup page, a donor types in their receipt code. Their own phone scrambles it, finds their blocks, and shows where each one went. Ten dollars to flyers. Ten to postage. Five split, three to the meeting room and two still in the pool. The code never leaves the phone.

One more step turns bookkeeping into Lean Civics. Every spend is tested like a node in the Node-Based Budgeting Framework. It has an owner, a cost, a stated output, and a pass or fail check. "Forty dollars for two hundred flyers. It passes if they're handed out by Saturday." If nobody can say, it gets flagged at the weekly close.

This isn't tidying up the old system. It's a new foundation: an agentic system built on what the Founders and Framers designed. Enumerated powers. Open accounts. Hamilton's sinking fund. AGCL Point 02 calls for tracing tax dollars by blockchain at every level of government. A team that runs its own money this way for a year can show, with evidence, that the foundation holds. When the storms come, an audit, a hard question, a treasurer who moves away, a record built on rock doesn't fall.

A few guardrails. Never put names, addresses or account numbers in a public file, and never on the chain. If the group is a 501(c)(3), the law still requires a written thank-you for any single gift of two hundred fifty dollars or more, and the group can't spend for or against candidates. If a group spends on Kansas candidates or ballot questions, check with the Governmental Ethics Commission first.

None of this takes a programmer. It takes a bank export, a spreadsheet, a free stamping tool, and two admins who sign their names.

Recap. Keep the bank. Give each donor a private receipt code. Cut gifts into ten-dollar blocks. Approve every spend in public with two admins. Draw blocks at random, and make change when a block splits. Balance the books monthly and stamp them on the blockchain. Let every donor trace their own money. A group that can prove where its money went is much harder to capture.

<!-- series-navigation: start -->

---

### Continue reading

[Series index](../README.md) · [Next essay →](../02-the-keg-question/lesson.md)

[All series in this repository](../../README.md) · [Repository home](../../../README.md)

<!-- series-navigation: end -->
