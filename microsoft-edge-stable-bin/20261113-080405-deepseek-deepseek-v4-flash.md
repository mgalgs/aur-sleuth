---
package: microsoft-edge-stable-bin
pkgver: 157.0.4341.57
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 3f8f339d2184315a824bf6b8e30068212deac13a
prompt_tokens: 17523
completion_tokens: 5008
total_tokens: 22531
cost: 0.00247851
execution_time: 20.4
files_reviewed: 6
files_skipped: 1
maintainer_files: 7
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-11-13T08:04:05Z
file_verdicts:
  - file: .nvchecker.toml
    status: safe
    summary: Standard nvchecker config, no security issues.
  - file: Microsoft Standard Application License Terms - Standalone (free) Use Terms.pdf
    status: skipped
    summary: "Skipping binary file: Microsoft Standard Application License Terms - Standalone (free) Use Terms.pdf"
  - file: .gitignore
    status: safe
    summary: Standard gitignore file; no security issues.
  - file: microsoft-edge-stable.install
    status: safe
    summary: Informational post-install script, no malicious behavior.
  - file: microsoft-edge-stable.sh
    status: safe
    summary: Standard Edge launcher with user flags; no threats.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD with no malicious behavior.
  - file: .SRCINFO
    status: safe
    summary: Static metadata file, no malicious content.
---

Materializing microsoft-edge-stable-bin from local mirror...
Materialized microsoft-edge-stable-bin
Analyzing microsoft-edge-stable-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only variable assignments and a function definition at the top level. No command substitutions, backticks, or direct execution of dangerous commands (curl, wget, eval) occur during sourcing. The expansions in the source array are normal variable interpolations inside double-quoted strings, not command executions. The `package()` function is defined but not executed during `makepkg --printsrcinfo`. Therefore, sourcing this PKGBUILD is safe.</details>
<evidence></evidence>
<summary>No malicious top-level code executes.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious top-level code executes.
Reviewing the 7 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/7] Reviewing .SRCINFO...
[0/7] Reviewing .SRCINFO, .gitignore...
[0/7] Reviewing .SRCINFO, .gitignore, .nvchecker.toml...
LLM auditresponse for .nvchecker.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a configuration for nvchecker, a tool that automates version checking for AUR packages. It defines a source type "regex", a URL pointing to the official Microsoft Edge repository's Packages file, and a regular expression to extract the version number. There is no code execution, no obfuscation, no network requests to unexpected hosts, and no system modifications. This is a standard and benign packaging helper file.
</details>
<evidence></evidence>
<summary>Standard nvchecker config, no security issues.</summary>
</security_assessment>

[0/7] Reviewing .SRCINFO, .gitignore, .nvchecker.toml, Microsoft Standard Application License Terms - Standalone (free) Use Terms.pdf...
[1/7] Reviewing .SRCINFO, .gitignore, Microsoft Standard Application License Terms - Standalone (free) Use Terms.pdf...
+ Reviewed .nvchecker.toml. Status: SAFE -- Standard nvchecker config, no security issues.
[1/7] Reviewing .SRCINFO, .gitignore, Microsoft Standard Application License Terms - Standalone (free) Use Terms.pdf, PKGBUILD...
[2/7] Reviewing .SRCINFO, .gitignore, PKGBUILD...
! Reviewed Microsoft Standard Application License Terms - Standalone (free) Use Terms.pdf. Status: SKIPPED -- Skipping binary file: Microsoft Standard Application License Terms - Standalone (free) Use Terms.pdf
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard `.gitignore` used to exclude common build artifacts (logs, compressed archives, and alternative package formats) from version control. It contains no executable code, no network operations, and no suspicious patterns. There is no evidence of malicious behavior.
</details>
<evidence></evidence>
<summary>Standard gitignore file; no security issues.</summary>
</security_assessment>

[3/7] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed .gitignore. Status: SAFE -- Standard gitignore file; no security issues.
[3/7] Reviewing .SRCINFO, PKGBUILD, microsoft-edge-stable.install...
LLM auditresponse for microsoft-edge-stable.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard `.install` script for an AUR package. It defines color output helpers (`msg_blue`, `note`) and then provides informational messages to the user during `post_install`/`post_upgrade` about where to put custom flags and the launcher name. No network operations, code execution, file manipulation, or any other potentially dangerous behavior is present. The script is purely cosmetic and informational.
</details>
<evidence></evidence>
<summary>Informational post-install script, no malicious behavior.</summary>
</security_assessment>

[4/7] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed microsoft-edge-stable.install. Status: SAFE -- Informational post-install script, no malicious behavior.
[4/7] Reviewing .SRCINFO, PKGBUILD, microsoft-edge-stable.sh...
LLM auditresponse for microsoft-edge-stable.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
The script is a standard launcher for Microsoft Edge. It reads optional user flags from a configuration file in `$XDG_CONFIG_HOME` and passes them to the browser executable. There are no network requests, obfuscated code, unexpected file operations, or any deviation from normal packaging practices. The use of `set -e` and `exec` is appropriate. No security concerns.
</details>
<evidence>
</evidence>
<summary>Standard Edge launcher with user flags; no threats.</summary>
</security_assessment>

[5/7] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed microsoft-edge-stable.sh. Status: SAFE -- Standard Edge launcher with user flags; no threats.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard AUR packaging practices for a prebuilt binary package. The source downloads from the official Microsoft repository with pinned SHA256 checksums. The `package()` function extracts the deb archive, sets the sandbox SUID bit (expected for Chromium-based browsers), resizes and installs icons using ImageMagick, installs a wrapper script, and places a license file. No obfuscation, unusual network requests, or instructions outside the intended workflow are present. The file is safe.
</details>
<evidence>
</evidence>
<summary>Standard PKGBUILD with no malicious behavior.</summary>
</security_assessment>

[6/7] Reviewing .SRCINFO...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD with no malicious behavior.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This file (`.SRCINFO`) is a static metadata file standard to the Arch User Repository. It describes the `microsoft-edge-stable-bin` package, declaring its version, dependencies, upstream sources, and cryptographic checksums. The sources listed are the official Microsoft Edge `.deb` package hosted on `packages.microsoft.com`, a locally included helper shell script, and a license PDF. The provided SHA256 checksums allow downstream verification of these sources. There is no executable code, no network request logic, no obfuscation, no data exfiltration, and no deviation from expected AUR packaging practices. All domains and dependencies are consistent with a legitimate binary repackaging of Microsoft Edge for Arch Linux.
</details>
<evidence>
</evidence>
<summary>
Static metadata file, no malicious content.
</summary>
</security_assessment>

[7/7] Reviewing ...
+ Reviewed .SRCINFO. Status: SAFE -- Static metadata file, no malicious content.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
(Skipped 1 file: Microsoft Standard Application License Terms - Standalone (free) Use Terms.pdf)

API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 17,523
  Completion Tokens: 5,008
  Total Tokens: 22,531
  Total Cost: $0.002479
  Execution Time: 20.40 seconds

Final Status: SAFE


No issues found.


Audit Skips:

Microsoft Standard Application License Terms - Standalone (free) Use Terms.pdf: [SKIPPED] Skipping binary file: Microsoft Standard Application License Terms - Standalone (free) Use Terms.pdf
