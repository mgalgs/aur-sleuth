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
4. **Escalation** (the re-audit phase). Every package whose judge ruling
   asked for a second look gets a fresh audit by the escalation model; the
   enlarged report set gets a fresh judge ruling on the next pass. An
   escalation run (`--escalate a,b` or `--escalate-pending true`) does this
   directly: `--escalate-pending` sweeps everything currently "worth a
   closer look", using the same state rule the public page uses
   (`bench/pending-escalations.py`).
5. **Dashboard.** `bench/generate-dashboard.py` rebuilds the page data from
   the branch: per-package state, evidence, costs, the funding numbers.
6. **Scout.** `bench/scout.py` compares the cached OpenRouter catalog
   against each seat's price and writes a shortlist of models that could
   undercut a seat, with the seats' shares of recent spend. Code only.

## Money

- `--daily-budget` caps the **scheduled** runs, across runs, via a spend
  ledger on the volume. The audit phase stops at `--audit-budget-share` of
  it; the judge and escalation phases run to completion even past it —
  settling a flag has top priority, and the overrun is logged
  (`runs.log`, `overrun=`).
- A **manual** run carries `--run-budget`: its own ceiling, measured from
  its own start. The daily ledger never refuses a manual run; it still
  records every cost, so the scheduled cap sees manual spend too.

## Verdict states

Computed once, in `package_state()` (`bench/generate-dashboard.py`); the
page only reads them:

- **confirmed** — two independent unsafe audits AND the judge agreed.
- **look** ("worth a closer look") — something said unsafe and nothing has
  settled it. The escalation sweep exists to drain this set.
- **clean** — nothing found, or a judge or a settled verdict overturned the
  flag.
- **unknown** — no model reached a verdict; missing information, not
  suspicion.

A verdict settled outside the pipeline lives in `bench/verdicts.json` and
outranks the models everywhere: the page, and the benchmark's references
("disagreeing with one of these is being wrong"). Its `by` field names who
decided, honestly.

## The three seats, and the free voices

- **Audit**: cheap models, two of them so they can disagree; every package,
  every model.
- **Judge**: reads reports when they disagree or agree on a warning.
- **Escalation** (`REAUDIT_MODEL`): the expensive second opinion, one call
  per flagged package.
- **Free voices** (`FREE_MODELS`, optional): extra audit opinions at $0,
  best effort, under their own short timeout. Failure is soft everywhere: a
  rate-limited or crashed audit — any report with no verdict and no spend —
  is absence, not a ruling. It triggers no judge read, marks nothing
  audited (discovery retries next run), and never reads as shallow
  coverage. A free voice that answers is a real verdict like any other,
  including the right to disagree — which triggers a paid judge read, so
  the overrun trend is the number to watch when adding voices.

Seats are set on the operations page's Models tab (a ConfigMap override; git
holds the baseline). `bench/benchmark.sh` scores candidates against the
settled verdicts — synthetics first for audit-seat runs — and the results
page ranks best-first: accuracy over everything *asked* (a shrug or an error
on a settled package counts against, so sitting out hard calls cannot win),
then cost. Promotion is always a person's click.

## Publish

Publishing is separate from running, and the deploy key exists only in the
publish Job. The flow (driven from the operations page): a **review** — two
decidable checks (only inert report data on the branch, no report naming the
deployment) plus an advisory model read for operator leaks — then a
**publish** that pushes the reviewed commit to `audit-reports` and the page
rebuilt from it to `site`, atomically. The page's data is rebuilt at publish
time from the image, so a code or verdict change reaches the public page at
the next publish, no audit run needed.
