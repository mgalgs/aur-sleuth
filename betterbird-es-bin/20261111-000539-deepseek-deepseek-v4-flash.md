---
package: betterbird-es-bin
pkgver: 153.6.0esr
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 3f8f339d2184315a824bf6b8e30068212deac13a
prompt_tokens: 15061
completion_tokens: 1961
total_tokens: 17022
cost: 0.00170847
execution_time: 23.21
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-11-11T00:05:39Z
file_verdicts:
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD with pinned checksums; no malicious content.
  - file: .SRCINFO
    status: safe
    summary: Standard package descriptor, no security issues.
  - file: eu.betterbird.Betterbird.desktop
    status: safe
    summary: Standard .desktop file, no security concerns.
  - file: vendor-prefs.js
    status: safe
    summary: "Safe: standard preference file for system dictionaries."
---

Materializing betterbird-es-bin from local mirror...
Materialized betterbird-es-bin
Analyzing betterbird-es-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only standard variable assignments, a `source` array pointing to the official Betterbird download and auxiliary files, and a `package()` function definition. No top-level commands (e.g., `eval`, `curl`, `wget`, `base64`, or command substitutions) that would execute during `makepkg --printsrcinfo` are present. The `package()` function is not invoked during this step, so any code inside it is out of scope. The source URL is from the official project domain (betterbird.eu), and checksums are provided. No signs of malicious or obfuscated top-level code.
</details>
<evidence></evidence>
<summary>No top-level malicious code executed during printsrcinfo.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No top-level malicious code executed during printsrcinfo.
Reviewing the 4 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/4] Reviewing .SRCINFO...
[0/4] Reviewing .SRCINFO, PKGBUILD...
[0/4] Reviewing .SRCINFO, PKGBUILD, eu.betterbird.Betterbird.desktop...
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard Arch packaging practices for a binary package. It downloads a prebuilt archive from the official Betterbird website (betterbird.eu) with verified SHA-256 checksums. The `package()` function only copies files into the package directory, creates symlinks, and installs a desktop file and vendor preferences – all normal operations. The echo message is a harmless prompt to vote for the package. There are no suspicious network requests, obfuscated code, or unauthorized system modifications. No evidence of malicious supply-chain injection.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD with pinned checksums; no malicious content.</summary>
</security_assessment>

[0/4] Reviewing .SRCINFO, PKGBUILD, eu.betterbird.Betterbird.desktop, vendor-prefs.js...
[1/4] Reviewing .SRCINFO, eu.betterbird.Betterbird.desktop, vendor-prefs.js...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD with pinned checksums; no malicious content.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The .SRCINFO file is a standard Arch Linux package metadata descriptor. It lists the package name, version, dependencies, and source URLs with valid SHA-256 checksums. All source URLs point to the official Betterbird website (betterbird.eu), which is the expected upstream. There is no executable code, no obfuscation, no suspicious network requests, and no dangerous commands. The file simply declares package configuration and is not a script or executable. No security issues are present.
</details>
<evidence>
</evidence>
<summary>Standard package descriptor, no security issues.</summary>
</security_assessment>

[2/4] Reviewing eu.betterbird.Betterbird.desktop, vendor-prefs.js...
+ Reviewed .SRCINFO. Status: SAFE -- Standard package descriptor, no security issues.
LLM auditresponse for eu.betterbird.Betterbird.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard .desktop file for the Betterbird email client (a Thunderbird fork). It contains only desktop entry metadata such as Exec, Name, Comment, MimeType, and localized translations. The Exec lines invoke the `betterbird` binary with conventional arguments (`%u`, `-compose`, `-addressbook`). There are no obfuscated commands, suspicious network requests, file operations, or any other indications of malicious behavior. The file is what it appears to be: a launcher configuration for a mail application.
</details>
<evidence></evidence>
<summary>Standard .desktop file, no security concerns.</summary>
</security_assessment>

[3/4] Reviewing vendor-prefs.js...
+ Reviewed eu.betterbird.Betterbird.desktop. Status: SAFE -- Standard .desktop file, no security concerns.
LLM auditresponse for vendor-prefs.js:
<security_assessment>
<decision>SAFE</decision>
<details>
This file sets a Mozilla preference to use the system-provided hunspell dictionary path. It is a standard packaging practice for Linux distributions to avoid bundling dictionaries and instead rely on the system's hunspell installation. There is no network activity, obfuscation, file manipulation, or execution of external code. The path `/usr/share/hunspell` is the expected system location. This file poses no security threat.
</details>
<evidence></evidence>
<summary>Safe: standard preference file for system dictionaries.</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed vendor-prefs.js. Status: SAFE -- Safe: standard preference file for system dictionaries.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 15,061
  Completion Tokens: 1,961
  Total Tokens: 17,022
  Total Cost: $0.001708
  Execution Time: 23.21 seconds

Final Status: SAFE


No issues found.
