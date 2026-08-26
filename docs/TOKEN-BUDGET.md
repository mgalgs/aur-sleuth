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

**Prompt caching moves, so re-measure it rather than citing this page.** On
2026-08-25 the provider reported no cached tokens at all on the sample above,
and cost tracked tokens one for one. Later the same day a single audit of
papirus-icon-theme-git came back with 4,542 cached prompt tokens, 10.3% of its
prompt. Nothing in the loop changed between them; the routing did.

So the earlier figure was a measurement on a day, not a fact about the
provider, and any claim about cost needs its own reading. A cached prefix is
billed at a discount but still counted, so "halve the tokens" and "halve the
bill" have different answers whenever caching is live.
`bench/token-ledger.py` reports cached tokens separately for this reason, and
says so explicitly when a provider reports none.

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

**Accuracy: unchanged, against a same-run baseline.** The same 22 packages,
the same model (qwen/qwen3-235b-a22b-2507), the before run from a worktree
pinned to the commit ahead of the change:

```
                 audited  scored  agree        false flags  misses
before                22      19  13 (68%)               6       0
after                 22      19  13 (68%)               6       0
```

The two runs flag one different package each — `conky-lua-nv` after,
`customizepkg-git` before — which is model nondeterminism rather than a
shift: `customizepkg-git` is one of the packages whose prompts the change
left byte-identical, so it cannot be attributed either way. All five
synthetics pass, `malicious-deep-payload` included.

Six false flags out of nineteen is the incumbent's own behaviour on this
sample, not something the change introduced, and it is worth its own look:
half of the hard negatives — packages a judge had already had to clear —
were flagged again.

## Can the auditor catch its own mistake?

The audit seat's false flags are not gaps in what the model was shown. They are
mistakes about facts it already had: on `itch-setup-bin` the makepkg gate read
the same PKGBUILD and got it right — "checksums provided for all sources, no
SKIP" — and the full review then called the same file an unverified download.

Three arms were built to test whether asking again fixes that, all off unless
their environment variable is set:

- **A, `AUR_SLEUTH_SECOND_LOOK=incontext`** — one more turn in the same
  conversation, so the model still has the file. Costs a full resend.
- **B, `AUR_SLEUTH_SECOND_LOOK=fresh`** — a new model given only the verdict's
  own reasoning, no file. Cheaper; can only catch an argument wrong on its face.
- **C, `AUR_SLEUTH_FACTS=1`** — a deterministic block prepended to the review,
  computed by parsing: how many remote sources carry a real checksum, whether
  the global scope fetches from the package's own `url=` host, whether the
  packaging names this file.

Both second looks re-ask **only** on UNSAFE or INCONCLUSIVE and keep the answer
**only if it softens**. A SAFE file is never re-asked, so the pass can undo an
accusation and can never invent one. The rules it applies are items 4 through 7
of `file_auditor`, sliced out of the prompt at runtime so they cannot drift
from what the first pass was given.

Round 1, 22 packages, qwen/qwen3-235b-a22b-2507, one run each:

```
run          synth   agree    hard flags  misses   prompt tokens
baseline      7/7    12/19       7/12       0        667,946
arm A         6/7    17/19       2/12       0        712,691   +7%
arm B         7/7    17/19       2/12       0        690,130   +3%
arm C         7/7    13/19       6/12       0        735,461  +10%
arm A+C       7/7    17/19       2/12       0        667,957   +0%
```

**A and B each cleared five false flags** — `conky-lua-nv`, `customizepkg-git`,
`f3`, `papirus-icon-theme-git`, `vicious-git` — with no misses and nothing
newly flagged. Those five are every flag the arms could reach.

**The other two were never tested.** `icaclient` and `itch-setup-bin` both
stopped at the makepkg gate in every arm run, and round 1's arms do not run
there. They are untested, not failures — reporting them as passes would count a
coin that was not flipped.

**C is not worth taking on its own**: one flag moved, the most tokens. But A+C
matched A's accuracy at **no net token cost**, because the facts block makes
the first pass flag less often and each flag avoided is a resend avoided.

Two cautions on reading this table. Every column is one run, and this sample's
run-to-run noise is real — the baseline itself moved between 6 and 7 hard flags
across two identical-code runs. The 7→2 change is far outside that; the
differences between A, B and A+C are not.

And **arm A's failed fixture is not a softening.** The report has zero "Second
look" lines and `tools/gen-config.py` was never reviewed at all: the selection
picked two other files and missed the payload, so the arm never ran.

