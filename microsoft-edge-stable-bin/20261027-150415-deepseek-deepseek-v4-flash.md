---
package: microsoft-edge-stable-bin
pkgver: 156.0.4314.50
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 17371
completion_tokens: 2194
total_tokens: 19565
cost: 0.0017672579
execution_time: 20.94
files_reviewed: 6
files_skipped: 1
maintainer_files: 7
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-27T15:04:15Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard gitignore for build artifacts.
  - file: Microsoft Standard Application License Terms - Standalone (free) Use Terms.pdf
    status: skipped
    summary: "Skipping binary file: Microsoft Standard Application License Terms - Standalone (free) Use Terms.pdf"
  - file: .nvchecker.toml
    status: safe
    summary: Standard nvchecker config for upstream version tracking.
  - file: .SRCINFO
    status: safe
    summary: Standard package metadata file, no malicious content.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD for Microsoft Edge; no malicious code found.
  - file: microsoft-edge-stable.install
    status: safe
    summary: Script is harmless; only prints user notes.
  - file: microsoft-edge-stable.sh
    status: safe
    summary: Standard browser launcher script, no security issues.
---

Materializing microsoft-edge-stable-bin from local mirror...
Materialized microsoft-edge-stable-bin
Analyzing microsoft-edge-stable-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only standard variable definitions, arrays, and source declarations in its top-level scope. There are no command substitutions, function calls, or any executable code that would run during `makepkg --printsrcinfo`. All conditional logic and potentially dangerous operations (like chmod, install, bsdtar, magick) are inside the `package()` function, which is not sourced at this stage. The source array lists official Microsoft URLs and local files, but these are not downloaded or executed during metadata parsing. No obfuscated code, suspicious network requests, or data exfiltration mechanisms are present in the global scope.</details>
<evidence></evidence>
<summary>No executable code in top-level scope; safe to parse.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No executable code in top-level scope; safe to parse.
Reviewing the 7 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/7] Reviewing .SRCINFO...
[0/7] Reviewing .SRCINFO, .gitignore...
[0/7] Reviewing .SRCINFO, .gitignore, .nvchecker.toml...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.gitignore` file for an AUR package repository. It only lists file extensions common to build artifacts (logs, `.zst` and `.deb`/`.rpm` package files). There is no executable code, no network requests, no obfuscation, and no mechanism for data exfiltration or system modification. The file performs no operations of any kind.</details>
<evidence></evidence>
<summary>Standard gitignore for build artifacts.</summary>
</security_assessment>

[1/7] Reviewing .SRCINFO, .nvchecker.toml...
+ Reviewed .gitignore. Status: SAFE -- Standard gitignore for build artifacts.
[1/7] Reviewing .SRCINFO, .nvchecker.toml, Microsoft Standard Application License Terms - Standalone (free) Use Terms.pdf...
[1/7] Reviewing .SRCINFO, .nvchecker.toml, Microsoft Standard Application License Terms - Standalone (free) Use Terms.pdf, PKGBUILD...
[2/7] Reviewing .SRCINFO, .nvchecker.toml, PKGBUILD...
! Reviewed Microsoft Standard Application License Terms - Standalone (free) Use Terms.pdf. Status: SKIPPED -- Skipping binary file: Microsoft Standard Application License Terms - Standalone (free) Use Terms.pdf
LLM auditresponse for .nvchecker.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a configuration for nvchecker, a tool used to automatically check for new upstream versions of a package. It contains a single entry that fetches the package list from Microsoft's official repository (`packages.microsoft.com`) and extracts the version number using a regex. This is a standard and expected practice for AUR packages that track upstream releases. There is no malicious code, no obfuscation, no dangerous commands, and no deviation from normal packaging workflows. The network destination is the official upstream source for Microsoft Edge, and no data is being exfiltrated or code executed.
</details>
<evidence>

</evidence>
<summary>Standard nvchecker config for upstream version tracking.</summary>
</security_assessment>

[3/7] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed .nvchecker.toml. Status: SAFE -- Standard nvchecker config for upstream version tracking.
[3/7] Reviewing .SRCINFO, PKGBUILD, microsoft-edge-stable.install...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The .SRCINFO file is a standard Arch Linux package metadata file. It contains only declarative key-value pairs describing the package name, version, dependencies, sources, and checksums. The sources point to the official Microsoft package repository (packages.microsoft.com) and to auxiliary files (a shell script and a license PDF) that are included in the AUR source. All three sources have specific SHA256 checksums provided, indicating integrity verification. There are no executable commands, no obfuscated content, no network requests from unexpected hosts, and no system modification directives. The file represents a typical AUR metadata description and contains no evidence of malicious or supply-chain attack behavior.
</details>
<evidence></evidence>
<summary>Standard package metadata file, no malicious content.</summary>
</security_assessment>

[3/7] Reviewing .SRCINFO, PKGBUILD, microsoft-edge-stable.install, microsoft-edge-stable.sh...
[4/7] Reviewing PKGBUILD, microsoft-edge-stable.install, microsoft-edge-stable.sh...
+ Reviewed .SRCINFO. Status: SAFE -- Standard package metadata file, no malicious content.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD downloads Microsoft Edge from the official Microsoft repository with a pinned checksum. All operations in `package()` are standard: extracting the `.deb`, setting the SUID bit on the sandbox helper (expected for Chromium-based browsers), resizing icons with ImageMagick, and installing the launcher script and license. There is no obfuscated code, no unexpected network requests, no exfiltration, and no execution of untrusted content at build time. The file follows normal AUR packaging conventions for a prebuilt binary package.
</details>
<evidence>
</evidence>
<summary>Standard PKGBUILD for Microsoft Edge; no malicious code found.</summary>
</security_assessment>

[5/7] Reviewing microsoft-edge-stable.install, microsoft-edge-stable.sh...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD for Microsoft Edge; no malicious code found.
LLM auditresponse for microsoft-edge-stable.install:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard `.install` script for an Arch Linux package. It defines colored output helper functions and a `post_install` / `post_upgrade` hook that prints informational notes to the user regarding configuration file placement and the launcher command. There are no network requests, file manipulations, execution of untrusted code, or any other suspicious operations. The script performs only benign, expected packaging behavior.
</details>
<evidence></evidence>
<summary>Script is harmless; only prints user notes.</summary>
</security_assessment>

[6/7] Reviewing microsoft-edge-stable.sh...
+ Reviewed microsoft-edge-stable.install. Status: SAFE -- Script is harmless; only prints user notes.
LLM auditresponse for microsoft-edge-stable.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This script is a standard launcher wrapper for Microsoft Edge Stable. It reads user-provided flags from a configuration file (`$XDG_CONFIG_HOME/microsoft-edge-stable-flags.conf`) and passes them to the Edge binary upon execution. The script includes basic safety measures (`set -e`, file existence check with `-r`). There is no obfuscated code, no network requests, no downloads, and no unexpected system modifications. The behavior is exactly what is expected for a browser launcher in a packaging context. No evidence of a supply-chain attack or malicious intent.
</details>
<evidence></evidence>
<summary>Standard browser launcher script, no security issues.</summary>
</security_assessment>

[7/7] Reviewing ...
+ Reviewed microsoft-edge-stable.sh. Status: SAFE -- Standard browser launcher script, no security issues.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
(Skipped 1 file: Microsoft Standard Application License Terms - Standalone (free) Use Terms.pdf)

API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 17,371
  Completion Tokens: 2,194
  Total Tokens: 19,565
  Total Cost: $0.001767
  Execution Time: 20.94 seconds

Final Status: SAFE


No issues found.


Audit Skips:

Microsoft Standard Application License Terms - Standalone (free) Use Terms.pdf: [SKIPPED] Skipping binary file: Microsoft Standard Application License Terms - Standalone (free) Use Terms.pdf
