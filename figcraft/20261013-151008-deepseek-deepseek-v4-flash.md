---
package: figcraft
pkgver: 0.5.1
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 10194
completion_tokens: 1255
total_tokens: 11449
cost: 0.001156064
execution_time: 15.99
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-13T15:10:07Z
file_verdicts:
  - file: .nvchecker.toml
    status: safe
    summary: Standard nvchecker config for upstream Git version checking; no malicious behavior.
  - file: .SRCINFO
    status: safe
    summary: Standard .SRCINFO metadata with pinned source and checksum; no malicious behavior found.
  - file: PKGBUILD
    status: safe
    summary: Standard Rust PKGBUILD with pinned source, checksums, and normal build steps. Safe.
---

Materializing figcraft from local mirror...
Materialized figcraft
Analyzing figcraft AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
Sourcing this PKGBUILD for `makepkg --printsrcinfo` is safe. The global/top-level scope only contains standard variable assignments, the `source` array, checksum declarations, and function definitions. No top-level command substitution, network fetch, file download, or execution of untrusted code occurs while the PKGBUILD is sourced.

The functions `_srcenv`, `prepare`, `build`, and `package` contain build/install logic, but they are only invoked during later makepkg stages, not during `--printsrcinfo`. Their contents are out of scope for this narrow gate and should be reviewed in the full audit.
</details>
<evidence>
</evidence>
<summary>
Sourcing PKGBUILD for printsrcinfo runs only safe top-level definitions.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Sourcing PKGBUILD for printsrcinfo runs only safe top-level definitions.
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, .nvchecker.toml...
[0/3] Reviewing .SRCINFO, .nvchecker.toml, PKGBUILD...
LLM auditresponse for .nvchecker.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is an [nvchecker](https://github.com/voidelf/nvchecker) configuration used by AUR maintainers to automatically detect new upstream releases. It declares a `git` source pointing to the project's own GitHub repository (`https://github.com/storytold/figcraft.git`) with a version prefix of `v`. This is a normal, transparent version-checking configuration.

There is no network exfiltration, no code execution, no obfuscation, and no reference to any unrelated or unexpected host. The configuration only instructs nvchecker to query the package's official upstream repository. It follows standard AUR maintenance practices and contains no malicious behavior.
</details>
<evidence>
</evidence>
<summary>
Standard nvchecker config for upstream Git version checking; no malicious behavior.</summary>
</security_assessment>

[1/3] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed .nvchecker.toml. Status: SAFE -- Standard nvchecker config for upstream Git version checking; no malicious behavior.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard AUR `.SRCINFO` metadata file for the `figcraft` package. It declares a pinned versioned tarball source from the project's own GitHub repository (`storytold/figcraft`) with a specific SHA-256 checksum, which is good supply-chain hygiene. The dependencies and build dependency (`cargo`) are normal for a Rust application package.

The file contains no scripts, no network-fetching commands, no obfuscated content, and no file operations. There is nothing here that deviates from normal packaging practices or indicates malicious behavior.
</details>
<evidence>
</evidence>
<summary>
Standard .SRCINFO metadata with pinned source and checksum; no malicious behavior found.
</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard .SRCINFO metadata with pinned source and checksum; no malicious behavior found.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard Arch packaging practices. It downloads the upstream source archive from the project's own GitHub repository at a pinned version tag (`v0.5.1`) with a valid SHA-256 checksum. The `prepare()` function runs `cargo fetch --locked`, and `build()` runs `cargo build --frozen --release` — both are normal, reproducible Rust builds using the project's declared dependencies. `package()` installs the built binaries, desktop entry, MIME definition, icons, and license files into `$pkgdir`, which is expected behavior.

There are no suspicious network requests, no obfuscated code, no use of `eval`, `curl`, `wget`, `base64`, or unchecked `git pull`/`reset` operations, and no file operations outside the package build/install scope. The environment variables set in `_srcenv()` are normal Cargo/Rust build settings. No evidence of malicious or injected code was found.
</details>
<evidence>
</evidence>
<summary>
Standard Rust PKGBUILD with pinned source, checksums, and normal build steps. Safe.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard Rust PKGBUILD with pinned source, checksums, and normal build steps. Safe.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 10,194
  Completion Tokens: 1,255
  Total Tokens: 11,449
  Total Cost: $0.001156
  Execution Time: 15.99 seconds

Final Status: SAFE


No issues found.
