---
package: ttf-ms-win11-auto-other
pkgbase: ttf-ms-win11-auto
pkgver: 10.0.26100.1742
pkgrel: 4
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: f47e5ed5e9b50f484d29402229454e7d1b1d7cdb
prompt_tokens: 36172
completion_tokens: 3004
total_tokens: 39176
cost: 0.00335415360
execution_time: 108.49
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 1
date: 2026-08-27T11:25:45Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard package metadata, no security concerns.
  - file: PKGBUILD
    status: safe
    summary: Legitimate font extraction from official Microsoft ISO.
  - file: .gitignore
    status: safe
    summary: Standard .gitignore file with no security concerns.
---

ttf-ms-win11-auto-other is built from ttf-ms-win11-auto
Cloning https://aur.archlinux.org/ttf-ms-win11-auto.git...
Cloned ttf-ms-win11-auto-other
Analyzing ttf-ms-win11-auto-other AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains no code that executes during the `makepkg --nobuild --nodeps --noprepare` and `makepkg --printsrcinfo` steps that poses a security risk. Top-level operations are limited to variable definitions, array expansions, and a benign `awk` command substitution to generate SKIP entries for `sha256sums`. The `DLAGENTS` override sets HTTP/HTTPS/file agents to `/usr/bin/true`, which prevents any actual downloading but is merely an unusual packaging convention — not malicious. All potentially dangerous operations (mount, 7z, curl, etc.) reside exclusively inside `prepare()`, `build()`, and `package()` functions, which are not invoked by the specified commands. No eval, base64, encrypted payloads, or unexpected network requests occur at the global scope or in `pkgver()` (which is absent). The source array references a legitimate Microsoft URL and local file paths; no untrusted or unrelated remote hosts are involved. This is safe to proceed with source fetching and PKGBUILD parsing.
</details>
<evidence></evidence>
<summary>No malicious code executes during source fetch.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious code executes during source fetch.
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Note: 1 remote source(s) have no checksum (sha256sums=SKIP), so the fetched bytes are not verifiable and can change without any AUR update: https://software-static.download.prss.microsoft.com/dbazure/888969d5-f34g-4e03-ac9d-1f9786c66749/26100.1742.240906-0331.ge_release_svc_refresh_CLIENTENTERPRISEEVAL_OEMRET_x64FRE_en-us.iso
Reviewing the 3 file(s) in the AUR repository. The 0 downloaded file(s) are upstream content, outside the threat model, and are not read.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, .gitignore...
[0/3] Reviewing .SRCINFO, .gitignore, PKGBUILD...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This .SRCINFO file contains only metadata describing the AUR package `ttf-ms-win11-auto-other`. It defines package name, version, dependencies, provides, conflicts, sources (a Microsoft ISO and many `file://` font sources), and checksums all set to `SKIP`. There is no executable code, no network operations beyond declaring the upstream source URL, and no obfuscation or suspicious patterns. The use of `SKIP` for checksums is a trust/hygiene choice and not by itself evidence of malice. The file is a standard package metadata file with no security issues.
</details>
<evidence></evidence>
<summary>Standard package metadata, no security concerns.</summary>
</security_assessment>

[1/3] Reviewing .gitignore, PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard package metadata, no security concerns.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD extracts TrueType fonts from a legitimate Microsoft Windows 11 Enterprise evaluation ISO. The ISO URL points to an official Microsoft download server, and all extracted font files are verified against hardcoded SHA-256 checksums in `prepare()`. No obfuscated code, hidden network requests, or commands that exfiltrate data or execute untrusted scripts are present. The use of `httpdirfs`, `udisksctl`, `7z`, and `curl` is consistent with the stated purpose of fetching and extracting font files. Checksums are set to `SKIP` for the `sha256sums` array (which is standard and not a security issue), while actual integrity checking is performed separately with `_sha256sums`. The file follows standard AUR packaging practices and contains no evidence of a supply-chain attack.
</details>
<evidence></evidence>
<summary>Legitimate font extraction from official Microsoft ISO.</summary>
</security_assessment>

[2/3] Reviewing .gitignore...
+ Reviewed PKGBUILD. Status: SAFE -- Legitimate font extraction from official Microsoft ISO.
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.gitignore` file used by Git repositories. It lists patterns for files and directories that should be ignored by version control, such as build artifacts (`src`, `pkg`, `*.pkg.tar*`), editor backup files (`*~`), and specific file types (`*.ttf`, `*.ttc`, `*.fon`). There is no executable code, no network requests, no obfuscation, and no evidence of malicious intent. The file performs no actions and only defines ignore rules.
</details>
<evidence></evidence>
<summary>Standard .gitignore file with no security concerns.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore file with no security concerns.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 36,172
  Completion Tokens: 3,004
  Total Tokens: 39,176
  Total Cost: $0.003354
  Execution Time: 108.49 seconds

Final Status: SAFE


No issues found.
