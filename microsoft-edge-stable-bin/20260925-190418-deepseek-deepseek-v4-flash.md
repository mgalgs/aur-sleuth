---
package: microsoft-edge-stable-bin
pkgver: 154.0.4258.37
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 17522
completion_tokens: 2271
total_tokens: 19793
cost: 0.00103789056
execution_time: 35.39
files_reviewed: 6
files_skipped: 1
maintainer_files: 7
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-25T19:04:17Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: "Standard `.gitignore` file with no security issues."
  - file: Microsoft Standard Application License Terms - Standalone (free) Use Terms.pdf
    status: skipped
    summary: "Skipping binary file: Microsoft Standard Application License Terms - Standalone (free) Use Terms.pdf"
  - file: .nvchecker.toml
    status: safe
    summary: Standard nvchecker config checking upstream Microsoft Edge repository for version updates. Safe.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD for official Microsoft Edge binary package.
  - file: .SRCINFO
    status: safe
    summary: Declarative package metadata only; no malicious behavior or suspicious content found.
  - file: microsoft-edge-stable.sh
    status: safe
    summary: Standard launcher with no malicious behavior.
  - file: microsoft-edge-stable.install
    status: safe
    summary: Safe post-install informational script.
---

Materializing microsoft-edge-stable-bin from local mirror...
Materialized microsoft-edge-stable-bin
Analyzing microsoft-edge-stable-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD only contains top-level variable definitions, source URLs, and checksums. No code execution occurs during sourcing beyond standard variable assignment and array definitions. The `package()` function is defined but not invoked by `makepkg --printsrcinfo`. There are no dangerous commands, command substitutions, or obfuscated content in the global scope.
</details>
<evidence>
</evidence>
<summary>No malicious code executed during sourcing.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious code executed during sourcing.
Reviewing the 7 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/7] Reviewing .SRCINFO...
[0/7] Reviewing .SRCINFO, .gitignore...
[0/7] Reviewing .SRCINFO, .gitignore, .nvchecker.toml...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `.gitignore` contains only standard Git ignore patterns for common build artifacts: log files, compressed package archives (`.zst`), and package formats (`.deb`, `.rpm`). This is a normal and expected file in any project directory to prevent accidental commits of temporary or generated files. There is no executable code, no network operations, no obfuscation, and no system modifications. No security concerns.
</details>
<evidence></evidence>
<summary>Standard `.gitignore` file with no security issues.</summary>
</security_assessment>

[1/7] Reviewing .SRCINFO, .nvchecker.toml...
+ Reviewed .gitignore. Status: SAFE -- Standard `.gitignore` file with no security issues.
[1/7] Reviewing .SRCINFO, .nvchecker.toml, Microsoft Standard Application License Terms - Standalone (free) Use Terms.pdf...
[2/7] Reviewing .SRCINFO, .nvchecker.toml...
! Reviewed Microsoft Standard Application License Terms - Standalone (free) Use Terms.pdf. Status: SKIPPED -- Skipping binary file: Microsoft Standard Application License Terms - Standalone (free) Use Terms.pdf
[2/7] Reviewing .SRCINFO, .nvchecker.toml, PKGBUILD...
LLM auditresponse for .nvchecker.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is an `nvchecker` configuration used to detect the latest version of `microsoft-edge-stable-bin`. It fetches the package index from the official Microsoft Edge repository (`packages.microsoft.com/repos/edge/`) and applies a regular expression to extract the version number. There is no code execution, no obfuscation, no unexpected network destination, and no file modification. This is a standard, non-malicious version-checking configuration.
</details>
<evidence>
</evidence>
<summary>
Standard nvchecker config checking upstream Microsoft Edge repository for version updates. Safe.
</summary>
</security_assessment>

