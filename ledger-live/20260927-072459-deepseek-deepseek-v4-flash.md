---
package: ledger-live
pkgver: 4.21.1
pkgrel: 2
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 13303
completion_tokens: 5049
total_tokens: 18352
cost: 0.0010975069
execution_time: 50.55
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-27T07:24:59Z
file_verdicts:
  - file: .nvchecker.toml
    status: safe
    summary: Standard nvchecker configuration for version checking; no risks.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD, no supply-chain attack indicators.
  - file: ledger-live-desktop.sh
    status: safe
    summary: Standard application launcher wrapper, no malicious content.
  - file: .SRCINFO
    status: safe
    summary: Metadata file, no executable code, upstream sources pinned.
---

Materializing ledger-live from local mirror...
Materialized ledger-live
Analyzing ledger-live AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The top-level scope of this PKGBUILD contains only variable definitions, function definitions, and source array declarations. No dangerous commands (eval, curl, wget, command substitution, or other code execution) are present at the global scope. The functions `_nvm_install`, `_check_electron`, `prepare`, `build`, and `package` are defined but never invoked during `makepkg --printsrcinfo`; they only execute during later build phases which are out of scope for this gate. The source array points to a standard GitHub release tarball, and checksums are provided (not SKIP). No obfuscation or unusual encoding is present. Therefore, sourcing this PKGBUILD is safe for the narrow purpose of running `makepkg --printsrcinfo`.
</details>
<evidence>
</evidence>
<summary>No top-level dangerous code; safe to source.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No top-level dangerous code; safe to source.
Reviewing the 4 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/4] Reviewing .SRCINFO...
[0/4] Reviewing .SRCINFO, .nvchecker.toml...
[0/4] Reviewing .SRCINFO, .nvchecker.toml, PKGBUILD...
LLM auditresponse for .nvchecker.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `.nvchecker.toml` is a configuration file for `nvchecker`, a tool that monitors upstream software versions. It defines a version-check rule for the `ledger-live` package: it fetches `https://download.live.ledger.com/latest-linux.yml` and uses a regex to extract the version number. The URL is the official Ledger download server, which is the expected upstream source for this package. There is no obfuscated code, no dangerous commands (eval, curl, wget, etc. are not used directly here – nvchecker itself may use them but that’s part of its normal operation), no file operations, and no exfiltration. This is a standard packaging helper file with no evidence of malicious or suspicious behavior.
</details>
<evidence></evidence>
<summary>Standard nvchecker configuration for version checking; no risks.</summary>
</security_assessment>

[0/4] Reviewing .SRCINFO, .nvchecker.toml, PKGBUILD, ledger-live-desktop.sh...
[1/4] Reviewing .SRCINFO, PKGBUILD, ledger-live-desktop.sh...
+ Reviewed .nvchecker.toml. Status: SAFE -- Standard nvchecker configuration for version checking; no risks.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard AUR packaging practices. It sources the upstream tarball from the official LedgerHQ GitHub repository with a fixed checksum, uses nvm to manage Node.js versions (a common and expected step for building Node.js applications), and builds the frontend dependencies via pnpm. The `--unsafe-perm` flag is standard for many pnpm-based packages to allow native module lifecycle scripts. The launcher script is properly patched via `sed`. There is no obfuscated code, unexpected network requests, or exfiltration of system data. The build does not fetch any code from untrusted or unexpected hosts beyond the declared upstream source and the npm registry. The `prepare()` and `package()` functions perform only routine file operations. No evidence of malicious behavior was found.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD, no supply-chain attack indicators.</summary>
</security_assessment>

[2/4] Reviewing .SRCINFO, ledger-live-desktop.sh...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD, no supply-chain attack indicators.
LLM auditresponse for ledger-live-desktop.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard shell wrapper for launching an Electron application. It uses `exec` to replace the shell process with the Electron executable, passing the Asar bundle and any command-line arguments. The `@ELECTRON@` placeholder is replaced during package build time with the correct path to the Electron binary. There is no obfuscation, no unexpected network activity, no dangerous commands, and no data exfiltration. The script performs only the intended function of launching the application. No security issues are present.
</details>
<evidence></evidence>
<summary>Standard application launcher wrapper, no malicious content.</summary>
</security_assessment>

[3/4] Reviewing .SRCINFO...
+ Reviewed ledger-live-desktop.sh. Status: SAFE -- Standard application launcher wrapper, no malicious content.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The `.SRCINFO` file is a metadata manifest for the AUR package `ledger-live`. It contains no executable code, shell commands, or obfuscated payloads. All sources referenced point to the official LedgerHQ GitHub repository (`LedgerHQ/ledger-live`) under a specific, pinned release tag. Dependencies (`ledger-udev`, `electron43`) and makedepends (`pnpm`, `nvm`) are standard for packaging an Electron-based hardware wallet manager under Arch Linux. The checksums provided are explicit hashes, not `SKIP`, adding a layer of integrity verification for the downloaded sources. There is no evidence of supply chain injection, data exfiltration, or unexpected remote interaction.
</details>
<evidence>
</evidence>
<summary>Metadata file, no executable code, upstream sources pinned.</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed .SRCINFO. Status: SAFE -- Metadata file, no executable code, upstream sources pinned.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 13,303
  Completion Tokens: 5,049
  Total Tokens: 18,352
  Total Cost: $0.001098
  Execution Time: 50.55 seconds

Final Status: SAFE


No issues found.
