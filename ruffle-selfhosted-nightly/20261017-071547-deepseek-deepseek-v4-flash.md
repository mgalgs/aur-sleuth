---
package: ruffle-selfhosted-nightly
pkgbase: ruffle-nightly
pkgver: 0.8.0+nightly+20261017
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 14643
completion_tokens: 2457
total_tokens: 17100
cost: 0.001779687
execution_time: 54.05
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-17T07:15:46Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard .gitignore file with no security concerns.
  - file: .SRCINFO
    status: safe
    summary: Declarative metadata file with no executable content.
  - file: PKGBUILD
    status: safe
    summary: Standard nightly PKGBUILD, no malicious behavior detected.
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
The global scope of this PKGBUILD contains only variable definitions and array assignments. No command substitutions, external command executions, network requests, or file operations are present at top-level scope. The conditional `if "$_system_wasm_bindgen"` is syntactically odd (a non-empty string is always truthy), but it only appends to the `makedepends` array and poses no security risk. All potentially dangerous operations (cargo install, npm, jq, etc.) are confined to `prepare()`, `build()`, `check()`, and `package_*()` functions, which are not executed during `makepkg --printsrcinfo`. Therefore, sourcing this file for metadata extraction is safe.
</details>
<evidence>

</evidence>
<summary>No dangerous code in global scope during sourcing.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous code in global scope during sourcing.
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing PKGBUILD...
[0/3] Reviewing PKGBUILD, .gitignore...
[0/3] Reviewing PKGBUILD, .gitignore, .SRCINFO...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard `.gitignore` file for a PKGBUILD repository. It contains only pattern definitions to exclude build artifacts (`src`, `pkg`, `*.pkg.tar.*`), log files (`*.log`), and a local directory (`/ruffle/`). There are no commands, network operations, obfuscated code, or any other potentially dangerous content. This is a normal and expected file for version control.
</details>
<evidence></evidence>
<summary>Standard .gitignore file with no security concerns.</summary>
</security_assessment>

[1/3] Reviewing PKGBUILD, .SRCINFO...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore file with no security concerns.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is purely declarative metadata (`.SRCINFO`) for an AUR package. It does not contain any executable instructions, scripts, or commands. All fields describe package identity, dependencies, and source location. The source is pulled from the project's official upstream GitHub repository (`github.com/ruffle-rs/ruffle.git`) at a specific tag. No obfuscated code, suspicious network requests, data exfiltration, or backdoor indicators are present. The content conforms to standard AUR packaging practices.
</details>
<evidence></evidence>
<summary>Declarative metadata file with no executable content.</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Declarative metadata file with no executable content.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD for ruffle-selfhosted-nightly follows standard AUR packaging practices for a nightly build. It fetches source code from the official ruffle-rs/ruffle GitHub repository via a tagged nightly release. All build steps (cargo fetch, npm ci, cargo build, npm run build) use the project's own upstream tooling and dependencies. The package functions install compiled binaries and web assets into standard locations. No unexpected network requests, obfuscated code, or system exfiltration is present. The only network destinations are the package's own upstream GitHub, crates.io (via cargo), and npm registries (via npm) — all expected and legitimate for this type of project. The mutable tag in the source is normal for nightly packages (aur-sleuth detects unpinned sources separately). A minor bug exists where the `source` array is overwritten (the second assignment drops the originally included key file), but this does not introduce any security risk.
</details>
<evidence></evidence>
<summary>Standard nightly PKGBUILD, no malicious behavior detected.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard nightly PKGBUILD, no malicious behavior detected.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 14,643
  Completion Tokens: 2,457
  Total Tokens: 17,100
  Total Cost: $0.001780
  Execution Time: 54.05 seconds

Final Status: SAFE


No issues found.
