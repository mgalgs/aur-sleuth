---
package: deckcraft
pkgver: 0.17.0
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 3f8f339d2184315a824bf6b8e30068212deac13a
prompt_tokens: 10050
completion_tokens: 7146
total_tokens: 17196
cost: 0.002215122
execution_time: 88.62
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-11-10T08:07:43Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata file with no security issues.
  - file: .nvchecker.toml
    status: safe
    summary: Standard nvchecker config for version tracking.
  - file: PKGBUILD
    status: safe
    summary: Standard Rust AUR package, no security issues.
---

Materializing deckcraft from local mirror...
Materialized deckcraft
Analyzing deckcraft AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD's global scope (which is executed by `makepkg --printsrcinfo`) consists entirely of standard variable definitions (`pkgname`, `pkgver`, `source`, `sha256sums`, etc.) and function declarations. No command substitutions, backticks, `eval`, `curl`, `wget`, or other executable or obfuscated constructs appear at the top level. The `prepare()`, `build()`, and `package()` functions are defined but are never invoked during the `--printsrcinfo` phase. The `source` array and `sha256sums` values are not downloaded or validated at this step. There is no malicious code executing at top-level scope.
</details>
<evidence>
</evidence>
<summary>Top-level code is safe; no dangerous constructs.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Top-level code is safe; no dangerous constructs.
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, PKGBUILD...
[0/3] Reviewing .SRCINFO, PKGBUILD, .nvchecker.toml...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The `.SRCINFO` file is a standard AUR metadata file describing the `deckcraft` package. It defines package name, version, dependencies, and a single source tarball from GitHub with a pinned SHA256 checksum. There are no scripts, commands, or encoded content present. The source URL points to the official upstream repository (`github.com/storytold/deckcraft`), which is expected for an AUR package. No signs of obfuscation, suspicious network requests, or malicious operations are found. The checksum is pinned, ensuring integrity of the downloaded tarball.
</details>
<evidence>
</evidence>
<summary>Standard AUR metadata file with no security issues.</summary>
</security_assessment>

[1/3] Reviewing PKGBUILD, .nvchecker.toml...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata file with no security issues.
LLM auditresponse for .nvchecker.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard `.nvchecker.toml` configuration used by the `nvchecker` tool to track upstream version updates for AUR packages. It defines a single source entry for the `deckcraft` package, pointing to the official GitHub repository (`https://github.com/storytold/deckcraft.git`) with the version prefix `v`. There is no executable code, no network requests beyond declaring the upstream source, and no obfuscation or suspicious manipulation. This is normal packaging practice for automated version checking.
</details>
<evidence></evidence>
<summary>Standard nvchecker config for version tracking.</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed .nvchecker.toml. Status: SAFE -- Standard nvchecker config for version tracking.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is for a standard Rust application (deckcraft). It fetches source code from a pinned GitHub release tarball with a valid SHA-256 checksum, ensuring integrity. The build process uses `cargo fetch --locked` and `cargo build --frozen`, which are normal for Rust packages and do not introduce unexpected network destinations or code execution. The `package()` function installs binaries, desktop files, icons, and licenses into standard system directories. No obfuscated commands, suspicious network requests, or file operations outside the application scope are present. The maintainer is a known AUR contributor. There are no indicators of a supply-chain attack or malicious behavior.
</details>
<evidence></evidence>
<summary>Standard Rust AUR package, no security issues.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard Rust AUR package, no security issues.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 10,050
  Completion Tokens: 7,146
  Total Tokens: 17,196
  Total Cost: $0.002215
  Execution Time: 88.62 seconds

Final Status: SAFE


No issues found.
