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
   **Model screening** — DONE 2026-08-26. A price ceiling and an output-length
   floor in the scout, a `screen` container stage that runs each unscreened
   candidate against the synthetic fixtures alone (cents a model, cheapest
   first, within a budget it will not exceed), and three groups on the card:
   `candidates`, `new_arrivals`, `rejected`. It was built because the
   shortlist was ten sub-$0.07/Mtok models nobody would seat, while
   `z-ai/glm-5.3-flash` — 90% under the judge seat, 1M context — ranked 32nd
   by price and could never appear. Measured on the way: the old per-seat cap
   was never the cause. Undercutting is monotone in price, so the seat lists
   are nested and any per-seat top-N is just the N globally cheapest, however
   it is written. Price rank itself was the blindness, and recency is the fix.
   Next: rank a seat's slice by measured cost-per-package once enough models
   carry one, so the card stops ranking on a catalog price the screen has
   already improved on.
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
5. **Cost forecast confidence interval** (queued 2026-08-24). The seat
   holder now always answers the sample beside the candidates, so every
   package carries a paired cost measurement — candidate and baseline on
   identical work. The per-package ratios give the forecast an empirical
   spread for free; showing "$1.00 → $0.85 ± $0.02" would let the Pipeline
   $ cell state its own precision instead of implying it. The rows already
   hold per-package, per-model cost; the work is aggregation and display.

## SleuthBench: the trust gate (queued 2026-08-23)

One named, comparable number per model: **sleuthbench, 0 to 1.0**, computed
by the existing benchmark machinery over a FIXED, versioned evaluation set
(sleuthbench-v1: the synthetic fixtures and a pinned stratified sample of
settled packages heavy on hard negatives). Comparable means the set is the
same for every model and every run of the same version; the set re-pins
only with a version bump.

- Score = effective agreement over the set (non-answers count against),
  with one hard gate that zeroes it: a failed synthetic is not a low score
  — it is a fail. (An earlier draft also gated on hand-settled verdicts;
  that file is gone, and the fixtures are the only references a model can
  be wrong against without argument.)
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
- The store's picture of origin goes stale after a publish started from the
  UI. That Job mounts the volume read-only on purpose — a Job holding the
  deploy key must not be able to write the store — so its best-effort
  write-back of `refs/remotes/origin/audit-reports` cannot land, and only the
  next scheduled prepare moves the ref. The Publish card no longer believes
  the stale ref (it reads the pushed commit out of the publish Job's own
  log), but the review stage still does: run one in that window and it
  reports one pending commit holding no reports. Options: a prepare-only verb
  the UI can press, or having the review stage fetch origin itself — which
  needs a credential the review Job is deliberately not given. Until then it
  clears itself within four hours.
- **The private side of community submissions** (queued 2026-08-28). The
  public half is done: `bench/register-contributor.py` and its workflow decide
  who may submit, `aur-sleuth-submit` is the client, and the `ingest` container
  stage verifies a submission's signature against `trusted-contributors` as
  `master` has it, and commits what it accepts. What is missing lives outside this
  repository, on the maintainer's own network, and is recorded here so whoever
  builds it has the contract.

  **The endpoint.** Behind a gateway that authenticates the caller by their
  node: it takes the identity and the invitation ring from the gateway's
  headers, accepts a POSTed git bundle, and spools it on the volume the
  container reads, one file per upload. It never merges anything itself. A
  per-user rate limit, and -- the part the client is already written for -- a
  **global cap on concurrent clients**, so the maintainer's home network stays
  usable: over the cap it either queues the client or answers `429`/`503` with
  a `Retry-After`, and never simply drops the connection. That header must be
  **delta-seconds**, not the HTTP-date form: the client reads only the numeric
  one, because parsing a date would need `date -d` (GNU-only) and a clock it
  trusts as much as the server's. The client obeys the number as given rather
  than clipping it to its own backoff ceiling, so an over-long hint costs a
  contributor the whole run — send the interval you actually mean. The gateway
  keeps its own host allowlist; the endpoint is reachable from nowhere else.

  **The invitation watcher.** Watches `master`'s `trusted-contributors` file
  for a new line, mints an invitation to the network for it, and emails the
  invite to the address on that line. One line, one invitation, and never a
  second for a line it has already seen.

  **The drain.** Runs the `ingest` container stage once per spooled bundle,
  passing `AUR_SLEUTH_SUBMISSION_URL` (the bundle path),
  `AUR_SLEUTH_SUBMISSION_REF`, `AUR_SLEUTH_SUBMITTED_BY` and
  `AUR_SLEUTH_SUBMISSION_RING` from what the endpoint recorded beside it. It is
  a writer, so it serialises against `prepare`, `audit`, `quarantine`,
  `benchmark` and `screen` like every other writer, and a refused bundle is
  kept with its reasons rather than deleted.
- The "seen before" mark on a repeated concern lives in the reader, not in
  `bench/review-pending.py`, and it has to: the review Job mounts the volume
  read-only, so the script can neither keep its own last answer nor reach the
  previous Job's log. Do not move it back into the script.

## Pipeline

