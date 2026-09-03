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
- **Everything `source=` fetches is upstream's, and it is neither downloaded nor read.**
  If upstream is malicious, that is not an AUR supply-chain attack, and an AUR
  maintainer cannot inject into upstream's tree. So the upstream sources are out of
  scope by decision: not their functionality, not their vulnerabilities, not their
  privacy practices, and not a script in them that `prepare()` runs by path. The audit
  does not even fetch them — checksum verification at audit time duplicated what the
  installing user's own makepkg does, against a pin read from the same PKGBUILD under
  audit, so it authenticated nothing. A build-function invocation of an upstream file
  is the PKGBUILD review's to describe from the PKGBUILD text; the coded fact that once
  resolved those paths against an extracted tree (`find_upstream_invocations()`) no
  longer runs during audits, and the report's `upstream` counts are always zero.
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
- Text in any of those files that is addressed to the automated reviewer rather than to
  makepkg. See "Attacking the review" below.

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

## Attacking the review

A maintainer can also attack the *reviewer*. Text committed anywhere in the repository
that tells an automated reader to ignore its instructions, or dictates the verdict to
return, is a finding on its own terms: an AUR maintainer can inject it, it serves no
purpose the package claims, and no honest packaging task requires addressing a security
reviewer. It is not on the "Out of scope" list, because every item there is either
upstream's or a hygiene issue that occurs innocently. This has no innocent version.

It is UNSAFE, not a note — which is where it parts company with the checksum
distinction above. An unpinned source is ordinary practice that happens to carry risk.
This is an act. And a review that was attacked cannot certify itself: there is no way to
know how far the text got, so the clean verdicts it returned on the other files are worth
less than they look.

Three constraints on any change here:

- **Never key on a filename.** The first idea was to give `AGENTS.md` and `CLAUDE.md`
  special attention. The attacker picks the filename, so such a rule generalises to
  nothing — a payload moves to a PKGBUILD comment and the rule is worth zero. Every
  maintainer file is read identically. `bench/test-prompt-injection.sh` asserts no
  pattern mentions a filename, and the fixture hides its text in a PKGBUILD comment.
- **Detect it in code, never in the prompt.** The general rule (below) already says so,
  but this case has a second reason the general one does not cover: *a model the
  injection steered cannot be relied on to report the injection.* The detector has to
  sit outside the channel the attack controls. `find_prompt_injection()` runs before the
  gate, and `bench/test-prompt-injection.sh` pins the consequence — with every model
  stubbed to SAFE, the package still fails.
- **Precision over recall.** A match fails the package, so a false positive is the
  expensive error; a paraphrase that slips past costs only what the tool had before this
  existed, since the fence above the `<file>` wrapper in `audit_file()` still tells the
  model to ignore whatever it finds. Widen the patterns from attempts actually seen.
  Measured 2026-08-28 over 405 real AUR packages (1,701 maintainer files, every package
  the pipeline had audited that still clones): zero matches. That is the false-positive
  floor, and it is code-only — no model was called, so re-running it costs nothing but
  the clones. Recall is unmeasured on purpose: there is no corpus of real attempts yet.

`sanitize_for_llm()` is not part of this. It XML-escapes, which stops content breaking
out of the `<file>` wrapper — structural escape only. Its docstring once claimed to
prevent prompt injection, which it never did.

## AUR mirror

`deploy/container/scripts/entrypoint.sh`'s `prepare` stage keeps a local bare mirror of
`archlinux/aur` on the persistent volume, and `download_package_to_tmpdir()` in
`aur-sleuth` tries it before falling back to a direct clone of
`aur.archlinux.org/<pkgbase>.git`. This is a bandwidth optimization, nothing more, and
the trust rule is the whole reason it is safe to have:

- **The mirror never decides what gets audited.** `git_ls_remote_head()` asks
  `aur.archlinux.org` directly what the package's current HEAD is -- that is the only
  question the canonical host is ever asked, and it is asked every time, mirror or no
  mirror. `materialize_from_mirror()` then clones the mirror's `<pkgbase>` branch (each
  AUR package is a branch of one large repository) and keeps the result only if its HEAD
  is *exactly* that SHA. A stale branch, a missing branch, or a branch an attacker
  tampered with all fail the same equality check and fall back to a direct clone; the
  mirror can only ever supply bytes for a SHA the canonical host already named, never
  choose the SHA. `bench/test-aur-mirror.sh` pins this against a synthetic mirror whose
  branch is deliberately made to disagree with its canonical counterpart.
