---
package: herdr
pkgver: 0.9.0
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 171a316e053e9c4b28731ccb1aa63b1168550d3a
prompt_tokens: 8851
completion_tokens: 1834
total_tokens: 10685
cost: 0.001109258514
execution_time: 29.27
files_reviewed: 2
files_skipped: 0
maintainer_files: 2
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-15T03:14:06Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard .SRCINFO metadata, no malicious content.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD for Rust+Zig project, no security issues.
---

Materializing herdr from local mirror...
Materialized herdr
Analyzing herdr AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD's global/top-level scope contains only standard variable assignments (pkgname, pkgver, source, sha256sums, etc.) and function definitions (prepare, build, package). No command substitutions, function calls, network requests, or other executable code are present at the top-level. All potentially dangerous operations (cargo fetch with retry loop, `zig fetch` loops, building, and installation) are confined to the `prepare()`, `build()`, and `package()` functions, which are **not** executed by `makepkg --printsrcinfo`. Therefore, sourcing this PKGBUILD for metadata extraction is safe.
</details>
<evidence></evidence>
<summary>No dangerous top-level code; functions not executed.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous top-level code; functions not executed.
Reviewing the 2 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/2] Reviewing .SRCINFO...
[0/2] Reviewing .SRCINFO, PKGBUILD...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `.SRCINFO` is a standard metadata file for Arch User Repository (AUR) packages. It contains only declarative fields: package name, version, description, URL, dependencies, and a checksummed source tarball. No executable code, obfuscation, network requests, or suspicious operations are present. The source points to the official GitHub release archive with a valid SHA256 checksum. This file poses no security threat.
</details>
<evidence>

</evidence>
<summary>Standard .SRCINFO metadata, no malicious content.</summary>
</security_assessment>

[1/2] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard .SRCINFO metadata, no malicious content.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard Arch packaging practices for a Rust project with Zig dependencies. The source tarball is pinned with a SHA256 checksum, builds use `--frozen` to respect the lockfile, and all dependency fetching occurs during prepare() using the project's own vendored build configuration files. There is no obfuscation, no unexpected network requests, no execution of untrusted code outside the build environment, and no data exfiltration. The Zig dependency fetching loop is legitimate for resolving transitive dependencies of the Ghostty VT library. The binary is used only to generate shell completions during packaging. No malicious or backdoor-like patterns are present.
</details>
<evidence>
</evidence>
<summary>Standard PKGBUILD for Rust+Zig project, no security issues.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD for Rust+Zig project, no security issues.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 8,851
  Completion Tokens: 1,834
  Total Tokens: 10,685
  Total Cost: $0.001109
  Execution Time: 29.27 seconds

Final Status: SAFE


No issues found.
