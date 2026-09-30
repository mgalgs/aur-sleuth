---
package: betterbird-de-bin
pkgver: 153.3.0esr
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 171a316e053e9c4b28731ccb1aa63b1168550d3a
prompt_tokens: 14977
completion_tokens: 1857
total_tokens: 16834
cost: 0.00130837
execution_time: 46.67
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-17T23:12:55Z
file_verdicts:
  - file: eu.betterbird.Betterbird.desktop
    status: safe
    summary: Standard .desktop file, no malicious content.
  - file: .SRCINFO
    status: safe
    summary: Standard .SRCINFO with pinned checksums from official upstream.
  - file: PKGBUILD
    status: safe
    summary: Standard binary package; no malicious behavior found.
  - file: vendor-prefs.js
    status: safe
    summary: Vendor prefs file sets dictionary path; no malicious code.
---

Materializing betterbird-de-bin from local mirror...
Materialized betterbird-de-bin
Analyzing betterbird-de-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The top-level scope of this PKGBUILD contains only static variable assignments and array definitions. No command substitutions, function calls, or external commands (curl, wget, eval, etc.) are present. The `echo` command inside the `package()` function is not executed during `makepkg --printsrcinfo` because that function is not invoked. There is no code that would download, execute, or exfiltrate data at source time. Therefore, running `makepkg --printsrcinfo` on this file is safe.</details>
<evidence></evidence>
<summary>No executable code in top-level scope.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No executable code in top-level scope.
Reviewing the 4 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/4] Reviewing .SRCINFO...
[0/4] Reviewing .SRCINFO, PKGBUILD...
[0/4] Reviewing .SRCINFO, PKGBUILD, eu.betterbird.Betterbird.desktop...
LLM auditresponse for eu.betterbird.Betterbird.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard Freedesktop desktop entry file for the Betterbird email client. It contains no executable code, no network requests, no obfuscation, and no system modification commands. The `Exec` lines reference the expected `betterbird` binary with standard arguments (`%u`, `-compose`, `-addressbook`). The rest of the file consists solely of localization strings. There is nothing malicious or suspicious in this file.
</details>
<evidence></evidence>
<summary>Standard .desktop file, no malicious content.</summary>
</security_assessment>

[1/4] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed eu.betterbird.Betterbird.desktop. Status: SAFE -- Standard .desktop file, no malicious content.
[1/4] Reviewing .SRCINFO, PKGBUILD, vendor-prefs.js...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The .SRCINFO file is a standard AUR metadata file listing package dependencies, source URLs, and checksums. All source URLs point to the official Betterbird project domain (betterbird.eu). All three sha256sums are pinned and non-SKIP, providing integrity verification. There are no scripts, encoded commands, network exfiltration, or any code execution present. The file is static metadata only.
</details>
<evidence></evidence>
<summary>Standard .SRCINFO with pinned checksums from official upstream.</summary>
</security_assessment>

[2/4] Reviewing PKGBUILD, vendor-prefs.js...
+ Reviewed .SRCINFO. Status: SAFE -- Standard .SRCINFO with pinned checksums from official upstream.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD is for the **betterbird-de-bin** package, a German-language binary distribution of Betterbird (a Thunderbird fork). The source downloads a precompiled tarball from the official Betterbird website (`https://www.betterbird.eu/downloads/LinuxArchive/...`). All three source files have pinned SHA256 checksums, ensuring integrity. The `package()` function performs standard installation steps: copying the extracted directory into `/opt`, installing a desktop file and a vendor preferences JS file, creating symlinks for the binary and icon resources, and linking the Hunspell dictionary directory. There is no use of dangerous commands like `eval`, `curl`, `wget`, base64 decoding, or any outbound network requests beyond the declared source. The `echo` statement is a benign message asking users to vote for the package on AUR. No obfuscated or encoded code is present. No file operations affect data outside the package's own scope. This is a clean, straightforward binary package.
</details>
<evidence></evidence>
<summary>Standard binary package; no malicious behavior found.</summary>
</security_assessment>

[3/4] Reviewing vendor-prefs.js...
+ Reviewed PKGBUILD. Status: SAFE -- Standard binary package; no malicious behavior found.
LLM auditresponse for vendor-prefs.js:
<security_assessment>
<decision>SAFE</decision>
<details>
This file contains a single preference setting that tells the application to use system-provided Hunspell dictionaries located at `/usr/share/hunspell`. This is a standard integration practice for Linux distributions, commonly seen in Firefox/Thunderbird packaging. There is no obfuscation, network activity, dangerous commands, or any deviation from normal packaging behavior. The file does not introduce any supply-chain risk.
</details>
<evidence></evidence>
<summary>Vendor prefs file sets dictionary path; no malicious code.</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed vendor-prefs.js. Status: SAFE -- Vendor prefs file sets dictionary path; no malicious code.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 14,977
  Completion Tokens: 1,857
  Total Tokens: 16,834
  Total Cost: $0.001308
  Execution Time: 46.67 seconds

Final Status: SAFE


No issues found.
