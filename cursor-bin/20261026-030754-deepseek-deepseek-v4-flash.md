---
package: cursor-bin
pkgver: 3.27.14
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 13210
completion_tokens: 6147
total_tokens: 19357
cost: 0.00342665
execution_time: 90.46
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-26T03:07:54Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard .gitignore for AUR package build artifacts.
  - file: rg.sh
    status: safe
    summary: Simple argument translation wrapper, no security issues.
  - file: .SRCINFO
    status: safe
    summary: Standard metadata file; no malicious content detected.
  - file: PKGBUILD
    status: safe
    summary: Securely packaged with pinned checksums and standard practices.
---

Materializing cursor-bin from local mirror...
Materialized cursor-bin
Analyzing cursor-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD only defines global variables and a `package()` function. No top-level code (command substitutions, backticks, `eval`, or function calls) executes any external commands or runs untrusted payloads. All variable assignments are static strings, arrays, or URLs. The `package()` function body is not executed during `makepkg --printsrcinfo`. Therefore, sourcing this PKGBUILD is safe.
</details>
<evidence></evidence>
<summary>No malicious top-level code execution.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious top-level code execution.
Reviewing the 4 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/4] Reviewing .SRCINFO...
[0/4] Reviewing .SRCINFO, .gitignore...
[0/4] Reviewing .SRCINFO, .gitignore, PKGBUILD...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard `.gitignore` for an AUR package repository. It lists build artifacts such as the downloaded AppImage, the compiled package archive, and files generated during the build process under `pkg/` and `src/`. There are no executable commands, network requests, obfuscated code, or any other indicators of malicious activity. The content is purely declarative and serves only to prevent Git from tracking temporary or generated files.
</details>
<evidence>

</evidence>
<summary>Standard .gitignore for AUR package build artifacts.</summary>
</security_assessment>

[1/4] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore for AUR package build artifacts.
[1/4] Reviewing .SRCINFO, PKGBUILD, rg.sh...
LLM auditresponse for rg.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a simple wrapper script that translates `--cursor-ignore` to `--ignore-file` when calling `rg` (ripgrep). It performs a straightforward text substitution in the argument list and does not execute any untrusted content, perform network operations, or modify the system. This is a legitimate helper for the Cursor editor to adapt its ripgrep usage.
</details>
<evidence></evidence>
<summary>Simple argument translation wrapper, no security issues.</summary>
</security_assessment>

[2/4] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed rg.sh. Status: SAFE -- Simple argument translation wrapper, no security issues.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The .SRCINFO file is a standard metadata file for an AUR package. It defines sources, checksums, dependencies, and build options for cursor-bin. The sources include an official download URL over HTTPS, helper scripts from the official Arch Linux GitLab repository (also HTTPS), and a local script file (rg.sh). All sources have corresponding sha512sums for integrity verification. No obfuscation, encoded data, suspicious network destinations, or dangerous commands are present. The file is not executable and does not contain any instructions that would compromise the system. It follows standard packaging practices.
</details>
<evidence></evidence>
<summary>Standard metadata file; no malicious content detected.</summary>
</security_assessment>

[3/4] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard metadata file; no malicious content detected.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows secure packaging practices. The upstream binary source is fetched from the official Cursor download server and pinned with a specific commit hash in the URL and a SHA-512 checksum. The helper scripts are fetched from the official Arch Linux GitLab repository and are also pinned with SHA-512 checksums. The `package()` function performs standard operations: extracting the archive, creating symlinks to system binaries, and generating wrapper scripts via `sed` from the pinned helper sources. There is no evidence of exfiltration, untrusted code execution, obfuscation, or deviation from the application's expected packaging workflow.
</details>
<evidence>
</evidence>
<summary>
Securely packaged with pinned checksums and standard practices.
</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Securely packaged with pinned checksums and standard practices.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 13,210
  Completion Tokens: 6,147
  Total Tokens: 19,357
  Total Cost: $0.003427
  Execution Time: 90.46 seconds

Final Status: SAFE


No issues found.
