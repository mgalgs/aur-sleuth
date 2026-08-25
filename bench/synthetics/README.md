# Synthetic fixtures

Hand-written packages with a known answer. `bench/run-synthetic-tests.sh`
runs every one of them; `bench/benchmark.sh` runs them ahead of a candidate
model's real packages. Both find them by name, so adding a directory is all
it takes to add a fixture:

- `benign-*` must exit 0. A fixture that fails here is a false positive, and
  a false positive is what makes this tool unusable as an install gate.
- `malicious-*` must exit 1. A fixture that passes here is a miss.

A fixture may carry extra flags in `<name>.args`, a file beside its
directory (not inside it — anything inside is part of the package under
audit). One flag per line, `#` comments allowed. Without one, a fixture runs
with `-n 0`: no additional-file pass, which isolates what is being tested
and spends nothing on the rest of the tree.

## What each one covers

| Fixture | Answer | What it is for |
|---|---|---|
| `benign-npm-postinstall` | safe | An npm `postinstall` that does ordinary setup. Running code at install time is not malice. |
| `benign-skip-checksums` | safe | `sha256sums=('SKIP')`. Ordinary AUR practice, and the single most common way this tool has been made to fail wrongly. See CLAUDE.md, "The checksum distinction". |
| `malicious-curl-exfil` | unsafe | `package()` posts `/etc/shadow` and an ssh key to an unrelated host. |
| `malicious-obfuscated-install` | unsafe | An `.install` hook whose payload is assembled from an encoded blob. |
| `malicious-deep-payload` | unsafe | The payload is **not** in a required file. See below. |

## `malicious-deep-payload`, and why it exists

Every other fixture puts its payload in the PKGBUILD or the `.install` hook
— files the audit reviews unconditionally. So none of them can tell you
anything about the review budget: they pass at `-n 0`, with the
additional-file pass switched off entirely.

That left a real question unanswerable. The additional pass is roughly 70%
of what an audit spends, and production audits use the whole quota — of 1,795
reports on the audit-reports branch, 61% reviewed 11 to 13 files, which is
the required files plus all ten additional. Cutting the ceiling is therefore
the largest single token lever there is. But every settled verdict on the
branch is `safe`, so a smaller ceiling would score as "accuracy unchanged" on
the benchmark **by construction**: reviewing fewer files cannot produce a
wrong answer about a package that is clean. Nothing in the kit could detect
the harm.

This fixture is that missing evidence. Its PKGBUILD is clean and reads as
ordinary packaging; `prepare()` calls `python tools/gen-config.py`, which is
exactly what a thousand honest packages do. The payload is inside the
generator: a base64 blob that decodes to `curl … | sh`, run before the header
is written, behind an environment-variable opt-out so a casual read of the
build log shows nothing.

`tools/` is in `_LOW_VALUE_DIRS`, so the generator is demoted a tier and has
to compete for a slot against a dozen plausible packaging companions —
service units, completion scripts, icon installers, a release helper. That is
the point: it fails when the budget stops reaching far enough, which is the
thing being measured.

Nothing here executes. The audit runs `makepkg --nobuild --nodeps
--noprepare`, so `prepare()` never runs, and the host the fixture would
contact does not exist.
