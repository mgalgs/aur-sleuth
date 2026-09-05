---
package: t3code-nightly-bin
pkgver: 0.0.39_nightly.20260905.1290
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 171a316e053e9c4b28731ccb1aa63b1168550d3a
prompt_tokens: 9728
completion_tokens: 1260
total_tokens: 10988
cost: 0.0010202584
execution_time: 40.17
files_reviewed: 2
files_skipped: 0
maintainer_files: 2
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-05T23:01:20Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata, official sources with checksums.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD for a prebuilt AppImage; no signs of malice.
---

Materializing t3code-nightly-bin from local mirror...
Materialized t3code-nightly-bin
Analyzing t3code-nightly-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD's global/top-level scope only contains variable definitions (strings, arrays) and a few simple parameter expansions (e.g., `_upstream_version="${pkgver/_nightly./-nightly.}"`). There are no command substitutions, backtick executions, `eval` calls, or any other constructs that would execute external commands when the file is sourced. The `source` array defines URLs for the AppImage and license file, but these are not downloaded or fetched at this stage – that happens later during `makepkg`'s download phase. Therefore, running `makepkg --printsrcinfo` to parse this PKGBUILD is safe.
</details>
<evidence></evidence>
<summary>No dangerous code in global scope; safe to source.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous code in global scope; safe to source.
Reviewing the 2 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/2] Reviewing .SRCINFO...
[0/2] Reviewing .SRCINFO, PKGBUILD...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The .SRCINFO file is a standard metadata file for an AUR package. It declares a nightly build of "t3code", a desktop control surface for coding agents. Both source URLs point to the official GitHub repository (`github.com/pingdotgg/t3code`) — the AppImage binary from the releases page and the license file from the raw content. SHA256 checksums are provided for both sources and are non-`SKIP`, allowing verification. There are no suspicious network destinations, obfuscated commands, or unexpected file operations. The package dependencies and options are typical for an Electron/GTK3-based application. No supply-chain attack indicators are present.
</details>
<evidence></evidence>
<summary>Standard AUR metadata, official sources with checksums.</summary>
</security_assessment>

[1/2] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata, official sources with checksums.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard AUR packaging practices for distributing a prebuilt AppImage. All source downloads are from the official GitHub repository of the upstream project (`github.com/pingdotgg/t3code`) over HTTPS, with pinned SHA256 checksums. The `prepare()` function extracts the AppImage using `--appimage-extract` (standard for AppImage packages) and performs basic integrity checks on the extracted payload. The `package()` function installs the extracted files to `/opt`, sets the SUID bit on `chrome-sandbox` (expected for Chromium-based Electron apps to enable sandboxing), creates a launcher wrapper script, a desktop file, icons, and a license file. No obfuscated code, no unexpected network requests, no eval, base64, or other dangerous constructs are present. The SUID bit on `chrome-sandbox` is a standard security requirement for Chromium sandboxes and is not a sign of malice. The package is safe.
</details>
<evidence></evidence>
<summary>Standard AUR PKGBUILD for a prebuilt AppImage; no signs of malice.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD for a prebuilt AppImage; no signs of malice.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 9,728
  Completion Tokens: 1,260
  Total Tokens: 10,988
  Total Cost: $0.001020
  Execution Time: 40.17 seconds

Final Status: SAFE


No issues found.
