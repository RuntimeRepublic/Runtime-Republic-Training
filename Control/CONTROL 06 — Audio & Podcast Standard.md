CONTROL 06 — Audio & Podcast Standard

Version: 1.0
Date: 2026-10-31
Status: Draft — pending Human Engineer approval
Project: Runtime-Republic Training

<!--
Drafted from the "Republic Radio: Essay-to-Audio Plan" (Claude Project of the same name)
and the voice-engine rule the Human Engineer set in Essay-Audio-Runtime CONTROL 07.
{{FILL: …}} markers are decisions only the Human Engineer can make.
-->

---

# 1. Purpose

Defines how an Approved lesson becomes a podcast episode: which text is spoken, how
ElevenLabs is used, where episode files live, how each narration is checked, and how
episodes are published. This is the Phase 2 audio document required by CONTROL 02 §4.

---

# 2. Core Principle

**The approved essay is read exactly, and the voice engine decides nothing.**
ElevenLabs receives only the approved text and returns audio. Every decision (which
lessons, which voice, which settings, whether a narration is kept, when to publish)
belongs to the Human Engineer. Nothing reaches `main` or a podcast feed without a
pull request the Human Engineer merges.

---

# 3. Rules

## 3.1 What may be narrated

1. Only lessons with `Status: Approved` (CONTROL 05 §4) may be narrated.
2. The spoken text is, in order:
   a. the H1 title, then
   b. every line after the header's closing `---`, up to (not including)
      `<!-- series-navigation: start -->`, or the end of the file if that marker is absent.
3. The image, the header fields, the Listen button block (§3.5) and the series
   navigation are never spoken.
4. The spoken text is never rewritten, summarized, reordered or added to.

## 3.2 Pronunciation

5. Mispronunciations are fixed only in `pronunciations.yml` at the repository root.
   Each entry is an exact, case-sensitive swap applied to the spoken text in memory
   just before it is sent (for example `NBBF` → `N B B F`).
6. `lesson.md` is never edited to fix pronunciation.
7. The transcript check (§3.4) reverses each swap in the transcript, then compares it
   with the original lesson text, so a swap can never hide a missing or added word.

## 3.3 Voice engine (ElevenLabs)

8. The only permitted ElevenLabs operations are text-to-speech of one paragraph and
   speech-to-text of a finished narration (for §3.4).
9. Prohibited: podcast generation (GenFM), Studio projects, dubbing, voice changing,
   sound effects, music generation, and any feature that writes, rewrites or selects words.
10. Text normalization is always sent as `off`.
11. Model, voice, voice settings and output format come only from `audio.config.yml`.
    The pipeline adds nothing, and ElevenLabs is never asked to choose.
12. Paragraphs are sent one per request, in essay order, with request stitching so tone
    carries across joins. The default model is `eleven_multilingual_v2`, because
    `eleven_v3` does not support stitching.
13. No automatic retries. A failed run stops; a new run is started only by the Human
    Engineer (a push or the "Run workflow" button).
14. The API key lives only in the repository secret `ELEVENLABS_API_KEY`. It is never
    written to a file, log, commit, app or feed (CONTROL 16).

## 3.4 Word-for-word check

15. Every finished narration is transcribed with ElevenLabs speech-to-text and compared,
    word by word, with the spoken text from §3.1.
16. A narration below the `min_word_match` in `audio.config.yml` (default 0.98) fails
    the run. Nothing is committed and no pull request is opened.
17. The run records the match score in its pull request.

## 3.5 Where audio lives and how the lesson shows it

18. Each narration is saved as `lesson.mp3` in the lesson's own folder, beside `lesson.md`.
    It is the only audio file allowed in the repository; `.gitignore` excludes all others.
19. Format: mono, 64 kbps MP3, loudness normalized to -16 LUFS (values in `audio.config.yml`).
20. The pipeline may change only these parts of `lesson.md`, all above the header's `---`:
    a. the `Podcast:` line, to `Recorded <YYYY-MM-DD>`;
    b. a Listen button block directly under the image line, between
       `<!-- audio:start -->` and `<!-- audio:end -->`.
    The essay text is never touched, so the lesson does not return to Review (CONTROL 05 §4).
