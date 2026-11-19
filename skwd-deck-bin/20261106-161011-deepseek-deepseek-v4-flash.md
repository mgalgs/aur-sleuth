---
package: skwd-deck-bin
pkgbase: skwd-suite-bin
pkgver: 1.0.0_beta.27
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 13941
completion_tokens: 1889
total_tokens: 15830
cost: 0.001612429
execution_time: 37.46
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-11-06T16:10:11Z
file_verdicts:
  - file: skwd-deck.install
    status: safe
    summary: Standard install script for user service management
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD with pinned checksums, no malice.
  - file: .SRCINFO
    status: safe
    summary: Metadata-only .SRCINFO with pinned upstream checksums; no malicious behavior found.
---

skwd-deck-bin is built from skwd-suite-bin
Materializing skwd-deck-bin from local mirror...
Materialized skwd-deck-bin
Analyzing skwd-deck-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
Sourcing this PKGBUILD for `makepkg --printsrcinfo` executes only top-level code. The top-level scope contains only standard variable and array declarations: `pkgbase`, `pkgname`, `pkgver`, `pkgrel`, `pkgdesc`, `arch`, `url`, `license`, `options`, `source_x86_64`, `noextract`, and `sha256sums_x86_64`. There are no command substitutions, `eval` calls, external downloads, writes to system paths, or any other executable statements at global scope.

The `prepare()` and `package_*()` functions contain archive extraction and `cp` operations, but those functions are not invoked by `makepkg --printsrcinfo`; they will be examined during the full PKGBUILD audit. The sources point to the project's own GitHub releases and checksums are provided, so there is nothing suspicious that would execute during this narrow metadata-printing step.
</details>
<evidence>
</evidence>
<summary>
Top-level PKGBUILD code is declarative only; no malicious execution during printsrcinfo.
</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Top-level PKGBUILD code is declarative only; no malicious execution during printsrcinfo.
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, PKGBUILD...
[0/3] Reviewing .SRCINFO, PKGBUILD, skwd-deck.install...
LLM auditresponse for skwd-deck.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The `skwd-deck.install` file is a standard pacman install script used to manage the `skwd-walld.service` user service during package removal. It defines a helper function `_skwd_user_systemctl` that safely iterates over active user sessions, verifies ownership and validity, and runs `systemctl --user` commands via `runuser`. The `pre_remove` and `post_remove` functions disable the service, attempt graceful termination, and finally force-kill if necessary, followed by a daemon reload. All operations are confined to the package's own service and follow normal packaging practices. No network requests, obfuscation, data exfiltration, or unusual system modifications are present.
</details>
<evidence></evidence>
<summary>Standard install script for user service management</summary>
</security_assessment>

[1/3] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed skwd-deck.install. Status: SAFE -- Standard install script for user service management
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a standard AUR package definition for a suite of prebuilt binaries (skwd-wall-v2, skwd-deck, skwd-paper, skwd-lens) downloaded from the official GitHub releases at `https://github.com/liixini/skwd-wall/releases/`. All source URLs point to the project's own upstream repository, and checksums are provided and pinned (no SKIP). The `prepare()` function extracts the downloaded archives using `bsdtar` with standard exclusions (`.BUILDINFO`, `.MTREE`, `.PKGINFO`). The `_install_prebuilt` helper copies files to the package directory. There are no obfuscated commands, no unexpected network requests, no dangerous shell operations like `eval`, `curl|bash`, or any attempts to exfiltrate data or modify system files outside the package scope. The maintainer scripts are minimal and strictly perform packaging tasks. No security issues are present.
</details>
<evidence></evidence>
<summary>Standard AUR PKGBUILD with pinned checksums, no malice.</summary>
</security_assessment>

[2/3] Reviewing .SRCINFO...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD with pinned checksums, no malice.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is `.SRCINFO`, a metadata description of the AUR package. It contains only package metadata: `pkgbase`, per-package descriptions, dependencies, options, source URLs, and checksums. There are no executable instructions, no shell code, no `prepare()`/`build()`/`package()` functions, and no hooks.

All four `source_x86_64` entries point to the project's own GitHub releases page under `https://github.com/liixini/skwd-wall/releases/`, which is the expected upstream location for a `-bin` package. Each source has a pinned SHA-256 checksum rather than `SKIP`, which is good supply-chain hygiene. The listed dependencies and `provides`/`conflicts` entries are consistent with a desktop wallpaper suite packaged from prebuilt binaries. No suspicious destinations, obfuscation, or unexpected file operations are present.

The only minor observation is a duplicate `depends = skwd-lens-model` line under `skwd-lens-bin`, which is a harmless metadata redundancy, not a security issue.
</details>
<evidence>
</evidence>
<summary>
Metadata-only .SRCINFO with pinned upstream checksums; no malicious behavior found.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed .SRCINFO. Status: SAFE -- Metadata-only .SRCINFO with pinned upstream checksums; no malicious behavior found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 13,941
  Completion Tokens: 1,889
  Total Tokens: 15,830
  Total Cost: $0.001612
  Execution Time: 37.46 seconds

Final Status: SAFE


No issues found.
