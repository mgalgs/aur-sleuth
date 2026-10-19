---
package: firefox-esr-i18n-gd
pkgbase: firefox-esr
pkgver: 153.5.0
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 57805
completion_tokens: 7844
total_tokens: 65649
cost: 0.006687863
execution_time: 298.38
files_reviewed: 3
files_skipped: 2
maintainer_files: 5
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 1
injection_attempts: 0
date: 2026-10-19T03:23:48Z
file_verdicts:
  - file: 0001-Install-under-remoting-name.patch
    status: skipped
    summary: "Skipping binary file: 0001-Install-under-remoting-name.patch"
  - file: .SRCINFO
    status: safe
    summary: Standard .SRCINFO metadata with official Mozilla sources and pinned checksums; no malicious behavior found.
  - file: identity-icons-brand.svg
    status: skipped
    summary: "Skipping binary file: identity-icons-brand.svg"
  - file: firefox-esr.desktop
    status: safe
    summary: Standard Firefox ESR desktop launcher; no malicious behavior found.
  - file: PKGBUILD
    status: safe
    summary: "Safe: standard Firefox ESR PKGBUILD, no malicious behavior found."
---

firefox-esr-i18n-gd is built from firefox-esr
Materializing firefox-esr-i18n-gd from local mirror...
Materialized firefox-esr-i18n-gd
Analyzing firefox-esr-i18n-gd AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains a top-level `eval` statement that constructs package functions dynamically. However, the data passed into `eval` comes from the `_languages` array defined entirely within the PKGBUILD itself (static, hardcoded strings). There is no external input or untrusted manipulation of these values, so no injection is possible. All other top-level code consists of simple variable/array assignments (depends, source, checksums, etc.) and loops that only set up data structures — none of these execute downloads, external commands, or exfiltrate data. Since `makepkg --printsrcinfo` only sources the global scope (not `pkgver()`, `prepare()`, `build()`, or `package()`), no dangerous code runs during this step.
</details>
<evidence></evidence>
<summary>No dangerous top-level execution; static eval is safe.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous top-level execution; static eval is safe.
Note: 1 remote source(s) have no checksum (sha256sums=SKIP), so the bytes are not verifiable: https://archive.mozilla.org/pub/firefox/releases/153.5.0esr/source/firefox-153.5.0esr.source.tar.xz.asc
Reviewing the 5 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/5] Reviewing .SRCINFO...
[0/5] Reviewing .SRCINFO, PKGBUILD...
[0/5] Reviewing .SRCINFO, PKGBUILD, 0001-Install-under-remoting-name.patch...
[0/5] Reviewing .SRCINFO, PKGBUILD, 0001-Install-under-remoting-name.patch, firefox-esr.desktop...
[1/5] Reviewing .SRCINFO, PKGBUILD, firefox-esr.desktop...
! Reviewed 0001-Install-under-remoting-name.patch. Status: SKIPPED -- Skipping binary file: 0001-Install-under-remoting-name.patch
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This .SRCINFO file is package metadata only; it contains no executable code, shell commands, or build/install logic. All source entries point to Mozilla's official archive (archive.mozilla.org) for Firefox ESR 153.5.0 language packs and the corresponding source tarball/signature. No unrelated hosts, no binary downloads from suspicious locations, and no obfuscated content are present.

Packaging practices are standard: the PGP signature source has a SKIP checksum, which is normal for detached signature files, and the language pack sources all have pinned sha512 checksums. The validpgpkeys entry and pinned version further support integrity. There is no evidence of exfiltration, backdoors, unexpected file operations, or supply-chain injection. The file is consistent with a legitimate multi-package Firefox ESR i18n AUR package.
</details>
<evidence>
</evidence>
<summary>
Standard .SRCINFO metadata with official Mozilla sources and pinned checksums; no malicious behavior found.
</summary>
</security_assessment>

[1/5] Reviewing .SRCINFO, PKGBUILD, firefox-esr.desktop, identity-icons-brand.svg...
[2/5] Reviewing PKGBUILD, firefox-esr.desktop, identity-icons-brand.svg...
+ Reviewed .SRCINFO. Status: SAFE -- Standard .SRCINFO metadata with official Mozilla sources and pinned checksums; no malicious behavior found.
[3/5] Reviewing PKGBUILD, firefox-esr.desktop...
! Reviewed identity-icons-brand.svg. Status: SKIPPED -- Skipping binary file: identity-icons-brand.svg
LLM auditresponse for firefox-esr.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard freedesktop.org `.desktop` launcher for Firefox ESR. It contains localized names, comments, keywords, MIME type registrations, and desktop actions for opening new windows and private windows. All `Exec` lines point to the package's own installed binary at `/usr/lib/firefox-esr/firefox-esr` with standard arguments (`%u`, `--new-window`, `--private-window`).

No network requests, obfuscated commands, suspicious file operations, or unexpected system modifications are present. The content is entirely consistent with ordinary application packaging for a web browser launcher. The localized strings are verbose but benign, including standard HTML entity usage such as `&apos;` inside translations.
</details>
<evidence>
</evidence>
<summary>
Standard Firefox ESR desktop launcher; no malicious behavior found.</summary>
</security_assessment>

[4/5] Reviewing PKGBUILD...
+ Reviewed firefox-esr.desktop. Status: SAFE -- Standard Firefox ESR desktop launcher; no malicious behavior found.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a standard split package for Firefox ESR and its language packs. All source archives and `.xpi` files are fetched from the project's official upstream (`archive.mozilla.org`), and the source tarball, patches, icons, and desktop file are pinned with explicit `sha512` hashes. Only the detached `.asc` signature uses `SKIP`, which is normal.

The build and package functions run Mozilla's upstream build system (`./mach build`, `./mach install`) and install files only into `$pkgdir`. Language-pack functions are generated with `eval`, but the values come from a hard-coded list of locale strings, so this is a routine packaging pattern rather than an injection or obfuscation vector. There are no calls to `curl`, `wget`, `base64`, or encoded commands, and no exfiltration or modification of files outside the package's own scope.

The embedded Google API key is the standard Arch Linux Firefox distribution key and is used for normal browser functionality. Overall, no evidence of injected malicious code was found.
</details>
<evidence></evidence>
<summary>Safe: standard Firefox ESR PKGBUILD, no malicious behavior found.</summary>
</security_assessment>

[5/5] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Safe: standard Firefox ESR PKGBUILD, no malicious behavior found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
(Skipped 2 files: 0001-Install-under-remoting-name.patch, identity-icons-brand.svg)

API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 57,805
  Completion Tokens: 7,844
  Total Tokens: 65,649
  Total Cost: $0.006688
  Execution Time: 298.38 seconds

Final Status: SAFE


No issues found.


Audit Skips:

0001-Install-under-remoting-name.patch: [SKIPPED] Skipping binary file: 0001-Install-under-remoting-name.patch

identity-icons-brand.svg: [SKIPPED] Skipping binary file: identity-icons-brand.svg
