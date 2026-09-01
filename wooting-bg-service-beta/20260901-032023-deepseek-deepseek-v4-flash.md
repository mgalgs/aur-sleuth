---
package: wooting-bg-service-beta
pkgver: 0.5.0
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: b9e20f728bbe0de1871ebaca31738c802edc31f8
prompt_tokens: 10168
completion_tokens: 1587
total_tokens: 11755
cost: 0.00107963464
execution_time: 31.94
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: ok
upstream_files: 1
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-01T03:20:22Z
file_verdicts:
  - file: PKGBUILD
    status: safe
    summary: Standard AppImage package with pinned checksum, no suspicious behavior.
  - file: NOTICE.md
    status: safe
    summary: Informational notice file, no security issues.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata with pinned checksum.
---

Cloning https://aur.archlinux.org/wooting-bg-service-beta.git...
Cloned wooting-bg-service-beta
Analyzing wooting-bg-service-beta AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD's global scope and implicit `pkgver()` (not defined, so version is taken from `pkgver=${_pkgver//-/_}`) contain only variable assignments and harmless string substitutions. The source is fetched from the legitimate Wooting API over HTTPS with a pinned SHA256 checksum. No top-level command substitutions, obfuscated code, or network requests to unexpected hosts are present. `makepkg --nobuild --nodeps --noprepare` will only download and extract the source (if not already present) and source the PKGBUILD, neither of which executes any dangerous code. The `prepare()`, `build()`, and `package()` functions are not run during this narrow gate, so any content within them is out of scope for this assessment.
</details>
<evidence></evidence>
<summary>No dangerous code executed during fetch/source.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous code executed during fetch/source.
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Reviewing the 3 file(s) in the AUR repository. The 1 downloaded file(s) are upstream content, outside the threat model, and are not read.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, NOTICE.md...
[0/3] Reviewing .SRCINFO, NOTICE.md, PKGBUILD...
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard AUR packaging practices for an AppImage-based application. The source is downloaded from the official Wooting API over HTTPS, and the SHA-256 checksum is pinned to a specific value (not SKIP), ensuring integrity. All operations in `prepare()`, `build()`, and `package()` are routine: extracting specific directories from the AppImage, adjusting the desktop file, and installing files to the appropriate locations. There is no obfuscated code, no unexpected network requests, no execution of fetched scripts, and no exfiltration of data. This file shows no evidence of a supply-chain attack.
</details>
<evidence></evidence>
<summary>Standard AppImage package with pinned checksum, no suspicious behavior.</summary>
</security_assessment>

[1/3] Reviewing .SRCINFO, NOTICE.md...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AppImage package with pinned checksum, no suspicious behavior.
LLM auditresponse for NOTICE.md:
<security_assessment>
<decision>SAFE</decision>
<details>
The file NOTICE.md is a plain informational notice. It states that the package is built from a GitHub repository and invites contributions. There is no executable code, no network requests, no obfuscation, and no file operations. It poses no security risk.
</details>
<evidence></evidence>
<summary>Informational notice file, no security issues.</summary>
</security_assessment>

[2/3] Reviewing .SRCINFO...
+ Reviewed NOTICE.md. Status: SAFE -- Informational notice file, no security issues.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The `.SRCINFO` file contains only metadata for the AUR package `wooting-bg-service-beta`. It specifies a source URL pointing to the official Wooting API (`https://api.wooting.io/public/bg-service/download-installer`) with a pinned SHA256 checksum (`7b9350f6...`). There are no obfuscated commands, no unexpected network destinations, and no operations that deviate from standard AUR packaging practices. The provided checksum ensures integrity of the downloaded binary. No evidence of malicious behavior is present.
</details>
<evidence></evidence>
<summary>Standard AUR metadata with pinned checksum.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata with pinned checksum.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 10,168
  Completion Tokens: 1,587
  Total Tokens: 11,755
  Total Cost: $0.001080
  Execution Time: 31.94 seconds

Final Status: SAFE


No issues found.
