---
package: omni-shell
pkgver: 0.1.5
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 3e318911529c43138ec6bdba0bfcb56907607021
prompt_tokens: 8495
completion_tokens: 1144
total_tokens: 9639
cost: 0.00090275276
execution_time: 55.88
files_reviewed: 2
files_skipped: 0
maintainer_files: 2
source_fetch: ok
upstream_files: 64
upstream_named_files: 2
unpinned_sources: 0
date: 2026-08-29T11:03:24Z
file_verdicts:
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD with no evidence of malicious code.
  - file: .SRCINFO
    status: safe
    summary: Standard metadata; no malicious content.
---

Cloning https://aur.archlinux.org/omni-shell.git...
Cloned omni-shell
Analyzing omni-shell AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD does not contain any code that executes during `makepkg --nobuild --nodeps --noprepare` or `makepkg --printsrcinfo`. The source is a standard signed tarball fetched over HTTPS from the project's official upstream, and the checksum is pinned (not SKIP). No top-level command substitutions, no `pkgver()` function, and no other global-scope code that could trigger a download or exfiltration. The `package()` function will not run during these commands. Therefore, fetching sources and parsing the PKGBUILD is safe.
</details>
<evidence></evidence>
<summary>No dangerous code in the PKGBUILD.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous code in the PKGBUILD.
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Note: the PKGBUILD names 2 file(s) in the downloaded sources (src/omni-shell/bin/omni-shell, src/omni-shell/bin/omni-shell-ipc); they are upstream content and were not reviewed.
Reviewing the 2 file(s) in the AUR repository. The 64 downloaded file(s) are upstream content, outside the threat model, and are not read.
Reviewing the AUR repository's files...
[0/2] Reviewing .SRCINFO...
[0/2] Reviewing .SRCINFO, PKGBUILD...
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD is a standard AUR package file for omni-shell, a Quickshell-based status bar for Hyprland. It downloads a source tarball from the project's own upstream (git.macocian.com) with a pinned commit (v0.1.5) and a non-SKIP SHA256 checksum, ensuring integrity. No malicious operations are present: there are no curl|bash invocations, obfuscated code, eval statements, unexpected network requests, or attempts to exfiltrate data. The `package()` function only copies QML/JS files, binaries, and documentation into standard directories under `/usr/share` and `/usr/bin`. All dependencies are legitimate runtime packages for the application's functionality. No deviations from normal packaging practices are observed.
</details>
<evidence>
</evidence>
<summary>Standard PKGBUILD with no evidence of malicious code.</summary>
</security_assessment>

[1/2] Reviewing .SRCINFO...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD with no evidence of malicious code.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard AUR `.SRCINFO` metadata file. It contains only dependency declarations, optional dependencies, and a single source tarball with a pinned sha256sum. There is no executable code, no obfuscation, no unexpected network requests, and no deviation from normal packaging practices. All dependencies are standard system utilities or libraries relevant to the package&#x27;s purpose (Hyprland status bar, launcher, clipboard, etc.). The source URL points to the package&#x27;s own upstream repository. No issues found.
</details>
<evidence></evidence>
<summary>Standard metadata; no malicious content.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed .SRCINFO. Status: SAFE -- Standard metadata; no malicious content.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 8,495
  Completion Tokens: 1,144
  Total Tokens: 9,639
  Total Cost: $0.000903
  Execution Time: 55.88 seconds

Final Status: SAFE


No issues found.
