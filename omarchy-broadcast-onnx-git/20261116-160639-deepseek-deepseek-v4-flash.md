---
package: omarchy-broadcast-onnx-git
pkgbase: omarchy-broadcast-git
pkgver: 0.55.1
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 3f8f339d2184315a824bf6b8e30068212deac13a
prompt_tokens: 27626
completion_tokens: 1741
total_tokens: 29367
cost: 0.00279972
execution_time: 24.34
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-11-16T16:06:39Z
file_verdicts:
  - file: LICENSE
    status: safe
    summary: Standard license file, no security issues.
  - file: .SRCINFO
    status: safe
    summary: Standard metadata, no security issues.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD, no malicious code found.
---

omarchy-broadcast-onnx-git is built from omarchy-broadcast-git
Materializing omarchy-broadcast-onnx-git from local mirror...
Materialized omarchy-broadcast-onnx-git
Analyzing omarchy-broadcast-onnx-git AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only standard variable definitions and function declarations at the global/top-level scope. No command substitutions, external command executions, network requests, or other operations that would execute during `makepkg --printsrcinfo` are present. The `sha256sums` is set to `SKIP`, which is normal for VCS packages and does not execute any code. All potentially dangerous operations (e.g., `cargo fetch`, `cargo build`, file installations) are inside functions (`prepare()`, `build()`, `package_*()`) that are **not** called when sourcing the PKGBUILD for metadata parsing. Therefore, running `makepkg --printsrcinfo` on this file is safe.
</details>
<evidence></evidence>
<summary>No global executable code; safe to parse.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No global executable code; safe to parse.
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, PKGBUILD...
[0/3] Reviewing .SRCINFO, PKGBUILD, LICENSE...
LLM auditresponse for LICENSE:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard ISC license text. It contains no executable code, no network requests, no obfuscated strings, and no system operations. It is a normal open-source license file that accompanies software packages. There are no security concerns.
</details>
<evidence></evidence>
<summary>Standard license file, no security issues.</summary>
</security_assessment>

[1/3] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed LICENSE. Status: SAFE -- Standard license file, no security issues.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This .SRCINFO file is standard AUR package metadata. It declares the package source as a git repository from the project's official GitHub URL (`https://github.com/rsd/omarchy-broadcast.git`), which is normal and expected. The checksums are set to `SKIP`, which is the standard practice for VCS (git) packages and is not a security concern. The file contains no executable code, no obfuscated content, no network requests beyond the upstream source declaration, and no unexpected system modifications. All listed dependencies and options are consistent with the package's stated purpose as a GPU virtual camera daemon and its associated modules.
</details>
<evidence></evidence>
<summary>Standard metadata, no security issues.</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard metadata, no security issues.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard Arch packaging practices for a Rust split package from a legitimate upstream repository (github.com/rsd/omarchy-broadcast). The source is a VCS clone of the project's own GitHub repo, which is typical for a `-git` package. All build steps use `cargo build --frozen` with explicit targets. Package functions install binaries, libraries, systemd units, documentation, and licenses into `$pkgdir` — all standard operations.

There are no suspicious network requests, no obfuscated or encoded commands, no `eval`, `curl`, `wget`, or other dangerous constructs. The `sed` and `grep` calls are used only to verify that packaged configuration files contain expected paths, not to execute untrusted code. The environment sanitization in the `check()` function is appropriate to prevent leaking SDK paths into tests. The file is thoroughly commented and transparent about its purpose and dependencies.

No evidence of malicious or dangerous behavior was found. The package is consistent with legitimate AUR packaging conventions.
</details>
<evidence></evidence>
<summary>Standard AUR PKGBUILD, no malicious code found.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD, no malicious code found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 27,626
  Completion Tokens: 1,741
  Total Tokens: 29,367
  Total Cost: $0.002800
  Execution Time: 24.34 seconds

Final Status: SAFE


No issues found.
