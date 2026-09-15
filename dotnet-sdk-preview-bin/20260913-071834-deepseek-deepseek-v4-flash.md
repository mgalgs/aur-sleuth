---
package: dotnet-sdk-preview-bin
pkgbase: dotnet-core-preview-bin
pkgver: 11.0.0.sdk100rc1.26425.128
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 171a316e053e9c4b28731ccb1aa63b1168550d3a
prompt_tokens: 22111
completion_tokens: 2887
total_tokens: 24998
cost: 0.00138198060
execution_time: 61.88
files_reviewed: 5
files_skipped: 0
maintainer_files: 5
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-13T07:18:34Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata with pinned checksums and legitimate sources.
  - file: .nvchecker.toml
    status: safe
    summary: A standard nvchecker config for .NET preview SDK.
  - file: .gitignore
    status: safe
    summary: Standard gitignore for AUR packages; no security issues.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD, official Microsoft sources, no malicious behavior.
  - file: dotnet.sh
    status: safe
    summary: Standard non-malicious environment variable setup script.
---

dotnet-sdk-preview-bin is built from dotnet-core-preview-bin
Materializing dotnet-sdk-preview-bin from local mirror...
Materialized dotnet-sdk-preview-bin
Analyzing dotnet-sdk-preview-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>The top-level scope of this PKGBUILD contains only variable assignments, array definitions, and a loop that uses `eval` to dynamically create per-architecture source arrays. The `eval` uses variables derived from the hardcoded `pkgver` and the static associative array `_arch`; no external input or untrusted data is incorporated. The URLs point to the official Microsoft download site (`builds.dotnet.microsoft.com`). No commands that download, execute, or exfiltrate data are present at the global scope. All dangerous logic (file extraction, installation) resides within function definitions (`prepare()`, `package_*()`) that are not executed during `makepkg --printsrcinfo`. Therefore, sourcing this PKGBUILD is safe for metadata extraction.</details>
<evidence></evidence>
<summary>No malicious top-level code; safe to parse.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious top-level code; safe to parse.
Reviewing the 5 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/5] Reviewing .SRCINFO...
[0/5] Reviewing .SRCINFO, .gitignore...
[0/5] Reviewing .SRCINFO, .gitignore, .nvchecker.toml...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.SRCINFO` metadata file for an Arch User Repository (AUR) package providing .NET preview SDK binaries. All source URLs point to the official Microsoft build server (`builds.dotnet.microsoft.com`). All sources have pinned SHA512 checksums (except `dotnet.sh` which also has a fixed checksum). There are no obfuscated commands, no unexpected network requests, no dangerous operations, and no indications of supply-chain tampering. The file follows normal AUR packaging conventions and contains no malicious content.
</details>
<evidence></evidence>
<summary>Standard AUR metadata with pinned checksums and legitimate sources.</summary>
</security_assessment>

[0/5] Reviewing .SRCINFO, .gitignore, .nvchecker.toml, PKGBUILD...
[1/5] Reviewing .gitignore, .nvchecker.toml, PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata with pinned checksums and legitimate sources.
LLM auditresponse for .nvchecker.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a configuration file for nvchecker, a tool that monitors upstream releases for version bumps. It points to the official Microsoft .NET releases metadata endpoint (`builds.dotnet.microsoft.com`) and uses a standard `jq` filter to parse the JSON for version strings. The `from_pattern` and `to_pattern` are used for transforming version strings (e.g., stripping preview suffixes). No code is fetched or executed; only a version string is extracted. No malicious behavior is present.
</details>
<evidence></evidence>
<summary>A standard nvchecker config for .NET preview SDK.</summary>
</security_assessment>

[2/5] Reviewing .gitignore, PKGBUILD...
+ Reviewed .nvchecker.toml. Status: SAFE -- A standard nvchecker config for .NET preview SDK.
[2/5] Reviewing .gitignore, PKGBUILD, dotnet.sh...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.gitignore` file for an AUR package repository. It ignores all files (`*`) and then negates (un-ignores) specific files that are normally committed to the AUR: `PKGBUILD`, `.SRCINFO`, `.gitignore`, `.nvchecker.toml`, and any shell scripts (`*.sh`). There is no executable code, no network requests, no obfuscation, and no system modifications. The file simply controls which files are tracked by git. No security concerns.
</details>
<evidence></evidence>
<summary>Standard gitignore for AUR packages; no security issues.</summary>
</security_assessment>

[3/5] Reviewing PKGBUILD, dotnet.sh...
+ Reviewed .gitignore. Status: SAFE -- Standard gitignore for AUR packages; no security issues.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard AUR packaging practices for binary .NET SDK preview packages. The source is fetched from the official Microsoft build server (`builds.dotnet.microsoft.com`). All architecture-specific source tarballs have SHA512 checksums provided (not SKIP). The `eval` usage is for dynamic variable assignment of per-architecture source arrays, which is a common and acceptable pattern in multi-arch PKGBUILDs; it does not evaluate any external or user-controlled content. The package functions only extract and install pre-built binaries into the package directory; no unusual network requests, obfuscation, or dangerous commands (e.g., `curl|bash`, `wget` to unexpected hosts) are present. There is no evidence of exfiltration, backdoors, or supply-chain attack code in this file.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD, official Microsoft sources, no malicious behavior.</summary>
</security_assessment>

[4/5] Reviewing dotnet.sh...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD, official Microsoft sources, no malicious behavior.
LLM auditresponse for dotnet.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard environment setup script for the .NET SDK. It defines environment variables (`DOTNET_ROOT`, `DOTNET_TOOLS_PATH`, `DOTNET_BUNDLE_EXTRACT_BASE_DIR`) and updates `PATH` accordingly. All operations are confined to setting shell environment variables using standard shell constructs (`[ -z ... ]`, `case`, `export`). There are no network requests, file downloads, code execution, obfuscation, or any operations that deviate from normal packaging practices. The script references official Microsoft documentation and performs exactly the setup described. No genuinely malicious behavior is present.
</details>
<evidence></evidence>
<summary>Standard non-malicious environment variable setup script.</summary>
</security_assessment>

[5/5] Reviewing ...
+ Reviewed dotnet.sh. Status: SAFE -- Standard non-malicious environment variable setup script.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 22,111
  Completion Tokens: 2,887
  Total Tokens: 24,998
  Total Cost: $0.001382
  Execution Time: 61.88 seconds

Final Status: SAFE


No issues found.
