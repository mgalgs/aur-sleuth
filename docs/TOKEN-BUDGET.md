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

A 28-package sample — a stratified pick from the settled verdicts, plus the
five packages the 2026-08-25 scheduled run showed at the extremes — measured
offline at the production ceiling of 10:

```
stage         prompt tokens    share    calls
gate                111,234    12.9%       28
required            103,450    12.0%       35
select               34,888     4.0%       13
additional          612,306    71.0%      136
                    -------
total               861,878              212      mean 30,781 per package
```

Two facts about that total matter more than the split.

**Most of it is not content.** Of 3,102,774 prompt characters, 1,346,592 are
the system prompt: 43.4%. `file_auditor` is 6,637 characters and goes out on
199 of the 212 calls — **1.7× the median file it is attached to**, which is
3,849 characters in the additional stage. Add the response-format block and
the untrusted-input warning that ride along in every user prompt and the
repeated-instruction share is **51.9%**. The loop's cost is dominated by the
fixed price of making a call, not by what the call is about.

**The ceiling is a quota in practice.** Of 1,795 audit reports on the
audit-reports branch, 61% reviewed 11 to 13 files — the required files plus
all ten additional. The selection prompt says "10 is a ceiling, not a quota".
Models do not read it that way.

Content is the minority, and it is concentrated: the median reviewed file is
3,658 characters, and only 13 of 159 review calls exceeded 20,000. The
`MAX_FILE_CHARS` cap of 120,000 almost never binds.

At the time of measurement the provider reported **no prompt caching**, so
cost tracks tokens one for one. That is worth re-checking before any work
aimed at cost rather than tokens: a cached prefix is billed at a discount but
still counted, and the two questions then have different answers.
`bench/token-ledger.py` reports cached tokens separately for this reason.

## What has been taken

**Vendored third-party bundles rank with the documentation.** `node_modules`,
`bower_components`, `vendor`, `third_party`, `site-packages`, `.yarn`,
`3rdparty` and their kin drop to the documentation tier in
`file_security_priority()`, whatever the file's own name or extension says. We
hunt for code injected into the AUR packaging, and nobody in the AUR touched a
bundled dependency. A bundle also holds thousands of files, so reviewing ten
is not coverage of it.

Measured on the sample, both sides on identical sources: **−5.0% overall,
−6.9% on the additional stage.** Three packages account for nearly all of it
(antigravity −41.5%, emby-server-beta −20.7%, conky-lua-nv −17.8%); every
package without a bundle is unchanged to the token, which is the point — the
rule fires on a location, never on a file type.

One package got *more* expensive: joplin-desktop, +36.9%. It had been spending
seven of ten slots on `.yarn/patches/*.patch`, upstream's own patches to its
vendored npm packages. With those demoted the ranking reaches further into the
tree and finds a larger file. Fewer tokens is the aim; better-chosen files is
the reason, and the two do not always point the same way.

The file-selection prompt had asked for this in words for some time, and the
judge's learnings record models picking `node_modules` anyway. A directory
name is decidable by parsing — CLAUDE.md, "Prefer code over prompt for
anything decidable".

## What is left, and why it was not taken

**The repeated instruction: 51.9% of all prompt characters.** This is the only
lever big enough to halve the total, and it is the one CLAUDE.md flags as the
most regression-prone surface in the repo. Every `file_auditor` edit lands on
the `makepkg` gate too, where a false UNSAFE aborts the whole audit, and items
5, 6 and 7 are what suppress a large class of false positives. A shorter
prompt is not a mechanical change; it is a rewrite of the threat model's
canonical expression. Two options exist and neither was taken here:

- Compress the prose while preserving every rule. Cheap in tokens, expensive
  in risk, and the acceptance test is a live re-run on a real `-bin` package
  plus every synthetic.
- Send the instruction once per package instead of once per file. This means
  one conversation rather than N, which changes `audit_files()`'s parallelism
  and its failure isolation, and makes each turn carry the previous turns'
  history — quadratic unless the history is pruned.

**The review ceiling: the largest lever with a knob already attached.** Since
production takes the full quota, cutting `NUM_FILES_TO_REVIEW` from 10 to N
cuts the additional stage close to linearly — roughly 7% of the total per slot
given up. It is a setting, reversible, and now actually honoured from the
environment and the config file.

What stopped it being taken here is evidence, not arithmetic. Every settled
verdict on the branch is `safe`, so a smaller ceiling scores as "accuracy
unchanged" on the benchmark **by construction**: reviewing fewer files cannot
produce a wrong answer about a package that is clean. The benchmark can only
show a ceiling cut does not add false positives — never that it preserves
detection.

`bench/synthetics/malicious-deep-payload` was written to close that gap: a
clean PKGBUILD whose `prepare()` invokes a generator holding the payload, so
the fixture fails when the budget stops reaching it. Against
qwen/qwen3-235b-a22b-2507 it is caught 3 times out of 3 at every ceiling from
10 down to 3, while the audit's prompt falls only from 20,282 to 14,527
tokens — a 28% cut for a 70% smaller budget, because the per-call overhead
does not shrink with the quota. One fixture on one model is a data point, not
a licence; it is the start of the evidence a ceiling change needs, not the
end.

**Per-file content caps: measured, and not worth it.** Capping the additional
stage by priority tier (60k/30k/20k/12k characters) saves 14.8% of content
characters — about 7% of the total — and every character it removes is one
that `locate_evidence()` might have needed. `_cap_chars()` keeps head and tail
with no suspicious-line scan, so on exactly the files that cost most the middle
is dropped blind. A cap worth taking would fix that first.

**Deduplicating candidates by content.** `decide_next_files_to_review()`
dedups by basename; the same bytes under two names still cost two slots. The
selection prompt asks models to notice this, which makes it a decidable
property expressed as a prompt rule. Unmeasured — it needs a pass over the
candidate pools, which the ledger does not record.

