---
package: betterbird-bin
pkgver: 153.6.0esr
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 15109
completion_tokens: 1626
total_tokens: 16735
cost: 0.001670851
execution_time: 28.88
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-28T23:01:52Z
file_verdicts:
  - file: eu.betterbird.Betterbird.desktop
    status: safe
    summary: Standard desktop entry file; no malicious behavior detected. Safe.
  - file: PKGBUILD
    status: safe
    summary: Standard Betterbird binary PKGBUILD with pinned checksums; no malicious behavior found.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata; no malicious content found.
  - file: vendor-prefs.js
    status: safe
    summary: Standard preference file setting dictionary path to system hunspell.
---

Materializing betterbird-bin from local mirror...
Materialized betterbird-bin
Analyzing betterbird-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only standard variable definitions and a `package()` function. No code is executed at the global scope beyond variable assignments. The `package()` function body is not invoked by `makepkg --printsrcinfo`. There are no dangerous command substitutions, no `eval`, `curl`, `wget`, or other risky operations in the top-level scope that could execute during sourcing. Therefore, running `makepkg --printsrcinfo` is safe.
</details>
<evidence></evidence>
<summary>No dangerous global-scope code present.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous global-scope code present.
Reviewing the 4 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/4] Reviewing .SRCINFO...
[0/4] Reviewing .SRCINFO, PKGBUILD...
[0/4] Reviewing .SRCINFO, PKGBUILD, eu.betterbird.Betterbird.desktop...
LLM auditresponse for eu.betterbird.Betterbird.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard Freedesktop.org .desktop entry file for the Betterbird email client. It contains only declarative metadata: application name, localized names/comments, MIME type associations, and three `Exec` lines that launch the Betterbird binary (`betterbird %u`, `betterbird -compose`, `betterbird -addressbook`). These are the normal actions expected of an email client desktop entry (opening URLs/mailto links, composing a message, and opening the address book). There is no code execution beyond launching the package's own binary, no network requests, no obfuscation, no file manipulation, and no deviation from standard packaging practice.
</details>
<evidence>
</evidence>
<summary>
Standard desktop entry file; no malicious behavior detected. Safe.
</summary>
</security_assessment>

[0/4] Reviewing .SRCINFO, PKGBUILD, eu.betterbird.Betterbird.desktop, vendor-prefs.js...
[1/4] Reviewing .SRCINFO, PKGBUILD, vendor-prefs.js...
+ Reviewed eu.betterbird.Betterbird.desktop. Status: SAFE -- Standard desktop entry file; no malicious behavior detected. Safe.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a standard binary packaging script for Betterbird. It downloads the official upstream tarball from `betterbird.eu`, copies it into `/opt/betterbird`, installs a desktop entry and a vendor preferences file, creates symlinks for the binary and icons, and includes pinned SHA-256 checksums for all sources. There are no suspicious network operations, no execution of downloaded scripts, no encoded or obfuscated commands, and no tampering with system files outside the package's own install paths.

The package operations are limited to standard `install`, `cp`, and `ln -s` commands into `${pkgdir}`. The only unusual element is a plain text message printed during packaging asking users to vote for the AUR package, which is a benign reminder. The `vendor-prefs.js` file is not visible in this file, but it is fetched from the same package source list with a pinned checksum, and its installation into Betterbird's own `defaults/pref` directory is consistent with normal application configuration packaging. No evidence of supply-chain injection or malicious behavior was found.
</details>
<evidence>
</evidence>
<summary>
Standard Betterbird binary PKGBUILD with pinned checksums; no malicious behavior found.</summary>
</security_assessment>

[2/4] Reviewing .SRCINFO, vendor-prefs.js...
+ Reviewed PKGBUILD. Status: SAFE -- Standard Betterbird binary PKGBUILD with pinned checksums; no malicious behavior found.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.SRCINFO` metadata file for an AUR package. It declares the package name, version, architecture, dependencies, upstream source URLs, and SHA‑256 checksums. There are no executable commands, obfuscated code, or suspicious operations. All sources point to the official Betterbird website (`betterbird.eu`), and checksums are present (none are `SKIP`). The file performs no actions during the audit; it is purely declarative metadata.
</details>
<evidence>
</evidence>
<summary>Standard AUR metadata; no malicious content found.</summary>
</security_assessment>

[3/4] Reviewing vendor-prefs.js...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata; no malicious content found.
LLM auditresponse for vendor-prefs.js:
<security_assessment>
<decision>SAFE</decision>
<details>
This file sets a single Firefox/Thunderbird preference for the spellchecker dictionary path to the system-wide hunspell location (`/usr/share/hunspell`). This is a standard packaging practice for Mozilla-based applications on Linux to avoid bundling duplicate dictionaries. There is no code execution, no network access, no obfuscation, and no deviation from expected behavior.
</details>
<evidence>
</evidence>
<summary>Standard preference file setting dictionary path to system hunspell.</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed vendor-prefs.js. Status: SAFE -- Standard preference file setting dictionary path to system hunspell.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 15,109
  Completion Tokens: 1,626
  Total Tokens: 16,735
  Total Cost: $0.001671
  Execution Time: 28.88 seconds

Final Status: SAFE


No issues found.
