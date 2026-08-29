# The pipeline

How a package goes from the AUR to a verdict on the public page, and where
the money goes. The threat model and the prompt rules live in `CLAUDE.md`;
this file is the machinery. The operations page (aur-sleuth-ui, private)
drives everything described here without a terminal.

## One run

`bench/pipeline.sh`, one invocation per run, scheduled or manual:

1. **Discover.** AUR metadata is refreshed, then two candidate streams are
   built: recently updated packages, and a popularity seed of packages never
   audited. The streams interleave at `--updated-share`. A sized run caps
   them (`--updated-count`, `--seed-count`); a named run (`--packages`)
   skips discovery entirely and audits exactly what it is told.
2. **Audit.** Every candidate is audited by each model on the audit seat, in
   parallel batches. Reports are archived to the local `audit-reports`
   branch as they land.
3. **Judge.** For every package whose reports disagree, agree on a warning,
   erred, or ran shallow, the judge model reads the reports and rules. A
   package already judged on the same report set is skipped.
4. **Escalation**, in rounds. Every package still "worth a closer look"
   after the judge phase gets a fresh audit by an escalation model that has
   not yet read it (`REAUDIT_MODEL` first, then `TIEBREAK_MODEL`), followed
   at once by a fresh judge ruling over the enlarged report set. A package
   the ruling settles leaves the list; one still flagged gets a second
   round with the other model. If both ordinary rounds leave it flagged, one
   final audit (`FINAL_AUDIT_MODEL`) and ruling (`FINAL_JUDGE_MODEL`) run. If
   that cannot settle it, it is "disputed" and the pipeline stops spending.
   The worklist and the model choice are
   `bench/pending-escalations.py`, on the same state rule the public page
   uses. An escalation run (`--escalate a,b` or `--escalate-pending true`)
   does the same directly: the sweep runs the rounds, named packages get
   one round whatever their state. (Before the rounds, a re-audit was one
   audit whose ruling came a run later — if a run with budget ever came.)
5. **Dashboard.** `bench/generate-dashboard.py` rebuilds the page data from
   the branch: per-package state, evidence, costs, the coverage numbers.
6. **Scout.** `bench/scout.py` compares the cached OpenRouter catalog
   against each seat's price and writes a shortlist of models that could
   undercut a seat, with the seats' shares of recent spend. Code only.
   The shortlist is four groups: each seat's cheapest slice plus whatever
   the screen has cleared (`candidates`), the newest candidates
   (`new_arrivals`), what the screen turned down (`rejected`), and the
   zero-price tiers (`free`). The groups exist because price rank alone
   reaches too few models — the ten cheapest candidates undercut all three
   seats at once, so no eleventh model places in any seat's slice however
   good it is, and recency is the second way in.

## Money

- `--daily-budget` is shared by the day's **scheduled** runs through a
  spend ledger on the volume. Each run gets a *slice*: what is left of the
  day, divided evenly over the runs still to come, itself included
  (`--runs-per-day`, which should match the CronJob; the arithmetic is
  `bench/budget-slice.py`, from the ledger and the clock). The audit phase
  stops at `--audit-budget-share` of the slice; the judge and escalation
  phases run to completion even past it — settling a flag has top priority
  — and the overrun shrinks the slices after it instead of gating them. It
  is logged (`runs.log`, `overrun=` and `slice=`). A run that finds the day
  spent still exits at once, as before. Escalations are further capped per
  run (`--escalations-per-run`), so a backlog drains across the day.
- A **manual** run carries `--run-budget`: its own ceiling, measured from
  its own start. The daily ledger never refuses a manual run, and never
  charges the schedule for one: its costs land on the ledger tagged
  `manual`, the scheduled arithmetic leaves them out, and the ops page
  shows them beside the day's scheduled spend. A person's escalation run
  (`--escalate`, `--escalate-pending`) is treated the same way.

## Verdict states

Computed once, in `package_state()` (`bench/generate-dashboard.py`); the
page only reads them:

- **confirmed** — two distinct models said unsafe, the audits lean unsafe,
  AND the judge's latest ruling agreed. Two reports from one model are one
  opinion.
- **look** ("worth a closer look") — something said unsafe and nothing has
  settled it. The escalation rounds exist to drain this set.
- **disputed** ("models disagree") — still "look" after ordinary escalation,
  tiebreak, and the bounded final-resolution cycle. Terminal: no further audit
  is coming; this is a model outcome, not an operator task.
- **clean** — nothing found, or a judge or a settled verdict overturned the
  flag.
- **unknown** — no model reached a verdict; missing information, not
  suspicion.

"The judge" here is its latest ruling, not a majority of every ruling it
ever made: each ruling reads every report there is, so a later one has
strictly more evidence — the escalation audit it was convened to weigh.

