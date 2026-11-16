---
package: omarchy-broadcast-git
pkgver: 0.55.1
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 3f8f339d2184315a824bf6b8e30068212deac13a
prompt_tokens: 27618
completion_tokens: 2660
total_tokens: 30278
cost: 0.00296442
execution_time: 52.67
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-11-16T16:11:09Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata file, no security issues.
  - file: LICENSE
    status: safe
    summary: Standard license file, no security issues.
  - file: PKGBUILD
    status: safe
    summary: Standard Rust AUR package, no malicious code.
---

Materializing omarchy-broadcast-git from local mirror...
Materialized omarchy-broadcast-git
Analyzing omarchy-broadcast-git AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only static variable assignments at the global scope. No command substitutions, backtick expansions, or other executable code is present in the top-level lines. All variables (`pkgname`, `_pkgname`, `pkgver`, `pkgrel`, `_module_abi`, `source`, `sha256sums`, etc.) are assigned simple strings or arrays of strings. The `source` array uses a variable `$_pkgname` but that is a plain variable reference (to the string `omarchy-broadcast`) and does not involve any command execution.

Function definitions (`pkgver`, `prepare`, `build`, `check`, `package_*`, `_install_licences`) are present but are not executed during sourcing; they only run when explicitly called by `makepkg` later. Therefore, running `makepkg --printsrcinfo` on this PKGBUILD is safe.
</details>
<evidence></evidence>
<summary>No executable code at global scope; sourcing is safe.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No executable code at global scope; sourcing is safe.
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, LICENSE...
[0/3] Reviewing .SRCINFO, LICENSE, PKGBUILD...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a `.SRCINFO` metadata file for an AUR package. It contains only declarative package metadata: package names, descriptions, version, architecture, license, dependencies, and source location. The source points to the upstream GitHub repository (`https://github.com/rsd/omarchy-broadcast.git`) with `sha256sums = SKIP`, which is standard practice for VCS (`-git`) packages. There are no executable commands, no obfuscated code, no suspicious network requests, and no file operations. The dependencies and optdepends are consistent with the stated purpose of a GPU virtual camera daemon with various optional modules (Maxine, ONNX). No evidence of malicious or dangerous behavior.
</details>
<evidence></evidence>
<summary>Standard AUR metadata file, no security issues.</summary>
</security_assessment>

[1/3] Reviewing LICENSE, PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata file, no security issues.
LLM auditresponse for LICENSE:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard ISC-style license text. It contains only a copyright notice, permission grant, and liability disclaimer. There is no executable code, no network requests, no file operations, no obfuscation, and no evidence of malicious intent. This file poses no security risk.
</details>
<evidence></evidence>
<summary>Standard license file, no security issues.</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed LICENSE. Status: SAFE -- Standard license file, no security issues.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD is a standard split package for the `omarchy-broadcast` project, a GPU virtual camera daemon. All source code is fetched from the project's own GitHub repository (`https://github.com/rsd/omarchy-broadcast.git`) via `git+https`, and dependencies are fetched through standard Rust tooling (`cargo fetch --locked`, which pulls from crates.io and pinned upstream git dependencies). The build, check, and packaging stages use `cargo build --frozen --release` and `cargo test`, with environment sanitization to prevent accidental SDK leaks. No external network requests are made outside the package's declared upstream and its pinned dependencies. The `package_*` functions install compiled binaries, libraries, configuration files, systemd units, udev rules, and documentation — all derived from the source tree. There are no obfuscated commands, no `curl|bash` or similar patterns, no attempts to exfiltrate data, no backdoors, and no unexpected file operations. The `sha256sums` is set to `SKIP`, which is standard for VCS sources. The file is a well-documented, transparent AUR package with no signs of supply-chain compromise.
</details>
<evidence></evidence>
<summary>Standard Rust AUR package, no malicious code.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard Rust AUR package, no malicious code.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 27,618
  Completion Tokens: 2,660
  Total Tokens: 30,278
  Total Cost: $0.002964
  Execution Time: 52.67 seconds

Final Status: SAFE


No issues found.
