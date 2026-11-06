---
package: pdfcraft
pkgver: 0.18.2
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 10280
completion_tokens: 4070
total_tokens: 14350
cost: 0.001676220
execution_time: 32.23
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-11-06T00:05:37Z
file_verdicts:
  - file: .nvchecker.toml
    status: safe
    summary: Benign nvchecker config pointing to the official upstream GitHub repo.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata; pinned upstream source and checksum, no suspicious behavior.
  - file: PKGBUILD
    status: safe
    summary: Standard pinned Rust package; no malicious behavior or injected code found.
---

Materializing pdfcraft from local mirror...
Materialized pdfcraft
Analyzing pdfcraft AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD's top-level scope, which is the only code executed by `makepkg --printsrcinfo`, consists purely of static variable assignments and function declarations. There are no command substitutions, backticks, external command calls (curl, wget, eval, git, base64, etc.), or any other executable scripts in the global scope. The functions `_srcenv`, `prepare`, `build`, and `package` are only *defined* at this level and are not invoked during the metadata parsing step. Therefore, sourcing this PKGBUILD to print its .SRCINFO is completely safe.
</details>
<evidence>
</evidence>
<summary>Top-level scope contains no executable payloads.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Top-level scope contains no executable payloads.
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, .nvchecker.toml...
[0/3] Reviewing .SRCINFO, .nvchecker.toml, PKGBUILD...
LLM auditresponse for .nvchecker.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a configuration for `nvchecker`, a standard tool used by AUR maintainers to automatically check for new upstream releases. It simply defines the package name (`pdfcraft`), specifies the source type as a git repository, points to the project's official GitHub repository (`https://github.com/storytold/pdfcraft.git`), and sets a version prefix of `v`.

There are no shell commands, no network requests to unexpected hosts, no encoded/obfuscated data, and no file operations. The only network destination is the package's own upstream project, which is expected behavior for a version-checking configuration. This file is benign and contains no supply-chain attack indicators.
</details>
<evidence>
</evidence>
<summary>
Benign nvchecker config pointing to the official upstream GitHub repo.</summary>
</security_assessment>

[1/3] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed .nvchecker.toml. Status: SAFE -- Benign nvchecker config pointing to the official upstream GitHub repo.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This `.SRCINFO` file follows standard Arch User Repository packaging format for a Rust application. It declares a pinned source tarball from the project's own GitHub repository (`storytold/pdfcraft`) at a specific version tag (`v0.18.2`), with a fixed SHA-256 checksum. Dependencies are normal runtime libraries (`glibc`, `libgcc`, `hicolor-icon-theme`), and the `provides`/`conflicts`/`replaces` entries for `printcraft` are consistent with typical package renaming/rebranding practices.

There are no suspicious network destinations, no base64/obfuscated content, no build-time code execution beyond the declared `cargo` make dependency, and no hidden file operations or post-install hooks. The checksum is pinned, which is good hygiene. Nothing in this file indicates injected malicious behavior or a supply-chain attack.
</details>
<evidence>
</evidence>
<summary>
Standard AUR metadata; pinned upstream source and checksum, no suspicious behavior.</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata; pinned upstream source and checksum, no suspicious behavior.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a standard Rust/AUR package build. It downloads a tagged source tarball from the project's own GitHub repository with a pinned release version and a concrete SHA-256 checksum, so the source is reproducible and verified. The prepare and build steps only run standard `cargo fetch` and `cargo build` operations, and the package function installs the compiled binaries, desktop entry, MIME definition, icons, and license files into the expected `$pkgdir` locations.

There are no suspicious network destinations, no encoded or obfuscated commands, no execution of fetched scripts, and no file operations outside the normal build and packaging scope. The `cargo fetch` step contacts the crates.io ecosystem as expected for Rust builds, which is normal packaging practice. The use of `RUSTUP_TOOLCHAIN=stable` simply sets an environment variable and does not download or execute anything by itself. No evidence of injected malicious code or supply-chain attack behavior was found.
</details>
<evidence></evidence>
<summary>Standard pinned Rust package; no malicious behavior or injected code found.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard pinned Rust package; no malicious behavior or injected code found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 10,280
  Completion Tokens: 4,070
  Total Tokens: 14,350
  Total Cost: $0.001676
  Execution Time: 32.23 seconds

Final Status: SAFE


No issues found.
