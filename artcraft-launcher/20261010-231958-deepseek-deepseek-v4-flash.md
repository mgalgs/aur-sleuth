---
package: artcraft-launcher
pkgver: 0.2.0
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 9908
completion_tokens: 1305
total_tokens: 11213
cost: 0.00196764
execution_time: 62.12
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-10T23:19:57Z
file_verdicts:
  - file: .nvchecker.toml
    status: safe
    summary: "Standard nvchecker config pointing to the package's own upstream git repository. No security issues."
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata file, no malicious content.
  - file: PKGBUILD
    status: safe
    summary: Standard Rust PKGBUILD with pinned source and no malicious code.
---

Materializing artcraft-launcher from local mirror...
Materialized artcraft-launcher
Analyzing artcraft-launcher AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
Running `makepkg --printsrcinfo` sources only the top-level scope of this PKGBUILD. The top-level content consists solely of variable definitions, the `source` array, checksum entries, and function definitions (`_srcenv`, `prepare`, `build`, `package`). There are no top-level command substitutions, backticks, `eval`, `curl`, `wget`, or other executable statements that would download or run code during sourcing. The source URL points to the project's own GitHub repository, which is expected for this package. The `prepare()`/`build()`/`package()` functions are not executed by `--printsrcinfo` and are therefore out of scope for this gate.
</details>
<evidence>
</evidence>
<summary>
Top-level PKGBUILD content is benign; no execution risk when sourcing.
</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Top-level PKGBUILD content is benign; no execution risk when sourcing.
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, .nvchecker.toml...
[0/3] Reviewing .SRCINFO, .nvchecker.toml, PKGBUILD...
LLM auditresponse for .nvchecker.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is an nvchecker configuration used by AUR maintainers to automatically check for new upstream versions. It declares the package name `artcraft-launcher`, uses a `git` source type, and points to the project's own upstream repository at `https://github.com/storytold/craft-launcher.git` with a `v` version prefix. This is a standard, routine packaging helper configuration. There is no malicious behavior, no network exfiltration, no code execution, and no obfuscation. The URL is the expected upstream source for the package.
</details>
<evidence>
</evidence>
<summary>
Standard nvchecker config pointing to the package's own upstream git repository. No security issues.</summary>
</security_assessment>

[1/3] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed .nvchecker.toml. Status: SAFE -- Standard nvchecker config pointing to the package's own upstream git repository. No security issues.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard AUR .SRCINFO metadata file for the `artcraft-launcher` package. It declares a source from a tagged GitHub release with a SHA-256 checksum, which is a normal and expected practice. No suspicious commands, network requests, or obfuscated code are present. The file only contains package metadata and does not exhibit any supply-chain attack indicators.
</details>
<evidence></evidence>
<summary>Standard AUR metadata file, no malicious content.</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata file, no malicious content.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a standard, well-structured build recipe for a Rust application. It downloads a tarball from the project's own GitHub repository with a pinned SHA256 checksum, ensuring integrity. The build process uses `cargo fetch --locked` and `cargo build --frozen`, which respects lockfiles and prevents unexpected dependency changes. There are no suspicious network requests, obfuscated commands, or unusual system modifications. The installation steps place files into standard locations (`/usr/bin/`, `/usr/share/applications/`, `/usr/share/icons/`, `/usr/share/licenses/`). No malicious behavior is present; the code is consistent with legitimate packaging practices.
</details>
<evidence></evidence>
<summary>Standard Rust PKGBUILD with pinned source and no malicious code.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard Rust PKGBUILD with pinned source and no malicious code.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 9,908
  Completion Tokens: 1,305
  Total Tokens: 11,213
  Total Cost: $0.001968
  Execution Time: 62.12 seconds

Final Status: SAFE


No issues found.
