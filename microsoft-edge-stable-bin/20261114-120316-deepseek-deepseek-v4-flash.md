---
package: microsoft-edge-stable-bin
pkgver: 157.0.4341.60
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 3f8f339d2184315a824bf6b8e30068212deac13a
prompt_tokens: 17429
completion_tokens: 4439
total_tokens: 21868
cost: 0.00236763
execution_time: 25.57
files_reviewed: 6
files_skipped: 1
maintainer_files: 7
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-11-14T12:03:16Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: No security issues; standard gitignore file.
  - file: Microsoft Standard Application License Terms - Standalone (free) Use Terms.pdf
    status: skipped
    summary: "Skipping binary file: Microsoft Standard Application License Terms - Standalone (free) Use Terms.pdf"
  - file: .nvchecker.toml
    status: safe
    summary: Standard nvchecker config; no malicious content.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata file; no security issues found.
  - file: microsoft-edge-stable.install
    status: safe
    summary: Informational install script, no malicious content.
  - file: microsoft-edge-stable.sh
    status: safe
    summary: Clean launcher script; no signs of malicious code.
  - file: PKGBUILD
    status: safe
    summary: Standard trusted binary package with pinned hashes.
---

Materializing microsoft-edge-stable-bin from local mirror...
Materialized microsoft-edge-stable-bin
Analyzing microsoft-edge-stable-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only standard top-level variable definitions (pkgname, pkgver, source, checksums, etc.) and function definitions (package()) that are not executed during `makepkg --printsrcinfo`. There is no command substitution, eval, or any executable code in the global scope that could perform malicious actions during sourcing. The source array and checksums are present and normal. No evidence of dangerous behavior exists at the top level.
</details>
<evidence></evidence>
<summary>No malicious code executed during sourcing.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious code executed during sourcing.
Reviewing the 7 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/7] Reviewing .SRCINFO...
[0/7] Reviewing .SRCINFO, .nvchecker.toml...
[0/7] Reviewing .SRCINFO, .nvchecker.toml, .gitignore...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard `.gitignore` file that ignores common log and package file extensions (`*.log`, `*.zst`, `*.deb`, `*.rpm`). There is no executable code, no network operations, no obfuscation, and no system modifications. It poses no security risk.
</details>
<evidence>
</evidence>
<summary>No security issues; standard gitignore file.</summary>
</security_assessment>

[0/7] Reviewing .SRCINFO, .nvchecker.toml, .gitignore, Microsoft Standard Application License Terms - Standalone (free) Use Terms.pdf...
[1/7] Reviewing .SRCINFO, .nvchecker.toml, Microsoft Standard Application License Terms - Standalone (free) Use Terms.pdf...
+ Reviewed .gitignore. Status: SAFE -- No security issues; standard gitignore file.
[1/7] Reviewing .SRCINFO, .nvchecker.toml, Microsoft Standard Application License Terms - Standalone (free) Use Terms.pdf, PKGBUILD...
[2/7] Reviewing .SRCINFO, .nvchecker.toml, PKGBUILD...
! Reviewed Microsoft Standard Application License Terms - Standalone (free) Use Terms.pdf. Status: SKIPPED -- Skipping binary file: Microsoft Standard Application License Terms - Standalone (free) Use Terms.pdf
LLM auditresponse for .nvchecker.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a configuration file for `nvchecker`, a tool that checks for the latest version of a package. It defines a source type "regex", points to the official Microsoft Edge repository URL (packages.microsoft.com), and uses a regex to parse the version number from the Debian Packages file. There is no code execution, obfuscation, or any suspicious network behavior. The URL and regex are standard for version checking of Microsoft Edge stable releases. No security concerns.
</details>
<evidence>

</evidence>
<summary>Standard nvchecker config; no malicious content.</summary>
</security_assessment>

