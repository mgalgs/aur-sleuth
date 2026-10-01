---
package: betterbird-ru-bin
pkgver: 153.4.0esr
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 15082
completion_tokens: 1583
total_tokens: 16665
cost: 0.000766416
execution_time: 24.29
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-01T11:10:45Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard AUR .SRCINFO with no malicious indicators.
  - file: eu.betterbird.Betterbird.desktop
    status: safe
    summary: Standard .desktop file with no security concerns.
  - file: PKGBUILD
    status: safe
    summary: Standard binary package with no suspicious behavior found.
  - file: vendor-prefs.js
    status: safe
    summary: Benign preference file pointing spellchecker to system Hunspell dictionaries. No security concerns.
---

Materializing betterbird-ru-bin from local mirror...
Materialized betterbird-ru-bin
Analyzing betterbird-ru-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD's global/top-level scope contains only standard variable assignments and array definitions (source, sha256sums). There are no command substitutions, evals, or other executable statements that would run when the file is sourced. All functional code resides in the package() function, which is not executed during `makepkg --printsrcinfo`. Therefore, sourcing this PKGBUILD poses no security risk at this step.
</details>
<evidence></evidence>
<summary>No top-level code executes; only variable definitions.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No top-level code executes; only variable definitions.
Reviewing the 4 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/4] Reviewing PKGBUILD...
[0/4] Reviewing PKGBUILD, eu.betterbird.Betterbird.desktop...
[0/4] Reviewing PKGBUILD, eu.betterbird.Betterbird.desktop, .SRCINFO...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This .SRCINFO file is a standard metadata definition for a prebuilt binary AUR package. It declares sources from the official Betterbird website (betterbird.eu) along with a desktop file and a vendor-prefs.js file. All three sources have valid SHA256 checksums, none are set to 'SKIP'. There are no commands, no obfuscation, no network requests performed by this file itself&#8212;it is purely declarative. The contents are consistent with legitimate AUR packaging practices and do not exhibit any signs of malicious or supply-chain-attack behavior.
</details>
<evidence>
</evidence>
<summary>Standard AUR .SRCINFO with no malicious indicators.</summary>
</security_assessment>

[0/4] Reviewing PKGBUILD, eu.betterbird.Betterbird.desktop, .SRCINFO, vendor-prefs.js...
[1/4] Reviewing PKGBUILD, eu.betterbird.Betterbird.desktop, vendor-prefs.js...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR .SRCINFO with no malicious indicators.
LLM auditresponse for eu.betterbird.Betterbird.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard freedesktop.org `.desktop` file. It contains only metadata (application name, localized strings, MIME type associations, and desktop action definitions). The `Exec` lines launch `betterbird` with normal arguments (`%u`, `-compose`, `-addressbook`). There is no executable code, network access, obfuscation, or any behavior beyond registering a desktop application. No security issues are present.
</details>
<evidence></evidence>
<summary>Standard .desktop file with no security concerns.</summary>
</security_assessment>

[2/4] Reviewing PKGBUILD, vendor-prefs.js...
+ Reviewed eu.betterbird.Betterbird.desktop. Status: SAFE -- Standard .desktop file with no security concerns.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD is a standard binary package for betterbird-ru-bin, fetching the upstream archive from the official Betterbird website with valid SHA256 checksums. The package() function performs routine installation steps: copying the prebuilt browser directory, installing a .desktop file, symlinking the binary and icons, and linking hunspell dictionaries. There is no obfuscated code, no unexpected network requests, no attempts to exfiltrate data or tamper with system files beyond the package scope. The only unconventional line is an echo of a Russian message asking users to upvote the package on the AUR, which is a benign maintainer request and not malicious. No supply-chain attack indicators are present.
</details>
<evidence>
</evidence>
<summary>Standard binary package with no suspicious behavior found.</summary>
</security_assessment>

[3/4] Reviewing vendor-prefs.js...
+ Reviewed PKGBUILD. Status: SAFE -- Standard binary package with no suspicious behavior found.
LLM auditresponse for vendor-prefs.js:
<security_assessment>
<decision>SAFE</decision>
<details>
This file contains a single Mozilla/Thunderbird preference setting: `pref("spellchecker.dictionary_path", "/usr/share/hunspell")`. It directs the application to use system-provided Hunspell dictionaries rather than bundled ones, which is a standard packaging practice on Arch Linux. There are no network operations, code execution, obfuscation, file exfiltration, or modifications outside the application's expected configuration. The file is benign.
</details>
<evidence>
</evidence>
<summary>
Benign preference file pointing spellchecker to system Hunspell dictionaries. No security concerns.</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed vendor-prefs.js. Status: SAFE -- Benign preference file pointing spellchecker to system Hunspell dictionaries. No security concerns.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 15,082
  Completion Tokens: 1,583
  Total Tokens: 16,665
  Total Cost: $0.000766
  Execution Time: 24.29 seconds

Final Status: SAFE


No issues found.