21. The audio block stores a SHA-256 fingerprint of the spoken text. A lesson is
    re-narrated only when that fingerprint changes; a header-only edit never triggers a
    new narration, and the pipeline's own edit never triggers itself.
22. The pipeline never changes `Status:`. Moving a lesson to Narrated or Published stays
    with the Human Engineer (CONTROL 05 §4).
23. If the library grows past {{FILL: number of episodes or repository size at which MP3s move to GitHub Release assets}},
    MP3s move to Release assets and lesson folders keep only links.

## 3.6 Human approval of each narration

24. The pipeline delivers every narration as a pull request from a `narration/<course>-<NN>`
    branch, containing only the MP3 and the §3.5 header changes.
25. Merging that pull request is the Human Engineer's acceptance of the narration.
    Closing it rejects the narration; nothing is kept.

## 3.7 Publishing

26. Player pages and the podcast feed (`podcast.xml`) are served by GitHub Pages from `docs/`.
27. Only merged narrations appear in the feed.
28. Route: {{FILL: A — dedicated show from the RSS feed, or B — episode kit uploaded to one of the two existing Spotify for Creators shows (name the show)}}.
29. Every show description, and {{FILL: outro wording, or "no outro"}}, states that the
    episode is narrated by an AI voice.
30. RuntimeRepublic.com and BlueprintLiberty.com carry episodes by {{FILL: how the two sites show episodes — embed the player page, link the feed, or other}}.
31. Intro or outro audio, if any, must be a file the Human Engineer owns the rights to:
    {{FILL: intro/outro file, or "none"}}.

---

# 4. Edge Cases (must be tested)

| Case | Handling |
|---|---|
| Lesson is Draft or Review | Skipped with the reason logged; nothing sent to ElevenLabs |
| Only the header changed | Fingerprint unchanged; not re-narrated |
| Essay text of a narrated lesson changed | CONTROL 05 sends it back to Review; skipped until re-Approved |
| Narration contains a swapped spelling (`N B B F`) | Swap reversed in the transcript before comparing (§3.2 rule 7) |
| Transcript match below `min_word_match` | Run fails; no commit, no pull request |
| ElevenLabs returns an error | Run fails with the error shown; no retry |
| Request built with normalization other than `off` | Refused before sending |
| `ELEVENLABS_API_KEY` missing | Run fails before any request |
| Lesson has no `series-navigation` markers | Spoken text runs to the end of the file |
| Narration pull request is closed | Nothing kept; the lesson stays `Podcast: Not recorded` |

---

# 5. Enforcement

• The narration pipeline (GitHub Action plus Python script) owns every rule in §3.
  It is software, so CONTROL 03, 10, 15 and 16 apply to it in full: layered code,
  file headers, and tests in the same commit as every behavior change.
• Rules 1–4, 5–7, 15–17 and 20–22 are pure text rules and are unit tested.
• Rules 8–14 live in one ElevenLabs adapter; a test fails the build if any other
  ElevenLabs endpoint appears in the source.
• Rules 24–25 are enforced by branch protection on `main` (CONTROL 14 §4).
• `scripts/check-lessons.sh` continues to check the header (CONTROL 05 §7).

---

# 6. Relationship to Other Controls

• CONTROL 02 — Development Phase Plan (Phase 2: podcasts)
• CONTROL 04 — Repository Structure (where audio and the pipeline live)
• CONTROL 05 — Lesson Standard & Approval Workflow (status, header, Podcast line)
• CONTROL 14 — Source Control & Commit Governance (pull requests, protected `main`)
• CONTROL 16 — Release, Security & Readiness (the API key)
• Essay-Audio-Runtime CONTROL 07 — the voice-engine rule this document carries over

---

# 7. Revision Policy

Changes require Human Engineer approval and a version bump with a one-line
`Change:` note under the header.

---

END OF DOCUMENT
