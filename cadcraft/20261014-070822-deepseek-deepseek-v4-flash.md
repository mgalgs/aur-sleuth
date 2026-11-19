---
package: cadcraft
pkgver: 0.6.2
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 10172
completion_tokens: 1759
total_tokens: 11931
cost: 0.001245790
execution_time: 23.41
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-14T07:08:21Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata with pinned source and checksum; no security issues found.
  - file: .nvchecker.toml
    status: safe
    summary: "Non-executable version-checker config referencing the package's own upstream Git repository. Safe."
  - file: PKGBUILD
    status: safe
    summary: Standard Rust AUR PKGBUILD with pinned source and normal cargo build process.
---

Materializing cadcraft from local mirror...
Materialized cadcraft
Analyzing cadcraft AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
Running `makepkg --printsrcinfo` only sources the PKGBUILD's top-level scope. In this PKGBUILD, the top-level content consists solely of variable assignments (pkgname, pkgver, source, sha256sums, etc.) and function definitions (_srcenv, prepare, build, package). No top-level command substitutions, external downloads, execution of downloaded content, or data exfiltration occur during sourcing.

The `_srcenv`, `prepare`, `build`, and `package` functions contain build-related operations, but they are not invoked by `makepkg --printsrcinfo`, so they are out of scope for this narrow gate. There is nothing in the global scope that would execute malicious code during `makepkg --printsrcinfo`.
</details>
<evidence>
</evidence>
<summary>
Top-level PKGBUILD sourcing is safe; only variable and function definitions execute.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Top-level PKGBUILD sourcing is safe; only variable and function definitions execute.
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, .nvchecker.toml...
[0/3] Reviewing .SRCINFO, .nvchecker.toml, PKGBUILD...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This .SRCINFO file is standard AUR package metadata. It declares a pinned upstream release tarball from the project's GitHub repository (`storytold/cadcraft`) with a specific version tag and a SHA-256 checksum. Dependencies and build dependencies are normal for a Rust/cargo application packaged for Arch Linux. No suspicious commands, network endpoints, obfuscation, or unexpected file operations are present. This file contains only metadata fields and does not perform any action on its own.
</details>
<evidence>
</evidence>
<summary>
Standard AUR metadata with pinned source and checksum; no security issues found.</summary>
</security_assessment>

[1/3] Reviewing .nvchecker.toml, PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata with pinned source and checksum; no security issues found.
LLM auditresponse for .nvchecker.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard [nvchecker] configuration snippet, not a script or build file. It declares that the latest version for the `cadcraft` package should be checked from the upstream Git repository at `https://github.com/storytold/cadcraft.git`, using a `v` prefix for version tags. This is an ordinary, non-executable configuration format used to automate version checks. There are no commands, network requests beyond pointing at the project's own upstream repository, file operations, obfuscation, or any other behavior that would indicate a supply-chain attack. The absence of checksums is not applicable here since this is not a package source manifest; it is a version-checking configuration.
</details>
<evidence>
</evidence>
<summary>
Non-executable version-checker config referencing the package's own upstream Git repository. Safe.</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed .nvchecker.toml. Status: SAFE -- Non-executable version-checker config referencing the package's own upstream Git repository. Safe.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard Arch Rust packaging practices. It downloads a tagged source tarball from the project's own GitHub repository with a pinned sha256 checksum, then uses `cargo fetch --locked` and `cargo build --frozen --release` to build the package. There are no unexpected network requests, no obfuscated code, and no use of dangerous commands such as `eval`, `base64`, `curl`, or `wget`. The `install` commands only copy the built binaries and application data into `$pkgdir`, which is the normal packaging workflow.

The use of `CARGO_HOME` in `$srcdir` and `--frozen`/`--locked` is appropriate for reproducible builds. The source is pinned to a version tag with a checksum, so this is not even an unpinned VCS source. No behavior in this file exfiltrates data, executes attacker-controlled code, or modifies anything outside the package installation directory. The file is consistent with a legitimate AUR package.
</details>
<evidence>
</evidence>
<summary>
Standard Rust AUR PKGBUILD with pinned source and normal cargo build process.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard Rust AUR PKGBUILD with pinned source and normal cargo build process.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 10,172
  Completion Tokens: 1,759
  Total Tokens: 11,931
  Total Cost: $0.001246
  Execution Time: 23.41 seconds

Final Status: SAFE


No issues found.