[2/7] Reviewing .SRCINFO, .nvchecker.toml, PKGBUILD, microsoft-edge-stable.install...
[3/7] Reviewing .SRCINFO, PKGBUILD, microsoft-edge-stable.install...
+ Reviewed .nvchecker.toml. Status: SAFE -- Standard nvchecker config checking upstream Microsoft Edge repository for version updates. Safe.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard Arch packaging practices for a precompiled binary package.  
- The source is fetched from Microsoft's official repository (`packages.microsoft.com`), which is the expected upstream for Microsoft Edge.  
- Checksums are pinned for all three source files, ensuring integrity.  
- The only potentially sensitive operation is setting the SUID bit on `msedge-sandbox` (line 42). This is a standard requirement for Chromium-based browsers to enable a sandbox; it is not a security vulnerability or malicious.  
- The `install` and `magick` commands are used only to copy files into the package directory and resize icons — standard packaging workflow.  
- No obfuscated commands, unexpected network requests, backdoors, or exfiltration mechanisms are present.  
- The `microsoft-edge-stable.sh` launcher script is referenced but not shown; it is a helper script commonly provided in Microsoft Edge packages to set user flags. There is no indication of malicious content.  

The package is safe.
</details>
<evidence></evidence>
<summary>Standard AUR PKGBUILD for official Microsoft Edge binary package.</summary>
</security_assessment>

[3/7] Reviewing .SRCINFO, PKGBUILD, microsoft-edge-stable.install, microsoft-edge-stable.sh...
[4/7] Reviewing .SRCINFO, microsoft-edge-stable.install, microsoft-edge-stable.sh...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD for official Microsoft Edge binary package.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This .SRCINFO file contains only standard package metadata for the `microsoft-edge-stable-bin` AUR package. It declares the package name, version, URL, architecture, dependencies, optional dependencies, and source entries pointing to Microsoft&apos;s official package repository (`packages.microsoft.com`). The checksums are pinned SHA-256 values for the downloaded artifacts rather than `SKIP`, so the sources are explicitly verified.

No suspicious commands, network requests, encoded payloads, file operations, or execution logic are present in this file. `.SRCINFO` is a declarative metadata file generated from the PKGBUILD; it contains no executable code. There is no evidence of exfiltration, backdoors, obfuscation, or tampering. The file conforms to normal AUR packaging practices.
</details>
<evidence>
</evidence>
<summary>
Declarative package metadata only; no malicious behavior or suspicious content found.</summary>
</security_assessment>

[5/7] Reviewing microsoft-edge-stable.install, microsoft-edge-stable.sh...
+ Reviewed .SRCINFO. Status: SAFE -- Declarative package metadata only; no malicious behavior or suspicious content found.
LLM auditresponse for microsoft-edge-stable.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
The script is a simple launcher for Microsoft Edge Stable that reads an optional configuration file for user-specified flags and then executes the Edge binary. It performs no network operations, no downloads, no obfuscated code, and no system modifications beyond reading a user-owned config file. The `cat` command is used in a standard way, and the binary path is fixed. There is no evidence of any supply-chain attack or malicious behavior.
</details>
<evidence></evidence>
<summary>Standard launcher with no malicious behavior.</summary>
</security_assessment>

[6/7] Reviewing microsoft-edge-stable.install...
+ Reviewed microsoft-edge-stable.sh. Status: SAFE -- Standard launcher with no malicious behavior.
LLM auditresponse for microsoft-edge-stable.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard `.install` script used by Arch Linux packages to display messages after installation. It defines helper functions for colored output (using `tput`) and a `post_install` function that prints two informational notes: one advising users where to put custom flags and another reminding them of the launcher name. There is no network activity, no execution of external code, no file manipulation beyond standard terminal output, and no obfuscation. The script performs exactly the expected post-install notifications and nothing more.
</details>
<evidence></evidence>
<summary>Safe post-install informational script.</summary>
</security_assessment>

[7/7] Reviewing ...
+ Reviewed microsoft-edge-stable.install. Status: SAFE -- Safe post-install informational script.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
(Skipped 1 file: Microsoft Standard Application License Terms - Standalone (free) Use Terms.pdf)

API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 17,522
  Completion Tokens: 2,271
  Total Tokens: 19,793
  Total Cost: $0.001038
  Execution Time: 35.39 seconds

Final Status: SAFE


No issues found.


Audit Skips:

Microsoft Standard Application License Terms - Standalone (free) Use Terms.pdf: [SKIPPED] Skipping binary file: Microsoft Standard Application License Terms - Standalone (free) Use Terms.pdf
