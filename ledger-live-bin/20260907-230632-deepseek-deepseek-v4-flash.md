---
package: ledger-live-bin
pkgver: 4.19.0
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 171a316e053e9c4b28731ccb1aa63b1168550d3a
prompt_tokens: 10693
completion_tokens: 1505
total_tokens: 12198
cost: 0.001214168018
execution_time: 45.33
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-07T23:06:32Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard metadata file, no security issues.
  - file: .nvchecker.toml
    status: safe
    summary: Routine nvchecker config, no malicious content.
  - file: PKGBUILD
    status: safe
    summary: Standard AppImage packaging, no malicious content.
---

Materializing ledger-live-bin from local mirror...
Materialized ledger-live-bin
Analyzing ledger-live-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only top-level variable assignments and function definitions. Running `makepkg --printsrcinfo` sources the PKGBUILD, which evaluates these assignments, but does not execute `prepare()`, `package()`, or any other function. There are no top-level command substitutions, no `eval`, `curl`, `wget`, or base64/encoded payloads, and no network operations executed at source time. The `source` array references the official Ledger download host and GitHub raw content from the LedgerHQ repository, but `makepkg --printsrcinfo` does not download or verify these sources.

The functions contain operations that will be examined in the full audit (e.g., extracting the AppImage and deleting `AppRun` and `resources/app-update.yml`), but they are out of scope for this narrow gate because they cannot execute during `makepkg --printsrcinfo`.
</details>
<evidence>
</evidence>
<summary>
No top-level malicious code; sourcing PKGBUILD for printsrcinfo is safe.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No top-level malicious code; sourcing PKGBUILD for printsrcinfo is safe.
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, .nvchecker.toml...
[0/3] Reviewing .SRCINFO, .nvchecker.toml, PKGBUILD...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The .SRCINFO file is purely metadata describing the package—its name, version, dependencies, and source URLs. All sources point to official Ledger infrastructure (download.live.ledger.com and github.com/LedgerHQ). Both source entries have non-SKIP sha512 checksums. No code, scripts, or dangerous commands are present. There is no evidence of malicious behavior.
</details>
<evidence>
</evidence>
<summary>Standard metadata file, no security issues.</summary>
</security_assessment>

[1/3] Reviewing .nvchecker.toml, PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard metadata file, no security issues.
LLM auditresponse for .nvchecker.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
This is an nvchecker configuration file that automates version checking for the `ledger-live-bin` AUR package. It retrieves the latest version from the official Ledger Live download server (`download.live.ledger.com`). There is no code execution, obfuscation, or any suspicious behavior. The URL and regex are normal and expected for a version-checking tool. No security concerns.
</details>
<evidence></evidence>
<summary>Routine nvchecker config, no malicious content.</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed .nvchecker.toml. Status: SAFE -- Routine nvchecker config, no malicious content.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard practices for packaging a prebuilt AppImage. It downloads the official AppImage from `download.live.ledger.com` and a LICENSE file from the official Ledger GitHub repository. Both sources are verified with SHA512 checksums. The `prepare()` function extracts the AppImage, modifies the desktop file, and removes unnecessary files (`AppRun`, `app-update.yml`). The `package()` function installs the extracted files under `/opt/ledger-live` and creates the required symlinks and desktop entry. There are no obfuscated commands, unexpected network requests, data exfiltration attempts, or dangerous operations beyond what is necessary for packaging the application. All operations are confined to the package's own installation directories.
</details>
<evidence></evidence>
<summary>Standard AppImage packaging, no malicious content.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AppImage packaging, no malicious content.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 10,693
  Completion Tokens: 1,505
  Total Tokens: 12,198
  Total Cost: $0.001214
  Execution Time: 45.33 seconds

Final Status: SAFE


No issues found.
