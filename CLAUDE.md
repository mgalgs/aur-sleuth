# aur-sleuth

## Scope: the threat model

`aur-sleuth` detects **supply-chain attacks that target the AUR**. That is the whole
threat model. It is not a general security auditor. It is not a vulnerability scanner.
It does not rate how dangerous an application is.

The attacker is someone who injects malicious code into the AUR packaging pipeline:

- A malicious AUR maintainer, who puts a payload in the `PKGBUILD`, an `.install` hook,
  or a `.patch`.
- An account takeover of a trusted maintainer, who then pushes a malicious update.
- A swapped or compromised upstream artifact that the `PKGBUILD` pulls in unverified.

The user's decision we support is narrow: **is it safe to run `makepkg` on this package
and install the result?** Not "is this application well written", and not "is this
application trustworthy with my data".

### In scope

- Code that runs at build time or install time: `PKGBUILD` functions, `.install` hooks,
  and any script the package invokes during a build.
- Code injected into the upstream tree: patches, diffs, and added files.
- Fetching or executing remote content from an unexpected host.
- Obfuscation that hides what the code does.
- Anything that leaves the installed artifact unverifiable, so an attacker can swap it
  later. See "The checksum distinction" below.

### Out of scope

Do not report these. Each one is either the application behaving as designed, or a
problem that is not AUR-specific:

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

## Repo layout

- `aur-sleuth` — the whole tool, one Python script. `SYSTEM_PROMPTS` (prompts),
  `audit_file()` (per-file audit), `decide_next_files_to_review()` (file selection),
  `file_security_priority()` (selection ranking), `check_pkgbuild()` (the `makepkg`
  safety gate).
- `bench/pipeline.sh` — the automated audit loop. Runs discover → audit → judge →
  re-audit → dashboard → push. Feeds the dashboard at mgalgs.io/aur-sleuth.
- `bench/run-synthetic-tests.sh` — regression tests. Run after every prompt change.
- `bench/synthetics/` — hand-written benign and malicious fixtures.
- `bench/test.sh` — runs every offline suite (`bench/test-*.sh`, the script's selftest)
  and fails if any fails. `--live` adds the synthetics. Run it before every commit.
- `deploy/container/` — the image and its entrypoint: the `prepare`, `audit`, `review`,
  `quarantine`, `publish`, `bundle` and `benchmark` stages. `bench/review-pending.py` is
  the review stage's summary and advisory model read.
- `bench/dashboard/` — the public page's source (`index.html`, `app.css`, `app.js`);
  `bench/generate-dashboard.py` inlines them and builds the page's JSON from the branch.
- `bench/benchmark.sh` — scores candidate models against the verdicts settled on the
  branch (synthetics first, then a stratified sample of real packages). Writes only
  under `$DATA_DIR/bench/`, never to the branch. `bench/test-benchmark.sh` covers the
  scoring offline. The ops UI runs it as the `benchmark` container stage.
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
bash bench/run-synthetic-tests.sh -q     # benign exits 0, both malicious exit 1
./aur-sleuth <the-package-that-motivated-the-change> --output plain
```

The synthetic tests prove nothing regressed. Only a re-run on the original package
proves the fix works.
