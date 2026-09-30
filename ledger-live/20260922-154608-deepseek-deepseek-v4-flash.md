---
package: ledger-live
pkgver: 4.21.1
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 12994
completion_tokens: 2204
total_tokens: 15198
cost: 0.000852698
execution_time: 38.71
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-22T15:46:08Z
file_verdicts:
  - file: .nvchecker.toml
    status: safe
    summary: Safe nvchecker config for official Ledger Live.
  - file: .SRCINFO
    status: safe
    summary: Standard package metadata, no malicious content.
  - file: ledger-live-desktop.sh
    status: safe
    summary: Standard Electron app launcher script, no security issues.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD with no malicious indicators.
---

Materializing ledger-live from local mirror...
Materialized ledger-live
Analyzing ledger-live AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD only contains top-level variable assignments and function definitions. No commands are executed at the global scope; the functions `_nvm_install`, `_check_electron`, `prepare`, `build`, and `package` are defined but not called. Therefore, running `makepkg --printsrcinfo` simply sources these declarations without performing any network requests, file downloads, or other potentially dangerous operations.
</details>
<evidence>
</evidence>
<summary>No dangerous top-level code execution.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous top-level code execution.
Reviewing the 4 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/4] Reviewing .SRCINFO...
[0/4] Reviewing .SRCINFO, .nvchecker.toml...
[0/4] Reviewing .SRCINFO, .nvchecker.toml, PKGBUILD...
LLM auditresponse for .nvchecker.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard nvchecker configuration file used to track upstream releases of the Ledger Live application. It fetches a version manifest from the official Ledger domain (`download.live.ledger.com`) and extracts the version number with a regex pattern. No code execution, obfuscation, or suspicious behavior is present.
</details>
<evidence>
</evidence>
<summary>Safe nvchecker config for official Ledger Live.</summary>
</security_assessment>

[1/4] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed .nvchecker.toml. Status: SAFE -- Safe nvchecker config for official Ledger Live.
[1/4] Reviewing .SRCINFO, PKGBUILD, ledger-live-desktop.sh...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The .SRCINFO file is standard AUR package metadata. It defines the package name, version, description, and source URLs. The only source is from the official LedgerHQ GitHub repository, which is the expected upstream for this package. Both sources have valid SHA512 checksums (none are set to `SKIP`). Dependencies include `ledger-udev` and `electron43`, which are appropriate for a hardware wallet application. There are no obfuscated commands, network requests beyond the upstream source, or any other malicious indicators. This file contains only declarative metadata and poses no security risk.
</details>
<evidence></evidence>
<summary>Standard package metadata, no malicious content.</summary>
</security_assessment>

[2/4] Reviewing PKGBUILD, ledger-live-desktop.sh...
+ Reviewed .SRCINFO. Status: SAFE -- Standard package metadata, no malicious content.
LLM auditresponse for ledger-live-desktop.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard wrapper script for the Ledger Live Desktop Electron application. It executes the Electron binary with the application's ASAR archive as the argument. The `@ELECTRON@` placeholder is a typical PKGBUILD variable that gets substituted during packaging. There are no network requests, encoded commands, file operations beyond launching the app, or any other malicious indicators. The script is minimal and conforms to expected AUR packaging practices for Electron-based applications.
</details>
<evidence></evidence>
<summary>Standard Electron app launcher script, no security issues.</summary>
</security_assessment>

[3/4] Reviewing PKGBUILD...
+ Reviewed ledger-live-desktop.sh. Status: SAFE -- Standard Electron app launcher script, no security issues.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard Arch Linux packaging practices for a Node.js/Electron application. All source archives are fetched from the official LedgerHQ GitHub repository with pinned checksums, ensuring integrity. The build process uses `pnpm` and `nvm` from the official Arch repositories, and the packaging steps install files only into the package directory. There are no obfuscated commands, no unexpected network requests, no exfiltration of sensitive data, and no execution of untrusted code beyond the upstream build system. The `--unsafe-perm` flag is a standard npm/pnpm option in build environments and does not indicate malice. No supply-chain attack indicators are present.
</details>
<evidence>
</evidence>
<summary>Standard AUR PKGBUILD with no malicious indicators.</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD with no malicious indicators.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 12,994
  Completion Tokens: 2,204
  Total Tokens: 15,198
  Total Cost: $0.000853
  Execution Time: 38.71 seconds

Final Status: SAFE


No issues found.
