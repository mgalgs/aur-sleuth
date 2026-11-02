---
package: ledger-live-bin
pkgver: 4.26.0
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 10622
completion_tokens: 1663
total_tokens: 12285
cost: 0.001269268
execution_time: 31.28
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-11-02T20:18:13Z
file_verdicts:
  - file: .nvchecker.toml
    status: safe
    summary: Standard nvchecker config for version tracking; no malicious content.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata with verified official sources.
  - file: PKGBUILD
    status: safe
    summary: Legitimate PKGBUILD with no malicious code.
---

Materializing ledger-live-bin from local mirror...
Materialized ledger-live-bin
Analyzing ledger-live-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
Running `makepkg --printsrcinfo` only sources the PKGBUILD's global scope. In this PKGBUILD, the global scope consists entirely of variable and array assignments (pkgname, pkgver, source, sha512sums, etc.) with no command substitutions, backticks, eval, or any other constructs that would execute external commands. All potentially dangerous operations (AppImage extraction, file manipulation, installation) reside inside `prepare()` and `package()` functions, which are not executed during this step. Therefore, parsing this PKGBUILD does not pose any immediate security risk.
</details>
<evidence></evidence>
<summary>No top-level execution threats.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No top-level execution threats.
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, .nvchecker.toml...
[0/3] Reviewing .SRCINFO, .nvchecker.toml, PKGBUILD...
LLM auditresponse for .nvchecker.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a configuration file for `nvchecker`, a tool used to check for new upstream versions. It defines a source of type `regex` that fetches a YAML file from the Ledger Live official download domain (`download.live.ledger.com`) to extract a version number. This is standard practice for version tracking in packaging workflows. No network requests or code execution beyond the declared purpose. No obfuscation, dangerous commands, or unexpected behavior.
</details>
<evidence></evidence>
<summary>Standard nvchecker config for version tracking; no malicious content.</summary>
</security_assessment>

[1/3] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed .nvchecker.toml. Status: SAFE -- Standard nvchecker config for version tracking; no malicious content.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a `.SRCINFO` metadata file for the `ledger-live-bin` AUR package. It contains only package metadata – name, version, dependencies, source URLs, and checksums.  

- **Sources** are fetched from the official Ledger domain (`download.live.ledger.com`) and GitHub (`raw.githubusercontent.com/LedgerHQ/ledger-live/...`). Both are the legitimate upstream locations for the Ledger Live desktop application.  
- **Checksums** are provided (sha512) for both sources, allowing integrity verification at build time.  
- No executable code, obfuscation, or unexpected directives are present.  

The file is purely declarative and follows standard AUR packaging conventions. No evidence of malicious or injected behavior.
</details>
<evidence></evidence>
<summary>Standard AUR metadata with verified official sources.</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata with verified official sources.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD downloads the official Ledger Live AppImage from `download.live.ledger.com` and a LICENSE file from the project&#39;s GitHub. Both sources have valid SHA-512 checksums pinned, ensuring integrity. The `prepare()` function extracts the AppImage and performs routine desktop file editing, then removes `AppRun` and `resources/app-update.yml` — this is a packaging choice to prevent direct AppImage execution and disable built-in auto-updates, not a supply-chain attack. The `package()` function copies the extracted files into `/opt/ledger-live` and creates symlinks. There are no suspicious network requests, obfuscated commands, or data exfiltration. The package follows standard AUR binary packaging practices and is safe.
</details>
<evidence></evidence>
<summary>Legitimate PKGBUILD with no malicious code.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Legitimate PKGBUILD with no malicious code.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 10,622
  Completion Tokens: 1,663
  Total Tokens: 12,285
  Total Cost: $0.001269
  Execution Time: 31.28 seconds

Final Status: SAFE


No issues found.
