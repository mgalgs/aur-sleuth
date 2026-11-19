---
package: run0-sudo-shim
pkgver: 1.4.2
pkgrel: 5
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 9823
completion_tokens: 1674
total_tokens: 11497
cost: 0.001198561
execution_time: 25.61
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-11-06T12:11:34Z
file_verdicts:
  - file: .nvchecker.toml
    status: safe
    summary: Inert configuration file, no security concerns.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata; no security issues.
  - file: PKGBUILD
    status: safe
    summary: Standard Rust AUR package; pinned source checksum, normal build and install. No malicious behavior.
---

Materializing run0-sudo-shim from local mirror...
Materialized run0-sudo-shim
Analyzing run0-sudo-shim AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD only defines standard metadata variables at global scope: `pkgname`, `pkgver`, `pkgrel`, `pkgdesc`, `arch`, `url`, `license`, `depends`, `makedepends`, `provides`, `conflicts`, `source`, and `sha256sums`. There are no top-level command substitutions, no `eval`, `curl`, `wget`, `base64`, or other executable statements that would run while the PKGBUILD is sourced by `makepkg --printsrcinfo`.

The `build()` and `package()` functions contain the actual build/install commands, but those functions are not executed during `makepkg --printsrcinfo` and are therefore out of scope for this narrow gate. The source is fetched from the package's own upstream GitHub URL and has a pinned SHA-256 checksum. Nothing in the global scope performs network access, file modification, data exfiltration, or execution of untrusted code.
</details>
<evidence>
</evidence>
<summary>
Top-level PKGBUILD scope is safe; build/package functions do not run during printsrcinfo.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Top-level PKGBUILD scope is safe; build/package functions do not run during printsrcinfo.
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, .nvchecker.toml...
[0/3] Reviewing .SRCINFO, .nvchecker.toml, PKGBUILD...
LLM auditresponse for .nvchecker.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a configuration for **nvchecker**, a tool that monitors upstream releases for AUR packages.  It simply tells nvchecker to check the specified GitHub repository (`GrimmTheShrimp/run0-sudo-shim`) for new releases.  There are no commands, encoded payloads, or data operations of any kind—only metadata.  This is a standard and benign part of AUR maintenance and poses no supply‑chain risk.
</details>
<evidence></evidence>
<summary>Inert configuration file, no security concerns.</summary>
</security_assessment>

[1/3] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed .nvchecker.toml. Status: SAFE -- Inert configuration file, no security concerns.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The `.SRCINFO` file is a standard AUR metadata file containing package name, version, description, dependencies, source URL, and a SHA256 checksum. The source points to the upstream GitHub repository's tag archive with a pinned checksum. No obfuscated code, suspicious network requests, or dangerous commands are present. The description honestly warns that the package replaces `sudo`, which is expected behavior for a `sudo` replacement shim. There is no evidence of supply-chain attack or malicious intent.
</details>
<evidence></evidence>
<summary>Standard AUR metadata; no security issues.</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata; no security issues.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a standard Rust package build for the `run0-sudo-shim` project. It downloads a pinned release tarball from the official GitHub repository with a specific version tag and a fixed SHA-256 checksum, then builds it with `cargo build --release` and installs the compiled binary as `/usr/bin/sudo`. This replaces `sudo` intentionally, as clearly stated in `pkgdesc`, and the package correctly declares `provides=(&apos;sudo&apos;)` and `conflicts=(&apos;sudo&apos;)`.

No suspicious behavior is present: no obfuscated code, no `eval`/`base64`/`curl`/`wget`, no unexpected network destinations, no private data access, no backdoors, and no tampering with unrelated system files. The only file copied into `$pkgdir` is the built binary and the project&apos;s own man page. The commented-out completion install lines are harmless. This is consistent with ordinary AUR packaging practices.
</details>
<evidence>
</evidence>
<summary>
Standard Rust AUR package; pinned source checksum, normal build and install. No malicious behavior.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard Rust AUR package; pinned source checksum, normal build and install. No malicious behavior.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 9,823
  Completion Tokens: 1,674
  Total Tokens: 11,497
  Total Cost: $0.001199
  Execution Time: 25.61 seconds

Final Status: SAFE


No issues found.
