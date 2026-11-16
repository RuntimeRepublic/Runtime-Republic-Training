RRT-CWC-002 — Merge pull request #75 into main — Return to Claude

Agent: Civics Dashboard 01 (named by James)
Review owner: Claude (CLD). Return destination: Claude.
Originating service: Claude (Opus 5.5), Nov 16, 2026
Repository: RuntimeRepublic/Runtime-Republic-Training
Pull request: #75, branch teams-ep01-beat-sheet-alt-01 → main
Run after: RRT-CWC-001 (Reagan Log verification), which edits the same branch.

JAMES'S GO-AHEAD (required)
James must type his approval on the next line before this card runs. If the line is blank, stop.
Approved to merge by James: ____________________  Date: __________

GOAL
Merge pull request #75 into main so the Episode 1 work is on the main branch.

WHAT PULL REQUEST #75 HOLDS (all under Courses/civic-encounters-teams/)
- episode-01-beat-sheet-alt-01.md
- 01-gary-and-mike/lesson.md (Status: Draft)
- opening-quotes.md
- reagan-log.md
- work-cards/REGISTER.md, work-cards/reagan-log-verification.md, work-cards/merge-pr-75.md

READ FIRST
1. CLAUDE.md
2. Control/CONTROL 14 — Source Control & Commit Governance.md

TASKS
1. Fetch the branch: git fetch origin teams-ep01-beat-sheet-alt-01 main
2. Check out the branch and run: bash scripts/check-lessons.sh
   It must report 0 errors.
3. Confirm the pull request changes only files under Courses/civic-encounters-teams/:
   git diff --name-only origin/main...origin/teams-ep01-beat-sheet-alt-01
4. Confirm GitHub shows no merge conflicts for pull request #75.
5. Merge with a merge commit (not squash, not rebase), so each commit's history is kept:
   gh pr merge 75 --merge
6. Update work-cards/REGISTER.md on main: set RRT-CWC-002 Status to "Merged <date>" and
   commit it with: [Lesson] - Revised - Work card register RRT-CWC-002 merged

PERMITTED
- The commands above, and the one register edit in task 6.

NOT PERMITTED
- Do not edit any lesson, beat sheet, log or CONTROL document.
- Do not change any lesson's Status (only James sets Approved or later).
- Do not force-push, rebase, squash or delete the branch.
- Do not create, assign, change or suggest an agent name.

STOP AND REPORT IF
- The go-ahead line above is blank.
- check-lessons.sh reports any error.
- Any changed file is outside Courses/civic-encounters-teams/.
- GitHub reports a merge conflict, or main has changes to the same files.
- RRT-CWC-001 has not been reported back to Claude.

FINAL REPLY
Report each task's result, the merge commit hash, the register commit hash, and any stop
conditions hit. End with this line exactly:
RRT-CWC-002 - Civics Dashboard 01 - Return to Claude

RRT-CWC-002 — Merge pull request #75 into main — Return to Claude
