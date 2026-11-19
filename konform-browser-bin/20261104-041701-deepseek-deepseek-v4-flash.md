---
package: konform-browser-bin
pkgver: 153.6.0_102
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 23858
completion_tokens: 3199
total_tokens: 27057
cost: 0.002753296
execution_time: 27.93
files_reviewed: 5
files_skipped: 2
maintainer_files: 7
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 2
injection_attempts: 0
date: 2026-11-04T04:17:01Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Plain .gitignore with build-artifact patterns; no malicious behavior.
  - file: default192x192.png
    status: skipped
    summary: "Skipping binary file: default192x192.png"
  - file: entrypoint.sh
    status: safe
    summary: Standard konform launcher; no network, eval, or suspicious behavior found.
  - file: konform-cb-release.asc
    status: skipped
    summary: "Skipping binary file: konform-cb-release.asc"
  - file: .SRCINFO
    status: safe
    summary: "Standard -bin .SRCINFO; sources from project's own codeberg upstream, no malicious code."
  - file: konform.desktop
    status: safe
    summary: Standard desktop entry for Konform browser; no malicious behavior found.
  - file: PKGBUILD
    status: safe
    summary: Standard konform-browser-bin PKGBUILD; sources from project Codeberg upstream, no malicious behavior.
---

Materializing konform-browser-bin from local mirror...
Materialized konform-browser-bin
Analyzing konform-browser-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The top-level PKGBUILD only defines metadata, dependency arrays, source URLs, checksum arrays, and package variables. The parameter expansions such as `${pkgname//-bin/""}`, `${pkgver%_*}`, and `${pkgver#*_}` are ordinary Bash string operations and do not execute external commands during `makepkg --printsrcinfo`.

No top-level `eval`, `curl`, `wget`, `base64`, command substitution, file modification, or network exfiltration was found. The `package()` function contains normal packaging operations, and in any case it is not executed by `--printsrcinfo`. The `SKIP` checksums for architecture-specific package artifacts are noted but are not grounds to fail this gate because no sources are downloaded or verified during metadata parsing.
</details>
<evidence>
</evidence>
<summary>Sourcing PKGBUILD is safe; no malicious top-level execution.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Sourcing PKGBUILD is safe; no malicious top-level execution.
Note: 2 remote source(s) have no checksum (sha256sums=SKIP), so the bytes are not verifiable: https://codeberg.org/api/packages/konform-browser/generic/konform-browser/153.6.0-102/konform-browser-153.6.0-102-linux-x86_64-package.tar.xz.sig, https://codeberg.org/api/packages/konform-browser/generic/konform-browser/153.6.0-102/konform-browser-153.6.0-102-linux-arm64-package.tar.xz.sig
Reviewing the 7 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/7] Reviewing .SRCINFO...
[0/7] Reviewing .SRCINFO, .gitignore...
[0/7] Reviewing .SRCINFO, .gitignore, PKGBUILD...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard `.gitignore` containing only glob patterns for build artifacts: downloaded Linux package tarballs and their signatures, built `.pkg.tar.zst` packages, and the `source/`, `pkg/`, and `src/` directories created during `makepkg`. There are no commands, network requests, encodings, or file operations of any kind — merely ignore rules.

This is entirely consistent with ordinary AUR packaging practice and poses no security concern.
</details>
<evidence>
</evidence>
<summary>Plain .gitignore with build-artifact patterns; no malicious behavior.</summary>
</security_assessment>

[0/7] Reviewing .SRCINFO, .gitignore, PKGBUILD, default192x192.png...
[1/7] Reviewing .SRCINFO, PKGBUILD, default192x192.png...
+ Reviewed .gitignore. Status: SAFE -- Plain .gitignore with build-artifact patterns; no malicious behavior.
[1/7] Reviewing .SRCINFO, PKGBUILD, default192x192.png, entrypoint.sh...
[2/7] Reviewing .SRCINFO, PKGBUILD, entrypoint.sh...
! Reviewed default192x192.png. Status: SKIPPED -- Skipping binary file: default192x192.png
LLM auditresponse for entrypoint.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a conventional shell launcher for `konform-bin`. It resolves the script's real path through symlinks (using `realpath`/`readlink -f`), computes a per-user cache directory (`$XDG_CACHE_HOME` or `~/.cache`/`~/.local/cache`/`~/tmp`), creates a temporary directory inside it with `mktemp -d`, registers a cleanup `trap`, exports the standard temporary-directory environment variables (`TMPDIR`, `GCONF_TMPDIR`, `KDETMP`, `KDEVARTMP`, `TEMP`, `TMP`), and finally execs the adjacent binary:

- No network access, downloads, or remote code execution.
- No `eval`, base64/hex decoding, or obfuscated strings.
- No access to unrelated system files; the only filesystem writes are the application's own cache/temp directories.
- The `rm -rf` in the EXIT/INT/TERM/QUIT trap operates solely on the freshly created `mktemp -d` directory, which is expected cleanup behavior.

A minor cosmetic issue is that the `complain` helper is referenced but never defined (a latent bug if both `realpath` and `readlink -f` fail), and `local` is used in a `#!/bin/sh` script. These are harmless portability quirks, not security concerns. Overall the script is fully consistent with a standard AUR launcher.
</details>
<evidence>
</evidence>
<summary>Standard konform launcher; no network, eval, or suspicious behavior found.</summary>
</security_assessment>

