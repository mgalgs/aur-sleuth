---
package: microsoft-edge-dev-bin
pkgver: 155.0.4268.0
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 171a316e053e9c4b28731ccb1aa63b1168550d3a
prompt_tokens: 13099
completion_tokens: 2053
total_tokens: 15152
cost: 0.00114894990
execution_time: 45.4
files_reviewed: 4
files_skipped: 1
maintainer_files: 5
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-12T07:16:52Z
file_verdicts:
  - file: Microsoft Standard Application License Terms - Standalone (free) Use Terms.pdf
    status: skipped
    summary: "Skipping binary file: Microsoft Standard Application License Terms - Standalone (free) Use Terms.pdf"
  - file: .SRCINFO
    status: safe
    summary: Standard metadata, no malicious content.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD, no malicious behavior.
  - file: .gitignore
    status: safe
    summary: Standard gitignore for build artifacts.
  - file: microsoft-edge-dev.sh
    status: safe
    summary: Safe wrapper script for Edge flags.
---

Materializing microsoft-edge-dev-bin from local mirror...
Materialized microsoft-edge-dev-bin
Analyzing microsoft-edge-dev-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only static variable assignments (pkgname, pkgver, source, sha256sums, etc.) and comments at the global scope. There are no command substitutions, function calls, or any code that would execute when the file is sourced. The `package()` function and its contents are not executed during `makepkg --printsrcinfo`. Therefore, running this command poses no security risk.
</details>
<evidence></evidence>
<summary>No top-level code execution risk.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No top-level code execution risk.
Reviewing the 5 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/5] Reviewing .gitignore...
[0/5] Reviewing .gitignore, .SRCINFO...
[0/5] Reviewing .gitignore, .SRCINFO, Microsoft Standard Application License Terms - Standalone (free) Use Terms.pdf...
[0/5] Reviewing .gitignore, .SRCINFO, Microsoft Standard Application License Terms - Standalone (free) Use Terms.pdf, PKGBUILD...
[1/5] Reviewing .gitignore, .SRCINFO, PKGBUILD...
! Reviewed Microsoft Standard Application License Terms - Standalone (free) Use Terms.pdf. Status: SKIPPED -- Skipping binary file: Microsoft Standard Application License Terms - Standalone (free) Use Terms.pdf
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This .SRCINFO file is standard AUR package metadata. It declares the package name, version, dependencies, and three source files: the official Microsoft Edge Dev `.deb` from `packages.microsoft.com`, a shell script (`microsoft-edge-dev.sh`), and a license PDF. All three sources include valid SHA-256 checksums, which matches proper packaging hygiene. There are no embedded commands, no suspicious URLs, and no obfuscated content. The file is purely declarative and contains no executable code or unexpected references.
</details>
<evidence></evidence>
<summary>Standard metadata, no malicious content.</summary>
</security_assessment>

[2/5] Reviewing .gitignore, PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard metadata, no malicious content.
[2/5] Reviewing .gitignore, PKGBUILD, microsoft-edge-dev.sh...
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD for `microsoft-edge-dev-bin` is a standard AUR packaging file for the official Microsoft Edge Dev browser. It downloads the prebuilt `.deb` from Microsoft's own repository (`packages.microsoft.com`), verifies it via pinned SHA-256 checksums for all sources, and performs routine packaging tasks: extracting the archive, setting the required SUID bit on the sandbox binary (normal for Chromium-based browsers), resizing icons with ImageMagick, installing a launcher script, a license file, and removing unnecessary files. There is no obfuscated code, no unexpected network requests (beyond the declared upstream sources), no `curl|bash` patterns, and no manipulation of files outside the package&#8217;s own installation directories. The use of `chmod 4755` on the sandbox is expected and necessary for the browser&#8217;s security model. The file adheres to standard AUR packaging practices and does not contain any supply-chain attack indicators.
</details>
<evidence></evidence>
<summary>Standard AUR PKGBUILD, no malicious behavior.</summary>
</security_assessment>

[3/5] Reviewing .gitignore, microsoft-edge-dev.sh...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD, no malicious behavior.
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
The `.gitignore` file contains only standard Git ignore patterns that exclude build directories (`/src/`, `/pkg/`), Debian package files (`microsoft-edge-dev_*.deb`), log files (`/*.log`), and Arch Linux package files (`/*.pkg.tar*`). This is a typical configuration for AUR package repositories and does not contain any executable code, network requests, or suspicious operations. No evidence of malicious or dangerous behavior.
</details>
<evidence></evidence>
<summary>Standard gitignore for build artifacts.</summary>
</security_assessment>

[4/5] Reviewing microsoft-edge-dev.sh...
+ Reviewed .gitignore. Status: SAFE -- Standard gitignore for build artifacts.
LLM auditresponse for microsoft-edge-dev.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This script is a simple launcher for Microsoft Edge Dev. It reads optional command-line flags from a user-configurable file under `$XDG_CONFIG_HOME/microsoft-edge-dev-flags.conf` and passes them to the browser binary at `/opt/microsoft/msedge-dev/microsoft-edge-dev`. The script performs no network operations, no obfuscation, no file writes outside its own configuration, and no execution of untrusted code. The only file read is a user-owned config file in their own home directory. The `exec` call replaces the shell with the browser binary, which is standard practice. There are no security concerns; the behavior is exactly as documented and expected for an AUR package wrapper.
</details>
<evidence></evidence>
<summary>Safe wrapper script for Edge flags.</summary>
</security_assessment>

[5/5] Reviewing ...
+ Reviewed microsoft-edge-dev.sh. Status: SAFE -- Safe wrapper script for Edge flags.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
(Skipped 1 file: Microsoft Standard Application License Terms - Standalone (free) Use Terms.pdf)

API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 13,099
  Completion Tokens: 2,053
  Total Tokens: 15,152
  Total Cost: $0.001149
  Execution Time: 45.40 seconds

Final Status: SAFE


No issues found.


Audit Skips:

Microsoft Standard Application License Terms - Standalone (free) Use Terms.pdf: [SKIPPED] Skipping binary file: Microsoft Standard Application License Terms - Standalone (free) Use Terms.pdf
