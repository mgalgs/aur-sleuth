---
package: hyprmasq
pkgver: 0.3.2
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 3f8f339d2184315a824bf6b8e30068212deac13a
prompt_tokens: 8237
completion_tokens: 1920
total_tokens: 10157
cost: 0.00108693
execution_time: 15.23
files_reviewed: 2
files_skipped: 0
maintainer_files: 2
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-11-16T00:14:00Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Metadata file, no executable code, all standard.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD; no malicious code found.
---

Materializing hyprmasq from local mirror...
Materialized hyprmasq
Analyzing hyprmasq AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The top-level scope of this PKGBUILD contains only standard variable assignments (pkgname, pkgver, source, sha256sums, etc.) and a function definition (_go). No command substitutions, subshell executions, or dangerous commands (eval, curl, wget, base64) appear at global scope. The source array references the project's own GitHub release archive, and sha256sums is pinned to a fixed hash. There is no mechanism by which sourcing this PKGBUILD could download or execute untrusted code. The prepare(), build(), check(), and package() functions are defined but never called during `makepkg --printsrcinfo`, so their content is out of scope for this evaluation. Sourcing this file is safe.
</details>
<evidence />
<summary>No dangerous top-level code found.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous top-level code found.
Reviewing the 2 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/2] Reviewing .SRCINFO...
[0/2] Reviewing .SRCINFO, PKGBUILD...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
.SRCINFO is a static metadata file that describes the package&#39;s name, version, dependencies, and source. It contains no executable code of any kind. The source is a tarball from the project&#39;s official GitHub releases page (github.com/nyrda/hyprmasq) and includes a SHA256 checksum for verification. The listed dependencies (ffmpeg, glibc, jq, libei, libxkbcommon, sh, go) are standard for a screen-capture and input automation tool targeting Hyprland. There are no suspicious URLs, no obfuscated strings, no network calls, and no instructions that would perform any action at build time. This file is a normal, safe package description.
</details>
<evidence></evidence>
<summary>Metadata file, no executable code, all standard.</summary>
</security_assessment>

[1/2] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Metadata file, no executable code, all standard.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard practices for an AUR Go package. All source references are pinned to a specific release tarball from the project&#x27;s own GitHub repository, with a fixed checksum. Build and preparation steps only perform module downloads and compilation using the upstream build system. No external network requests, obfuscated code, or unexpected system modifications are present. The package is well-structured and contains no signs of malicious behavior.</details>
<evidence>
</evidence>
<summary>Standard PKGBUILD; no malicious code found.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD; no malicious code found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 8,237
  Completion Tokens: 1,920
  Total Tokens: 10,157
  Total Cost: $0.001087
  Execution Time: 15.23 seconds

Final Status: SAFE


No issues found.
