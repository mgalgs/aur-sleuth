---
package: dotnet-runtime-preview-bin
pkgbase: dotnet-core-preview-bin
pkgver: 11.0.0.sdk100rc1.26425.128
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 171a316e053e9c4b28731ccb1aa63b1168550d3a
prompt_tokens: 22192
completion_tokens: 4334
total_tokens: 26526
cost: 0.00152942160
execution_time: 147.98
files_reviewed: 5
files_skipped: 0
maintainer_files: 5
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-13T07:16:39Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard .gitignore file with no malicious content.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD for official .NET preview binaries. No red flags.
  - file: .nvchecker.toml
    status: safe
    summary: Safe nvchecker config for dotnet version check.
  - file: .SRCINFO
    status: safe
    summary: Standard .SRCINFO, no malicious content.
  - file: dotnet.sh
    status: safe
    summary: Standard .NET environment setup, no security concerns.
---

dotnet-runtime-preview-bin is built from dotnet-core-preview-bin
Materializing dotnet-runtime-preview-bin from local mirror...
Materialized dotnet-runtime-preview-bin
Analyzing dotnet-runtime-preview-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The top‑level scope of this PKGBUILD contains only variable assignments, a `for` loop with `eval` that constructs per‑architecture source arrays, and command substitutions that derive version strings from the hardcoded `pkgver`. The `eval` uses only controlled values (keys/values of `_arch`, and `_sdkver` derived from `pkgver`); it does not execute any network operations or untrusted code. The command substitutions (`sed`, `cut`) operate on static data. No malicious commands (curl, wget, base64, obfuscated code) are present. Since `makepkg --printsrcinfo` only sources this global scope and does not run `prepare()`, `build()`, or `package()` functions, there is no risk of unintended code execution during this step.
</details>
<evidence></evidence>
<summary>No dangerous top-level code present; safe to source.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous top-level code present; safe to source.
Reviewing the 5 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/5] Reviewing .SRCINFO...
[0/5] Reviewing .SRCINFO, .gitignore...
[0/5] Reviewing .SRCINFO, .gitignore, .nvchecker.toml...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This `.gitignore` file is a standard configuration file for Git repositories. It ignores all files except those explicitly whitelisted: `PKGBUILD`, `.SRCINFO`, `.gitignore`, `.nvchecker.toml`, and any files with a `.sh` extension. There is no executable code, no network requests, no obfuscation, and no system modifications. The file performs no operations beyond defining ignore patterns for version control. No security concerns are present.
</details>
<evidence></evidence>
<summary>Standard .gitignore file with no malicious content.</summary>
</security_assessment>

[0/5] Reviewing .SRCINFO, .gitignore, .nvchecker.toml, PKGBUILD...
[1/5] Reviewing .SRCINFO, .nvchecker.toml, PKGBUILD...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore file with no malicious content.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a standard Arch User Repository (AUR) package for prebuilt .NET binaries from Microsoft's official build server (builds.dotnet.microsoft.com). The file downloads tarballs from the expected upstream URL, verifies them with hardcoded SHA-512 checksums, and installs the extracted files into the package directory.  

The use of `eval` to dynamically declare architecture-specific source arrays is a known packaging technique to handle multiple architectures and does not introduce untrusted data. All shell variable expansions (e.g., `_sdkver`, `_arch`) are derived from the package's own version string and architecture maps, not from user input.  

No evidence of obfuscated code, unexpected network requests, backdoors, data exfiltration, or any behavior beyond routine binary extraction and installation was found. The file conforms to normal AUR packaging practices.  
</details>
<evidence></evidence>
<summary>Standard AUR PKGBUILD for official .NET preview binaries. No red flags.</summary>
</security_assessment>

[1/5] Reviewing .SRCINFO, .nvchecker.toml, PKGBUILD, dotnet.sh...
[2/5] Reviewing .SRCINFO, .nvchecker.toml, dotnet.sh...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD for official .NET preview binaries. No red flags.
LLM auditresponse for .nvchecker.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `.nvchecker.toml` is a configuration file for the `nvchecker` tool, which automates version checking for packages. It defines a single rule for the package `dotnet-core-preview-bin`. It uses `jq` to parse a JSON file from the official Microsoft domain `builds.dotnet.microsoft.com` (the legitimate upstream source for .NET builds) and extracts version strings for the runtime and SDK. The `filter`, `from_pattern`, and `to_pattern` are standard elements of nvchecker configuration for version extraction.

There is no obfuscation, no execution of arbitrary commands, no network requests to suspicious hosts, no exfiltration of data, and no modification of system files. The file performs only the intended function: retrieving upstream version metadata from an official and expected source. The use of HTML entities (`&quot;`, `&apos;`) is unusual for TOML but harmless and likely an artifact of how the file was presented. It does not affect the behavior of the configuration.

The file is safe and consistent with standard AUR packaging practices. No evidence of malicious or dangerous behavior was found.
</details>
<evidence>

</evidence>
<summary>Safe nvchecker config for dotnet version check.</summary>
</security_assessment>

[3/5] Reviewing .SRCINFO, dotnet.sh...
+ Reviewed .nvchecker.toml. Status: SAFE -- Safe nvchecker config for dotnet version check.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The .SRCINFO file contains only declarative metadata for the dotnet-core-preview-bin package. It defines package names, descriptions, dependencies, architecture-specific sources from the official Microsoft domain (builds.dotnet.microsoft.com), and SHA512 checksums for all source files. There are no scripts, commands, or executable content that could perform malicious actions. The dependencies, provides, and conflicts sections are standard for .NET packages. No obfuscation, suspicious network destinations, or deviations from normal AUR packaging practices are present. The file is entirely passive and poses no supply-chain risk.
</details>
<evidence></evidence>
<summary>Standard .SRCINFO, no malicious content.</summary>
</security_assessment>

[4/5] Reviewing dotnet.sh...
+ Reviewed .SRCINFO. Status: SAFE -- Standard .SRCINFO, no malicious content.
LLM auditresponse for dotnet.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This file contains only standard environment variable setup for the .NET runtime and SDK. It sets `DOTNET_ROOT`, appends the dotnet directory to `PATH`, adds a user-level tools directory to `PATH`, and configures a self-contained executable extraction base directory under the user's home. All operations are purely declarative (export, case switch for PATH) and do not execute any external programs, download content, or modify system files. There is no obfuscation, no network activity, and no indication of malicious intent. The script is consistent with legitimate packaging practices for .NET on Linux.
</details>
<evidence></evidence>
<summary>Standard .NET environment setup, no security concerns.</summary>
</security_assessment>

[5/5] Reviewing ...
+ Reviewed dotnet.sh. Status: SAFE -- Standard .NET environment setup, no security concerns.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 22,192
  Completion Tokens: 4,334
  Total Tokens: 26,526
  Total Cost: $0.001529
  Execution Time: 147.98 seconds

Final Status: SAFE


No issues found.
