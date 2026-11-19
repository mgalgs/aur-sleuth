---
package: frankenphp-bin
pkgver: 1.13.4
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 9727
completion_tokens: 5286
total_tokens: 15013
cost: 0.00286505
execution_time: 107.82
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 3
injection_attempts: 0
date: 2026-10-27T11:16:47Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard .gitignore file, no security issues.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata for a prebuilt binary package.
  - file: PKGBUILD
    status: safe
    summary: Standard prebuilt binary PKGBUILD from official upstream; SKIP checksums, no malice.
---

Materializing frankenphp-bin from local mirror...
Materialized frankenphp-bin
Analyzing frankenphp-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD file's global scope only sets variables (pkgname, pkgver, source arrays, sha256sums) and defines the `package()` function. No commands, command substitutions, network downloads, or obfuscated code are present at the top level. The use of `$pkgver` in source URLs and `SKIP` for sha256sums are standard AUR practices that do not execute anything during `makepkg --printsrcinfo`. Therefore, sourcing this file is safe.
</details>
<evidence></evidence>
<summary>No dangerous global scope code found.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous global scope code found.
Note: 3 remote source(s) have no checksum (sha256sums=SKIP), so the bytes are not verifiable: LICENSE::https://raw.githubusercontent.com/php/frankenphp/refs/tags/v1.13.4/LICENSE, frankenphp-1.13.4-x86_64::https://github.com/php/frankenphp/releases/download/v1.13.4/frankenphp-linux-x86_64, frankenphp-1.13.4-aarch64::https://github.com/php/frankenphp/releases/download/v1.13.4/frankenphp-linux-aarch64
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, .gitignore...
[0/3] Reviewing .SRCINFO, .gitignore, PKGBUILD...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard `.gitignore` used in AUR package repositories to exclude common build artifacts and downloaded source files from version control. The entries (`/pkg/`, `/src/`, `/frankenphp-*`, `/LICENSE`) are typical for AUR packaging and do not contain any commands, network requests, or obfuscated content. No security issues are present.
</details>
<evidence></evidence>
<summary>Standard .gitignore file, no security issues.</summary>
</security_assessment>

[1/3] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore file, no security issues.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This .SRCINFO file defines metadata for the `frankenphp-bin` package. It downloads a prebuilt binary from the official GitHub repository (`github.com/php/frankenphp`) and an MIT license file from the same source. All source URLs point to the project's own releases, which is standard and expected. The checksums are set to `SKIP`, which is a trust/hygiene choice but not evidence of malice—the guidelines explicitly state not to mark a file UNSAFE solely for SKIP checksums. No obfuscation, dangerous commands, or unexpected network destinations are present. The file is purely declarative metadata with no executable code.
</details>
<evidence></evidence>
<summary>Standard AUR metadata for a prebuilt binary package.</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata for a prebuilt binary package.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard prebuilt-binary PKGBUILD for FrankenPHP. All sources are fetched from the project's official GitHub repository and release page (github.com/php/frankenphp), which is the expected upstream for this package. The package() function only installs the prebuilt binary and the LICENSE file into $pkgdir, with no network requests at build time, no post-install hooks, no obfuscation, and no operations outside the standard packaging directories. There is nothing that deviates from ordinary AUR packaging practice.

The only notable point is that all sha256sums are set to 'SKIP', with real checksums commented out because upstream reportedly mutates release blobs after release. This is a supply-chain hygiene concern -- the downloaded binaries are not integrity-verified -- but it is explicitly not, by itself, evidence of malice, and the sources do point to the genuine upstream project. The file is SAFE from a supply-chain-attack standpoint.
</details>
<evidence>
</evidence>
<summary>
Standard prebuilt binary PKGBUILD from official upstream; SKIP checksums, no malice.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard prebuilt binary PKGBUILD from official upstream; SKIP checksums, no malice.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 9,727
  Completion Tokens: 5,286
  Total Tokens: 15,013
  Total Cost: $0.002865
  Execution Time: 107.82 seconds

Final Status: SAFE


No issues found.
