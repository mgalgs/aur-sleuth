---
package: ruffle-selfhosted-nightly
pkgbase: ruffle-nightly
pkgver: 0.8.0+nightly+20261020
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 14965
completion_tokens: 4430
total_tokens: 19395
cost: 0.002168075
execution_time: 71.84
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-20T07:27:50Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard .gitignore file, no security concerns.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata, no suspicious content.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD for Ruffle nightly; no malicious behavior detected.
---

ruffle-selfhosted-nightly is built from ruffle-nightly
Materializing ruffle-selfhosted-nightly from local mirror...
Materialized ruffle-selfhosted-nightly
Analyzing ruffle-selfhosted-nightly AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The top-level scope of this PKGBUILD contains only variable definitions, array assignments, and a simple conditional that appends to the makedepends array. No command substitutions, external binary calls, file operations, or network requests are executed at the global level. All potentially dangerous commands (cargo, npm, git, jq, etc.) are encapsulated within function definitions (prepare, build, check, package_*), which are not executed by `makepkg --printsrcinfo`. There is no obfuscated code, no direct execution of untrusted content, and no mechanism that could exfiltrate data or install malicious payloads during the sourcing phase. Therefore, running `makepkg --printsrcinfo` on this PKGBUILD is safe.
</details>
<evidence></evidence>
<summary>Only variable definitions in global scope</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Only variable definitions in global scope
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, .gitignore...
[0/3] Reviewing .SRCINFO, .gitignore, PKGBUILD...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.gitignore` file for an AUR package repository. It ignores common build artifacts (`src`, `pkg`, `*.pkg.tar.*`), log files (`*.log`), and a package-specific upstream source directory (`/ruffle/`). There is no executable code, no network requests, no file operations outside the packaging workflow, and no obfuscation. The file is benign and follows normal packaging practices.
</details>
<evidence></evidence>
<summary>Standard .gitignore file, no security concerns.</summary>
</security_assessment>

[1/3] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore file, no security concerns.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is an AUR `.SRCINFO` metadata document describing a split package for `ruffle-selfhosted-nightly`. It contains standard fields: package names, descriptions, version, dependencies, and a pinned source `git+https://github.com/ruffle-rs/ruffle.git#tag=nightly-2026-10-20` with a SHA-256 checksum. There are no executable commands, network requests, obfuscated content, or file operations. All content is declarative and follows normal AUR packaging conventions. No evidence of injected malicious behavior or supply-chain tampering was found.
</details>
<evidence></evidence>
<summary>Standard AUR metadata, no suspicious content.</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata, no suspicious content.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD clones the official Ruffle repository from GitHub, fetches Rust dependencies via cargo, installs Node.js dependencies via npm, and builds the project. File operations are restricted to the package's own directories under $pkgdir. No network requests are made to unexpected hosts; all external fetches go to the project's own GitHub, crates.io, or npm registries as part of normal build tool usage. No obfuscation, encoded commands, or dangerous operations (eval, curl|bash) are present. The generation of version_seal.json and chromium extension JSON are standard build artifacts. The source array being overwritten is a minor inconsistency but not a security concern. The package presents no indicators of a supply-chain attack.
</details>
<evidence>
</evidence>
<summary>Standard PKGBUILD for Ruffle nightly; no malicious behavior detected.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD for Ruffle nightly; no malicious behavior detected.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 14,965
  Completion Tokens: 4,430
  Total Tokens: 19,395
  Total Cost: $0.002168
  Execution Time: 71.84 seconds

Final Status: SAFE


No issues found.