Asked directly — every malicious fixture, both arms, three runs each, at a
ceiling that reaches the payload — a second look has never talked one down:

```
arm         fixture                        caught  fired  softened
off         all four                        3/3      -       -
incontext   curl-exfil                      3/3     3/3      0
incontext   deep-payload                    3/3     3/3      0
incontext   obfuscated-install              3/3     3/3      0
fresh       curl-exfil                      3/3     3/3      0
fresh       deep-payload                    3/3     3/3      0
fresh       obfuscated-install              3/3     3/3      0
```

`fired` is the column that matters: counting a "pass" on a run where the pass
never ran would be counting a coin that was not flipped. It fired on nine true
positives per arm and softened none of them. `source-time` shows `fired` 0
because its flag is at the gate, which round 1's arms do not reach.

`deep-payload` was caught 3 out of 3 here, at `-n 10`. It was flaky under
`benchmark.sh` only because of what that harness passes — which is its own
finding:

### The review ceiling was never enforced in code

`decide_next_files_to_review()` returned the model's list unclipped.
`num_additional_files_to_review` appeared only in the prompt text, as "choose
UP TO N files". Nothing truncated the answer.

So `-n 0` never meant zero. It asked the model for up to zero files and took
whatever came back — which is why `benchmark.sh`, which passes `-n 0` for every
fixture to isolate the required-file path, has been running an unintended
additional pass on every synthetic in every benchmark ever run.

It is also the mechanism behind the production finding above: models take the
whole quota because they are *asked* for the whole quota and nothing clips it.
Had one returned fifteen, all fifteen would have been reviewed.

### Round 2: the same pass at the makepkg gate

Round 1 could not touch the two flags that mattered most — `icaclient` and
`itch-setup-bin` both stopped at the gate, where round 1's arms did not run.
Round 2 turns the second look on there too, behind its own switch
(`AUR_SLEUTH_SECOND_LOOK_GATE=1`), in-context mode, since at the gate the
question turns on what the PKGBUILD says and in-context is the mode that still
has the file.

It was allowed to run only after the gate had a malicious floor to fail:
`malicious-source-time` is caught 3 runs out of 3 with the gate arm on, with
the second look confirmed firing every time. It runs, and declines to talk a
source-time payload down.

```
run          synth   agree    hard flags  misses   prompt tokens
baseline      7/7    12/19       7/12       0        667,946
arm A         6/7    17/19       2/12       0        712,691   +7%
gate arm      7/7    18/19       1/12       0        779,435  +17%
```

**`itch-setup-bin` cleared, and the gate arm is what cleared it.** The gate
flagged it; the gate's re-ask softened it, in as many words:

> under the narrow gate rules — which only allow marking UNSAFE if sourcing
> the PKGBUILD itself triggers malicious execution — this does not qualify

That is the gate scoping text working. The audit then continued past the gate,
the required review flagged the same file again, and the review's own second
look softened that too. Both passes fired on one package and both cleared it.

Note the reporting trap in that: the package shows as having "reached review",
which looks like the gate passed it on its own. It did not — the gate flagged
and was overruled. A stage-reached column cannot tell those apart, so read it
with the second-look lines, not instead of them.

**`icaclient` is not cleared, and this is the real finding.** The gate's
re-ask fired and held UNSAFE, with an argument rather than a shrug: executing
`curl | grep | sed` in global scope at parse time is remote influence over the
build, whatever the destination. The hand-settled verdict disagrees — the page
is the package's own `url=` field, nothing fetched is executed, and the
artifact is pinned by a real sha256.

So the second look is not a rubber stamp that softens whatever it is shown. It
softened six packages, held on this one, and held on nine true positives. What
remains on `icaclient` is a genuine disagreement about whether parse-time
network access is itself the threat — a judgement call, not a mistake about a
fact, and so not the kind of thing a re-ask was ever going to fix.

**Cost.** +17% prompt tokens against baseline, more than round 1's +7%,
because more passes fire: 15 second looks across 12 reports here against 11
across 6. Enabling it at the gate roughly doubles how often the pass runs.

Same caution as round 1: one run per column, on a sample whose baseline moves
by a flag between identical-code runs. The 7→1 change is well outside that
noise; +17% against +7% is not clearly separable from it.

## The gate and the full review disagree with each other

Not a token finding, but it came out of this measurement and it bears on
anything that tries to reduce false flags.

`itch-setup-bin` was audited twice on identical code, minutes apart. Both runs
flagged the same line of the same file — `evidence_line: 30`, the
`source_x86_64` entry whose local filename carries `$(date +%F-%H)` and whose
bytes are pinned by a real `sha256sums_x86_64`. The two runs did not agree on
anything else:

