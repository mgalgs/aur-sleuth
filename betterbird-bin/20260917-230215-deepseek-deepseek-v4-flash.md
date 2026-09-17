---
package: betterbird-bin
pkgver: 153.3.0esr
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 171a316e053e9c4b28731ccb1aa63b1168550d3a
prompt_tokens: 15015
completion_tokens: 3605
total_tokens: 18620
cost: 0.00155575
execution_time: 82.25
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-17T23:02:15Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata; no security concerns.
  - file: vendor-prefs.js
    status: safe
    summary: Standard spellcheck dictionary path configuration.
  - file: PKGBUILD
    status: safe
    summary: Standard binary PKGBUILD, safe for use.
  - file: eu.betterbird.Betterbird.desktop
    status: safe
    summary: Standard desktop entry file, no security issues.
---

Materializing betterbird-bin from local mirror...
Materialized betterbird-bin
Analyzing betterbird-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD's top-level scope (the only part executed by `makepkg --printsrcinfo`) consists solely of variable assignments and function definitions: `pkgname`, `_pkgname`, `pkgver`, `pkgdesc`, `arch`, `depends`, `source`, etc., plus a definition of the `package()` function and the `sha256sums` array. None of the top-level statements contain command substitutions, backticks, `eval`, or calls to network utilities that would execute at source time. The `package()` function body contains the file/install operations, but `makepkg --printsrcinfo` does not invoke `package()`, so those are out of scope for this gate and will be reviewed in the full build audit.

No genuinely malicious or executable content is present at the global scope. The `source` URL and checksums are inert data definitions during this step; a missing or pinned checksum is not a concern for `--printsrcinfo`, which does not download or verify any artifacts.
</details>
<evidence>
</evidence>
<summary>Top-level scope is inert; only data definitions and function definitions present. Safe for printsrcinfo.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Top-level scope is inert; only data definitions and function definitions present. Safe for printsrcinfo.
Reviewing the 4 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/4] Reviewing .SRCINFO...
[0/4] Reviewing .SRCINFO, PKGBUILD...
[0/4] Reviewing .SRCINFO, PKGBUILD, eu.betterbird.Betterbird.desktop...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This .SRCINFO file is standard AUR package metadata. It defines a binary package (`betterbird-bin`) fetching the tarball from the official upstream site (eu.betterbird.eu) and includes two local source files (a desktop entry and a js config). All three sources have valid sha256 checksums. No obfuscated code, no dangerous commands, no unexpected network requests. The file is purely declarative and contains no executable content.
</details>
<evidence>
</evidence>
<summary>Standard AUR metadata; no security concerns.</summary>
</security_assessment>

[0/4] Reviewing .SRCINFO, PKGBUILD, eu.betterbird.Betterbird.desktop, vendor-prefs.js...
[1/4] Reviewing PKGBUILD, eu.betterbird.Betterbird.desktop, vendor-prefs.js...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata; no security concerns.
LLM auditresponse for vendor-prefs.js:
<security_assessment>
<decision>SAFE</decision>
<details>
The file sets a single preference for the spell checker dictionary path to the system&#39;s hunspell directory. This is a standard configuration for Mozilla-based applications on Linux to use system dictionaries instead of bundled ones. There is no malicious code, obfuscation, network requests, or unexpected operations. The content is trivial and entirely benign.
</details>
<evidence></evidence>
<summary>Standard spellcheck dictionary path configuration.</summary>
</security_assessment>

[2/4] Reviewing PKGBUILD, eu.betterbird.Betterbird.desktop...
+ Reviewed vendor-prefs.js. Status: SAFE -- Standard spellcheck dictionary path configuration.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD is a standard binary package definition for Betterbird. It downloads the official tarball from the project's own upstream (`www.betterbird.eu/downloads/LinuxArchive/`), provides static checksums for all sources, and performs routine packaging operations (installing files, creating symlinks, setting up icons). No obfuscated code, network requests, or unexpected system modifications are present. The `echo` message is a harmless prompt asking users to vote for the package on the AUR. There are no supply-chain red flags or signs of malicious injection.
</details>
<evidence></evidence>
<summary>Standard binary PKGBUILD, safe for use.</summary>
</security_assessment>

[3/4] Reviewing eu.betterbird.Betterbird.desktop...
+ Reviewed PKGBUILD. Status: SAFE -- Standard binary PKGBUILD, safe for use.
LLM auditresponse for eu.betterbird.Betterbird.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard .desktop entry for the Betterbird email client. It only contains metadata such as application name, localized names, descriptions, categories, MIME type associations, and desktop actions. There is no executable code, no network requests, no file operations, and no obfuscation. The file follows the Freedesktop.org Desktop Entry Specification and is typical for packaging a GUI application. No security concerns are present.
</details>
<evidence>
</evidence>
<summary>Standard desktop entry file, no security issues.</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed eu.betterbird.Betterbird.desktop. Status: SAFE -- Standard desktop entry file, no security issues.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 15,015
  Completion Tokens: 3,605
  Total Tokens: 18,620
  Total Cost: $0.001556
  Execution Time: 82.25 seconds

Final Status: SAFE


No issues found.
