---
package: firefox-nightly-i18n-zh-cn
pkgver: 158.0a1.20260917.203453
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 171a316e053e9c4b28731ccb1aa63b1168550d3a
prompt_tokens: 7609
completion_tokens: 3497
total_tokens: 11106
cost: 0.001293913418
execution_time: 83.7
files_reviewed: 2
files_skipped: 0
maintainer_files: 2
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-18T11:40:42Z
file_verdicts:
  - file: PKGBUILD
    status: safe
    summary: Standard language-pack PKGBUILD; official upstream source, pinned checksum, no malicious behavior.
  - file: .SRCINFO
    status: safe
    summary: Standard .SRCINFO metadata; safe Mozilla language-pack packaging with pinned checksum.
---

Materializing firefox-nightly-i18n-zh-cn from local mirror...
Materialized firefox-nightly-i18n-zh-cn
Analyzing firefox-nightly-i18n-zh-cn AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD's global scope contains only standard variable assignments (pkgrel, arch, license, url, _url, _version, pkgver, depends, _language, _language_short, _pkgname_base, pkgname, pkgdesc, groups, source, noextract, sha256sums) and a `package()` function definition that is not executed during `makepkg --printsrcinfo`. There are no command substitutions, external command executions, or any other potentially dangerous operations in the global scope that would execute when the PKGBUILD is sourced. The source URL is a plain string construction; no download occurs during this step. Parameter expansion `${_language_short,,}` is a safe bash built-in. All operations are benign and standard for AUR packages.
</details>
<evidence>
</evidence>
<summary>No global-level malicious code; safe to source.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No global-level malicious code; safe to source.
Reviewing the 2 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/2] Reviewing .SRCINFO...
[0/2] Reviewing .SRCINFO, PKGBUILD...
LLM auditresponse for PKGBUILD:
 <security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a standard language-pack package for Firefox Nightly. It downloads an official Mozilla language pack XPI from `ftp.mozilla.org`, which is the project&apos;s own upstream host, and it verifies the download with a pinned SHA-256 checksum.

The `package()` function simply installs the downloaded XPI into the Firefox Nightly extension directory. There are no suspicious network operations, no use of `eval`, `curl`, `base64`, or obfuscated code, and no file operations outside the package installation path. The file behaves exactly as expected for an AUR language-pack package and contains no supply-chain indicators.
</details>
<evidence></evidence>
<summary>Standard language-pack PKGBUILD; official upstream source, pinned checksum, no malicious behavior.</summary>
</security_assessment>

[1/2] Reviewing .SRCINFO...
+ Reviewed PKGBUILD. Status: SAFE -- Standard language-pack PKGBUILD; official upstream source, pinned checksum, no malicious behavior.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard .SRCINFO metadata file for the firefox-nightly-i18n-zh-cn AUR package. It declares a dependency on firefox-nightly and a single source: the official Mozilla language pack .xpi downloaded over HTTPS from ftp.mozilla.org, with a pinned SHA-256 checksum (144c...). No commands, executable code, or build/install logic are present in this file; it is a descriptive metadata manifest only.

The URL uses the `latest-mozilla-central-l10n` directory, which is a mutable "latest" path. However, the matching sha256sums entry pins the exact expected content, so a changed remote file would fail verification rather than be silently installed. The noextract setting and arch=any are normal for a prebuilt language pack that is installed as an .xpi.

I found no evidence of exfiltration, obfuscated code, dangerous command execution, unexpected network endpoints, backdoors, or any behavior outside the declared purpose of installing a Firefox Nightly language pack. This is a safe, conventional AUR package descriptor.
</details>
<evidence></evidence>
<summary>Standard .SRCINFO metadata; safe Mozilla language-pack packaging with pinned checksum.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed .SRCINFO. Status: SAFE -- Standard .SRCINFO metadata; safe Mozilla language-pack packaging with pinned checksum.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 7,609
  Completion Tokens: 3,497
  Total Tokens: 11,106
  Total Cost: $0.001294
  Execution Time: 83.70 seconds

Final Status: SAFE


No issues found.