Nothing overrides the models. There was a file of hand-settled verdicts that
did (`bench/verdicts.json`), and it went: both entries in it were false
positives on files in the downloaded upstream tree, and the fix for a false
positive is the detection -- here, the boundary rule in `CLAUDE.md` -- not a
list of exceptions to it. A package the pipeline has wrong gets a re-audit or
a code fix, never an edit to the answer.

## The three seats, and the free voices

- **Audit**: cheap models, two of them so they can disagree; every package,
  every model.
- **Judge**: reads reports when they disagree or agree on a warning.
- **Escalation** (`REAUDIT_MODEL`, then `TIEBREAK_MODEL`): two expensive fresh
  opinions, each from a model that has not read the package yet.
- **Final resolution** (`FINAL_AUDIT_MODEL` + `FINAL_JUDGE_MODEL`): one last
  bounded audit-and-ruling cycle. It either settles the package or leaves the
  honest terminal state `disputed`; it never creates an operator task.
- **Free voices** (`FREE_MODELS`, optional): extra audit opinions at $0,
  best effort, under their own short timeout. Failure is soft everywhere: a
  rate-limited or crashed audit — any report with no verdict and no spend —
  is absence, not a ruling. It triggers no judge read, marks nothing
  audited (discovery retries next run), and never reads as shallow
  coverage. A free voice that answers is a real verdict like any other,
  including the right to disagree — which triggers a paid judge read, so
  the overrun trend is the number to watch when adding voices.

An **advisory run** (`--advisory`, or the run form's checkbox) is the tier
below even a free voice: its reports carry `advisory: true` in their
frontmatter and are information only. They never convene a judge, never
count toward agreement or a verdict, never mark a package audited, and a
late-arriving one does not reopen an already-judged package. When a real
report later convenes a judge, the advisory reports are in the pile the
judge reads — context from a model that has not earned a vote, useful for
leads. This is how an untrusted (usually free) model contributes without
being able to escalate anything. An advisory run cannot combine with
escalation, which exists to force a ruling.

**Ingest: community submissions.** Anyone can run `aur-sleuth` on a package
and offer the report, as a pull request against `audit-reports`;
`docs/SUBMITTING-REPORTS.md` is the contributor's side of it. A workflow
(`.github/workflows/report-submission.yml`) comments on the pull request and
closes it at once, so no submission sits in the open-PR list waiting on an
operator, and a closed pull request is the normal outcome rather than a
rejection. The container's `ingest` stage then takes the head — GitHub
publishes it at `refs/pull/<N>/head` on the base repository, readable with no
credential, so `AUR_SLEUTH_SUBMISSION_PR=<N>` resolves both the URL and the
ref — fetches it into a throwaway repository, applies
`bench/ingest-submission.py` (every rule in code, no model) and commits what
it accepts. The branch is never merged: a GitHub merge would put a commit on
origin that the store has not seen, and publish requires origin to be an
ancestor of the store.

A submission is a tier **below advisory**, and the ordering is worth stating
in full: a real audit votes; an advisory report is this pipeline running a
model it does not trust yet, so it carries no vote but a judge reads it as
context; a community report is an unverified claim from an unverified person
about both which model ran and what it decided. The one concrete consequence
of that last step down: an advisory report reaches the judge behind the
untrusted-data fence, and a community report never reaches a model at all.

Its frontmatter says which model ran and what it decided, and nothing can
check either, so the ingest keeps the claim as a claim and stamps what it
actually is: `advisory: true`, which is why a
submission counts toward nothing above, plus `source: community`, which says
who said it. The stamp is forced whatever the file claimed, `triggered_by` is
stripped, the pull request number and the submission's commit sha are
recorded, and the ingest names the file — a forger controls their own
filename, and the archive does not let them pick where it lands. A `.json` is
refused outright, because a `-judge.json` is a ruling the page counts; so is
any path the branch already has, which is the overwrite attack.

`source: community` then goes one step further than `advisory: true`. It is
not coverage in the audited index even under `--include-advisory`, so a
submission cannot keep a package away from the free sweep or the paid seats.
And it is not in the pile the judge reads, where ordinary advisory reports
are: a submission's body is text anyone with a GitHub account chose, aimed at
a model the pipeline pays for. The untrusted-data fence around the judge's
reports stays as defence in depth; exclusion is the rule. What is left is the
page, which shows it with the advisory glyph, labelled community, with the
submitter's label beside it.

## Model aliases

`--model-aliases` accepts an explicit mapping such as
`cheap=deepseek/deepseek-v4-flash;final=openai/gpt-5.4`. Any model seat may
then use `@cheap` or `@final`. Aliases resolve once at the run boundary.
Audit frontmatter records the concrete `model` and, when an alias was
actually requested, `model_alias`; judge usage records the same pair.
Concrete IDs remain valid, so old deployments and reports are unchanged.
The operations UI should show `alias → concrete id`; promotion should still
come from the task-specific audit or judge benchmark rather than reputation.

The scout never probes: the advisory work all goes through
`openrouter/free`, a router that picks among the free models that are
actually available on every request, so a scout probe would spend the free
tier's daily request allowance (1000 requests, 20/minute) on measurements
nothing acts on. The page's free list is the newest catalog entries,
information for the benchmark form only.

The **advisory sweep** (`AUR_SLEUTH_ADVISORY_SWEEP` on the settings page)
makes the advisory tier recurring: after each scheduled full run — including
one that exits on an exhausted budget, since the sweep spends nothing — the
pipeline runs a child advisory pass over N **recently updated** packages
with the sweep models (default `openrouter/free`). Updated only, never the
popularity seed: the threat model is malice arriving in updates, so free
coverage extends the paid run's reach down the updated list. The child's
audited index counts advisory coverage too, so the six daily sweeps do not
re-read the same updates; its audits run with extra retries
(`AUR_SLEUTH_LLM_RETRIES=5`) so the free tier's per-minute throttle is
ridden through, while the daily cap still fails soft. "Soft" is literal: an
audit whose every LLM call failed withdraws its report and leaves nothing —
no audited mark, no error transcript — so the package returns next sweep.
When the provider says the daily cap is spent — a per-day 429, which
carries the reset time — the audit exits 4 and notes the reset epoch in
`pipeline/free-quota-reset`; the sweep stops at once, and until that moment
every later run skips the sweep and the free voices outright, saying so in
its log (each probe would clone and source a PKGBUILD to hear "no" from
its first call). For a provider that does not say, two consecutive batches
that leave no report trip a circuit breaker and end the sweep: that only
happens when the daily cap is spent, and grinding down the rest of the
list would hold the Job past its deadline for nothing.
Shaped runs (named packages, counts, escalation, a manual budget) never
sweep, and a sweep failure never fails the run that carried it. The public page draws advisory
reports as hollow dashed squares labeled "informational only, not a vote",
keeps their findings out of the flagged list, and counts them nowhere.

Seats are set on the operations page's Models tab (a ConfigMap override; git
holds the baseline). `bench/benchmark.sh` scores candidates against the
settled verdicts — synthetics first for audit-seat runs — and always seats
the current holder of the targeted seat beside the candidates (prepended,
so a truncating budget costs a candidate its tail, never the baseline):
cost and accuracy deltas are then paired measurements on the identical
sample, where a ratio against the holder's old branch rulings proved to
mix measurement bases. The results
page ranks best-first: accuracy over everything *asked* (a shrug or an error
on a settled package counts against, so sitting out hard calls cannot win),
then cost. Promotion is always a person's click.

