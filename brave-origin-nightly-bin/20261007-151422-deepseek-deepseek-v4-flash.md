---
package: brave-origin-nightly-bin
pkgver: 1.99.20
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 16405
completion_tokens: 1797
total_tokens: 18202
cost: 0.00279231
execution_time: 27.49
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-07T15:14:22Z
file_verdicts:
  - file: MPL2
    status: safe
    summary: File is standard MPL-2.0 license text, no executable or malicious content.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata; no malicious indicators.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD for Brave Origin Nightly binary package.
  - file: brave-origin-nightly-bin.sh
    status: safe
    summary: Standard application launcher wrapper; no malicious behavior or supply-chain indicators found.
---

Materializing brave-origin-nightly-bin from local mirror...
Materialized brave-origin-nightly-bin
Analyzing brave-origin-nightly-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only standard top-level variable assignments, comments, and function definitions. No command substitutions, backticks, or function calls are present in the global scope that would execute code when the file is sourced by `makepkg --printsrcinfo`. All source URLs point to the official Brave GitHub releases repository, and checksums are provided. There is no obfuscated code, network requests, or dangerous commands that could run during the parsing step.
</details>
<evidence></evidence>
<summary>No malicious top-level code; sourcing is safe.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious top-level code; sourcing is safe.
Reviewing the 4 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/4] Reviewing .SRCINFO...
[0/4] Reviewing .SRCINFO, MPL2...
[0/4] Reviewing .SRCINFO, MPL2, PKGBUILD...
LLM auditresponse for MPL2:
<security_assessment>
<decision>SAFE</decision>
<details>
The submitted file is the verbatim text of the Mozilla Public License Version 2.0 (MPL-2.0). It contains no executable code, no scripts, no network operations, no file system modifications, and no obfuscated content. It is a standard open-source license text commonly included in software packages, including AUR packages. There is no evidence of injected malicious code or any deviation from normal packaging practice.
</details>
<evidence></evidence>
<summary>
File is standard MPL-2.0 license text, no executable or malicious content.</summary>
</security_assessment>

[0/4] Reviewing .SRCINFO, MPL2, PKGBUILD, brave-origin-nightly-bin.sh...
[1/4] Reviewing .SRCINFO, PKGBUILD, brave-origin-nightly-bin.sh...
+ Reviewed MPL2. Status: SAFE -- File is standard MPL-2.0 license text, no executable or malicious content.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This .SRCINFO file is a standard AUR package metadata descriptor. It defines the package `brave-origin-nightly-bin` with sources fetched from the official Brave GitHub releases (`https://github.com/brave/brave-browser/releases/download/...`). The URLs use HTTPS and correspond to official tagged releases (v1.99.20). Checksums (sha512sums) are provided for all sources, including the local helper script `brave-origin-nightly-bin.sh`. There are no obfuscated commands, unexpected network destinations, or suspicious file operations. The dependencies are typical for a browser package (gtk3, nss, etc.). The file contains only metadata; no executable code or dynamic behavior is present. No supply-chain attack red flags are observed.</details>
<evidence></evidence>
<summary>Standard AUR metadata; no malicious indicators.</summary>
</security_assessment>

LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a standard Arch packaging file for a binary release of Brave Origin Nightly. It downloads the official `.deb` package from the Brave GitHub releases, extracts it, and installs the files into the package directory. All source URLs point to the official Brave repository. Checksums are provided and pinned to specific versions. The only notable security-relevant line is `chmod 4755` on `chrome-sandbox`, which is standard practice for Chromium-based browsers to ensure proper sandboxing. No malicious behavior, obfuscation, or unexpected network requests are present.
</details>
<evidence>
</evidence>
<summary>Standard PKGBUILD for Brave Origin Nightly binary package.</summary>
</security_assessment>

[2/4] Reviewing PKGBUILD, brave-origin-nightly-bin.sh...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata; no malicious indicators.
[3/4] Reviewing brave-origin-nightly-bin.sh...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD for Brave Origin Nightly binary package.
LLM auditresponse for brave-origin-nightly-bin.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard launcher wrapper for the Brave Origin Nightly binary. It sets a default user data directory, optionally reads user-provided command-line flags from a config file under `~/.config`, and then executes the installed browser binary at `/opt/brave.com/brave-origin-nightly/brave-origin`. There are no network requests, no downloads, no obfuscated or encoded content, and no modification of files outside the application's own configuration scope. Reading `brave-origin-nightly-flags.conf` is expected behavior for a browser launcher.

The only minor observations are cosmetic or functional rather than malicious: `$USER_FLAGS` is quoted so it is passed as a single argument rather than split into multiple flags, and `cat $USER_FLAGS_FILE` could be more robustly quoted. Neither constitutes a supply-chain or security threat. The script does exactly what a packaging wrapper should do: it launches the packaged application with user-provided options.
</details>
<evidence>
</evidence>
<summary>
Standard application launcher wrapper; no malicious behavior or supply-chain indicators found.</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed brave-origin-nightly-bin.sh. Status: SAFE -- Standard application launcher wrapper; no malicious behavior or supply-chain indicators found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 16,405
  Completion Tokens: 1,797
  Total Tokens: 18,202
  Total Cost: $0.002792
  Execution Time: 27.49 seconds

Final Status: SAFE


No issues found.
