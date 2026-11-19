---
package: microsoft-edge-stable-bin
pkgver: 156.0.4314.58
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 17841
completion_tokens: 2575
total_tokens: 20416
cost: 0.002092181
execution_time: 19.89
files_reviewed: 6
files_skipped: 1
maintainer_files: 7
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-31T15:06:23Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Trivial .gitignore with only standard ignore patterns; no security issues.
  - file: Microsoft Standard Application License Terms - Standalone (free) Use Terms.pdf
    status: skipped
    summary: "Skipping binary file: Microsoft Standard Application License Terms - Standalone (free) Use Terms.pdf"
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata for Microsoft Edge Stable; no security issues found.
  - file: .nvchecker.toml
    status: safe
    summary: Standard nvchecker config; queries official Microsoft packages URL for version only. Safe.
  - file: microsoft-edge-stable.install
    status: safe
    summary: Standard informational package install script; no malicious or dangerous behavior found.
  - file: microsoft-edge-stable.sh
    status: safe
    summary: Standard Edge launcher wrapper; reads optional user flags and executes the browser binary. Safe.
  - file: PKGBUILD
    status: safe
    summary: Standard Edge binary PKGBUILD; pinned sources, official downloads, no malicious behavior.
---

Materializing microsoft-edge-stable-bin from local mirror...
Materialized microsoft-edge-stable-bin
Analyzing microsoft-edge-stable-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD's global scope contains only static variable assignments, array definitions, and comments. No command substitutions, function calls, or dangerous shell expansions (e.g., `eval`, `$(curl ...)`, base64-encoded payloads) are present at the top level. The source array references official Microsoft servers, and checksums are provided (not skipped). Since `makepkg --printsrcinfo` only sources the PKGBUILD's global scope and does not execute `pkgver()`, `prepare()`, `build()`, or `package()`, there is no risk of executing malicious code during this step. The contents of `package()` are irrelevant for this gate.
</details>
<evidence></evidence>
<summary>No top-level dangerous code; safe to source.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No top-level dangerous code; safe to source.
Reviewing the 7 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/7] Reviewing .SRCINFO...
[0/7] Reviewing .SRCINFO, .gitignore...
[0/7] Reviewing .SRCINFO, .gitignore, .nvchecker.toml...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard `.gitignore` used in an AUR package repository. It only excludes common build artifacts and package files, such as logs, compressed source/binary archives (`.zst`), and redistributable package formats (`.deb`, `.rpm`). There is no executable code, no network activity, no obfuscation, and no file system manipulation outside of normal Git ignore rules. This is consistent with routine packaging workflow and contains no security concerns.
</details>
<evidence>
</evidence>
<summary>
Trivial .gitignore with only standard ignore patterns; no security issues.</summary>
</security_assessment>

[0/7] Reviewing .SRCINFO, .gitignore, .nvchecker.toml, Microsoft Standard Application License Terms - Standalone (free) Use Terms.pdf...
[1/7] Reviewing .SRCINFO, .nvchecker.toml, Microsoft Standard Application License Terms - Standalone (free) Use Terms.pdf...
+ Reviewed .gitignore. Status: SAFE -- Trivial .gitignore with only standard ignore patterns; no security issues.
[1/7] Reviewing .SRCINFO, .nvchecker.toml, Microsoft Standard Application License Terms - Standalone (free) Use Terms.pdf, PKGBUILD...
[2/7] Reviewing .SRCINFO, .nvchecker.toml, PKGBUILD...
! Reviewed Microsoft Standard Application License Terms - Standalone (free) Use Terms.pdf. Status: SKIPPED -- Skipping binary file: Microsoft Standard Application License Terms - Standalone (free) Use Terms.pdf
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This .SRCINFO file describes a standard binary AUR package for Microsoft Edge Stable. It declares official upstream sources from packages.microsoft.com, a pinned version, and pinned SHA-256 checksums for all three source files. The dependencies and optdepends are consistent with a desktop browser package and follow normal Arch packaging conventions.

There is no evidence of injected malicious behavior: no suspicious network endpoints, no obfuscated commands, no unexpected file operations, and no redirects to untrusted hosts. The file is purely declarative metadata used by makepkg/Pacman tooling. The presence of a .deb binary package and a bundled license PDF is expected for this type of AUR package.
</details>
<evidence>
</evidence>
<summary>
Standard AUR metadata for Microsoft Edge Stable; no security issues found.</summary>
</security_assessment>