- Audit identity by pkgbase (queued 2026-08-24). The AUR serves one
  repository per package BASE; a split package's own name gets an empty
  one. The tool now resolves the base through the AUR RPC before cloning
  and records `pkgbase:` in the frontmatter when it differs, so a split
  package gets a real audit — but everything downstream still keys on the
  pkgname: candidate selection, the audited index, the dashboard, the
  judge. Every member of a split package is therefore audited, judged and
  listed separately though they share one PKGBUILD (immich-server,
  immich-web, immich-machine-learning…). Keying the pipeline on pkgbase
  would audit each PKGBUILD once and list its members under it.
- Scheduled-vs-manual run overlap: `concurrencyPolicy: Forbid` does not see
  UI-created Jobs. Options: a prepare-stage check for a running audit pod,
  or suspending the schedule around manual runs (needs RBAC the controller
  deliberately lacks). Queued 2026-08-22. Seen for real 2026-08-24: a UI run
  and the 20:00 PT scheduled run shared the volume for 24 minutes, and the
  UI run's audits landed on the ledger while the scheduled run read it —
  which looked, until measured, like the free sweep costing money.
- `generate-dashboard.py` reads the whole branch one `git show` at a time
  (~4.4k files) at every publish; the second bottleneck at 10x scale.
- The review's advisory read is O(pending reports); incremental reading
  would remove the worst case (347 texts took 15 minutes on 2026-08-23
  before the worker knob).
- Judge-role synthetics: the benchmark skips fixtures for judge runs
  because fixtures have no reports to judge. Canned audit reports for the
  fixtures would give judge candidates a malice-detection score, not just
  false-flag resistance. Queued 2026-08-23.
- The dashboard credits a code finding to a model (queued 2026-08-27).
  `app.js` labels every unsafe `file_verdicts` entry "flagged by <model>",
  reading the report's `model:` field. `find_prompt_injection()` writes the
  first package-level UNSAFE verdict there, so its finding is attributed on
  the public page to a model that never made it. Package-level results were
  previously only inconclusive or skipped, which the findings block filters
  out, so nothing surfaced this before. A one-line fix belongs with the next
  dashboard change: label a verdict with no file "found by aur-sleuth".
- Fence the report text the judge reads (queued 2026-08-27). `bench/judge.sh`
  feeds whole reports to a model with no "treat this as untrusted input"
  fence — `aur-sleuth`'s audit prompt has one, the judge has none. Every
  UNSAFE verdict already quotes hostile package content into the report as
  evidence, so this predates `find_prompt_injection()`; that detector makes
  it easier to see, because a package whose whole finding IS text aimed at a
  model gets that text quoted onward to another model. The quote is capped
  at `_INJECTION_QUOTE_CHARS` so a padded payload cannot fill the report,
  which is a bound, not a fix. `bench/review-pending.py` reads reports the
  same way.

## Token budget (queued 2026-08-25)

`docs/TOKEN-BUDGET.md` has the measurement, the tools that reproduce it, and
what each idea below is worth. In short: 51.9% of what the loop sends is
instruction repeated on every call, so choosing files better cannot halve it.

1. **Shorten the repeated instruction.** The only lever big enough to halve
   the total, and the one CLAUDE.md flags as the most regression-prone
   surface here — every `file_auditor` edit lands on the `makepkg` gate, and
   items 5, 6 and 7 are the false-positive suppressors. Needs a decision
   from a person, not a measurement. Either compress the prose preserving
   every rule, or send it once per package rather than once per file (which
   changes `audit_files()`'s parallelism and failure isolation).
2. **Lower the review ceiling** — SUPERSEDED 2026-08-25. The ceiling and the
   stage it bounded are gone: the threat model now stops at the AUR
   repository (`CLAUDE.md`, "The boundary"), every maintainer file is
   reviewed and nothing downloaded is read. That removed the `select` and
   `additional` stages outright, 75% of the measured prompt tokens, and with
   them the four upstream-file false flags on the benchmark sample.
   `bench/synthetics/malicious-deep-payload` now guards the boundary rule
   instead of the ceiling.
3. **Re-check prompt caching before any cost-driven work.** The provider
   reported none on 2026-08-25. A cached prefix is billed cheaper but still
   counted, so "halve the tokens" and "halve the bill" would then need
   different answers. `bench/token-ledger.py` reports it separately.
4. **Deduplicate candidates by content, not just basename** (unmeasured).
   The same bytes under two names cost two review slots today. The
   selection prompt asks models to notice this, which makes it a decidable
   property expressed as a prompt rule — the pattern CLAUDE.md says to move
   into code. Needs a pass over the candidate pools first; the ledger
   records only what was selected.
5. **Give `_cap_chars()` a suspicious-line pass** before lowering
   `MAX_FILE_CHARS`. It keeps head and tail only, so on exactly the files
   that cost most the middle is dropped blind, and `locate_evidence()` can
   only find what was sent. Tier-based caps were measured at ~7% of the
   total and not taken for this reason.

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
  Seen again 2026-08-25, and the pattern held on both sides: red in a full
  run, green alone, then green in an immediate second full run on the
  identical tree. So it is nondeterministic rather than order-dependent,
  and a single red full run proves nothing on its own — re-run before
  chasing. The 08-25 failure was a tree-hash mismatch on the second
  rewrite (got 4291c8fa, want 711e9b30), which is where to start looking.
  Seen a third time on 2026-08-26, same shape again: a second-rewrite tree
  mismatch (got 0783cc2c, want 30d8d74d), green alone and green in an
  immediate second full run on the identical tree. Three sightings, three
  different hash pairs, always the second rewrite.
