---
package: mcpp-bin
pkgver: 2026.9.11.3
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 171a316e053e9c4b28731ccb1aa63b1168550d3a
prompt_tokens: 10625
completion_tokens: 1953
total_tokens: 12578
cost: 0.001287533786
execution_time: 31.45
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-11T11:22:03Z
file_verdicts:
  - file: mcpp.sh
    status: safe
    summary: Clean launcher wrapper with no malicious behavior.
  - file: .SRCINFO
    status: safe
    summary: Standard metadata file; no security concerns.
  - file: PKGBUILD
    status: safe
    summary: Standard binary PKGBUILD; no malicious indicators.
---

Materializing mcpp-bin from local mirror...
Materialized mcpp-bin
Analyzing mcpp-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD only performs standard variable assignments in its global scope—defining package metadata, source URLs, and checksums. No command substitutions (`$()`, backticks), function calls, or dangerous commands (e.g., `curl`, `wget`, `eval`, `base64`) appear at the top level. The `_relbase` and source array values are simple strings with variable expansion, but variable expansion alone does not execute code during sourcing. The `package()` function definition is inert during `makepkg --printsrcinfo`. Thus, sourcing this PKGBUILD is safe for the narrow purpose of metadata parsing.
</details>
<evidence></evidence>
<summary>No malicious top-level code; safe to source.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious top-level code; safe to source.
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, PKGBUILD...
[0/3] Reviewing .SRCINFO, PKGBUILD, mcpp.sh...
LLM auditresponse for mcpp.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `mcpp.sh` is a standard launcher wrapper for the `mcpp-bin` AUR package. It sets two environment variables (`MCPP_HOME` and `MCPP_VENDORED_XLINGS`) to sensible defaults, respecting any pre-existing values the user may have set, then executes the actual binary from `/opt/mcpp`. There are no network requests, obfuscated code, dangerous commands, or any operations outside the expected scope of the package. The script is simple and purely functional, with no signs of malicious intent.
</details>
<evidence></evidence>
<summary>Clean launcher wrapper with no malicious behavior.</summary>
</security_assessment>

[1/3] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed mcpp.sh. Status: SAFE -- Clean launcher wrapper with no malicious behavior.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard `.SRCINFO` metadata file for an AUR package. It contains package name, version, dependencies, and source URLs. All sources point to the package's own upstream GitHub repository (`github.com/mcpp-community/mcpp`). The `sha256sums` for the main source `mcpp.sh` is `SKIP`, which is a trust/hygiene choice, not malicious. The binaries have pinned checksums. There are no scripts, commands, or executable content in this file. No obfuscation, no unexpected network destinations, and no indications of a supply-chain attack.
</details>
<evidence></evidence>
<summary>Standard metadata file; no security concerns.</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard metadata file; no security concerns.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD for `mcpp-bin` follows standard AUR packaging practices for a prebuilt binary package. The sources are fetched from the official GitHub releases of the mcpp-community/mcpp project, which is the legitimate upstream. Checksums are provided for the remote architecture-specific tarballs, ensuring integrity. The local `mcpp.sh` wrapper has its checksum set to `SKIP`, which is acceptable for a local file included in the AUR source itself and not a remote download. The `package()` function only installs binaries, a launcher script, and documentation using standard `install` commands—no suspicious commands, no network requests at build time, no obfuscation, and no attempts to modify system files outside the package scope. No genuinely malicious behavior such as data exfiltration, backdoors, or execution of attacker-controlled code is present.
</details>
<evidence>
</evidence>
<summary>Standard binary PKGBUILD; no malicious indicators.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard binary PKGBUILD; no malicious indicators.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 10,625
  Completion Tokens: 1,953
  Total Tokens: 12,578
  Total Cost: $0.001288
  Execution Time: 31.45 seconds

Final Status: SAFE


No issues found.