[2/7] Reviewing .SRCINFO, .nvchecker.toml, PKGBUILD, microsoft-edge-stable.install...
[3/7] Reviewing .nvchecker.toml, PKGBUILD, microsoft-edge-stable.install...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata for Microsoft Edge Stable; no security issues found.
LLM auditresponse for .nvchecker.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard [nvchecker](https://github.com/lilydjwg/nvchecker) configuration used by AUR maintainers to check for new upstream versions. It queries the official Microsoft Edge repository `packages.microsoft.com` and extracts the version string for the `microsoft-edge-stable` package using a regular expression. There are no shell commands, no downloads of executable code, no obfuscation, and no file modification operations. The URL is the package’s own upstream vendor source, which is an expected and legitimate destination for version checking.

The regex is correctly constructed to parse the Debian `Packages` metadata. The use of `source = "regex"` is a normal nvchecker feature and does not imply code execution. This file presents no supply-chain or security concerns.
</details>
<evidence>
</evidence>
<summary>
Standard nvchecker config; queries official Microsoft packages URL for version only. Safe.
</summary>
</security_assessment>

[3/7] Reviewing .nvchecker.toml, PKGBUILD, microsoft-edge-stable.install, microsoft-edge-stable.sh...
[4/7] Reviewing PKGBUILD, microsoft-edge-stable.install, microsoft-edge-stable.sh...
+ Reviewed .nvchecker.toml. Status: SAFE -- Standard nvchecker config; queries official Microsoft packages URL for version only. Safe.
LLM auditresponse for microsoft-edge-stable.install:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard Arch Linux package install script for microsoft-edge-stable-bin. It defines small helper functions for colored output using `tput` and `printf`, then prints user-facing notes about configuration and the launcher name in `post_install()` and `post_upgrade()`.

There is no malicious behavior: no network requests, no downloads, no encoded or obfuscated commands, no file system modifications, no execution of untrusted content, and no access to sensitive data. The script only prints informational messages during package installation/upgrade. It is consistent with ordinary AUR packaging practices.
</details>
<evidence>
</evidence>
<summary>
Standard informational package install script; no malicious or dangerous behavior found.
</summary>
</security_assessment>

[5/7] Reviewing PKGBUILD, microsoft-edge-stable.sh...
+ Reviewed microsoft-edge-stable.install. Status: SAFE -- Standard informational package install script; no malicious or dangerous behavior found.
LLM auditresponse for microsoft-edge-stable.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard launcher wrapper for Microsoft Edge. It reads an optional user configuration file from `$XDG_CONFIG_HOME/microsoft-edge-stable-flags.conf` and passes the contents as additional command-line flags to the Edge binary at `/opt/microsoft/msedge/microsoft-edge`.

There is no malicious behavior: no network requests, no downloads, no encoded or obfuscated commands, no file modifications beyond reading an optional user config file, and no execution of untrusted code. The unquoted `$EDGE_USER_FLAGS` variable allows intentional word splitting so that multiple flags from the config file are passed separately, which is the expected behavior for this kind of wrapper. The script faithfully serves its stated purpose of launching the browser with user-configured flags.
</details>
<evidence>
</evidence>
<summary>
Standard Edge launcher wrapper; reads optional user flags and executes the browser binary. Safe.</summary>
</security_assessment>

[6/7] Reviewing PKGBUILD...
+ Reviewed microsoft-edge-stable.sh. Status: SAFE -- Standard Edge launcher wrapper; reads optional user flags and executes the browser binary. Safe.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard packaging practices for a prebuilt binary browser package. It downloads the official `microsoft-edge-stable` `.deb` from `packages.microsoft.com`, extracts it with `bsdtar`, installs icons with `imagemagick`, installs a launcher script, and copies the license. All download URLs are the project’s official Microsoft endpoint, and all source checksums are pinned with real SHA-256 hashes rather than skipped.

The `chmod 4755` on `msedge-sandbox` is expected for Chromium-based browsers that use a setuid sandbox helper; it is part of the upstream binary package and not an injected supply-chain modification. There is no obfuscated code, no unexpected network fetch, no `curl | bash`, no eval/decode of hidden payloads, and no modification of files outside the package installation scope. The file is consistent with a legitimate AUR binary package and contains no evidence of malicious behavior.
</details>
<evidence>
</evidence>
<summary>
Standard Edge binary PKGBUILD; pinned sources, official downloads, no malicious behavior.</summary>
</security_assessment>

[7/7] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard Edge binary PKGBUILD; pinned sources, official downloads, no malicious behavior.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
(Skipped 1 file: Microsoft Standard Application License Terms - Standalone (free) Use Terms.pdf)

API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 17,841
  Completion Tokens: 2,575
  Total Tokens: 20,416
  Total Cost: $0.002092
  Execution Time: 19.89 seconds

Final Status: SAFE


No issues found.


Audit Skips:

Microsoft Standard Application License Terms - Standalone (free) Use Terms.pdf: [SKIPPED] Skipping binary file: Microsoft Standard Application License Terms - Standalone (free) Use Terms.pdf