[3/7] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed entrypoint.sh. Status: SAFE -- Standard konform launcher; no network, eval, or suspicious behavior found.
[3/7] Reviewing .SRCINFO, PKGBUILD, konform-cb-release.asc...
[4/7] Reviewing .SRCINFO, PKGBUILD...
! Reviewed konform-cb-release.asc. Status: SKIPPED -- Skipping binary file: konform-cb-release.asc
[4/7] Reviewing .SRCINFO, PKGBUILD, konform.desktop...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This is an auto-generated `.SRCINFO` metadata file for a `-bin` package. It contains only declarative fields: package metadata, dependency lists, `provides`/`conflicts`, `backup` paths scoped to the package's own install directory (`usr/lib/konform/...`), and a set of `source` entries. There is no shell code, no command substitution, no `eval`/`base64`, and nothing that executes at parse time.

All download locations point at the project's own upstream on codeberg.org: the source git repo (`git+https://codeberg.org/konform-browser/source.git#tag=153.6.0.102`), and the prebuilt x86_64/aarch64 bundles served from `codeberg.org/api/packages/konform-browser/generic/...`. These match the declared `url` and are expected for a binary package. Checksums are provided for the tarballs themselves; the `.sig` entries are `SKIP`, which is normal for detached signature files (and SKIP checksums are not, by themselves, evidence of malice). Binaries are accompanied by PGP signature files, which is a positive integrity signal.

Hygiene notes only: the git source is pinned to a tag rather than a commit hash (mutable-ref risk), and source tarballs are fetched from an API endpoint rather than a release page — both are common and benign for this class of package, and neither indicates injected malicious behavior.
</details>
<evidence>
</evidence>
<summary>Standard -bin .SRCINFO; sources from project's own codeberg upstream, no malicious code.</summary>
</security_assessment>

[5/7] Reviewing PKGBUILD, konform.desktop...
+ Reviewed .SRCINFO. Status: SAFE -- Standard -bin .SRCINFO; sources from project's own codeberg upstream, no malicious code.
LLM auditresponse for konform.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard freedesktop.org `.desktop` entry for the Konform browser, a rebranded Firefox-based web browser. It consists entirely of declarative metadata: localized `Name`/`Comment`/`GenericName`/`Keywords` translations, `MimeType` declarations, `Categories`, and desktop `Actions`.

The only executable references are the package's own binary at `/usr/lib/konform/konform` with normal browser flags (`--new-window`, `--private-window`, `--ProfileManager`) and a `%u` URL field code. There are no shell invocations, no `Exec` lines using `sh -c`, no network fetches, no obfuscation, and no file operations beyond what a desktop launcher declares. The contents are consistent with an upstream Firefox-family desktop file (the translations even still reference "Firefox" in some locales), which is expected for a rebranded package. Nothing here deviates from routine packaging or performs any system modification.
</details>
<evidence>
</evidence>
<summary>Standard desktop entry for Konform browser; no malicious behavior found.</summary>
</security_assessment>

[6/7] Reviewing PKGBUILD...
+ Reviewed konform.desktop. Status: SAFE -- Standard desktop entry for Konform browser; no malicious behavior found.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD builds a prebuilt binary fork of Firefox (`konform-browser-bin`) for Arch Linux. The sources are all fetched from the project's own upstream: the source repository via `git+https://codeberg.org/konform-browser/source.git#tag=...` and prebuilt tarballs from the project's Codeberg package registry (`https://codeberg.org/api/packages/...`). These are the expected, project-controlled destinations; there are no downloads from unrelated or unexpected hosts.

The `package()` function performs standard binary-packaging operations: creating directories, copying the unpacked bundle into `$pkgdir`, writing normal preferences (`distribution.ini`, `vendor.js` for hunspell dictionaries), installing icons/desktop file, installing a wrapper `entrypoint.sh` as the launcher, creating symlinks in `/usr/bin`, and linking the bundled `libnssckbi.so` to the system NSS trust store (a common, legitimate Firefox packaging step). There is no `eval`, no base64/hex-obfuscated payloads, no `curl|bash`, no data exfiltration, and no writes outside the package's own scope.

Minor hygiene notes only (not threats): the local SSH/entrypoint and desktop files are checksummed (fine); the prebuilt `.sig` entries use `SKIP` (ordinary for signature files); and the helper writes static preference/INI content via heredocs, which is normal. `entrypoint.sh` is a checked-in source file, not attacker-fetched code. The `librewolf.cfg` path in `backup=` is a harmless leftover from the fork's ancestry. All behavior is consistent with ordinary AUR packaging of an upstream browser build.

</details>
<evidence>
</evidence>
<summary>Standard konform-browser-bin PKGBUILD; sources from project Codeberg upstream, no malicious behavior.</summary>
</security_assessment>

[7/7] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard konform-browser-bin PKGBUILD; sources from project Codeberg upstream, no malicious behavior.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
(Skipped 2 files: default192x192.png, konform-cb-release.asc)

API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 23,858
  Completion Tokens: 3,199
  Total Tokens: 27,057
  Total Cost: $0.002753
  Execution Time: 27.93 seconds

Final Status: SAFE


No issues found.


Audit Skips:

default192x192.png: [SKIPPED] Skipping binary file: default192x192.png

konform-cb-release.asc: [SKIPPED] Skipping binary file: konform-cb-release.asc
