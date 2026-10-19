---
package: firefox-esr-i18n-hy-am
pkgbase: firefox-esr
pkgver: 153.5.0
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 57888
completion_tokens: 5493
total_tokens: 63381
cost: 0.006267534
execution_time: 278.01
files_reviewed: 3
files_skipped: 2
maintainer_files: 5
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 1
injection_attempts: 0
date: 2026-10-19T11:07:42Z
file_verdicts:
  - file: 0001-Install-under-remoting-name.patch
    status: skipped
    summary: "Skipping binary file: 0001-Install-under-remoting-name.patch"
  - file: firefox-esr.desktop
    status: safe
    summary: Standard Firefox ESR desktop entry; no malicious or suspicious behavior found.
  - file: identity-icons-brand.svg
    status: skipped
    summary: "Skipping binary file: identity-icons-brand.svg"
  - file: .SRCINFO
    status: safe
    summary: Static .SRCINFO metadata using official Mozilla sources and checksums; no security concerns.
  - file: PKGBUILD
    status: safe
    summary: Standard Firefox ESR PKGBUILD; official sources; no malicious behavior found.
---

firefox-esr-i18n-hy-am is built from firefox-esr
Materializing firefox-esr-i18n-hy-am from local mirror...
Materialized firefox-esr-i18n-hy-am
Analyzing firefox-esr-i18n-hy-am AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
Running `makepkg --printsrcinfo` only sources the PKGBUILD's top-level code. The top-level scope here consists of standard variable definitions, the `source` array, and a loop that generates per-language package names and package functions. No network requests, downloads, file exfiltration, or execution of untrusted payloads occur while the PKGBUILD is being sourced.

The `eval` used in the language loop is worth noting, but it only constructs package function definitions from a hardcoded static list of locale strings; it does not execute those functions or evaluate any attacker-controlled input. This is a common AUR pattern for generating many split-package functions. The `prepare()`, `build()`, and `package()` functions are not executed by `--printsrcinfo` and are out of scope for this gate.
</details>
<evidence>
</evidence>
<summary>
Top-level PKGBUILD code is standard metadata; no malicious behavior during sourcing.
</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Top-level PKGBUILD code is standard metadata; no malicious behavior during sourcing.
Note: 1 remote source(s) have no checksum (sha256sums=SKIP), so the bytes are not verifiable: https://archive.mozilla.org/pub/firefox/releases/153.5.0esr/source/firefox-153.5.0esr.source.tar.xz.asc
Reviewing the 5 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/5] Reviewing .SRCINFO...
[0/5] Reviewing .SRCINFO, 0001-Install-under-remoting-name.patch...
[0/5] Reviewing .SRCINFO, 0001-Install-under-remoting-name.patch, PKGBUILD...
[0/5] Reviewing .SRCINFO, 0001-Install-under-remoting-name.patch, PKGBUILD, firefox-esr.desktop...
[1/5] Reviewing .SRCINFO, PKGBUILD, firefox-esr.desktop...
! Reviewed 0001-Install-under-remoting-name.patch. Status: SKIPPED -- Skipping binary file: 0001-Install-under-remoting-name.patch
LLM auditresponse for firefox-esr.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard freedesktop.org `.desktop` launcher for Firefox ESR. It contains only desktop entry metadata: names, comments, keywords, MIME type associations, and launcher actions such as opening a normal window or a private window.

The `Exec` lines point exclusively to the package's own installed binary at `/usr/lib/firefox-esr/firefox-esr` with standard arguments (`%u`, `--new-window`, `--private-window`). There are no shell constructs, no network operations, no encoded content, and no file modifications. No injected or obfuscated code is present.
</details>
<evidence>
</evidence>
<summary>
Standard Firefox ESR desktop entry; no malicious or suspicious behavior found.
</summary>
</security_assessment>

[1/5] Reviewing .SRCINFO, PKGBUILD, firefox-esr.desktop, identity-icons-brand.svg...
[2/5] Reviewing .SRCINFO, PKGBUILD, identity-icons-brand.svg...
+ Reviewed firefox-esr.desktop. Status: SAFE -- Standard Firefox ESR desktop entry; no malicious or suspicious behavior found.
[3/5] Reviewing .SRCINFO, PKGBUILD...
! Reviewed identity-icons-brand.svg. Status: SKIPPED -- Skipping binary file: identity-icons-brand.svg
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This `.SRCINFO` file is a static AUR metadata descriptor. It declares the `firefox-esr` base package and a large set of split language-pack packages, including `firefox-esr-i18n-hy-am`. All remote sources point to Mozilla's official HTTPS archive (`archive.mozilla.org`) for the ESR 153.5.0 release, which is the expected upstream origin for this package family. There are no custom scripts, no executable code, no obfuscated strings, and no instructions beyond standard package metadata.

The checksums are mostly real `sha512sums` entries for pinned files; the single `SKIP` corresponds to the detached `.asc` signature file, which is a normal and harmless practice for signature verification files. Similarly, the use of `noextract` for `.xpi` language packs is standard packaging behavior. Nothing in this file attempts to download from unexpected hosts, execute fetched code, modify system files, or exfiltrate data. No supply-chain red flags are present.
</details>
<evidence>
</evidence>
<summary>
Static .SRCINFO metadata using official Mozilla sources and checksums; no security concerns.</summary>
</security_assessment>

[4/5] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Static .SRCINFO metadata using official Mozilla sources and checksums; no security concerns.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a standard Firefox ESR split package for Arch Linux. All external downloads come from the official Mozilla archive (`archive.mozilla.org`) with PGP verification for the main source tarball, and the language-pack XPIs are fetched from Mozilla's official release directory. The `prepare()`, `build()`, and `package_*()` functions perform normal Firefox build and packaging operations: applying patches, creating a mozconfig, running `./mach build`, installing files into `$pkgdir`, and generating standard desktop/icon/config files.

The `eval` used to generate per-language package functions is not malicious: it operates on a static, hard-coded list of locale names and human-readable descriptions defined in the same file, with no attacker-controlled input. No obfuscation, suspicious network destinations, data exfiltration, backdoors, or unexpected system modifications were found. The build fetches only the package's own upstream sources and dependencies through the normal build system.
</details>
<evidence></evidence>
<summary>Standard Firefox ESR PKGBUILD; official sources; no malicious behavior found.</summary>
</security_assessment>

[5/5] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard Firefox ESR PKGBUILD; official sources; no malicious behavior found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
(Skipped 2 files: 0001-Install-under-remoting-name.patch, identity-icons-brand.svg)

API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 57,888
  Completion Tokens: 5,493
  Total Tokens: 63,381
  Total Cost: $0.006268
  Execution Time: 278.01 seconds

Final Status: SAFE


No issues found.


Audit Skips:

0001-Install-under-remoting-name.patch: [SKIPPED] Skipping binary file: 0001-Install-under-remoting-name.patch

identity-icons-brand.svg: [SKIPPED] Skipping binary file: identity-icons-brand.svg
