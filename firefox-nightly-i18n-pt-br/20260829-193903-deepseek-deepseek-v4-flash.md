---
package: firefox-nightly-i18n-pt-br
pkgver: 157.0a1.20260829.093200
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 3e318911529c43138ec6bdba0bfcb56907607021
prompt_tokens: 7646
completion_tokens: 1007
total_tokens: 8653
cost: 0.00079521120
execution_time: 17.87
files_reviewed: 2
files_skipped: 0
maintainer_files: 2
source_fetch: ok
upstream_files: 1
upstream_named_files: 0
unpinned_sources: 0
date: 2026-08-29T19:39:02Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Declarative metadata with pinned checksum from official upstream.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR language pack PKGBUILD, no security issues.
---

Cloning https://aur.archlinux.org/firefox-nightly-i18n-pt-br.git...
Cloned firefox-nightly-i18n-pt-br
Analyzing firefox-nightly-i18n-pt-br AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD only sources the global scope where variables are assigned, defines a `package()` function (which is not executed during the narrow gate), and downloads a single XPI file from Mozilla&#39;s official FTP server. The source URL is legitimate and the checksum is pinned. No code runs in `pkgver()` because it is absent. There are no top-level command substitutions, no obfuscated operations, and no network requests to unexpected hosts. The narrow gate operations (fetching sources and sourcing the PKGBUILD) are safe.
</details>
<evidence></evidence>
<summary>Safe: standard PKGBUILD with official Mozilla source.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Safe: standard PKGBUILD with official Mozilla source.
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Reviewing the 2 file(s) in the AUR repository. The 1 downloaded file(s) are upstream content, outside the threat model, and are not read.
Reviewing the AUR repository's files...
[0/2] Reviewing .SRCINFO...
[0/2] Reviewing .SRCINFO, PKGBUILD...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This `.SRCINFO` file contains only standard package metadata for a Firefox Nightly language pack. The source is downloaded from Mozilla's official FTP server (`ftp.mozilla.org`), which is the expected upstream. The SHA256 checksum is pinned and non-empty. No executable code, obfuscation, or suspicious operations are present. The file format is declarative and contains no commands that could be exploited. This is a normal AUR packaging file with no supply-chain attack indicators.
</details>
<evidence></evidence>
<summary>Declarative metadata with pinned checksum from official upstream.</summary>
</security_assessment>

[1/2] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Declarative metadata with pinned checksum from official upstream.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a standard AUR package for a Firefox Nightly language pack. It downloads the language pack `.xpi` file from the official Mozilla FTP server (`ftp.mozilla.org`), verifies it with a pinned SHA-256 checksum, and installs it into the correct directory for Firefox Nightly. No suspicious commands, obfuscated code, or unexpected network requests are present. The checksum is not skipped, and the source URL is the official Mozilla source. All operations are consistent with normal packaging practices for a language pack.
</details>
<evidence>
</evidence>
<summary>Standard AUR language pack PKGBUILD, no security issues.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR language pack PKGBUILD, no security issues.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 7,646
  Completion Tokens: 1,007
  Total Tokens: 8,653
  Total Cost: $0.000795
  Execution Time: 17.87 seconds

Final Status: SAFE


No issues found.
