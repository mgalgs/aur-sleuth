---
package: microsoft-edge-stable-bin
pkgver: 156.0.4314.42
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 17371
completion_tokens: 2260
total_tokens: 19631
cost: 0.001992081
execution_time: 25.82
files_reviewed: 6
files_skipped: 1
maintainer_files: 7
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-25T11:03:13Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard .gitignore, no security issues.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata; no security issues found.
  - file: Microsoft Standard Application License Terms - Standalone (free) Use Terms.pdf
    status: skipped
    summary: "Skipping binary file: Microsoft Standard Application License Terms - Standalone (free) Use Terms.pdf"
  - file: .nvchecker.toml
    status: safe
    summary: Standard nvchecker config; no security issues.
  - file: microsoft-edge-stable.install
    status: safe
    summary: Benign install script with only informational print statements.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD for Microsoft Edge, no security issues.
  - file: microsoft-edge-stable.sh
    status: safe
    summary: Simple browser launcher script, no security issues.
---

Materializing microsoft-edge-stable-bin from local mirror...
Materialized microsoft-edge-stable-bin
Analyzing microsoft-edge-stable-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD's global scope contains only standard variable and array definitions (pkgname, pkgver, source, sha256sums, etc.). No command substitutions, backticks, eval, or other executable constructs appear at the top level. The `package()` function contains installation logic, but it is not executed during `makepkg --printsrcinfo`. The source URL points to Microsoft's official domain, and checksums are provided. There is no malicious code that would run when sourcing this file.
</details>
<evidence></evidence>
<summary>Global scope has no executable code; safe to source.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Global scope has no executable code; safe to source.
Reviewing the 7 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/7] Reviewing .SRCINFO...
[0/7] Reviewing .SRCINFO, .gitignore...
[0/7] Reviewing .SRCINFO, .gitignore, .nvchecker.toml...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard `.gitignore` file commonly used in version-controlled repositories. It lists four file patterns (`*.log`, `*.zst`, `*.deb`, `*.rpm`) to prevent them from being tracked by Git. These patterns are typical for a package build environment where log files and compressed package artifacts (`.zst`, `.deb`, `.rpm`) are generated. There is no executable code, no network access, no obfuscation, and no ability to exfiltrate data or modify system files. No security concerns are present.
</details>
<evidence></evidence>
<summary>Standard .gitignore, no security issues.</summary>
</security_assessment>

[0/7] Reviewing .SRCINFO, .gitignore, .nvchecker.toml, Microsoft Standard Application License Terms - Standalone (free) Use Terms.pdf...
[1/7] Reviewing .SRCINFO, .nvchecker.toml, Microsoft Standard Application License Terms - Standalone (free) Use Terms.pdf...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore, no security issues.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The .SRCINFO file contains purely metadata for the microsoft-edge-stable-bin package. All source URLs point to official Microsoft servers (`packages.microsoft.com`). Checksums are provided for every source, ensuring integrity. No suspicious content, obfuscated data, or unexpected network hosts are present. The file adheres to standard AUR packaging practices.
</details>
<evidence></evidence>
<summary>Standard AUR metadata; no security issues found.</summary>
</security_assessment>

[2/7] Reviewing .nvchecker.toml, Microsoft Standard Application License Terms - Standalone (free) Use Terms.pdf...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata; no security issues found.
[2/7] Reviewing .nvchecker.toml, Microsoft Standard Application License Terms - Standalone (free) Use Terms.pdf, PKGBUILD...
[2/7] Reviewing .nvchecker.toml, Microsoft Standard Application License Terms - Standalone (free) Use Terms.pdf, PKGBUILD, microsoft-edge-stable.install...
[3/7] Reviewing .nvchecker.toml, PKGBUILD, microsoft-edge-stable.install...
! Reviewed Microsoft Standard Application License Terms - Standalone (free) Use Terms.pdf. Status: SKIPPED -- Skipping binary file: Microsoft Standard Application License Terms - Standalone (free) Use Terms.pdf
LLM auditresponse for .nvchecker.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `.nvchecker.toml` is a configuration file for the `nvchecker` tool, commonly used by AUR maintainers to automatically check for new upstream versions of a package. It defines a source type of `regex`, fetches the `Packages` file from Microsoft's official repository (`packages.microsoft.com`), and uses a regular expression to extract the version number. This is a standard, expected workflow for version monitoring and does not involve any code execution, data exfiltration, or unexpected operations. There is no evidence of malicious behavior.
</details>
<evidence>

</evidence>
<summary>Standard nvchecker config; no security issues.</summary>
</security_assessment>

[3/7] Reviewing .nvchecker.toml, PKGBUILD, microsoft-edge-stable.install, microsoft-edge-stable.sh...
[4/7] Reviewing PKGBUILD, microsoft-edge-stable.install, microsoft-edge-stable.sh...
+ Reviewed .nvchecker.toml. Status: SAFE -- Standard nvchecker config; no security issues.
LLM auditresponse for microsoft-edge-stable.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard `.install` script for an AUR package. It defines colored output helper functions and two hooks (`post_install` and `post_upgrade`) that merely print informational notes to the user about configuration file location and the launcher command. There are no network requests, file writes, dangerous command executions, obfuscated code, or any other indicators of malicious or supply-chain attack behavior. The script is entirely benign and follows normal packaging practices.
</details>
<evidence></evidence>
<summary>Benign install script with only informational print statements.</summary>
</security_assessment>

[5/7] Reviewing PKGBUILD, microsoft-edge-stable.sh...
+ Reviewed microsoft-edge-stable.install. Status: SAFE -- Benign install script with only informational print statements.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a standard Arch User Repository package for Microsoft Edge Stable. It downloads the official `.deb` package from Microsoft's official repository (`packages.microsoft.com`) with pinned checksums. The build process extracts the package, adjusts permissions on the sandbox binary (standard for Chromium-based browsers), resizes icons using ImageMagick, installs a launcher script, and copies the license. No obfuscated code, unexpected network requests, dangerous commands, or exfiltration attempts are present. The file follows conventional AUR packaging practices and shows no evidence of a supply-chain attack.</details>
<evidence></evidence>
<summary>Standard PKGBUILD for Microsoft Edge, no security issues.</summary>
</security_assessment>

[6/7] Reviewing microsoft-edge-stable.sh...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD for Microsoft Edge, no security issues.
LLM auditresponse for microsoft-edge-stable.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This wrapper script launches Microsoft Edge Stable with optional command-line flags from a user-specific config file. It reads `$XDG_CONFIG_HOME/microsoft-edge-stable-flags.conf` and passes the contents as arguments to `/opt/microsoft/msedge/microsoft-edge`. There are no network requests, no obfuscated code, no dangerous commands (eval, base64, curl, wget), and no system modifications beyond normal application execution. The script follows standard packaging practices for a browser launcher wrapper.
</details>
<evidence></evidence>
<summary>Simple browser launcher script, no security issues.</summary>
</security_assessment>

[7/7] Reviewing ...
+ Reviewed microsoft-edge-stable.sh. Status: SAFE -- Simple browser launcher script, no security issues.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
(Skipped 1 file: Microsoft Standard Application License Terms - Standalone (free) Use Terms.pdf)

API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 17,371
  Completion Tokens: 2,260
  Total Tokens: 19,631
  Total Cost: $0.001992
  Execution Time: 25.82 seconds

Final Status: SAFE


No issues found.


Audit Skips:

Microsoft Standard Application License Terms - Standalone (free) Use Terms.pdf: [SKIPPED] Skipping binary file: Microsoft Standard Application License Terms - Standalone (free) Use Terms.pdf