A full benchmark is $2–4 a model, which is too much to spend finding out
whether a model can do the job at all. The **screen** stage is the cheap
filter in front of it: one `benchmark.sh --sample 0` run per candidate — the
synthetic fixtures alone, three benign that must exit 0 and four malicious
that must exit 1 — at $0.08–0.25 a model. It is behavioural rather than
reputational, so it needs to know nothing about a model's lab, size or
quantization, and it rejects both degenerate answers: "everything is safe"
misses all four malicious fixtures, "everything is unsafe" fails all three
benign ones. The scout says who to screen and joins the answers back into the
shortlist; the stage spends the budget cheapest first, which screens the most
models per dollar, and stops rather than starting a model it cannot afford
whole.

## Publish

Publishing is separate from running, and the deploy key exists only in the
publish Job. The flow (driven from the operations page): a **review** — two
decidable checks (only inert report data on the branch, no report naming the
deployment) plus an advisory model read for operator leaks — then a
**publish** that pushes the reviewed commit to `audit-reports` and the page
rebuilt from it to `site`, atomically. The page's data is rebuilt at publish
time from the image, so a code or verdict change reaches the public page at
the next publish, no audit run needed.

Pushing `site` is not the same as serving it. GitHub's branch-based Pages
build silently stopped deploying roughly a third of those pushes — no build,
no deployment, no error, while the publish Job exited green either way, and
the page sat two days behind the branch. `.github/workflows/pages.yml` now
owns the deploy: every ten minutes it compares the live page's
`generated_at` against the branch's, deploys when they differ, and fails the
run if the deploy does not reach the page. A publish therefore goes live
within about ten minutes rather than at the moment it is pushed, and a
failure is a red run in the Actions tab instead of silence. Run it by hand
(`workflow_dispatch`, `force` to redeploy an already-current page) when that
wait is not wanted.

It polls rather than triggering on the push because a `push` workflow is
read from the branch that was pushed, and `site` holds page data only:
putting a workflow there would let the publish deploy key push code that
Actions executes, which is a far larger blast radius than the inert data it
can push today.
