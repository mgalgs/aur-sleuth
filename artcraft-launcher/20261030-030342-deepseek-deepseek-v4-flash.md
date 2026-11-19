---
package: artcraft-launcher
pkgver: 0.10.0
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 9746
completion_tokens: 1552
total_tokens: 11298
cost: 0.001169350
execution_time: 42.79
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-30T03:03:41Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard metadata file, no security concerns.
  - file: PKGBUILD
    status: safe
    summary: Standard Rust PKGBUILD with pinned source, no threats.
  - file: .nvchecker.toml
    status: safe
    summary: Safe nvchecker configuration, no malicious content.
---

Materializing artcraft-launcher from local mirror...
Materialized artcraft-launcher
Analyzing artcraft-launcher AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only top-level variable definitions and function declarations. No command substitutions, backticks, eval, or other code that would execute at sourcing time. The `source` array definitions, `sha256sums`, and function bodies are inert during `makepkg --printsrcinfo`. There is no risk of malicious code running when the PKGBUILD is sourced for metadata extraction.
</details>
<evidence></evidence>
<summary>No dangerous top-level code; safe to source.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous top-level code; safe to source.
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, PKGBUILD...
[0/3] Reviewing .SRCINFO, PKGBUILD, .nvchecker.toml...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard `.SRCINFO` metadata file for an AUR package. It declares the package name, description, version, dependencies, and a source tarball from the upstream GitHub repository with a pinned version tag (`v0.10.0`) and a concrete SHA256 checksum. There are no executable commands, no network requests (the source URL is the package's own upstream), no obfuscation, and no indications of malicious behavior. The checksum is provided and non‑SKIP, which is a good hygiene practice. This file is purely declarative and contains no code that could perform harmful actions.
</details>
<evidence></evidence>
<summary>Standard metadata file, no security concerns.</summary>
</security_assessment>

[1/3] Reviewing PKGBUILD, .nvchecker.toml...
+ Reviewed .SRCINFO. Status: SAFE -- Standard metadata file, no security concerns.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD is a standard Rust application build file. It fetches source code from the project's own GitHub release tarball with a pinned SHA256 checksum, uses `cargo fetch --locked` and `cargo build --frozen` to ensure reproducible builds, and installs the binary along with icons, a desktop file, and licenses. No obfuscation, unexpected network requests, file system manipulation outside the package's scope, or other malicious patterns are present. All operations are consistent with legitimate AUR packaging practices.
</details>
<evidence></evidence>
<summary>Standard Rust PKGBUILD with pinned source, no threats.</summary>
</security_assessment>

[2/3] Reviewing .nvchecker.toml...
+ Reviewed PKGBUILD. Status: SAFE -- Standard Rust PKGBUILD with pinned source, no threats.
LLM auditresponse for .nvchecker.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard nvchecker configuration file for tracking updates to the `artcraft-launcher` package. It specifies the upstream source as a Git repository on GitHub, with a version prefix. There is no embedded code, no obfuscation, no network requests made by this file itself, and no deviation from expected packaging tooling. The URL points to the project's own GitHub repository, which is normal and expected.
</details>
<evidence>
</evidence>
<summary>Safe nvchecker configuration, no malicious content.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed .nvchecker.toml. Status: SAFE -- Safe nvchecker configuration, no malicious content.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 9,746
  Completion Tokens: 1,552
  Total Tokens: 11,298
  Total Cost: $0.001169
  Execution Time: 42.79 seconds

Final Status: SAFE


No issues found.
