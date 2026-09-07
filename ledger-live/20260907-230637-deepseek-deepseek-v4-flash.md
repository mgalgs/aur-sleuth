---
package: ledger-live
pkgver: 4.19.0
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 171a316e053e9c4b28731ccb1aa63b1168550d3a
prompt_tokens: 13066
completion_tokens: 2141
total_tokens: 15207
cost: 0.001537136888
execution_time: 45.53
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-07T23:06:36Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata file with upstream sources and checksums; no malicious behavior found.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD with no malicious indicators.
  - file: ledger-live-desktop.sh
    status: safe
    summary: Standard Electron launcher script, no security concerns.
  - file: .nvchecker.toml
    status: safe
    summary: Declarative nvchecker config, no malicious code.
---

Materializing ledger-live from local mirror...
Materialized ledger-live
Analyzing ledger-live AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD&apos;s global scope contains only standard variable definitions (pkgname, pkgver, source URLs, checksums, dependencies) and function definitions (`_nvm_install`, `_check_electron`, `prepare`, `build`, `package`). None of these functions are executed during `makepkg --printsrcinfo`; they are defined but not called. The source URLs point to the official LedgerHQ GitHub repository with valid checksums. There is no obfuscation, no dangerous command substitutions, and no top-level code that performs network requests, file operations, or any malicious activity. Therefore, sourcing this PKGBUILD to print metadata is safe.
</details>
<evidence></evidence>
<summary>No malicious code in global scope; safe to printsrcinfo.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious code in global scope; safe to printsrcinfo.
Reviewing the 4 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/4] Reviewing .SRCINFO...
[0/4] Reviewing .SRCINFO, .nvchecker.toml...
[0/4] Reviewing .SRCINFO, .nvchecker.toml, PKGBUILD...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is an AUR `.SRCINFO` metadata file for the `ledger-live` package. It contains only standard packaging declarations: package name, description, version, architecture, license, dependencies, makedepends, source URLs, and SHA-512 checksums.

The source tarball is fetched from the official LedgerHQ GitHub repository, and both source entries have pinned SHA-512 checksums. No network requests, shell commands, obfuscated content, or file-modifying operations are present in this file. It does not deviate from normal AUR packaging metadata.
</details>
<evidence>
</evidence>
<summary>
Standard AUR metadata file with upstream sources and checksums; no malicious behavior found.</summary>
</security_assessment>

[1/4] Reviewing .nvchecker.toml, PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata file with upstream sources and checksums; no malicious behavior found.
[1/4] Reviewing .nvchecker.toml, PKGBUILD, ledger-live-desktop.sh...
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard AUR packaging practices for building an Electron application from source. The source is fetched from the official LedgerHQ GitHub repository and checksums are provided (not skipped). The build process uses pnpm with a frozen lockfile, which is good for reproducibility. No suspicious network requests, obfuscated code, or unexpected system modifications are present. The only potential hygiene concern is the use of `--unsafe-perm` in pnpm, but this is a common flag in build environments and not indicative of malicious behavior. The wrapper script (`ledger-live-desktop.sh`) is only modified to substitute the correct Electron binary name, which is standard.
</details>
<evidence></evidence>
<summary>Standard AUR PKGBUILD with no malicious indicators.</summary>
</security_assessment>

[2/4] Reviewing .nvchecker.toml, ledger-live-desktop.sh...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD with no malicious indicators.
LLM auditresponse for ledger-live-desktop.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard Electron application wrapper script. It simply executes the Electron binary (represented by the @ELECTRON@ placeholder that gets substituted during package build) with the packaged application archive (`app.asar`) and passes along all command-line arguments. There are no network requests, obfuscated code, file operations outside the expected scope, or any other indicators of malicious behavior.
</details>
<evidence></evidence>
<summary>Standard Electron launcher script, no security concerns.</summary>
</security_assessment>

[3/4] Reviewing .nvchecker.toml...
+ Reviewed ledger-live-desktop.sh. Status: SAFE -- Standard Electron launcher script, no security concerns.
LLM auditresponse for .nvchecker.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a configuration file for `nvchecker`, a tool that checks for new upstream versions of software. It defines a version‑check rule for `ledger-live` using a regular expression against the official Ledger Live download YAML at `https://download.live.ledger.com/latest-linux.yml`. There is no code execution, no network request beyond what `nvchecker` itself would perform, no obfuscation, and no indication of malicious intent. The file is a standard, declarative version‑checking configuration.
</details>
<evidence>
</evidence>
<summary>Declarative nvchecker config, no malicious code.</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed .nvchecker.toml. Status: SAFE -- Declarative nvchecker config, no malicious code.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 13,066
  Completion Tokens: 2,141
  Total Tokens: 15,207
  Total Cost: $0.001537
  Execution Time: 45.53 seconds

Final Status: SAFE


No issues found.
