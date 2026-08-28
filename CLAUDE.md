# aur-sleuth

## Scope: the threat model

`aur-sleuth` detects **supply-chain attacks that target the AUR**. That is the whole
threat model. It is not a general security auditor. It is not a vulnerability scanner.
It does not rate how dangerous an application is.

The attacker is someone who injects malicious code into the AUR packaging pipeline:

- A malicious AUR maintainer, who puts a payload in the `PKGBUILD`, an `.install` hook,
  a `.patch`, or any other file committed to the package's repository.
- An account takeover of a trusted maintainer, who then pushes a malicious update.
- A `PKGBUILD` that fetches an artifact nothing pins, so whoever controls the URL can
  swap the bytes later.

The user's decision we support is narrow: **is it safe to run `makepkg` on this package
and install the result?** Not "is this application well written", and not "is this
application trustworthy with my data".

### The boundary: the AUR repository, and nothing makepkg fetches

An AUR package is a git repository, `aur.archlinux.org/<pkgbase>.git`. The maintainer
controls exactly the files committed to it, and nothing else. That is the boundary, and
it is decided in code (`maintainer_files()`), never by a directory name or a file
extension — an attacker chooses both:

- **Every file in the AUR repository is reviewed, unconditionally.** Wherever it sits,
  whatever it is called, whether or not `source=` names it: `prepare()` can invoke a
  file by path that no array lists, so a file that "nothing references" is still the
  maintainer's code. `bench/synthetics/malicious-deep-payload` is the regression test —
  a clean PKGBUILD whose `prepare()` runs `tools/gen-config.py`, and the payload is in
  the generator.
- **Everything makepkg downloads is upstream's, and it is never read.** If upstream is
  malicious, that is not an AUR supply-chain attack, and an AUR maintainer cannot inject
  into upstream's tree. So the downloaded sources are out of scope by decision: not their
  functionality, not their vulnerabilities, not their privacy practices, and not a script
  in them that `prepare()` runs by path. That last case is *recorded* — the PKGBUILD
  review notes which upstream files the build functions invoke, in code
  (`find_upstream_invocations()`), as a fact for the reader — and read no further.
- **What is left of the upstream concern lives in the `PKGBUILD`, which is read:** is
  the artifact pinned (`find_unpinned_remote_sources()`), where does `source=` fetch
  from, and what do the build functions do with it.

The boundary is "what was in the package directory before makepkg ran": `git ls-files`
in a clone, a snapshot of the directory for `--pkgdir`. It replaced a heuristic that
softened verdicts on files under `tests/`, `samples/` and the like, which meant a
payload under `tests/` got a softer verdict than one beside the PKGBUILD. Measured on
2026-08-25 before the change, the upstream-tree pass was 75% of every prompt token the
loop sent, and four of the six false flags on the benchmark sample were upstream files.

### In scope

- Every file in the AUR repository: `PKGBUILD` functions, `.install` hooks, patches and
  diffs (maintainer-authored code injected into upstream), local `source=` files, helper
  scripts, and anything else committed beside them.
- Fetching or executing remote content from an unexpected host.
- Obfuscation that hides what the code does.
- Anything that leaves the installed artifact unverifiable, so an attacker can swap it
  later. See "The checksum distinction" below.

### Out of scope

Do not report these. Each one is either upstream's, the application behaving as
designed, or a problem that is not AUR-specific:

- **The downloaded sources, entirely.** See the boundary above. Everything below is a
  consequence of it, spelled out because each one has produced false flags.
- **Upstream application functionality.** A VPN client that rewrites routes, or a
  browser that reads the filesystem, does what it says it does.
- **Vulnerabilities in upstream code.** We look for injected malice, not for bugs.
- **Upstream privacy practices**: telemetry, analytics, fingerprinting. Those are vendor
  product decisions.
- **Privileges the application needs for its stated purpose.** Example: a bundled
  network proxy that needs setuid to manage a TUN device.
- **Packaging hygiene on its own**: an unpinned source, a plain-http URL, or a missing
  checksum on a VCS source.

### The test to apply

Before you report a finding, answer one question:

> Could an AUR maintainer have injected this, and does it serve no purpose the package
> claims?

