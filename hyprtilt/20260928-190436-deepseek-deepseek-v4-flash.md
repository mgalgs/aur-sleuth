---
package: hyprtilt
pkgver: 0.1.0
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 18612
completion_tokens: 1339
total_tokens: 19951
cost: 0.00129358040
execution_time: 15.79
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-28T19:04:36Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard .SRCINFO with pinned source and checksum; no malicious behavior found.
  - file: LICENSE
    status: safe
    summary: Standard license file, no security concerns.
  - file: PKGBUILD
    status: safe
    summary: Standard Rust PKGBUILD with no malicious behavior.
---

Materializing hyprtilt from local mirror...
Materialized hyprtilt
Analyzing hyprtilt AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD global scope contains only static variable definitions (pkgname, pkgver, pkgrel, pkgdesc, arch, url, license, depends, makedepends, optdepends, options, source, sha256sums). No command substitutions, function calls, eval, or other top-level code execution exists that could run during `makepkg --printsrcinfo`. The `prepare()`, `build()`, `check()`, and `package()` functions are defined but not invoked at this stage. Nothing in the global scope downloads or executes untrusted content, exfiltrates data, or otherwise behaves dangerously. Running `makepkg --printsrcinfo` on this PKGBUILD is safe.
</details>
<evidence></evidence>
<summary>No dangerous top-level code executes.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous top-level code executes.
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, LICENSE...
[0/3] Reviewing .SRCINFO, LICENSE, PKGBUILD...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This .SRCINFO file is a standard Arch User Repository package metadata file for the hyprtilt package. It declares a fixed version (0.1.0), a source tarball from the project's own GitHub repository (FPGArtktic/hyprtilt), and a specific sha256 checksum. There are no suspicious network endpoints, no obfuscated commands, no unsafe file operations, and no unexpected executable code. The metadata follows normal packaging practices for a Rust/cargo-based tool.
</details>
<evidence>
</evidence>
<summary>
Standard .SRCINFO with pinned source and checksum; no malicious behavior found.
</summary>
</security_assessment>

[1/3] Reviewing LICENSE, PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard .SRCINFO with pinned source and checksum; no malicious behavior found.
LLM auditresponse for LICENSE:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is the standard GNU General Public License version 3 text. It contains no executable code, no network requests, no obfuscation, and no commands that could modify the system. It is a common open-source license file distributed with software packages. There are no security concerns.
</details>
<evidence>
</evidence>
<summary>Standard license file, no security concerns.</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed LICENSE. Status: SAFE -- Standard license file, no security concerns.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard Arch Linux packaging practices for a Rust application. The source is fetched from the official GitHub repository with a pinned version tag and a valid SHA256 checksum. The build process uses `cargo fetch --locked` and `cargo build --frozen`, which ensure deterministic builds and prevent dependency tampering. The test suite is executed with `cargo test --frozen --workspace`. No suspicious network requests, obfuscated code, or dangerous commands (curl, wget, eval, base64, etc.) are present. The script only performs routine operations: fetching source, building, generating man pages/completions from the built binary, running tests, and installing files. There is no evidence of exfiltration, backdoors, or unauthorized modifications. The maintainer and license are correctly declared. This file is safe.
</details>
<evidence>
</evidence>
<summary>Standard Rust PKGBUILD with no malicious behavior.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard Rust PKGBUILD with no malicious behavior.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 18,612
  Completion Tokens: 1,339
  Total Tokens: 19,951
  Total Cost: $0.001294
  Execution Time: 15.79 seconds

Final Status: SAFE


No issues found.
