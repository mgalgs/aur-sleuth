# Roadmap

Improvements discussed and queued, so nothing lives only in a chat scroll.
This file tracks intent; `PIPELINE.md` describes what exists. Each item
carries the date it was queued.

## Self-improving model and prompt selection

The goal (2026-08-23): proposals automated, every promotion a human click,
the benchmark as the one experiment runner.

1. **Model scout** — DONE 2026-08-23. Code-only shortlist of catalog models
   that undercut a seat, with recent per-seat spend shares so a price reads
   in whole-pipeline terms. Next: track what the operator has already seen,
   so the card can say "new since your last look".
2. **Benchmark image override** (queued 2026-08-23). Let a benchmark run a
   candidate IMAGE built from a reviewed branch, so prompt and code
   experiments run through the same scoring as model candidates.
   Experiments must be images, never branches fetched at runtime — a branch
   fetch would be remote code execution by push. Passtune-gated like every
   verb.
3. **Prompt proposer** (queued 2026-08-23). A periodic strong-model pass
   over the deltas nobody reads systematically: the judge's aggregated
   learnings, benchmark disagreements, and settled-verdict overturns since
   the last sweep. Output: a PR with the diff, the rationale, and the
   predicted effect. Acceptance gate, fixed in advance: synthetics pass, no
   new false flags on the hard set, and the `makepkg`-gate re-run on a real
   `-bin` package — prompts are the most regression-prone surface in this
   repo (see CLAUDE.md's history).
4. **Delayed-scoring benchmark mode** (queued 2026-08-23). Sample
   yesterday's actual stream and score the candidate when the mainline
   settles it. This is the honest form of "A/B in the regular pipeline":
   same machinery, no second pipeline, experiments still never write the
   reports branch.

## SleuthBench: the trust gate (queued 2026-08-23)

One named, comparable number per model: **sleuthbench, 0 to 1.0**, computed
by the existing benchmark machinery over a FIXED, versioned evaluation set
(sleuthbench-v1: every hand-settled verdict, the synthetic fixtures, and a
pinned stratified sample of settled packages heavy on hard negatives).
Comparable means the set is the same for every model and every run of the
same version; the set re-pins only with a version bump.

- Score = effective agreement over the set (non-answers count against),
  with hard gates that zero it: any miss or false flag against a
  hand-settled verdict, or a failed synthetic, is not a low score — it is
  a fail.
- **Trust rule**: a model's verdicts count only once it holds a passing
  sleuthbench (threshold configurable, e.g. 0.9). Until then it is
  advisory: its reports may ADD scrutiny (trigger a judge look) but never
  conclude — never counted toward "confirmed", never able to flip an
  audit majority toward clean. This is the answer to two bad models
  agreeing, incorrectly: unqualified agreement can only summon the judge,
  not settle anything.
- Enforcement points: the pipeline's state and trigger math (the advisory
  tier above), and the UI — seating a model without a passing sleuthbench
  warns and links the one-tap benchmark that would qualify it.
- Prerequisite: judge-role synthetics (below), or judge candidates can
  only be scored on false-flag resistance.

## Operations page

- Live updates (SSE or a websocket) instead of the 10s poll. Deferred
  2026-08-23: the poll now redraws only on real state change and open
  sections survive redraws, which removed the visible pain. Revisit if the
  page still feels laggy.
- A pending-reports view. The Reports tab was dropped 2026-08-23 (published
  reports browse better on the public page); reading an *unpublished*
  report now takes the concern quotes or the job logs. Add a small pending
  view if that gap is felt. The reader's `/api/reports` endpoints were kept
  for exactly this.

## Pipeline

- Scheduled-vs-manual run overlap: `concurrencyPolicy: Forbid` does not see
  UI-created Jobs. Options: a prepare-stage check for a running audit pod,
  or suspending the schedule around manual runs (needs RBAC the controller
  deliberately lacks). Queued 2026-08-22.
- `generate-dashboard.py` reads the whole branch one `git show` at a time
  (~4.4k files) at every publish; the second bottleneck at 10x scale.
- The review's advisory read is O(pending reports); incremental reading
  would remove the worst case (347 texts took 15 minutes on 2026-08-23
  before the worker knob).
- Judge-role synthetics: the benchmark skips fixtures for judge runs
  because fixtures have no reports to judge. Canned audit reports for the
  fixtures would give judge candidates a malice-detection score, not just
  false-flag resistance. Queued 2026-08-23.

## Naming

- "Escalation" replaced "re-audit" in operator-facing surfaces on
  2026-08-23. The stored keys (`re_audit_recommended`, `reaudit_date`,
  `AUR_SLEUTH_REAUDIT_MODEL`) keep their names for data continuity; a
  migration is queued only if the split ever confuses more than it costs.

## Known flakes

- `bench/test-publish-gate.sh` "rewriting twice should be a no-op" failed
  once in a full-suite run on 2026-08-23 and passes alone; the emitted
  dashboard data is deterministic under hash-seed variation, so the cause
  sits in the test fixture. Chase before trusting a red suite blindly.
