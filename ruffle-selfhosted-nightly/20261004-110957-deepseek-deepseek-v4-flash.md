---
package: ruffle-selfhosted-nightly
pkgbase: ruffle-nightly
pkgver: 0.7.0+nightly+20261004
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 14675
completion_tokens: 2306
total_tokens: 16981
cost: 0.0032804000
execution_time: 63.45
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-04T11:09:57Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard .gitignore file, no security concerns.
  - file: .SRCINFO
    status: safe
    summary: Standard metadata, no security concerns.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD; no malicious behavior detected.
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
The PKGBUILD contains only standard variable assignments and a top-level conditional that appends to `makedepends`. No command substitutions, external program calls, or other executable constructs exist at the global scope. The `if` statement evaluates a boolean string and adds a build dependency, which is benign. No dangerous operations (curl, wget, eval, base64 decode, etc.) are present at the top level. Therefore, sourcing this file for `makepkg --printsrcinfo` is safe.
</details>
<evidence></evidence>
<summary>No top-level execution of dangerous code.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No top-level execution of dangerous code.
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, .gitignore...
[0/3] Reviewing .SRCINFO, .gitignore, PKGBUILD...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard `.gitignore` file used in AUR package repositories. It lists common patterns to ignore during version control: `src`, `pkg`, `*.pkg.tar.*`, `*.log`, and `/ruffle/`. There is no executable code, no network requests, no obfuscation, no file operations, and no deviation from standard packaging practices. No security issues are present.
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
The file is a standard `.SRCINFO` metadata file for an AUR package. It declares package names, descriptions, dependencies, and a single source from the official Ruffle GitHub repository with a pinned tag (`nightly-2026-10-04`). The SHA-256 checksum is provided and not set to `SKIP`. There is no executable code, no obfuscation, no unexpected network destinations, and no instructions that could lead to a supply-chain attack. The file is purely declarative and follows normal AUR packaging practices.
</details>
<evidence></evidence>
<summary>Standard metadata, no security concerns.</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard metadata, no security concerns.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD is a standard AUR build file for the Ruffle Flash emulator (nightly channel). It clones the official upstream repository (`ruffle-rs/ruffle.git`) with a tag, fetches Rust and npm dependencies from their standard registries (crates.io, npm), builds the various components, and installs them into the package directory. There is no obfuscation, unexpected network requests to unrelated hosts, code downloading outside the project's own dependency graph, or manipulation of system files beyond the application's own scope. The only notable packaging concern is that a non-VCS checksum (SHA-256 hash) is provided for a `git+https` VCS source, which is technically invalid (VCS sources require `SKIP`). However, this is a packaging hygiene issue, not a supply-chain attack indicator. No malicious behavior is present.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD; no malicious behavior detected.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD; no malicious behavior detected.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 14,675
  Completion Tokens: 2,306
  Total Tokens: 16,981
  Total Cost: $0.003280
  Execution Time: 63.45 seconds

Final Status: SAFE


No issues found.
