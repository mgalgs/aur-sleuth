---
package: servo-bin
pkgver: 0.7.0
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 9925
completion_tokens: 1306
total_tokens: 11231
cost: 0.00196943
execution_time: 23.52
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-10T15:05:01Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata file with safe upstream source and checksum.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD with pinned checksum, no malicious code.
  - file: .nvchecker.toml
    status: safe
    summary: Benign nvchecker configuration tracking official servo repo.
---

Materializing servo-bin from local mirror...
Materialized servo-bin
Analyzing servo-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The global scope of this PKGBUILD contains only static variable assignments and array definitions. There are no command substitutions, backticks, `eval`, or any other code execution at the top level. The `source` array specifies a fixed URL with a valid SHA256 checksum (not SKIP). All potentially dangerous operations (sed, install, cp, ln) are inside `prepare()` and `package()` functions, which are not executed by `makepkg --printsrcinfo`. Therefore, sourcing this PKGBUILD for metadata extraction is safe.
</details>
<evidence></evidence>
<summary>No dangerous top-level code; only static variable definitions.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous top-level code; only static variable definitions.
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .nvchecker.toml...
[0/3] Reviewing .nvchecker.toml, .SRCINFO...
[0/3] Reviewing .nvchecker.toml, .SRCINFO, PKGBUILD...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard AUR metadata file (`.SRCINFO`) that declares package information, dependencies, and a source tarball downloaded from the official Servo GitHub releases (`https://github.com/servo/servo/releases/download/v0.7.0/servo-x86_64-linux-gnu.tar.gz`). The source URL points to the legitimate upstream project, and a SHA256 checksum is provided for integrity verification. There is no executable code, no obfuscation, no network requests beyond declaring the upstream source, and no signs of malicious injection. The file is purely declarative metadata used by package managers and contains no instructions or scripts to execute.</details>
<evidence></evidence>
<summary>Standard AUR metadata file with safe upstream source and checksum.</summary>
</security_assessment>

[1/3] Reviewing .nvchecker.toml, PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata file with safe upstream source and checksum.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD is a standard AUR package file for the servo-bin browser. It downloads a prebuilt tarball from the official GitHub releases page, verifies it with a SHA256 checksum, and installs the binary and associated resources. The `prepare()` function uses `sed` only to fix the desktop file's Exec path, which is a common packaging step. No suspicious network destinations (the source URL points to the project's own GitHub releases), no obfuscated code, and no dangerous commands (eval, base64, curl/wget aside from the normal makepkg source fetching) are present. The package does not exfiltrate data, install backdoors, or fetch untrusted content at build time. The checksum is pinned and not set to SKIP, which provides integrity verification. All operations are within expected packaging practices.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD with pinned checksum, no malicious code.</summary>
</security_assessment>

[2/3] Reviewing .nvchecker.toml...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD with pinned checksum, no malicious code.
LLM auditresponse for .nvchecker.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a configuration for `nvchecker`, a tool that checks for new upstream releases. It specifies that the package `servo-bin` should track the Git repository at `https://github.com/servo/servo.git` and use tags prefixed with `v`. This is a standard, non-malicious use of nvchecker. There are no network requests, obfuscated code, or any other suspicious operations. The content is entirely declarative and expected for AUR packages that use nvchecker for version monitoring.
</details>
<evidence></evidence>
<summary>Benign nvchecker configuration tracking official servo repo.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed .nvchecker.toml. Status: SAFE -- Benign nvchecker configuration tracking official servo repo.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 9,925
  Completion Tokens: 1,306
  Total Tokens: 11,231
  Total Cost: $0.001969
  Execution Time: 23.52 seconds

Final Status: SAFE


No issues found.
