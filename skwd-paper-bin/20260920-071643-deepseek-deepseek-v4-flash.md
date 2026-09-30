---
package: skwd-paper-bin
pkgbase: skwd-suite-bin
pkgver: 1.0.0_beta.17
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 13848
completion_tokens: 1795
total_tokens: 15643
cost: 0.00063962584
execution_time: 52.53
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-20T07:16:43Z
file_verdicts:
  - file: PKGBUILD
    status: safe
    summary: Standard prebuilt binaries from upstream with pinned checksums.
  - file: skwd-deck.install
    status: safe
    summary: Standard install script for user systemd service management.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata with pinned checksums and expected upstream sources; no malicious behavior.
---

skwd-paper-bin is built from skwd-suite-bin
Materializing skwd-paper-bin from local mirror...
Materialized skwd-paper-bin
Analyzing skwd-paper-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only variable definitions (strings, arrays) and function definitions in its global scope. There are no command substitutions, backtick executions, eval calls, or any other executable statements that would run during `makepkg --printsrcinfo`. All dangerous operations (preparing archives, installing files) are confined within the `prepare()`, `package_*()` functions which are not executed during this parsing step. No data exfiltration, downloads, or system modifications occur at parse time.
</details>
<evidence></evidence>
<summary>No dangerous top-level code; sourcing is safe.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous top-level code; sourcing is safe.
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, PKGBUILD...
[0/3] Reviewing .SRCINFO, PKGBUILD, skwd-deck.install...
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD downloads prebuilt binary packages from the official upstream GitHub releases (`github.com/liixini/skwd-wall`) with pinned SHA256 checksums for integrity verification. The extraction and installation steps (`prepare()`, `_install_prebuilt()`) are standard for split-package AUR PKGBUILDs handling prebuilt `.pkg.tar.zst` files. No obfuscated code, unexpected network destinations, eval/base64 usage, or file operations outside the package scope are present. The `.install` file referenced for `skwd-deck-bin` is a normal AUR convention for post-install scripts and not inherently suspicious. Everything aligns with legitimate packaging practices.
</details>
<evidence></evidence>
<summary>Standard prebuilt binaries from upstream with pinned checksums.</summary>
</security_assessment>

[1/3] Reviewing .SRCINFO, skwd-deck.install...
+ Reviewed PKGBUILD. Status: SAFE -- Standard prebuilt binaries from upstream with pinned checksums.
LLM auditresponse for skwd-deck.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard Arch Linux .install script used by the `skwd-paper-bin` package to manage a user systemd service (`skwd-walld.service`). It contains a helper function `_skwd_user_systemctl` that iterates over active user runtime directories and runs `systemctl --user` commands via `runuser`. The `pre_remove()` hook disables and stops the service, waits for termination, and kills remaining processes. The `post_remove()` hook runs `daemon-reload` and `reset-failed`. All operations are scoped to the package's own service; there are no network requests, downloads, obfuscated code, or data exfiltration. The script follows normal packaging practices for managing per-user systemd services.
</details>
<evidence></evidence>
<summary>Standard install script for user systemd service management.</summary>
</security_assessment>

[2/3] Reviewing .SRCINFO...
+ Reviewed skwd-deck.install. Status: SAFE -- Standard install script for user systemd service management.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard AUR .SRCINFO metadata file. It describes a package suite named skwd-suite-bin with multiple binary subpackages, declaring source URLs from the project's own GitHub releases page, explicit sha256 checksums, dependencies, conflicts, and provides entries. No installation scripts, shell code, or executable content is present in this file.

The source archives are fetched from https://github.com/liixini/skwd-wall/releases/... which matches the package's stated upstream URL. Checksums are pinned for all four x86_64 artifacts. There are no suspicious network requests, encoded payloads, file operations, or attempts to execute downloaded code outside the normal package build flow. The minor packaging style choices, such as duplicate provides entries, are not security concerns.

This file contains no evidence of malicious or supply-chain behavior. It is consistent with ordinary AUR packaging practice.
</details>
<evidence>
</evidence>
<summary>
Standard AUR metadata with pinned checksums and expected upstream sources; no malicious behavior.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata with pinned checksums and expected upstream sources; no malicious behavior.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 13,848
  Completion Tokens: 1,795
  Total Tokens: 15,643
  Total Cost: $0.000640
  Execution Time: 52.53 seconds

Final Status: SAFE


No issues found.