If the behavior belongs to the upstream application, it is out of scope, however risky
it looks. Risky-but-legitimate is not a finding.

### The checksum distinction

`sha256sums=('SKIP')` means two different things, and the difference matters:

- **On a VCS source** (`git+`, `svn+`, `hg+`, `bzr+`): SKIP is required, and the commit
  ref pins the content. Not a finding.
- **On an `http(s)` artifact**: the checksum is the *only* pinning mechanism. Without it,
  whoever controls the release URL can swap the bytes at any time, and every rebuild
  silently picks them up. For a `-bin` package, that artifact is the entire package. It is
  in scope, and it is reported.

`find_unpinned_remote_sources()` detects this **in code**, and the report carries it as a
note plus an `unpinned_sources` frontmatter count. It is never a verdict: SKIP checksums
are ordinary AUR practice, so failing on them would block a large share of legitimate
packages.

Do not move this back into a prompt. Two attempts to express it as a prompt rule both
produced false UNSAFE verdicts — once at the `makepkg` gate, once at the full review —
even with an explicit "the decision stays SAFE" instruction alongside. **Given a vivid
description of a risk, models escalate to UNSAFE regardless of instructions telling them
not to.** The general lesson: a syntactic property of the PKGBUILD belongs in code, where
it is deterministic and cannot destabilize a verdict. Reserve the prompt for judgment
calls that actually need a model.

## Prompt invariant

`SYSTEM_PROMPTS` in `aur-sleuth` is the canonical expression of the threat model above.
Items 5, 6, and 7 of `file_auditor` carry the upstream-versus-injected distinction. They
exist to suppress a large class of false positives.

When you edit a prompt, keep that distinction. Never add an instruction that tells the
auditor to flag risky-but-legitimate application behavior. Such an instruction fires on
every package of that kind, so it costs one false positive per package — the exact
failure mode those items prevent.

### One prompt, two callers

`file_auditor` serves **both** audit stages:

1. `check_pkgbuild()` — the narrow gate that decides only whether running
   `makepkg --nobuild --nodeps --noprepare` is safe. It appends its own
   `extra_instructions` to scope the question down. **An UNSAFE verdict here aborts the
   whole audit**, so a false positive costs everything.
2. The full per-file review that follows.

Any edit to `file_auditor` therefore lands on the gate too. Ask what your new text does
when the model is deciding only "is it safe to download the sources?"

State the decision boundary explicitly. Say what the auditor must *record*, and
separately what it must *not block on*. A fact worth documenting is usually not a reason
to fail. When you tighten the prompt toward flagging something, add a matching carve-out
to `check_pkgbuild()`'s `extra_instructions` if the gate could read it as grounds to fail.

This has regressed before: a checksum-strictness edit flipped the gate to UNSAFE and
aborted every `-bin` audit, while all three synthetic tests still passed. Synthetics do
not cover the gate's interaction with prompt changes — only a re-run on a real `-bin`
package does.

### Prefer code over prompt for anything decidable

If a property is decidable by parsing (a checksum value, a URL scheme, a file extension,
a flag in `.SRCINFO`), detect it in code. Prompt rules for decidable facts are worse on
every axis: they cost tokens, they vary per model, they need a live audit to test, and —
as the checksum case showed twice — they leak into the verdict even when told not to.
Keep the prompt for genuine judgment: does this code do something the package has no
reason to do?

### The second look

A verdict that accuses -- UNSAFE or INCONCLUSIVE, at the gate or in the file review --
is asked again, in the same conversation, against items 4-7 of the prompt (the gate
against its own narrower scope). The answer is kept only if it softens. That asymmetry
is the whole design: the pass cannot create a failure, only undo one, so it is the
opposite of the escalation the checksum history warns about. It is on by default
(`AUR_SLEUTH_SECOND_LOOK=incontext`; `off` disables it, `AUR_SLEUTH_SECOND_LOOK_GATE=0`
keeps it out of the gate) because it was measured first: six of seven judge-cleared
false flags softened, no true positive ever softened across every malicious fixture,
and `bench/synthetics/malicious-source-time` is the floor that would catch it talking
the gate out of a real one. `docs/TOKEN-BUDGET.md` has both rounds. Do not widen it to
SAFE verdicts, and do not let it run without the malicious fixtures in the gate.

