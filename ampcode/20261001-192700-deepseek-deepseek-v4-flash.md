---
package: ampcode
pkgver: 0.0.1790871178_g5cbe9b
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 9824
completion_tokens: 2299
total_tokens: 12123
cost: 0.00060370492
execution_time: 35.55
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-01T19:27:00Z
file_verdicts:
  - file: PKGBUILD
    status: safe
    summary: Standard AUR package fetching pinned binaries from official upstream domain; no malicious behavior found.
  - file: .gitignore
    status: safe
    summary: Standard .gitignore for AUR packaging repository.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata file with pinned checksums.
---

Materializing ampcode from local mirror...
Materialized ampcode
Analyzing ampcode AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD only contains global variable definitions and function declarations. No code in the top-level scope executes any external commands or performs network requests. The `latestver()` function includes a `curl` invocation, but it is never called during sourcing—only when explicitly invoked later. Thus, running `makepkg --printsrcinfo` (which sources the PKGBUILD) is safe.
</details>
<evidence></evidence>
<summary>Safe to source; no malicious global code.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Safe to source; no malicious global code.
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, .gitignore...
[0/3] Reviewing .SRCINFO, .gitignore, PKGBUILD...
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD downloads prebuilt binaries from the project's own official domain (`static.ampcode.com`) with pinned SHA-256 checksums for both architectures. It installs the binary directly into `/usr/bin/amp` using standard `install` commands. The `latestver()` helper simply fetches a version string from the same official domain for maintainer use; it is not invoked during package build or install. There are no suspicious network calls, no encoded/obfuscated commands, no execution of downloaded scripts, and no modification of files outside the package's intended scope. This follows normal AUR packaging practice for a proprietary prebuilt CLI.
</details>
<evidence>
</evidence>
<summary>
Standard AUR package fetching pinned binaries from official upstream domain; no malicious behavior found.
</summary>
</security_assessment>

[1/3] Reviewing .SRCINFO, .gitignore...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR package fetching pinned binaries from official upstream domain; no malicious behavior found.
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard `.gitignore` used in AUR package repositories. It configures Git to ignore all files by default, then explicitly whitelists essential packaging files (PKGBUILD, .SRCINFO, install scripts, patches, etc.) and common auxiliary files (LICENSE, README, etc.). This is a normal and expected file for version control. There is no code execution, network activity, obfuscation, or any behavior that could indicate a supply-chain attack. The file is completely benign.
</details>
<evidence></evidence>
<summary>Standard .gitignore for AUR packaging repository.</summary>
</security_assessment>

[2/3] Reviewing .SRCINFO...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore for AUR packaging repository.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The .SRCINFO file is a standard metadata file for the ampcode AUR package. It declares package properties, source URLs over HTTPS with pinned sha256 checksums for two architectures, and standard dependencies. The file contains no executable code, obfuscation, network commands, or file operations. The use of pinned checksums ensures the integrity of the downloaded binaries. While the source is proprietary and the package provides precompiled binaries, this is consistent with many AUR packages and does not in itself indicate a supply-chain attack. No suspicious behavior is present in this file.
</details>
<evidence>
</evidence>
<summary>Standard AUR metadata file with pinned checksums.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata file with pinned checksums.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 9,824
  Completion Tokens: 2,299
  Total Tokens: 12,123
  Total Cost: $0.000604
  Execution Time: 35.55 seconds

Final Status: SAFE


No issues found.