- **Off by default, and every failure degrades to off, never to a hard failure.**
  `AUR_SLEUTH_MIRROR_DIR` is an operator-set path to a bare `git clone --mirror` of
  `AUR_SLEUTH_MIRROR_URL` (default `https://github.com/archlinux/aur.git`); nothing in
  this repository sets it, so a deployment gets the mirror only by setting the variable
  itself. Unset, empty, or naming a path that is not a directory all mean the feature is
  off -- `aur_mirror_dir()` in `aur-sleuth` is where that is decided, in code. A mirror
  clone that failed, was killed mid-write, or was never run all land in that same "not a
  directory" state, so the audit path never has to know which.
- **`--clone-url` skips it entirely.** That flag names a URL the caller chose on
  purpose; the mirror is keyed by `pkgbase`, which stays unresolved (`None`) whenever an
  explicit clone URL is given, so the mirror lookup that guards on `pkgbase` never fires.
  `bench/test-aur-mirror.sh` pins this specifically, because the property is a single
  `if not clone_url:` in `download_package_to_tmpdir()` and an ordinary-looking cleanup
  that hoists the `pkgbase` resolution out of it would silently start consulting the
  mirror for a caller-chosen URL.
- **The mirror clone is a second repository on the same persistent volume the `audit`
  stage writes untrusted output to**, exactly like `$GIT_STORE`. `sanitize_mirror()` in
  `entrypoint.sh` resets its `config` and removes `hooks/` before any trusted git command
  runs against it, for the same reason `sanitize_store()` does for `$GIT_STORE`: a
  previous `audit` stage's PKGBUILD could otherwise plant a hostile
  `remote.origin.url` or a ref-update hook that the next `prepare` stage's `git fetch`
  would then execute, in a stage the header describes as needing no secret and running
  no untrusted code.

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

## Repo layout

- `aur-sleuth` — the whole tool, one Python script. `SYSTEM_PROMPTS` (prompts),
  `check_pkgbuild()` (the `makepkg` safety gate), `maintainer_files()` (the review set:
  the boundary above), `audit_file()` (per-file audit), `find_upstream_invocations()`
  and `find_unpinned_remote_sources()` (facts recorded in code), and
  `find_prompt_injection()` (text aimed at the reviewer, decided in code).
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
- `bench/ingest-submission.py` — the gate on a community-submitted report.
  Decides in code what may land and rewrites what does: `advisory: true` and
  `source: community` are forced whatever the submission claimed, so a
  contributor's claim can never become a vote. That stamp is also all that
  separates it from one of the pipeline's own advisory runs: there are two
  tiers, not three, so a submission is in the judge's pile, in the review
  stage's advisory read, and in the audited index under `--include-advisory`,
  exactly as any advisory report is. It also decides WHO: the
  submission's commit must verify against `trusted-contributors` as `master`
  has it, read as an SSH `allowed_signers` file, and `submitted_by` is the login on the
  line the signing key is on, not the label the caller was given. The
  container's `ingest` stage runs it; `docs/SUBMITTING-REPORTS.md` is the
  contributor's side. Stripping a submission's `cost` and token counts there is
  only half of keeping it out of this deployment's accounting: `model` and
  `date` have to stay, so anything that COUNTS reports still moves. The other
  half is in `bench/generate-dashboard.py` — `pipeline_audits` and
  `latest_measured_date` — and neither half works alone.
- `bench/register-contributor.py` — the gate on who may submit at all. Eight
  rules over one pull request that adds one signed line to
  `trusted-contributors` at the root of `master`, every input a file so the
  whole set runs offline (`bench/test-register.sh`);
  `.github/workflows/register-contributor.yml` labels the pull request
  `registration-ready` on a pass and closes it with reasons on a failure — a
  MAINTAINER merges, so the workflow holds no write access to the repository
  — and `bench/trusted-contributors.sh` owns the file's format. The registry is a file in the tree, not a data branch: what
  bounds a registration to one line of one file is rule 2, not the branch it
  lands on. The activity floor is a spam cost, not a security control.
- `aur-sleuth-submit` — the contributor's client. Signs one commit adding
  `<package>/<name>.md`, bundles it, and POSTs it to the endpoint named in
  their invitation, backing off on the `429`/`503` that says the endpoint is
  at capacity. `bench/test-submit.sh` stands a local server in for it.
- `bench/scout.py` — the code-only shortlist of catalog models that could undercut a
  seat, and (`screen-list`) the one answer to which of them to screen next. The
  `screen` container stage runs `benchmark.sh --sample 0` over that list, cheapest
  first, within a budget: the synthetic fixtures alone, cents a model, which is what
  makes the shortlist worth reading. `bench/test-scout.sh` and `bench/test-screen.sh`
  cover both offline.
- `bench/test-aur-mirror.sh` — offline checks for the AUR mirror pre-fetch:
  `aur_mirror_dir()`, `git_ls_remote_head()`, `materialize_from_mirror()`, and
  `download_package_to_tmpdir()`'s wiring of all three. See "AUR mirror" above.
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
