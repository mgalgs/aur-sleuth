---
package: artcraft-launcher
pkgver: 0.19.2
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 3f8f339d2184315a824bf6b8e30068212deac13a
prompt_tokens: 9898
completion_tokens: 2809
total_tokens: 12707
cost: 0.00139644
execution_time: 31.94
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-11-12T12:13:36Z
file_verdicts:
  - file: .nvchecker.toml
    status: safe
    summary: Standard nvchecker config; no security issues.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata file with pinned checksum.
  - file: PKGBUILD
    status: safe
    summary: Clean PKGBUILD with pinned source and checksum.
---

Materializing artcraft-launcher from local mirror...
Cloning https://aur.archlinux.org/artcraft-launcher.git...
Cloned artcraft-launcher
Analyzing artcraft-launcher AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only top-level variable assignments (pkgname, pkgver, source, sha256sums, etc.) and function definitions (_srcenv, prepare, build, package). No code is executed at the global scope—there are no command substitutions, backtick expressions, eval statements, or function calls that would run when the file is sourced. The source array points to the project's own GitHub archive with a pinned checksum, which is expected. Therefore, running `makepkg --printsrcinfo` on this PKGBUILD poses no risk of executing malicious code.
</details>
<evidence></evidence>
<summary>No dangerous code at top level; sourcing is safe.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous code at top level; sourcing is safe.
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, .nvchecker.toml...
[0/3] Reviewing .SRCINFO, .nvchecker.toml, PKGBUILD...
LLM auditresponse for .nvchecker.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a configuration for `nvchecker`, a tool used by some AUR helpers to check for new upstream versions. It specifies a git source pointing to the project&#39;s own GitHub repository, which is standard and expected behavior. There is no executable code, no obfuscation, no network requests beyond declaring the upstream URL, and no indication of malicious intent. This file serves its intended purpose without any security concerns.
</details>
<evidence></evidence>
<summary>Standard nvchecker config; no security issues.</summary>
</security_assessment>

[1/3] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed .nvchecker.toml. Status: SAFE -- Standard nvchecker config; no security issues.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is the AUR source info metadata for the artcraft-launcher package. It declares the package source as a tarball from the official upstream GitHub repository, pinned to a specific version tag (v0.19.2). The sha256sums field contains a concrete hash rather than 'SKIP', allowing integrity verification of the downloaded source. The file contains no executable code, no obfuscation, no network requests to unexpected hosts, and follows standard AUR packaging conventions precisely. There are no indicators of supply-chain compromise.
</details>
<evidence>
</evidence>
<summary>
Standard AUR metadata file with pinned checksum.
</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata file with pinned checksum.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard Arch packaging practices for a Rust application. The source is pinned to a specific version tag with a valid SHA256 checksum, ensuring integrity of the upstream tarball. All build and package operations are conventional: `cargo fetch --locked`, `cargo build --frozen`, and `install` commands that only write into `$pkgdir`. There are no network requests beyond the declared source, no obfuscated code, no dangerous commands like `eval`, `curl`, `wget`, or `base64`, and no file operations outside the expected packaging workflow. The maintainer is a known AUR contributor, and the package fetches from its own upstream GitHub repository. This is a clean, secure PKGBUILD with no signs of supply-chain compromise.
</details>
<evidence></evidence>
<summary>Clean PKGBUILD with pinned source and checksum.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Clean PKGBUILD with pinned source and checksum.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 9,898
  Completion Tokens: 2,809
  Total Tokens: 12,707
  Total Cost: $0.001396
  Execution Time: 31.94 seconds

Final Status: SAFE


No issues found.