[3/7] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed .nvchecker.toml. Status: SAFE -- Standard nvchecker config; no malicious content.
[3/7] Reviewing .SRCINFO, PKGBUILD, microsoft-edge-stable.install...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The `.SRCINFO` file is a standard AUR package metadata file. It declares the package name, version, dependencies, and sources. The primary source is an official Microsoft `.deb` package from `packages.microsoft.com`, which is the legitimate upstream. Two additional source files (a shell script and a PDF license) are included with verified SHA-256 checksums. There is no obfuscated code, no suspicious network requests, no dangerous commands, and no deviation from normal packaging practices. The file contains only declarative metadata and is not executable. No supply-chain attack indicators are present.
</details>
<evidence></evidence>
<summary>Standard AUR metadata file; no security issues found.</summary>
</security_assessment>

[4/7] Reviewing PKGBUILD, microsoft-edge-stable.install...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata file; no security issues found.
[4/7] Reviewing PKGBUILD, microsoft-edge-stable.install, microsoft-edge-stable.sh...
LLM auditresponse for microsoft-edge-stable.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `microsoft-edge-stable.install` is a standard Arch Linux install script for the `microsoft-edge-stable-bin` package. It defines colored output helper functions and then implements `post_install()` and `post_upgrade()` hooks that simply print informational notes to the user. These notes remind the user where to put custom flags and what the launcher command is called. There are no network requests, file downloads, system modifications, obfuscated code, or any behavior that deviates from normal packaging practices. The script is entirely informational and poses no security risk.
</details>
<evidence>
</evidence>
<summary>Informational install script, no malicious content.</summary>
</security_assessment>

[5/7] Reviewing PKGBUILD, microsoft-edge-stable.sh...
+ Reviewed microsoft-edge-stable.install. Status: SAFE -- Informational install script, no malicious content.
LLM auditresponse for microsoft-edge-stable.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard wrapper/launcher script for the Microsoft Edge browser on Linux. It reads optional user flags from a config file under `$XDG_CONFIG_HOME` and then launches the browser binary. The script uses no dangerous commands (`eval`, `curl`, `wget`, base64 decoding, etc.), makes no network requests, and performs no file operations beyond reading a single user-owned config file. The only minor issue is a comment that incorrectly references "microsoft-edge-beta-flags.conf" while the actual code reads "microsoft-edge-stable-flags.conf" — this is a cosmetic copy-paste discrepancy, not a security concern.
</details>
<evidence></evidence>
<summary>Clean launcher script; no signs of malicious code.</summary>
</security_assessment>

[6/7] Reviewing PKGBUILD...
+ Reviewed microsoft-edge-stable.sh. Status: SAFE -- Clean launcher script; no signs of malicious code.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard AUR packaging practices for prebuilt binaries. The source is a pinned URL from the official Microsoft Edge repository with a hardcoded SHA256 checksum for the `.deb` file and the auxiliary files. The `package()` function extracts the binary tarball, sets the SUID bit on the browser's own sandbox binary (a standard requirement for Chromium-based sandboxes, not a backdoor), resizes icons, and installs the launcher script. No obfuscated code, suspicious network requests, data exfiltration, or unexpected system modifications are present. The operations are strictly limited to extracting the official package and placing it correctly in the filesystem.
</details>
<evidence></evidence>
<summary>Standard trusted binary package with pinned hashes.</summary>
</security_assessment>

[7/7] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard trusted binary package with pinned hashes.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
(Skipped 1 file: Microsoft Standard Application License Terms - Standalone (free) Use Terms.pdf)

API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 17,429
  Completion Tokens: 4,439
  Total Tokens: 21,868
  Total Cost: $0.002368
  Execution Time: 25.57 seconds

Final Status: SAFE


No issues found.


Audit Skips:

Microsoft Standard Application License Terms - Standalone (free) Use Terms.pdf: [SKIPPED] Skipping binary file: Microsoft Standard Application License Terms - Standalone (free) Use Terms.pdf
