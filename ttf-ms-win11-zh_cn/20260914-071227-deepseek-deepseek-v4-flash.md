---
package: ttf-ms-win11-zh_cn
pkgbase: ttf-ms-win11
pkgver: 10.0.26200.9445
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 171a316e053e9c4b28731ccb1aa63b1168550d3a
prompt_tokens: 35864
completion_tokens: 2199
total_tokens: 38063
cost: 0.003567454772
execution_time: 233.76
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-14T07:12:27Z
file_verdicts:
  - file: PKGBUILD
    status: safe
    summary: Standard font PKGBUILD, no malicious code.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata file, no malicious content.
  - file: .gitignore
    status: safe
    summary: Standard AUR .gitignore with benign ignore patterns; no malicious behavior detected.
---

ttf-ms-win11-zh_cn is built from ttf-ms-win11
Materializing ttf-ms-win11-zh_cn from local mirror...
Materialized ttf-ms-win11-zh_cn
Analyzing ttf-ms-win11-zh_cn AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only top-level variable definitions and function declarations. The `DLAGENTS` line uses variable expansion on undefined variables (`BOLD`, `RED`, `ALL_OFF`), which will expand to empty strings, and sets a custom download agent message for file:// URLs. This is harmless. There are no commands like `eval`, `curl`, `wget`, or any network access or file modification at the global scope that would execute during `makepkg --printsrcinfo`. The `source` array and `sha256sums` are standard. No malicious top-level code exists.
</details>
<evidence>
</evidence>
<summary>No malicious top-level code.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious top-level code.
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, .gitignore...
[0/3] Reviewing .SRCINFO, .gitignore, PKGBUILD...
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD is a standard Arch User Repository (AUR) package for distributing Microsoft Windows 11 TrueType fonts. It relies on the user to manually provide the font files from a legitimate Windows installation or installation media, using `file://` URIs in the `source` array. All font file checksums are pinned with known SHA-256 values, while the license file (`license.rtf`) correctly uses `SKIP` (a normal practice for license files that are not redistributed). There are no network downloads, no execution of unknown or obfuscated commands, no backdoors, and no exfiltration or tampering with system data. The `DLAGENTS` line simply prints a user-friendly error if a source file is missing. The packaging logic is entirely conventional: installing fonts into `/usr/share/fonts/TTF` and the license into `/usr/share/licenses/`. No supply-chain attack indicators are present.
</details>
<evidence>
</evidence>
<summary>Standard font PKGBUILD, no malicious code.</summary>
</security_assessment>

[1/3] Reviewing .SRCINFO, .gitignore...
+ Reviewed PKGBUILD. Status: SAFE -- Standard font PKGBUILD, no malicious code.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This .SRCINFO file is a standard AUR metadata file for a font package (ttf-ms-win11). All source entries use `file://` URIs, meaning the font files are expected to be provided locally by the user — no external network downloads or untrusted sources are referenced. The only checksum set to `SKIP` is for the last source entry, which is a common and acceptable practice in AUR packaging (especially for local files). There are no scripts, commands, obfuscated code, or any suspicious operations. The file simply declares package metadata, split packages, and a list of font files with their SHA256 checksums. No supply-chain attack indicators are present.
</details>
<evidence></evidence>
<summary>Standard AUR metadata file, no malicious content.</summary>
</security_assessment>

[2/3] Reviewing .gitignore...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata file, no malicious content.
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard `.gitignore` used in an AUR package repository. It contains only benign git ignore patterns: the `src` and `pkg` build directories (normal makepkg output locations), `*.pkg.tar*` (built package archives), `*~` (editor backup files), and font-related files (`*.ttf`, `*.ttc`, `*.fon`) plus `license.rtf` and `desktop.ini` that would be extracted from the Windows font bundle during the build.

There are no executable commands, no network requests, no obfuscated content, no system modifications, and no references to external hosts. The file is purely declarative configuration for git version control. Nothing here deviates from standard packaging practices or exhibits any sign of malicious behavior.
</details>
<evidence>
</evidence>
<summary>
Standard AUR .gitignore with benign ignore patterns; no malicious behavior detected.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed .gitignore. Status: SAFE -- Standard AUR .gitignore with benign ignore patterns; no malicious behavior detected.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 35,864
  Completion Tokens: 2,199
  Total Tokens: 38,063
  Total Cost: $0.003567
  Execution Time: 233.76 seconds

Final Status: SAFE


No issues found.
