---
package: obs-studio-rust-plugin-browser-git
pkgbase: obs-rust-git
pkgver: 0.0.0.r1350.g0ce7533
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 13340
completion_tokens: 3739
total_tokens: 17079
cost: 0.001894438
execution_time: 41.78
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-16T19:15:40Z
file_verdicts:
  - file: .nvchecker.toml
    status: safe
    summary: Benign nvchecker config with manual source; no security issues found.
  - file: .SRCINFO
    status: safe
    summary: Metadata-only .SRCINFO with expected VCS sources; no malicious behavior found.
  - file: PKGBUILD
    status: safe
    summary: "SAFE: standard AUR -git PKGBUILD; no malicious behavior found."
---

obs-studio-rust-plugin-browser-git is built from obs-rust-git
Materializing obs-studio-rust-plugin-browser-git from local mirror...
Materialized obs-studio-rust-plugin-browser-git
Analyzing obs-studio-rust-plugin-browser-git AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only standard variable definitions and function declarations at the top level. No commands are executed during sourcing that could be malicious. All potentially dangerous operations (git submodule manipulation, network fetches, builds) are confined to functions that are not invoked by `makepkg --printsrcinfo`. There are no command substitutions, backticks, or eval-like constructs in the global scope. The `sha256sums` are set to `SKIP` but that is irrelevant for this gate as no sources are downloaded.</details>
<evidence></evidence>
<summary>No malicious top-level code detected.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious top-level code detected.
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, .nvchecker.toml...
[0/3] Reviewing .SRCINFO, .nvchecker.toml, PKGBUILD...
LLM auditresponse for .nvchecker.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a minimal nvchecker configuration (TOML format) declaring a single package entry `obs-rust-git` with `source = "manual"`. nvchecker is a common version-checking tool used by AUR maintainers, and `source = "manual"` simply means version updates for this package are tracked manually rather than via an automated upstream endpoint. There is no executable code, no network request, no file operation, no obfuscation, and no mechanism to download or run anything. The file contains no security-relevant behavior whatsoever.
</details>
<evidence>
</evidence>
<summary>
Benign nvchecker config with manual source; no security issues found.</summary>
</security_assessment>

[1/3] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed .nvchecker.toml. Status: SAFE -- Benign nvchecker config with manual source; no security issues found.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a `.SRCINFO` metadata file for an AUR package. It contains only package metadata: descriptions, dependencies, source URLs, checksums, and package output declarations. There are no build scripts, shell commands, network operations, or executable content present.

All sources point to the project's own upstream GitHub organization (`obs-rust`), which is consistent with the package name and purpose. The `sha256sums = SKIP` entries are expected for VCS (`-git`) sources and are not indicators of malice. The unpinned git sources are a standard AUR practice for `-git` packages. No evidence of injected malicious code, obfuscation, data exfiltration, or unexpected behavior was found.
</details>
<evidence>
</evidence>
<summary>
Metadata-only .SRCINFO with expected VCS sources; no malicious behavior found.</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Metadata-only .SRCINFO with expected VCS sources; no malicious behavior found.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a normal AUR `-git` package for an OBS Studio fork. It clones the project's own declared upstream repositories from `github.com/obs-rust`, configures local submodule checkouts from the downloaded source directories, and builds with `cmake` and `cargo`. Unpinned VCS sources and `SKIP` checksums are standard for `-git` packages and are not evidence of malice.

The `prepare()` function uses `git submodule update --init --recursive` against submodule URLs rewritten to local `${srcdir}` paths, so it is not pulling unchecked external content at build time. `cargo fetch --locked` and `cargo build --frozen` are standard Rust build steps using the project's lockfile. The `package()` functions only install build artifacts and data into `$pkgdir` for the two expected split packages.

There is no obfuscated code, no `curl|bash`, no unexpected network destination, no exfiltration of local data, and no modification of files outside the package's declared build/install scope. The file is consistent with ordinary AUR packaging practice.
</details>
<evidence>
</evidence>
<summary>
SAFE: standard AUR -git PKGBUILD; no malicious behavior found.
</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- SAFE: standard AUR -git PKGBUILD; no malicious behavior found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 13,340
  Completion Tokens: 3,739
  Total Tokens: 17,079
  Total Cost: $0.001894
  Execution Time: 41.78 seconds

Final Status: SAFE


No issues found.
