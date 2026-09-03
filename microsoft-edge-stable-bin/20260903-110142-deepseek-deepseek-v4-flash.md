---
package: microsoft-edge-stable-bin
pkgver: 152.0.4191.62
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 171a316e053e9c4b28731ccb1aa63b1168550d3a
prompt_tokens: 17380
completion_tokens: 2518
total_tokens: 19898
cost: 0.001986192096
execution_time: 57.5
files_reviewed: 6
files_skipped: 1
maintainer_files: 7
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-03T11:01:41Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard .gitignore with no malicious content.
  - file: Microsoft Standard Application License Terms - Standalone (free) Use Terms.pdf
    status: skipped
    summary: "Skipping binary file: Microsoft Standard Application License Terms - Standalone (free) Use Terms.pdf"
  - file: .nvchecker.toml
    status: safe
    summary: Standard nvchecker config for version monitoring.
  - file: .SRCINFO
    status: safe
    summary: Standard metadata file, no malicious content.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD for Microsoft Edge; no malicious behavior.
  - file: microsoft-edge-stable.install
    status: safe
    summary: Informational install script, no malicious behavior.
  - file: microsoft-edge-stable.sh
    status: safe
    summary: Standard wrapper script, no malicious behavior found.
---

Materializing microsoft-edge-stable-bin from local mirror...
Materialized microsoft-edge-stable-bin
Analyzing microsoft-edge-stable-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only standard variable definitions (pkgname, pkgver, source, checksums, etc.) and function definitions at the top level. There are no command substitutions, no execution of external commands (like curl, wget, eval, base64 decode), and no obfuscated code in the global scope. The `package()`, `build()`, `prepare()`, and `pkgver()` functions are defined but not executed during `makepkg --printsrcinfo`. The source URL points to the official Microsoft package repository, which is the expected upstream for this package. No malicious top-level code is present, so sourcing the PKGBUILD is safe for `makepkg --printsrcinfo`.
</details>
<evidence></evidence>
<summary>No malicious code at global scope; safe for sourcing.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious code at global scope; safe for sourcing.
Reviewing the 7 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/7] Reviewing .SRCINFO...
[0/7] Reviewing .SRCINFO, .gitignore...
[0/7] Reviewing .SRCINFO, .gitignore, .nvchecker.toml...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.gitignore` file that excludes common build artifacts (log files, `.zst`, `.deb`, `.rpm`). No executable code, network requests, or suspicious patterns are present. It poses no security risk.</details>
<evidence></evidence>
<summary>Standard .gitignore with no malicious content.</summary>
</security_assessment>

[0/7] Reviewing .SRCINFO, .gitignore, .nvchecker.toml, Microsoft Standard Application License Terms - Standalone (free) Use Terms.pdf...
[1/7] Reviewing .SRCINFO, .nvchecker.toml, Microsoft Standard Application License Terms - Standalone (free) Use Terms.pdf...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore with no malicious content.
[1/7] Reviewing .SRCINFO, .nvchecker.toml, Microsoft Standard Application License Terms - Standalone (free) Use Terms.pdf, PKGBUILD...
[2/7] Reviewing .SRCINFO, .nvchecker.toml, PKGBUILD...
! Reviewed Microsoft Standard Application License Terms - Standalone (free) Use Terms.pdf. Status: SKIPPED -- Skipping binary file: Microsoft Standard Application License Terms - Standalone (free) Use Terms.pdf
LLM auditresponse for .nvchecker.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a configuration for `nvchecker`, a tool used to check for new upstream releases. It defines a regex-based source to monitor the official Microsoft Edge package repository (`packages.microsoft.com`) for version updates. There are no commands, obfuscated code, network requests beyond the expected upstream, or any other signs of malicious behavior. This is a standard packaging helper file.
</details>
<evidence></evidence>
<summary>Standard nvchecker config for version monitoring.</summary>
</security_assessment>

[2/7] Reviewing .SRCINFO, .nvchecker.toml, PKGBUILD, microsoft-edge-stable.install...
[3/7] Reviewing .SRCINFO, PKGBUILD, microsoft-edge-stable.install...
+ Reviewed .nvchecker.toml. Status: SAFE -- Standard nvchecker config for version monitoring.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The .SRCINFO file is a standard Arch Linux package metadata file. It contains no executable code, no obfuscated strings, no suspicious network requests, and no dangerous commands. All sources point to the official Microsoft package repository (packages.microsoft.com), and all three source entries have valid SHA256 checksums (not skipped). The dependencies and optdepends are typical for a web browser. There is no evidence of supply-chain attack or malicious intent within this file.
</details>
<evidence></evidence>
<summary>Standard metadata file, no malicious content.</summary>
</security_assessment>

[4/7] Reviewing PKGBUILD, microsoft-edge-stable.install...
+ Reviewed .SRCINFO. Status: SAFE -- Standard metadata file, no malicious content.
[4/7] Reviewing PKGBUILD, microsoft-edge-stable.install, microsoft-edge-stable.sh...
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD is a straightforward packaging script for a prebuilt Microsoft Edge binary. It downloads the official `.deb` package from `packages.microsoft.com`, which is Microsoft’s own repository. All three source files have pinned SHA-256 checksums, ensuring integrity. The `package()` function performs only expected operations: extracting the archive, setting the SUID sandbox bit (standard for Chromium-based browsers), generating smaller icons from the shipped 256×256 logo using ImageMagick, installing icons into the hicolor theme, installing a user‑flag‑aware launcher script, and copying the license file. There are no suspicious network requests, obfuscated commands, or attempts to exfiltrate data. No curl, wget, base64, eval, or other dangerous patterns are present. The launcher script (`microsoft-edge-stable.sh`) is not shown in this file, so it cannot be assessed here, but the PKGBUILD itself is clean and follows standard AUR packaging practices.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD for Microsoft Edge; no malicious behavior.</summary>
</security_assessment>

[5/7] Reviewing microsoft-edge-stable.install, microsoft-edge-stable.sh...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD for Microsoft Edge; no malicious behavior.
LLM auditresponse for microsoft-edge-stable.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard `.install` script for an AUR package. It defines helper functions for colored output (using `tput`) and provides informational notes to the user during `post_install` and `post_upgrade`. There are no dangerous operations: no network requests, no file writes or modifications, no execution of untrusted code, no obfuscation. The script only prints messages reminding the user about configuration and the launcher name. This is entirely normal packaging behavior.
</details>
<evidence></evidence>
<summary>Informational install script, no malicious behavior.</summary>
</security_assessment>

[6/7] Reviewing microsoft-edge-stable.sh...
+ Reviewed microsoft-edge-stable.install. Status: SAFE -- Informational install script, no malicious behavior.
LLM auditresponse for microsoft-edge-stable.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This script is a standard AUR wrapper for launching Microsoft Edge stable with optional user-defined flags from a configuration file. It reads `$XDG_CONFIG_HOME/microsoft-edge-stable-flags.conf` if it exists and passes its contents as command-line arguments to the Edge binary. There is no obfuscation, network requests, file downloads, or execution of untrusted code. The script only reads a user-controlled config file and runs the official Edge binary. This is a benign packaging practice.
</details>
<evidence></evidence>
<summary>Standard wrapper script, no malicious behavior found.</summary>
</security_assessment>

[7/7] Reviewing ...
+ Reviewed microsoft-edge-stable.sh. Status: SAFE -- Standard wrapper script, no malicious behavior found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
(Skipped 1 file: Microsoft Standard Application License Terms - Standalone (free) Use Terms.pdf)

API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 17,380
  Completion Tokens: 2,518
  Total Tokens: 19,898
  Total Cost: $0.001986
  Execution Time: 57.50 seconds

Final Status: SAFE


No issues found.


Audit Skips:

Microsoft Standard Application License Terms - Standalone (free) Use Terms.pdf: [SKIPPED] Skipping binary file: Microsoft Standard Application License Terms - Standalone (free) Use Terms.pdf
