---
package: t3code-nightly-bin
pkgver: 0.0.36_nightly.20260828.1209
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 3e318911529c43138ec6bdba0bfcb56907607021
prompt_tokens: 9884
completion_tokens: 1332
total_tokens: 11216
cost: 0.001111828088
execution_time: 27.53
files_reviewed: 2
files_skipped: 0
maintainer_files: 2
source_fetch: ok
upstream_files: 2
upstream_named_files: 0
unpinned_sources: 0
date: 2026-08-28T11:03:03Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata, no security issues.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR package; no malicious behavior found.
---

Cloning https://aur.archlinux.org/t3code-nightly-bin.git...
Cloned t3code-nightly-bin
Analyzing t3code-nightly-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD sources are fetched from the project's own GitHub releases and raw content, using pinned checksums. The global scope contains only standard variable and array definitions with no malicious command substitutions (no `eval`, `base64`, `curl`, `wget`, or unexpected network operations). The `prepare()` and `package()` functions are not executed during the specified commands (`--nobuild --noprepare`), so any content within them is out of scope for this narrow gate audit. Running `makepkg --nobuild --nodeps --noprepare` and `makepkg --printsrcinfo` poses no risk of executing malicious code or exfiltrating data. The PKGBUILD follows standard AUR packaging practices.
</details>
<evidence>
</evidence>
<summary>Safe to fetch sources and parse PKGBUILD.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Safe to fetch sources and parse PKGBUILD.
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Reviewing the 2 file(s) in the AUR repository. The 2 downloaded file(s) are upstream content, outside the threat model, and are not read.
Reviewing the AUR repository's files...
[0/2] Reviewing .SRCINFO...
[0/2] Reviewing .SRCINFO, PKGBUILD...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The `.SRCINFO` file contains only standard packaging metadata for an AUR binary package. It declares dependencies, sources (an AppImage and a LICENSE file from the project's official GitHub repository), and SHA-256 checksums. No suspicious URLs, obfuscated code, or dangerous operations are present. The file does not contain any executable content or instructions; it is purely declarative. There are no indicators of a supply-chain attack.
</details>
<evidence></evidence>
<summary>Standard AUR metadata, no security issues.</summary>
</security_assessment>

[1/2] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata, no security issues.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD for `t3code-nightly-bin` follows standard AUR packaging practices for distributing a prebuilt AppImage from the official GitHub repository (`github.com/pingdotgg/t3code`).  
- The source is pinned to a specific release with a SHA-256 checksum (not SKIP), ensuring integrity at download time.  
- The `prepare()` function extracts the AppImage and validates that the expected launcher and sandbox binary exist; this is a standard integrity check, not a sign of malice.  
- The `package()` function installs the extracted content to `/opt/t3code-nightly-bin/`, sets the `chrome-sandbox` setuid bit (4755) – which is expected for Chromium's sandbox mechanism – and creates a small wrapper script.  
- No obfuscated code, unexpected network requests, data exfiltration, or backdoor mechanisms are present.  
The file is consistent with its stated purpose and does not contain any supply-chain attack vectors.
</details>
<evidence></evidence>
<summary>Standard AUR package; no malicious behavior found.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR package; no malicious behavior found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 9,884
  Completion Tokens: 1,332
  Total Tokens: 11,216
  Total Cost: $0.001112
  Execution Time: 27.53 seconds

Final Status: SAFE


No issues found.
