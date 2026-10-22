---
package: pdfcraft
pkgver: 0.11.0
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 10216
completion_tokens: 3115
total_tokens: 13331
cost: 0.001496586
execution_time: 51.93
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-22T07:05:20Z
file_verdicts:
  - file: .nvchecker.toml
    status: safe
    summary: "Standard nvchecker config pointing to the package's own upstream GitHub repository. Safe."
  - file: .SRCINFO
    status: safe
    summary: Standard metadata file, no security issues.
  - file: PKGBUILD
    status: safe
    summary: Standard Rust AUR PKGBUILD with no malicious indicators.
---

Materializing pdfcraft from local mirror...
Materialized pdfcraft
Analyzing pdfcraft AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
Running `makepkg --printsrcinfo` sources the PKGBUILD and executes only its global/top-level scope. In this PKGBUILD, the top-level scope consists solely of variable assignments, the `source` array definition, and function definitions (`_srcenv`, `prepare`, `build`, `package`). None of these top-level statements invoke command substitution, download and execute payloads, exfiltrate data, or perform any system-modifying operations.

The potentially interesting behavior lives inside `prepare()`/`build()`/`package()` (cargo fetch/build, installing files into `$pkgdir`), but those functions are not executed by `makepkg --printsrcinfo` and are therefore out of scope for this narrow gate. The checksum is a normal pinned sha256sum, and even a SKIP checksum would not be grounds to fail this step since no source download or verification occurs here. No malicious top-level code is present.
</details>
<evidence>
</evidence>
<summary>
Top-level scope is safe; only variables and function definitions execute during printsrcinfo.
</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Top-level scope is safe; only variables and function definitions execute during printsrcinfo.
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, .nvchecker.toml...
[0/3] Reviewing .SRCINFO, .nvchecker.toml, PKGBUILD...
LLM auditresponse for .nvchecker.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard nvchecker configuration used by AUR maintainers to check for new upstream versions. It specifies the `pdfcraft` package source as the project's own GitHub repository (`https://github.com/storytold/pdfcraft.git`) with a version prefix of `v`, which is a normal version-tag convention. There are no network redirects, no downloaded/executed code, no obfuscation, no file system manipulation, and no attempt to exfiltrate data. The configuration simply tells nvchecker where to look for the upstream project's latest git tags. This is ordinary, expected packaging tooling and poses no security risk.
</details>
<evidence>
</evidence>
<summary>
Standard nvchecker config pointing to the package's own upstream GitHub repository. Safe.
</summary>
</security_assessment>

[1/3] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed .nvchecker.toml. Status: SAFE -- Standard nvchecker config pointing to the package's own upstream GitHub repository. Safe.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a .SRCINFO metadata file, not an executable script or PKGBUILD. It contains package identity, dependencies, and a verified source archive checksum. No code is present that could execute operations, exfiltrate data, download untrusted content, or modify the system. The homepage URL (getartcraft.com) differs from the GitHub source URL, but this is merely a metadata inconsistency — it does not cause any runtime behavior or supply-chain compromise. The source hash is pinned, which is a positive hygiene practice. There is no evidence of malicious or dangerous behavior.
</details>
<evidence></evidence>
<summary>Standard metadata file, no security issues.</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard metadata file, no security issues.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard AUR packaging practices for a Rust application. The source is fetched from a GitHub release with a pinned SHA256 checksum, ensuring integrity. The prepare() and build() functions use `cargo fetch` and `cargo build` with `--frozen` and `--locked`, which respect the lockfile and do not introduce unchecked dependencies. The package() function installs binaries, desktop files, icons, and licenses into standard directories under `$pkgdir`. There is no obfuscation, no use of dangerous commands (eval, curl, wget, base64), no network requests to unexpected hosts, and no tampering with files outside the package scope. The only potential issue is a minor flag error in `cargo fetch` (`--target` is not a valid flag), but this does not introduce a security risk.
</details>
<evidence>
</evidence>
<summary>Standard Rust AUR PKGBUILD with no malicious indicators.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard Rust AUR PKGBUILD with no malicious indicators.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 10,216
  Completion Tokens: 3,115
  Total Tokens: 13,331
  Total Cost: $0.001497
  Execution Time: 51.93 seconds

Final Status: SAFE


No issues found.