### The console language, and the two things it never touches

The terminal may speak the operator's language (`_TRANSLATIONS` in `aur-sleuth`, keyed
by language; `AUR_SLEUTH_LANG` overrides, otherwise the system locale decides). Two
surfaces never do, and the split is the point:

- **The report file is always English.** It is archived to the public branch and
  parsed by bench scripts, so its frontmatter keys and values are a machine contract.
  The TUI methods take the localized string for the terminal and a separate English
  `report_msg` for the report; keep that split. A report that starts carrying the
  operator's language is a regression, not a translation.
- **The LLM prompts are always English.** They are the review surface this file is
  about; an edit lands on the `makepkg` gate too. Do not localize them.

Model-written verdict prose (the `<summary>`/`<details>` the user reads) is translated
only in a separate display-layer call, off by default (`AUR_SLEUTH_TRANSLATE_VERDICTS`),
after the audit, and only for non-SAFE verdicts. It reads the verdict text and writes
nothing back: it cannot change a decision, the second look, or anything published. Its
translator instruction is per-language content in `_TRANSLATIONS`, so a language without
one gets no translation rather than one in the wrong language. The deployment is
isolated from the feature on top of that: `bench/pipeline.sh` and `bench/benchmark.sh`
pin `AUR_SLEUTH_TRANSLATE_VERDICTS=0` on every audit invocation (`test-i18n.sh` fails if
the pin is lost), so a container-wide enable cannot leak into the public pipeline.

## Repo layout

- `aur-sleuth` — the whole tool, one Python script. `SYSTEM_PROMPTS` (prompts),
  `check_pkgbuild()` (the `makepkg` safety gate), `maintainer_files()` (the review set:
  the boundary above), `audit_file()` (per-file audit), `find_upstream_invocations()`
  and `find_unpinned_remote_sources()` (facts recorded in code).
- `bench/pipeline.sh` — the automated audit loop. Runs discover → audit → judge →
  re-audit → dashboard → push. Feeds the dashboard at mgalgs.io/aur-sleuth.
- `bench/run-synthetic-tests.sh` — regression tests. Run after every prompt change.
- `bench/synthetics/` — hand-written benign and malicious fixtures.
- `bench/test.sh` — runs every offline suite (`bench/test-*.sh`, the script's selftest)
  and fails if any fails. `--live` adds the synthetics. Run it before every commit.
- `deploy/container/` — the image and its entrypoint: the `prepare`, `audit`, `review`,
  `quarantine`, `publish`, `bundle`, `benchmark` and `screen` stages.
  `bench/review-pending.py` is the review stage's summary and advisory model read.
- `bench/dashboard/` — the public page's source (`index.html`, `app.css`, `app.js`);
  `bench/generate-dashboard.py` inlines them and builds the page's JSON from the branch.
- `bench/benchmark.sh` — scores candidate models against the verdicts settled on the
  branch (synthetics first, then a stratified sample of real packages). Writes only
  under `$DATA_DIR/bench/`, never to the branch. `bench/test-benchmark.sh` covers the
  scoring offline. The ops UI runs it as the `benchmark` container stage.
- `bench/scout.py` — the code-only shortlist of catalog models that could undercut a
  seat, and (`screen-list`) the one answer to which of them to screen next. The
  `screen` container stage runs `benchmark.sh --sample 0` over that list, cheapest
  first, within a budget: the synthetic fixtures alone, cents a model, which is what
  makes the shortlist worth reading. `bench/test-scout.sh` and `bench/test-screen.sh`
  cover both offline.
- `.claude/skills/self-improve/` — the audit-review-improve loop.
- `docs/PIPELINE.md` — the machinery, end to end; `docs/ROADMAP.md` — queued
  improvements, so intent survives the chat it came from.

## Verifying a change

Run the offline suites before every commit:

```bash
bash bench/test.sh                        # every bench/test-*.sh and the selftest
```

Run both of these as well after any prompt or audit-logic change:

```bash
bash bench/run-synthetic-tests.sh -q     # every benign exits 0, every malicious exits 1
./aur-sleuth <the-package-that-motivated-the-change> --output plain
```

The synthetic tests prove nothing regressed. Only a re-run on the original package
proves the fix works.
