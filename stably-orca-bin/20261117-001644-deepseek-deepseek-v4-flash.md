---
package: stably-orca-bin
pkgver: 1.4.261
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 3f8f339d2184315a824bf6b8e30068212deac13a
prompt_tokens: 13691
completion_tokens: 2488
total_tokens: 16179
cost: 0.00168003
execution_time: 15.73
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-11-17T00:16:43Z
file_verdicts:
  - file: stably-orca.desktop
    status: safe
    summary: Standard desktop entry file, no security issues.
  - file: .SRCINFO
    status: safe
    summary: Standard .SRCINFO metadata, no malicious code.
  - file: PKGBUILD
    status: safe
    summary: Standard pinned PKGBUILD, no malicious indicators found.
  - file: stably-orca.sh
    status: safe
    summary: Standard wrapper; no malicious content detected.
---

Materializing stably-orca-bin from local mirror...
Materialized stably-orca-bin
Analyzing stably-orca-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD's global scope consists solely of variable assignments (pkgname, pkgver, pkgdesc, etc.) and function declarations (prepare, package). No command substitutions, backtick expressions, or direct command executions are present at the top level. Running `makepkg --printsrcinfo` merely sources this file, which will perform these safe assignments. The potentially dangerous operations (downloading and running an AppImage, copying files) are confined to the `prepare()` and `package()` functions, which are **not** executed during `--printsrcinfo`. Therefore, this step presents no risk.
</details>
<evidence></evidence>
<summary>Top-level scope is safe; no malicious execution.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Top-level scope is safe; no malicious execution.
Reviewing the 4 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/4] Reviewing PKGBUILD...
[0/4] Reviewing PKGBUILD, .SRCINFO...
[0/4] Reviewing PKGBUILD, .SRCINFO, stably-orca.desktop...
LLM auditresponse for stably-orca.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard Linux desktop entry file (`.desktop`). It defines application metadata such as name, icon, and the command to launch (`Exec=stably-orca %U`). There are no suspicious contents, network references, obfuscated code, or unexpected system modifications. The file is a typical packaging artifact for GUI applications and does not exhibit any security concerns.
</details>
<evidence></evidence>
<summary>Standard desktop entry file, no security issues.</summary>
</security_assessment>

[0/4] Reviewing PKGBUILD, .SRCINFO, stably-orca.desktop, stably-orca.sh...
[1/4] Reviewing PKGBUILD, .SRCINFO, stably-orca.sh...
+ Reviewed stably-orca.desktop. Status: SAFE -- Standard desktop entry file, no security issues.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.SRCINFO` metadata file for the AUR package `stably-orca-bin`. It declares the package name, version, dependencies, and three source files with pinned SHA256 checksums (none set to `SKIP`). The sources are all fetched from the project's own GitHub releases page (`github.com/stablyai/orca`), which is the legitimate upstream location. There are no executable instructions, obfuscated content, or network requests embedded in this file. No evidence of supply-chain attack or malicious behavior is present.
</details>
<evidence></evidence>
<summary>Standard .SRCINFO metadata, no malicious code.</summary>
</security_assessment>

[2/4] Reviewing PKGBUILD, stably-orca.sh...
+ Reviewed .SRCINFO. Status: SAFE -- Standard .SRCINFO metadata, no malicious code.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard AUR packaging practices for a prebuilt Electron‑based AppImage.  
The source is pinned with a SHA‑256 checksum and downloaded over HTTPS from the project&#8217;s own GitHub releases.  
The `prepare()` and `package()` functions perform only routine operations: extracting the AppImage, copying files into `$pkgdir`, and installing helper scripts.  
No obfuscated code, unexpected network requests, or attempts to exfiltrate or modify system files outside the application&#8217;s scope are present.  
All commands (`chmod`, `install`, `cp`, `echo`) are normal packaging utilities.
</details>
<evidence></evidence>
<summary>Standard pinned PKGBUILD, no malicious indicators found.</summary>
</security_assessment>

[3/4] Reviewing stably-orca.sh...
+ Reviewed PKGBUILD. Status: SAFE -- Standard pinned PKGBUILD, no malicious indicators found.
LLM auditresponse for stably-orca.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard wrapper script for the Stably AI Orca AppImage-based application. It exports the `APPDIR` environment variable to ensure the upstream AppRun binary finds its application directory correctly, then launches `/opt/stably-orca/AppRun` with a `--disable-features=Vulkan` flag to avoid GPU compatibility issues. There are no network requests, no obfuscated code, no file modifications outside of the application's own installation path, and no execution of untrusted content. The script performs only routine packaging tasks (setting a path, passing arguments, and executing the packaged binary). No security issues are present.
</details>
<evidence></evidence>
<summary>Standard wrapper; no malicious content detected.</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed stably-orca.sh. Status: SAFE -- Standard wrapper; no malicious content detected.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 13,691
  Completion Tokens: 2,488
  Total Tokens: 16,179
  Total Cost: $0.001680
  Execution Time: 15.73 seconds

Final Status: SAFE


No issues found.
