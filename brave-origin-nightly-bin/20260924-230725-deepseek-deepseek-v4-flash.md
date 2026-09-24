---
package: brave-origin-nightly-bin
pkgver: 1.98.28
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 16271
completion_tokens: 1888
total_tokens: 18159
cost: 0.000982303
execution_time: 41.97
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-24T23:07:24Z
file_verdicts:
  - file: PKGBUILD
    status: safe
    summary: Standard binary PKGBUILD with pinned sources and no malicious behavior.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata, safe.
  - file: MPL2
    status: safe
    summary: Standard license text, no security issues.
  - file: brave-origin-nightly-bin.sh
    status: safe
    summary: Standard wrapper script, no malicious behavior detected.
---

Materializing brave-origin-nightly-bin from local mirror...
Materialized brave-origin-nightly-bin
Analyzing brave-origin-nightly-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD only contains top-level variable assignments (pkgname, pkgver, source arrays, checksums, etc.). There are no command substitutions (`$()`, backticks), function calls, or other executable statements at the global scope. The `prepare()` and `package()` functions contain code that could be dangerous (potentially extracting untrusted archives, setting SUID bit, etc.), but those are NOT executed by `makepkg --printsrcinfo`. The source array references a `.sh` file as a local source, but that file is not fetched or sourced during this step. Therefore, running `makepkg --printsrcinfo` on this PKGBUILD is safe.
</details>
<evidence></evidence>
<summary>Safe to parse for metadata.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Safe to parse for metadata.
Reviewing the 4 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/4] Reviewing .SRCINFO...
[0/4] Reviewing .SRCINFO, MPL2...
[0/4] Reviewing .SRCINFO, MPL2, PKGBUILD...
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard AUR packaging practices for a binary release. It downloads a signed `.deb` from the official Brave GitHub releases, extracts it, removes a cron directory (expected cleanup), installs the binaries, desktop entry, and license, and sets the chrome-sandbox setuid bit (required for Chromium-based browsers). All checksums are provided and pinned to specific versions. No obfuscated code, unexpected network requests, or suspicious commands are present. The file is safe.
</details>
<evidence></evidence>
<summary>Standard binary PKGBUILD with pinned sources and no malicious behavior.</summary>
</security_assessment>

[0/4] Reviewing .SRCINFO, MPL2, PKGBUILD, brave-origin-nightly-bin.sh...
[1/4] Reviewing .SRCINFO, MPL2, brave-origin-nightly-bin.sh...
+ Reviewed PKGBUILD. Status: SAFE -- Standard binary PKGBUILD with pinned sources and no malicious behavior.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The .SRCINFO file is a standard AUR metadata file describing the `brave-origin-nightly-bin` package. It contains no executable code, instructions, or scripts. All sources are fetched from the official Brave GitHub releases using HTTPS URLs, and each source has a corresponding SHA-512 checksum provided. The file only declares package attributes such as version, dependencies, and source locations. There is no evidence of obfuscation, unusual network requests, or any behavior that deviates from normal packaging practices.
</details>
<evidence>
</evidence>
<summary>Standard AUR metadata, safe.</summary>
</security_assessment>

[2/4] Reviewing MPL2, brave-origin-nightly-bin.sh...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata, safe.
LLM auditresponse for MPL2:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is the standard Mozilla Public License Version 2.0 (MPL-2.0) text. It contains no executable code, no instructions, no network requests, no obfuscation, and no system-level operations. The content is identical to the official license published at https://mozilla.org/MPL/2.0/. There is no evidence of any malicious or suspicious behavior. It is a static documentation file included for license compliance.
</details>
<evidence></evidence>
<summary>Standard license text, no security issues.</summary>
</security_assessment>

[3/4] Reviewing brave-origin-nightly-bin.sh...
+ Reviewed MPL2. Status: SAFE -- Standard license text, no security issues.
LLM auditresponse for brave-origin-nightly-bin.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard wrapper script for the Brave Origin Nightly browser. It reads user-defined flags from a configuration file, sets a default Chrome user data directory, and launches the main binary. There are no network requests, no obfuscated code, no dangerous commands, and no operations that exfiltrate data or modify system files outside the application's scope. The script follows ordinary packaging practices and contains no supply-chain attack indicators.
</details>
<evidence>

</evidence>
<summary>Standard wrapper script, no malicious behavior detected.</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed brave-origin-nightly-bin.sh. Status: SAFE -- Standard wrapper script, no malicious behavior detected.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 16,271
  Completion Tokens: 1,888
  Total Tokens: 18,159
  Total Cost: $0.000982
  Execution Time: 41.97 seconds

Final Status: SAFE


No issues found.
