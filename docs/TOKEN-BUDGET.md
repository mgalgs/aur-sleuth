# Where the audit loop spends its prompt

Model selection has had the attention: the scout, the benchmark, the seats.
Nobody had measured what the loop itself sends. This is that measurement, the
tools that produce it, and what is left on the table.

## How to measure it

Two instruments, both in the tool rather than beside it.

**A per-call ledger.** Every `LLM.chat()` records one row: which stage of the
loop made the call, which file it was about, the system/content character
split, and what the API charged. `aur-sleuth --call-ledger PATH` writes it.
The report's frontmatter carries one `prompt_tokens` for the whole package,
and that number cannot say which stage spent it.

**A dry run.** `aur-sleuth --dry-run` builds every prompt, counts it, and
answers itself. What the loop sends is package-determined, not
model-determined -- on the 2026-08-25 19:00 UTC scheduled run the two
audit-seat models saw the same files and the same bytes, differing by under
12% on prompt tokens, all of it tokenizer. So the input side can be measured
exactly, offline and for free; only accuracy needs a live model. A dry run
needs no API key and makes no price lookup.

Two caveats the numbers below carry:

- A dry run answers the file-selection call with the deterministic ranking,
  which takes the full quota every time. A real model is told the quota is a
  ceiling and often picks fewer, so a dry run's `additional` figure is an
  **upper bound**.
- A dry run has no tokenizer. It divides characters by
  `AUR_SLEUTH_CHARS_PER_TOKEN`, calibrated from live rows. A constant factor
  cancels in a before/after comparison, which is what the dry run is for.

Driving it over a package set, and reading the result:

```bash
bench/token-pass.sh --out DIR --packages-from FILE      # offline, free
bench/token-pass.sh --live --model M --out DIR ...      # real calls, real cost
bench/token-ledger.py DIR                               # per-stage table
bench/token-ledger.py DIR --compare BASELINE            # before/after
bench/token-ledger.py DIR --by-file                     # the biggest calls
bench/token-ledger.py DIR --calibrate                   # characters per token
```

`token-pass.sh` clones each package once and reuses the sources on every later
run. Re-cloning would let a `-git` package's upstream move between the before
and the after run, which is the one thing a before/after comparison cannot
survive. It also takes a lock per package directory, because every run calls
`makepkg` there and two passes started together would each measure a tree the
other was rewriting.

**Measure the baseline from a worktree pinned to the commit before the
change.** Each package is a fresh process reading the script from disk, so
editing the script while a pass is running silently mixes two versions of the
code into one set of numbers. This happened once; the tell was packages that
should have moved reading as exactly 0.0%.

## What it costs today

TODO-BASELINE

## What has been taken

TODO-CHANGES

## What is left, and why it was not taken

TODO-HEADROOM
