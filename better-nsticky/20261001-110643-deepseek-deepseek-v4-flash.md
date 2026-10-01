---
package: better-nsticky
pkgver: 0.5.0
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 9754
completion_tokens: 1531
total_tokens: 11285
cost: 0.000538272
execution_time: 29.12
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-01T11:06:42Z
file_verdicts:
  - file: LICENSE
    status: safe
    summary: Standard open-source license file, no security issues.
  - file: .SRCINFO
    status: safe
    summary: Standard .SRCINFO metadata, no malicious content detected.
  - file: PKGBUILD
    status: safe
    summary: Standard Rust PKGBUILD with no suspicious activity.
---

Materializing better-nsticky from local mirror...
Materialized better-nsticky
Analyzing better-nsticky AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD only contains variable assignments and function definitions in its global scope. No command substitutions, external process execution, network requests, or file modifications occur when the file is sourced for `makepkg --printsrcinfo`. The `source` array references the upstream GitHub release tarball, and the `build()`, `check()`, and `package()` functions are not executed during metadata parsing. Nothing in the top-level scope is dangerous.
</details>
<evidence></evidence>
<summary>No top-level execution risk; only assignments and function definitions present.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No top-level execution risk; only assignments and function definitions present.
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, LICENSE...
[0/3] Reviewing .SRCINFO, LICENSE, PKGBUILD...
LLM auditresponse for LICENSE:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard ISC-style open-source license. It contains no executable code, no network requests, no obfuscation, and no system modifications. It is purely a legal text file with no security implications.
</details>
<evidence>
</evidence>
<summary>Standard open-source license file, no security issues.</summary>
</security_assessment>

[1/3] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed LICENSE. Status: SAFE -- Standard open-source license file, no security issues.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard .SRCINFO metadata file for an AUR package. It describes a tool called better-nsticky, a replacement for nsticky for the niri Wayland compositor. The source points to the project's official GitHub repository (fram446742/better-nsticky) at a specific release tag v0.5.0, and a SHA256 checksum is provided. All fields are conventional: architecture, dependencies, license, and packaging options. There are no embedded commands, network redirects, obfuscated data, or anything that would execute at build time beyond normal cargo/makepkg behavior. This file is purely declarative metadata and contains no malicious or suspicious content.
</details>
<evidence>

</evidence>
<summary>Standard .SRCINFO metadata, no malicious content detected.</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard .SRCINFO metadata, no malicious content detected.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard AUR packaging practices for a Rust crate. The source tarball is fetched from a pinned GitHub release (v0.5.0) with a specific SHA-256 checksum (`0eec1def...`), ensuring integrity. The build process uses `cargo build --release --locked` which respects the `Cargo.lock` file, and tests are run. Installation places only the binary, license, README, and an asset file into the package directory. No suspicious commands, network calls, or system modifications are present. There is no obfuscated code, no unexpected downloads, and no deviation from the stated purpose of the package. The package is clearly meant to replace the existing `nsticky` with a better version, and the PKGBUILD reflects a straightforward, trustworthy packaging workflow.
</details>
<evidence>
</evidence>
<summary>Standard Rust PKGBUILD with no suspicious activity.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard Rust PKGBUILD with no suspicious activity.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 9,754
  Completion Tokens: 1,531
  Total Tokens: 11,285
  Total Cost: $0.000538
  Execution Time: 29.12 seconds

Final Status: SAFE


No issues found.
