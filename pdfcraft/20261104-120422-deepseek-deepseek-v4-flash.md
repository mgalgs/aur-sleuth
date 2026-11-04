---
package: pdfcraft
pkgver: 0.18.1
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 10086
completion_tokens: 1939
total_tokens: 12025
cost: 0.001270724
execution_time: 48.13
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-11-04T12:04:21Z
file_verdicts:
  - file: .nvchecker.toml
    status: safe
    summary: "Standard nvchecker config pointing at the package's own upstream; no threats."
  - file: .SRCINFO
    status: safe
    summary: Standard SRCINFO with pinned upstream GitHub tarball; no malicious behavior.
  - file: PKGBUILD
    status: safe
    summary: Standard Rust PKGBUILD with pinned checksum and no malicious behavior.
---

Materializing pdfcraft from local mirror...
Materialized pdfcraft
Analyzing pdfcraft AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD only contains standard top-level metadata assignments, a `source` array, checksums, and shell function definitions. No command substitutions, downloads, `eval`, encoded payloads, or file operations execute at source time. The functions `_srcenv`, `prepare`, `build`, and `package` are not executed by `makepkg --printsrcinfo`, so their contents are outside this gate. No malicious behavior is triggered by parsing this file.
</details>
<evidence>
</evidence>
<summary>Sourcing the PKGBUILD is safe; no top-level malicious execution.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Sourcing the PKGBUILD is safe; no top-level malicious execution.
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, PKGBUILD...
[0/3] Reviewing .SRCINFO, PKGBUILD, .nvchecker.toml...
LLM auditresponse for .nvchecker.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a minimal `nvchecker` configuration used to track upstream releases for the `pdfcraft` package. It declares a single section `[pdfcraft]` with `source = "git"`, the upstream repository `https://github.com/storytold/pdfcraft.git`, and a version `prefix = "v"`.

This is a standard maintainer convenience file. It performs no downloads, no execution, no file operations, and contains no obfuscation. The referenced host is the package's own upstream project, which is exactly the expected destination. There is no evidence of injected or malicious behavior.

</details>
<evidence>
</evidence>
<summary>Standard nvchecker config pointing at the package's own upstream; no threats.</summary>
</security_assessment>

[1/3] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed .nvchecker.toml. Status: SAFE -- Standard nvchecker config pointing at the package's own upstream; no threats.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.SRCINFO` metadata file generated from a PKGBUILD. It declares the package, version, licenses, dependencies/makedepends (`cargo`, `glibc`, `libgcc`, etc.), provides/conflicts/replaces for the older `printcraft` name, one upstream source tarball hosted on GitHub under the project's own repository (`storytold/pdfcraft`, tag `v0.18.1`), and a pinned SHA-256 checksum.

There are no download commands, no `eval`/base64/obfuscation, no file operations or system modifications, and no unexpected hosts. The source is the package's own declared upstream and is checksum-pinned (not `SKIP`). The pkgdesc ("vibe coded...") and the somewhat redundant `libgcc_s.so` dependency entry are cosmetic/hygiene quirks at most, not security issues. No evidence of injected malicious behavior.
</details>
<evidence>
</evidence>
<summary>Standard SRCINFO with pinned upstream GitHub tarball; no malicious behavior.</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard SRCINFO with pinned upstream GitHub tarball; no malicious behavior.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD downloads a versioned GitHub release tarball for the declared upstream project and verifies it with a concrete SHA-256 checksum. It uses standard Rust packaging steps: `cargo fetch --locked` in prepare and `cargo build --frozen --release` in build, then installs the resulting binaries, desktop file, MIME file, icons, and licenses into `$pkgdir`.

There are no suspicious network requests, obfuscated commands, encoded payloads, `eval` usage, or writes outside the normal package staging area. The only minor oddity is adding `libgcc_s.so` to `depends` inside `package()`, which looks like an unconventional dependency naming choice rather than malicious behavior. No `check()` function is present, but that is a hygiene/testing gap, not evidence of a supply-chain attack.
</details>
<evidence>
</evidence>
<summary>Standard Rust PKGBUILD with pinned checksum and no malicious behavior.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard Rust PKGBUILD with pinned checksum and no malicious behavior.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 10,086
  Completion Tokens: 1,939
  Total Tokens: 12,025
  Total Cost: $0.001271
  Execution Time: 48.13 seconds

Final Status: SAFE


No issues found.