```
run A   1 verdict   PKGBUILD unsafe   "Command substitution in source enables
                                       code execution during sourcing"
run B   2 verdicts  itch.sh safe      "Unverified binary download with
        PKGBUILD unsafe                mismatched checksum"
```

One verdict means the makepkg gate refused and the audit stopped there. Two
means the gate passed the same file — and then the required review flagged it,
for a different reason. So the same PKGBUILD is a source-time execution risk or
an unverified download depending on which stage happens to look at it, and
which stage looks at it depends on the run.

Neither reading survives the facts: the artifact is pinned, and a generated
local *filename* has no bearing on integrity, since makepkg refuses a build
whose bytes do not match. But the useful part is not that a stage is wrong. It
is that the two stages are not consistent with each other on the same input,
which is the strongest argument for asking again before an accusation stands —
and for asking at both ends rather than one.

It also means a single benchmark run cannot measure a change at either stage on
a package like this: the run-to-run flip moves the package between stages, so a
result has to say which stage the run actually reached before it says whether
the change did anything.

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

**Removing the upstream-tree review entirely: −75%, from the stage table.**
If the threat model narrows to the maintainer-controlled set — the files in
the AUR git repository, with everything `makepkg` fetched out of scope by
decision — then the additional stage (71.0%) and the selection call that
feeds it (4.0%) both go. The gate and the required files are untouched. That
is the single largest number on this page, and it comes from the stage table,
not from any sweep. What remains is the gate plus the required reviews: 24.9%
of today's spend, of which roughly half is the repeated instruction. So the
prompt lever survives the scope change and becomes the dominant one.

**The review ceiling: a knob already attached, worth less than it looks.**
Cutting `NUM_FILES_TO_REVIEW` from 10 to N trims the additional stage, but
not linearly, and not by the stage's full share — the model may not have been
spending the whole quota, and every call that remains still pays the fixed
overhead. It is a setting, reversible, and now actually honoured from the
environment and the config file.

What stopped it being taken here is evidence, not arithmetic. Every settled
verdict on the branch is `safe`, so a smaller ceiling scores as "accuracy
unchanged" on the benchmark **by construction**: reviewing fewer files cannot
produce a wrong answer about a package that is clean. The benchmark can only
show a ceiling cut does not add false positives — never that it preserves
detection.

`bench/synthetics/malicious-deep-payload` was written to close that gap: a
clean PKGBUILD whose `prepare()` invokes a generator holding the payload, so
the fixture fails when the budget stops reaching it. Swept against
qwen/qwen3-235b-a22b-2507, three runs per ceiling:

```
ceiling   caught   files actually reviewed   mean prompt tokens
     10      3/3                         6               20,282
      8      3/3                         -               18,960
      6      3/3                         6               20,208
      5      3/3                         -               18,299
      4      3/3                         -               16,455
      3      3/3                         3               14,527
      2      0/3                         2               12,248
```

The cliff at 2 is what makes the rest of the column mean anything. A fixture
that always passes proves only that it is easy; this one is caught at every
ceiling down to 3 and then missed three times out of three at 2 — a clean
SAFE verdict on a package that fetches and runs a remote script at build time.
It can fail, so its passes are evidence.

**Read the flat region carefully.** Ceilings of 10 and 6 cost the same because
the model selected 6 files either way — not because the candidate pool ran
out, which it did not: the fixture offers about thirteen. On a package this
small the "10 is a ceiling, not a quota" instruction works, which is the
opposite of what production shows on real packages. So the 28% drop from
20,282 to 14,527 tokens is **6 files down to 3, not 10 down to 3**, and the
arithmetic agrees: three calls removed at roughly 1,900 tokens each.

This is also why the sweep says nothing about deleting the additional stage
outright. Trimming slots removes fewer calls than the quota suggests, because
the model may not have been using the quota; removing the stage removes every
call in it. Those are different operations, and only the stage table above
sizes the second one.

Three cautions on the fixture, and the first is easy to lose:

- **It cannot exercise a binding ceiling above 6.** The model never asks for
  more than six files here, so a future pass at 8 or 10 tests nothing the pass
  at 6 did not. Only a fixture with a tree big enough to make the model want
  the whole quota can test the ceiling where production actually sits.
- The payload sits in the top three of roughly thirteen candidates, so this
  bounds the *ranking's* quality on a small pool, not the ceiling's safety on
  a real package offering fifty.
- One fixture on one model is a data point, not a licence.

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

