---
package: deadlock-modmanager
pkgver: 1.1.0
pkgrel: 3
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 171a316e053e9c4b28731ccb1aa63b1168550d3a
prompt_tokens: 15102
completion_tokens: 2398
total_tokens: 17500
cost: 0.00132878844
execution_time: 52.65
files_reviewed: 5
files_skipped: 0
maintainer_files: 5
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-12T11:13:23Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard .SRCINFO metadata with pinned source and checksum; no malicious content found.
  - file: .gitignore
    status: safe
    summary: Standard .gitignore file, no security concerns.
  - file: deadlock-modmanager.desktop
    status: safe
    summary: Standard desktop entry, no security issues.
  - file: nvidia-webkit-wrapper.sh
    status: safe
    summary: Legitimate wrapper script with no malicious behavior.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD, no security issues found.
---

Materializing deadlock-modmanager from local mirror...
Materialized deadlock-modmanager
Analyzing deadlock-modmanager AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only standard variable assignments and function definitions at the top level. No command substitutions, `eval`, `curl`, `wget`, or other executable statements exist outside of the `prepare()`, `build()`, and `package()` functions. Since `makepkg --printsrcinfo` only sources the top-level scope and does not execute those functions, there is no risk of running malicious code during this operation.
</details>
<evidence></evidence>
<summary>No executable code at top-level scope.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No executable code at top-level scope.
Reviewing the 5 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/5] Reviewing .SRCINFO...
[0/5] Reviewing .SRCINFO, .gitignore...
[0/5] Reviewing .SRCINFO, .gitignore, PKGBUILD...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This .SRCINFO file describes a standard Arch User Repository package for the deadlock-modmanager project. It declares a pinned release tarball downloaded from the project's own GitHub repository using a tagged version (`v1.1.0`), and provides a fixed sha256 checksum. The dependency list consists of normal build dependencies and runtime libraries appropriate for a Tauri/GTK-based desktop application.

No suspicious network destinations, encoded commands, file operations, or unexpected build hooks are present. The file contains only package metadata and does not include any executable logic. The checksum is pinned rather than skipped, which is good packaging practice. There is no evidence of malicious or dangerous behavior.
</details>
<evidence>
</evidence>
<summary>
Standard .SRCINFO metadata with pinned source and checksum; no malicious content found.
</summary>
</security_assessment>

[0/5] Reviewing .SRCINFO, .gitignore, PKGBUILD, deadlock-modmanager.desktop...
[1/5] Reviewing .gitignore, PKGBUILD, deadlock-modmanager.desktop...
+ Reviewed .SRCINFO. Status: SAFE -- Standard .SRCINFO metadata with pinned source and checksum; no malicious content found.
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.gitignore` file for an AUR package. It lists directories and file patterns that should be ignored by version control, such as build artifacts (`pkg/`, `src/`, `deadlock-modmanager/`), compressed package archives (`*.tar.zst`), and log files (`*.log`). There is no executable code, no network requests, no obfuscation, and no system modification commands. The file poses no security risk.
</details>
<evidence>
</evidence>
<summary>Standard .gitignore file, no security concerns.</summary>
</security_assessment>

[1/5] Reviewing .gitignore, PKGBUILD, deadlock-modmanager.desktop, nvidia-webkit-wrapper.sh...
[2/5] Reviewing PKGBUILD, deadlock-modmanager.desktop, nvidia-webkit-wrapper.sh...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore file, no security concerns.
LLM auditresponse for deadlock-modmanager.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard desktop entry file (deadlock-modmanager.desktop) used to register the application in the system menu. It contains no executable code, no network requests, no file operations, and no obfuscated or suspicious content. It simply defines metadata (name, icon, executable, category) and is a routine packaging artifact.</details>
<evidence></evidence>
<summary>Standard desktop entry, no security issues.</summary>
</security_assessment>

[3/5] Reviewing PKGBUILD, nvidia-webkit-wrapper.sh...
+ Reviewed deadlock-modmanager.desktop. Status: SAFE -- Standard desktop entry, no security issues.
LLM auditresponse for nvidia-webkit-wrapper.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This script is a standard wrapper for launching the deadlock-modmanager binary with appropriate environment adjustments. It sets `LD_LIBRARY_PATH` to include a bundled `bin` directory, detects NVIDIA on Wayland to conditionally disable DMA-BUF renderer (a known workaround for NVIDIA+Wayland issues), and then executes the actual binary. No network requests, no downloads, no obfuscated code, no system modifications outside its own scope. All commands are standard shell utilities (`readlink`, `xargs`, `glxinfo`, `grep`, `sed`, `exec`) and serve the legitimate purpose of adjusting the runtime environment for the application. This is typical AUR packaging practice and poses no security threat.
</details>
<evidence></evidence>
<summary>Legitimate wrapper script with no malicious behavior.</summary>
</security_assessment>

[4/5] Reviewing PKGBUILD...
+ Reviewed nvidia-webkit-wrapper.sh. Status: SAFE -- Legitimate wrapper script with no malicious behavior.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a standard build file for the `deadlock-modmanager` package, a mod manager for the game Deadlock. It downloads the source tarball from the official GitHub repository with a pinned SHA-256 checksum, ensuring integrity. The build process uses `cargo fetch --locked` and `cargo tauri build --frozen`, which respect the lockfile and prevent dependency tampering. The environment variables `VITE_API_URL`, `VITE_WEB_URL`, and `VITE_AUTH_URL` point to the application's own backend services (`deadlockmods.app`), which is expected for its functionality. There are no obfuscated commands, no downloads from unexpected hosts, no file operations outside the package directory, and no post-install hooks that modify system state beyond standard packaging conventions. The PKGBUILD follows best practices and contains no malicious or suspicious behavior.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD, no security issues found.</summary>
</security_assessment>

[5/5] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD, no security issues found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 15,102
  Completion Tokens: 2,398
  Total Tokens: 17,500
  Total Cost: $0.001329
  Execution Time: 52.65 seconds

Final Status: SAFE


No issues found.
