---
package: betterbird-ru-bin
pkgver: 153.3.0esr
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 171a316e053e9c4b28731ccb1aa63b1168550d3a
prompt_tokens: 15065
completion_tokens: 1712
total_tokens: 16777
cost: 0.00092149176
execution_time: 32.09
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-18T15:40:06Z
file_verdicts:
  - file: eu.betterbird.Betterbird.desktop
    status: safe
    summary: Standard desktop entry, no malicious content.
  - file: PKGBUILD
    status: safe
    summary: Standard binary package with no malicious indicators.
  - file: vendor-prefs.js
    status: safe
    summary: Single benign preference pointing to system Hunspell dictionary path.
  - file: .SRCINFO
    status: safe
    summary: Declarative metadata file; no executable or malicious content.
---

Materializing betterbird-ru-bin from local mirror...
Materialized betterbird-ru-bin
Analyzing betterbird-ru-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only top-level variable assignments and array definitions. There are no command substitutions, backticks, or other code execution in the global scope. The `package()` function (which contains installation commands) is not executed during `makepkg --printsrcinfo`. All sources point to the official betterbird.eu domain. No suspicious or obfuscated code is present at the top level.
</details>
<evidence></evidence>
<summary>Top-level scope only variable assignments.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Top-level scope only variable assignments.
Reviewing the 4 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/4] Reviewing .SRCINFO...
[0/4] Reviewing .SRCINFO, PKGBUILD...
[0/4] Reviewing .SRCINFO, PKGBUILD, eu.betterbird.Betterbird.desktop...
LLM auditresponse for eu.betterbird.Betterbird.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard Freedesktop `.desktop` file for the Betterbird email client (a Thunderbird fork). It contains localized names, comments, keywords, and desktop actions for composing messages and opening the address book. The `Exec` lines invoke `betterbird` with expected arguments (`%u`, `-compose`, `-addressbook`). There are no network requests, obfuscated code, file operations outside the application scope, or any indications of a supply-chain attack. The file is a normal desktop entry file and poses no security risk.
</details>
<evidence></evidence>
<summary>Standard desktop entry, no malicious content.</summary>
</security_assessment>

[0/4] Reviewing .SRCINFO, PKGBUILD, eu.betterbird.Betterbird.desktop, vendor-prefs.js...
[1/4] Reviewing .SRCINFO, PKGBUILD, vendor-prefs.js...
+ Reviewed eu.betterbird.Betterbird.desktop. Status: SAFE -- Standard desktop entry, no malicious content.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD for `betterbird-ru-bin` follows standard AUR packaging practices for a prebuilt binary package. It downloads the official tarball from the project&#39;s HTTPS website (`betterbird.eu`), provides explicit SHA256 checksums for all sources (no SKIP), and performs routine installation steps: copying the extracted directory to `/opt`, placing a desktop file and a vendor-prefs.js configuration file, creating symlinks for the binary and hunspell dictionaries, and setting up icon symlinks. The only non-standard line is an `echo` statement printing a message in Russian asking users to vote for the package—this is benign and not malicious. There is no obfuscated code, no suspicious network requests or downloads, no use of dangerous commands like `eval` or `curl|bash`, and no manipulation of files outside the application&#39;s own scope. All operations are consistent with packaging a trusted upstream binary.
</details>
<evidence>
</evidence>
<summary>Standard binary package with no malicious indicators.</summary>
</security_assessment>

[2/4] Reviewing .SRCINFO, vendor-prefs.js...
+ Reviewed PKGBUILD. Status: SAFE -- Standard binary package with no malicious indicators.
LLM auditresponse for vendor-prefs.js:
 <security_assessment>
<decision>SAFE</decision>
<details>
This file contains a single benign preference setting that configures the application to use system-provided Hunspell dictionaries. There are no network operations, no execution of downloaded code, no obfuscated commands, no file manipulation beyond reading a standard system dictionary path, and no deviation from normal packaging practice. The setting is consistent with a standard distribution packaging adjustment.
</details>
<evidence></evidence>
<summary>Single benign preference pointing to system Hunspell dictionary path.</summary>
</security_assessment>

[3/4] Reviewing .SRCINFO...
+ Reviewed vendor-prefs.js. Status: SAFE -- Single benign preference pointing to system Hunspell dictionary path.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.SRCINFO` metadata file for the AUR package `betterbird-ru-bin`. It contains only package declarations: name, description, version, architecture, dependencies, conflicts, source URLs, and SHA-256 checksums. The sources point to the official Betterbird website and local files. All checksums are provided and non-`SKIP`. There are no executable scripts, obfuscated content, network requests, or any commands that could perform malicious actions. The file is entirely declarative and follows standard AUR packaging practices.
</details>
<evidence></evidence>
<summary>Declarative metadata file; no executable or malicious content.</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed .SRCINFO. Status: SAFE -- Declarative metadata file; no executable or malicious content.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 15,065
  Completion Tokens: 1,712
  Total Tokens: 16,777
  Total Cost: $0.000921
  Execution Time: 32.09 seconds

Final Status: SAFE


No issues found.
