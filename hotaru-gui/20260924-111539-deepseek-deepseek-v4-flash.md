---
package: hotaru-gui
pkgbase: hotaru
pkgver: 0.1.14
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 10372
completion_tokens: 1239
total_tokens: 11611
cost: 0.001138587100
execution_time: 65.78
files_reviewed: 2
files_skipped: 0
maintainer_files: 2
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-24T11:15:39Z
file_verdicts:
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD with pinned version and checksum; no malicious behavior found.
  - file: .SRCINFO
    status: safe
    summary: Standard package metadata, no security issues.
---

hotaru-gui is built from hotaru
Materializing hotaru-gui from local mirror...
Materialized hotaru-gui
Analyzing hotaru-gui AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD's top-level scope contains only standard variable definitions (including `pkgname`, `pkgver`, `source`, `sha256sums`, and `_module`), comments, and function declarations for `prepare()`, `build()`, `check()`, `package_hotaru()`, and `package_hotaru-gui()`. There are no command substitutions, backtick expressions, or calls to external programs (e.g., `curl`, `wget`, `eval`) at global scope. The `source` array references an upstream GitHub tarball with a pinned checksum. Thus, sourcing this file for `makepkg --printsrcinfo` executes no dangerous code. All executable code resides inside functions that are not invoked during this step.
</details>
<evidence></evidence>
<summary>No malicious code at global scope.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious code at global scope.
Reviewing the 2 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/2] Reviewing .SRCINFO...
[0/2] Reviewing .SRCINFO, PKGBUILD...
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD is a standard, well-documented split package for the hotaru project. It pins a specific release version (0.1.14) and provides a SHA256 checksum for the upstream tarball from the project's own GitHub repository. The build process uses `go build` and installs binaries and configuration files into `$pkgdir` in a normal way. The udev rules and systemd user unit are part of the application's stated purpose (RGB lighting control), which is expected for such hardware-control software. There are no hidden network requests, obfuscated commands, or file operations outside the package's scope. The comments are transparent about each design choice.
</details>
<evidence>
</evidence>
<summary>
Standard PKGBUILD with pinned version and checksum; no malicious behavior found.</summary>
</security_assessment>

[1/2] Reviewing .SRCINFO...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD with pinned version and checksum; no malicious behavior found.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This `.SRCINFO` file contains only package metadata: name, version, dependencies, source URL, and checksum. The source is fetched from the official GitHub repository using a tag with a pinned checksum. No executable code, no suspicious network requests, no obfuscation, and no deviation from standard AUR packaging practices. No security concerns.
</details>
<evidence>
</evidence>
<summary>Standard package metadata, no security issues.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed .SRCINFO. Status: SAFE -- Standard package metadata, no security issues.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 10,372
  Completion Tokens: 1,239
  Total Tokens: 11,611
  Total Cost: $0.001139
  Execution Time: 65.78 seconds

Final Status: SAFE


No issues found.
