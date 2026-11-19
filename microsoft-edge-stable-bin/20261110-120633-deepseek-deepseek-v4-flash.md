---
package: microsoft-edge-stable-bin
pkgver: 157.0.4341.46
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 3f8f339d2184315a824bf6b8e30068212deac13a
prompt_tokens: 17443
completion_tokens: 2056
total_tokens: 19499
cost: 0.001961505
execution_time: 18.59
files_reviewed: 6
files_skipped: 1
maintainer_files: 7
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-11-10T12:06:32Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard AUR .SRCINFO with official Microsoft sources and checksums.
  - file: Microsoft Standard Application License Terms - Standalone (free) Use Terms.pdf
    status: skipped
    summary: "Skipping binary file: Microsoft Standard Application License Terms - Standalone (free) Use Terms.pdf"
  - file: .gitignore
    status: safe
    summary: Benign .gitignore file with build artifacts.
  - file: .nvchecker.toml
    status: safe
    summary: Standard nvchecker configuration for version checking.
  - file: microsoft-edge-stable.install
    status: safe
    summary: Standard install script with no malicious content.
  - file: microsoft-edge-stable.sh
    status: safe
    summary: Standard launcher wrapper, no security issues found.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD with pinned checksums and no malicious behavior.
---

Materializing microsoft-edge-stable-bin from local mirror...
Materialized microsoft-edge-stable-bin
Analyzing microsoft-edge-stable-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only static variable definitions and a `package()` function definition in the global scope. No top-level command substitutions, backtick expressions, `eval`, `curl`, `wget`, or any other executable code is present. Sourcing this file for `makepkg --printsrcinfo` will only assign variables and define the function, with no dangerous side effects. The potentially unsafe operations (downloading from the upstream Microsoft URL, setting suid sandbox, etc.) are all inside the `package()` function, which is not executed during `--printsrcinfo`.
</details>
<evidence></evidence>
<summary>Top-level scope has no dangerous code; safe to source.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Top-level scope has no dangerous code; safe to source.
Reviewing the 7 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/7] Reviewing .SRCINFO...
[0/7] Reviewing .SRCINFO, .gitignore...
[0/7] Reviewing .SRCINFO, .gitignore, .nvchecker.toml...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The .SRCINFO file is a standard metadata descriptor for Arch User Repository packages. It lists package name, version, dependencies, and sources. All sources are legitimate: the main binary is fetched from Microsoft's official repository (`packages.microsoft.com`), and the two other source files (`microsoft-edge-stable.sh` and a license PDF) are local to the AUR repository. SHA256 checksums are provided and not set to SKIP. There are no dangerous commands, obfuscated code, network requests to unexpected hosts, or any other malicious indicators. This file contains only declarative metadata and poses no security threat.
</details>
<evidence></evidence>
<summary>Standard AUR .SRCINFO with official Microsoft sources and checksums.</summary>
</security_assessment>

[1/7] Reviewing .gitignore, .nvchecker.toml...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR .SRCINFO with official Microsoft sources and checksums.
[1/7] Reviewing .gitignore, .nvchecker.toml, Microsoft Standard Application License Terms - Standalone (free) Use Terms.pdf...
[2/7] Reviewing .gitignore, .nvchecker.toml...
! Reviewed Microsoft Standard Application License Terms - Standalone (free) Use Terms.pdf. Status: SKIPPED -- Skipping binary file: Microsoft Standard Application License Terms - Standalone (free) Use Terms.pdf
[2/7] Reviewing .gitignore, .nvchecker.toml, PKGBUILD...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard `.gitignore` file that ignores common build artifact and package file extensions (`.log`, `.zst`, `.deb`, `.rpm`). There is no executable code, network requests, obfuscation, or any indication of malicious intent. It is a routine file used in packaging repositories to prevent generated files from being tracked by version control.
</details>
<evidence></evidence>
<summary>Benign .gitignore file with build artifacts.</summary>
</security_assessment>

