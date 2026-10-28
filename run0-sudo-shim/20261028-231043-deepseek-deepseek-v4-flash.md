---
package: run0-sudo-shim
pkgver: 1.4.2
pkgrel: 4
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 9828
completion_tokens: 1896
total_tokens: 11724
cost: 0.001239420
execution_time: 18.93
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-28T23:10:43Z
file_verdicts:
  - file: .nvchecker.toml
    status: safe
    summary: Benign nvchecker config checking upstream GitHub releases; no security issues.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata; pinned source with checksum, no malicious behavior detected.
  - file: PKGBUILD
    status: safe
    summary: Standard Rust AUR package with pinned checksum; no malicious behavior detected.
---

Materializing run0-sudo-shim from local mirror...
Materialized run0-sudo-shim
Analyzing run0-sudo-shim AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD's global scope contains only static variable assignments and well-formed function definitions. There are no command substitutions, backtick operations, or any other executable statements in the top-level code that would run during `makepkg --printsrcinfo`. The `build()` and `package()` functions are defined but not invoked at source time. No dangerous behavior is present.
</details>
<evidence></evidence>
<summary>No dangerous code in global scope.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous code in global scope.
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, .nvchecker.toml...
[0/3] Reviewing .SRCINFO, .nvchecker.toml, PKGBUILD...
LLM auditresponse for .nvchecker.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard nvchecker configuration used by AUR maintainers to check for new upstream releases. It references the project's own GitHub repository (`LordGrimmauld/run0-sudo-shim`) and requests the latest release. There are no commands, network exfiltration, obfuscated content, or file operations present. Using `use_latest_release = true` simply means the version check follows the latest GitHub release tag, which is a routine maintainer workflow and not malicious.
</details>
<evidence>
</evidence>
<summary>
Benign nvchecker config checking upstream GitHub releases; no security issues.</summary>
</security_assessment>

[1/3] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed .nvchecker.toml. Status: SAFE -- Benign nvchecker config checking upstream GitHub releases; no security issues.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This `.SRCINFO` file contains only standard packaging metadata for the `run0-sudo-shim` AUR package. It declares an upstream GitHub tarball source with a pinned version and a non-SKIP SHA-256 checksum, which is normal and good packaging hygiene. The dependencies and metadata (`systemd&gt;=256.0`, `provides = sudo`, `conflicts = sudo`) are consistent with the package's stated purpose as a sudo replacement built on `run0`.

There is no network exfiltration, no code execution, no obfuscation, and no unexpected file operations. The warning in `pkgdesc` that it replaces sudo is a user-facing caution, not a malicious behavior. Nothing in this file deviates from ordinary AUR packaging practices, so it is assessed as SAFE.
</details>
<evidence>

</evidence>
<summary>
Standard AUR metadata; pinned source with checksum, no malicious behavior detected.
</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata; pinned source with checksum, no malicious behavior detected.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows a standard AUR packaging pattern for a Rust project. It downloads the upstream source tarball from the project's own GitHub repository at a specific release tag, verifies it with a pinned SHA-256 checksum, builds it with `cargo build --release`, and installs the resulting binary and manpage into the package directory.

The package intentionally installs its binary as `/usr/bin/sudo` and declares `provides=('sudo')` and `conflicts=('sudo')`, which matches the stated purpose of the package: an imitation of sudo backed by run0. This is a deliberate design choice clearly described in the package description, not a hidden system modification or supply-chain attack.

There is no obfuscated code, no suspicious network fetch, no use of `eval`, `base64`, `curl`, or `wget`, and no modification of files outside the package's own build and install scope. The commented-out completion install lines are harmless. Overall, this file contains no evidence of malicious behavior.
</details>
<evidence>
</evidence>
<summary>
Standard Rust AUR package with pinned checksum; no malicious behavior detected.
</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard Rust AUR package with pinned checksum; no malicious behavior detected.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 9,828
  Completion Tokens: 1,896
  Total Tokens: 11,724
  Total Cost: $0.001239
  Execution Time: 18.93 seconds

Final Status: SAFE


No issues found.
