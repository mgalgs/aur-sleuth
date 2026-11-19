---
package: cursor-bin
pkgver: 3.29.15
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 13052
completion_tokens: 1918
total_tokens: 14970
cost: 0.001536808
execution_time: 27.31
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-11-09T16:03:15Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard .gitignore for AUR package; no security issues.
  - file: .SRCINFO
    status: safe
    summary: Standard metadata file, no malicious content.
  - file: rg.sh
    status: safe
    summary: Simple wrapper script, no security concerns.
  - file: PKGBUILD
    status: safe
    summary: Standard binary repackaging PKGBUILD with no malicious code.
---

Materializing cursor-bin from local mirror...
Materialized cursor-bin
Analyzing cursor-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only static variable definitions at the global/top-level scope. There are no command substitutions, backticks, `eval`, or any other code execution constructs that would run during `makepkg --printsrcinfo`. All assignments (pkgname, pkgver, source array, sha512sums, etc.) are simple string or array declarations. The `package()` function is defined but not called during sourcing. No malicious top-level code is present.
</details>
<evidence></evidence>
<summary>No dangerous top-level code; sourcing is safe.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous top-level code; sourcing is safe.
Reviewing the 4 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/4] Reviewing .SRCINFO...
[0/4] Reviewing .SRCINFO, .gitignore...
[0/4] Reviewing .SRCINFO, .gitignore, PKGBUILD...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.gitignore` file for an AUR package. It lists files that should be ignored by Git, including the downloaded AppImage, the built package archive, and intermediate build artifacts under `pkg/` and `src/`. No executable code, network requests, or obfuscated content is present. The file is benign and follows normal packaging practices.
</details>
<evidence></evidence>
<summary>Standard .gitignore for AUR package; no security issues.</summary>
</security_assessment>

[1/4] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore for AUR package; no security issues.
[1/4] Reviewing .SRCINFO, PKGBUILD, rg.sh...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The .SRCINFO file is a standard Arch Linux package metadata file. It declares the package name, version, dependencies, options, and source files with their respective SHA‑512 checksums. All sources point to expected locations: the upstream Cursor binary `.deb` from `downloads.cursor.com` and helper scripts from the official Arch Linux packaging repositories (`gitlab.archlinux.org/archlinux/packaging/packages/code`). The local `rg.sh` is also checksummed. There are no embedded commands, obfuscated content, unusual network destinations, or deviations from normal packaging practices. The file contains no code execution logic and presents no supply‑chain risk.
</details>
<evidence></evidence>
<summary>Standard metadata file, no malicious content.</summary>
</security_assessment>

[2/4] Reviewing PKGBUILD, rg.sh...
+ Reviewed .SRCINFO. Status: SAFE -- Standard metadata file, no malicious content.
LLM auditresponse for rg.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a simple wrapper script for `rg` (ripgrep) that translates the argument `--cursor-ignore` into `--ignore-file`. There is no malicious activity: no network calls, no obfuscated code, no system modifications, no execution of untrusted content. It is a standard packaging convenience script.
</details>
<evidence></evidence>
<summary>Simple wrapper script, no security concerns.</summary>
</security_assessment>

[3/4] Reviewing PKGBUILD...
+ Reviewed rg.sh. Status: SAFE -- Simple wrapper script, no security concerns.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard packaging practices for a binary AUR package (cursor-bin). The source archive is downloaded from the official upstream domain (downloads.cursor.com) with a SHA-512 checksum provided (the initial `SKIP` in the array is later overridden by an explicit hash for index 0). Additional helper scripts come from the official Arch Linux packaging repository (`gitlab.archlinux.org`), which is trustworthy. The `package()` function simply extracts the `.deb`, moves files, and sets up symlinks to use system-installed Electron, Node.js, `xdg-open`, and a local `rg.sh` proxy script. There is no obfuscated code, no unexpected network requests, no execution of untrusted fetched content, and no data exfiltration. All operations are consistent with repackaging a proprietary binary application to integrate with Arch Linux system libraries.
</details>
<evidence></evidence>
<summary>Standard binary repackaging PKGBUILD with no malicious code.</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard binary repackaging PKGBUILD with no malicious code.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 13,052
  Completion Tokens: 1,918
  Total Tokens: 14,970
  Total Cost: $0.001537
  Execution Time: 27.31 seconds

Final Status: SAFE


No issues found.