[3/7] Reviewing .nvchecker.toml, PKGBUILD...
+ Reviewed .gitignore. Status: SAFE -- Benign .gitignore file with build artifacts.
[3/7] Reviewing .nvchecker.toml, PKGBUILD, microsoft-edge-stable.install...
LLM auditresponse for .nvchecker.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a configuration file for `nvchecker`, a tool that checks for new upstream versions. The file defines a regex-based version check against Microsoft's official package repository (`packages.microsoft.com`). There is no obfuscation, dangerous commands, or unexpected behavior. It simply specifies a URL and a regex pattern to extract version numbers, which is the intended purpose of such a configuration file.
</details>
<evidence>
</evidence>
<summary>Standard nvchecker configuration for version checking.</summary>
</security_assessment>

[4/7] Reviewing PKGBUILD, microsoft-edge-stable.install...
+ Reviewed .nvchecker.toml. Status: SAFE -- Standard nvchecker configuration for version checking.
[4/7] Reviewing PKGBUILD, microsoft-edge-stable.install, microsoft-edge-stable.sh...
LLM auditresponse for microsoft-edge-stable.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard `.install` script for an AUR binary package. It defines colored output helpers and two hooks (`post_install`, `post_upgrade`) that print informational notes to the user about where to place custom flags and the name of the launcher. There are no network requests, encoded or obfuscated commands, file operations outside the package&#x27;s scope, or any other indicators of malicious behavior. The script performs no modifications to the system and only displays text.</details>
<evidence></evidence>
<summary>Standard install script with no malicious content.</summary>
</security_assessment>

[5/7] Reviewing PKGBUILD, microsoft-edge-stable.sh...
+ Reviewed microsoft-edge-stable.install. Status: SAFE -- Standard install script with no malicious content.
LLM auditresponse for microsoft-edge-stable.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
The script is a standard launcher wrapper for Microsoft Edge. It reads optional user flags from a configuration file under `$XDG_CONFIG_HOME` and passes them to the Edge binary. There are no network requests, obfuscated code, or unexpected system modifications. The use of `cat` and `exec` is normal for this kind of wrapper. The script does not execute any untrusted input outside of passing user‑supplied flags to the Edge binary itself, which is the intended functionality.
</details>
<evidence></evidence>
<summary>Standard launcher wrapper, no security issues found.</summary>
</security_assessment>

[6/7] Reviewing PKGBUILD...
+ Reviewed microsoft-edge-stable.sh. Status: SAFE -- Standard launcher wrapper, no security issues found.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD for microsoft-edge-stable-bin follows standard AUR packaging practices. The source is fetched from Microsoft's official repository (`packages.microsoft.com`) with pinned SHA256 checksums, ensuring integrity. The `package()` function performs routine operations: extracting the Debian package, setting the SUID bit on the sandbox binary (expected for Chromium-based browsers), generating application icons using `magick` (ImageMagick), and installing the launcher script and license file. There are no suspicious network requests, obfuscated code, dangerous command usage (e.g., `eval`, `curl`, `wget`), or attempts to exfiltrate data or modify system files outside the package scope. The use of `chmod 4755` on the sandbox is a standard security requirement for sandboxing, not a vulnerability. The file is safe.
</details>
<evidence>

</evidence>
<summary>Standard PKGBUILD with pinned checksums and no malicious behavior.</summary>
</security_assessment>

[7/7] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD with pinned checksums and no malicious behavior.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
(Skipped 1 file: Microsoft Standard Application License Terms - Standalone (free) Use Terms.pdf)

API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 17,443
  Completion Tokens: 2,056
  Total Tokens: 19,499
  Total Cost: $0.001962
  Execution Time: 18.59 seconds

Final Status: SAFE


No issues found.


Audit Skips:

Microsoft Standard Application License Terms - Standalone (free) Use Terms.pdf: [SKIPPED] Skipping binary file: Microsoft Standard Application License Terms - Standalone (free) Use Terms.pdf
