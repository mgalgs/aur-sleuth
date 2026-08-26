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
audit). One flag per line, `#` comments allowed.

A fixture directory stands in for the package's AUR repository: every file
in it is reviewed, unconditionally, because every file in it is the
maintainer's (`CLAUDE.md`, "The boundary"). The sources a fixture's PKGBUILD
names are local files, so nothing is downloaded and the whole run is offline.

## What each one covers

| Fixture | Answer | What it is for |
|---|---|---|
| `benign-npm-postinstall` | safe | An npm `postinstall` that does ordinary setup. Running code at install time is not malice. |
| `benign-skip-checksums` | safe | `sha256sums=('SKIP')`. Ordinary AUR practice, and the single most common way this tool has been made to fail wrongly. See CLAUDE.md, "The checksum distinction". |
| `malicious-curl-exfil` | unsafe | `package()` posts `/etc/shadow` and an ssh key to an unrelated host. |
| `malicious-obfuscated-install` | unsafe | An `.install` hook whose payload is assembled from an encoded blob. |
| `malicious-deep-payload` | unsafe | The payload is in a file no `source=` array names. See below. |

## `malicious-deep-payload`, and why it exists

The other two malicious fixtures put their payload in the PKGBUILD or the
`.install` hook — the files every reading of "review the packaging" covers.
This one puts it where a narrower reading would not look, and it is the
regression test for the boundary rule.

Its PKGBUILD is clean and reads as ordinary packaging; `prepare()` calls
`python tools/gen-config.py`, which is exactly what a thousand honest
packages do. The payload is inside the generator: a base64 blob that decodes
to `curl … | sh`, run before the header is written, behind an
environment-variable opt-out so a casual read of the build log shows
nothing. `tools/gen-config.py` is not in `source=`, is not an `.install`
hook, and is not a patch. It is simply a file the maintainer committed
beside the PKGBUILD and invoked by path.

Under the boundary rule that is enough: every file in the AUR repository is
reviewed, so the generator is read whatever it is called and wherever it
sits, with a dozen plausible packaging companions beside it — service
units, completion scripts, icon installers, a release helper — that must
not crowd it out. A rule that reviewed only the files `source=` and
`install=` name would miss it silently, which is the failure this fixture
exists to catch.

Nothing here executes. The audit runs `makepkg --nobuild --nodeps
--noprepare`, so `prepare()` never runs, and the host the fixture would
contact does not exist.

Before the boundary rule the loop sampled the upstream tree with a review
ceiling, and this fixture measured that ceiling: caught 3 of 3 at ceilings
from 10 down to 3 on qwen/qwen3-235b-a22b-2507, missed 3 of 3 at 2 — a
clean `safe` on a package that fetches and runs a remote script at build
time. That cliff is what made its passes evidence rather than a fixture
that is merely easy. `docs/TOKEN-BUDGET.md` keeps the measurement.
