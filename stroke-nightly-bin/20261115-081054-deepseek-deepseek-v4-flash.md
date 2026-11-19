---
package: stroke-nightly-bin
pkgver: 2.10.2.nightly.202611150642
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 3f8f339d2184315a824bf6b8e30068212deac13a
prompt_tokens: 7736
completion_tokens: 3622
total_tokens: 11358
cost: 0.00134820
execution_time: 28.01
files_reviewed: 2
files_skipped: 0
maintainer_files: 2
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 1
injection_attempts: 0
date: 2026-11-15T08:10:53Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata, no malicious content.
  - file: PKGBUILD
    status: safe
    summary: Standard binary package from official source, no malicious behavior.
---

Materializing stroke-nightly-bin from local mirror...
Materialized stroke-nightly-bin
Analyzing stroke-nightly-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The global scope of this PKGBUILD consists entirely of comments, variable assignments (`pkgname`, `pkgver`, `pkgdesc`, etc.), array assignments (`depends`, `source`, `sha256sums`), and a single function definition (`package()`). No command substitutions (`$()`), backticks, or direct function calls exist in the top-level code that executes when the file is sourced. The `package()` function, which performs file operations, is defined but never invoked by `makepkg --printsrcinfo`. There is no mechanism by which sourcing this file would execute a network request, run an arbitrary payload, or exfiltrate data, making it safe to parse for metadata.
</details>
<evidence></evidence>
<summary>No malicious top-level code executed during parsing.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious top-level code executed during parsing.
Note: 1 remote source(s) have no checksum (sha256sums=SKIP), so the bytes are not verifiable: LICENSE-2.10.2.nightly.202611150642::https://raw.githubusercontent.com/stroke-app/stroke/87c4fa256bcdb870c2e637abff65fc52e9e3dbe5/LICENSE
Reviewing the 2 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/2] Reviewing .SRCINFO...
[0/2] Reviewing .SRCINFO, PKGBUILD...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard .SRCINFO metadata file for an AUR package. It declares the package name, version, dependencies, and two source URLs: a prebuilt binary (`.deb`) from the project's official GitHub releases, and a license file from the same repository. One checksum is provided for the binary, and the license source uses `SKIP` (a common practice for plain-text or VCS sources). No executable code, no suspicious network destinations (both point to `github.com/stroke-app/stroke` -- the project's own upstream), and no commands to run at build time. The file is purely declarative and does not contain any malicious or obfuscated content.
</details>
<evidence></evidence>
<summary>Standard AUR metadata, no malicious content.</summary>
</security_assessment>

[1/2] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata, no malicious content.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard AUR practices for distributing a prebuilt binary.  
It fetches the application and its license from the project&#39;s own GitHub repository at a specific commit, pinning the .deb with a SHA-256 checksum. The SKIP on the LICENSE file is a hygiene choice, not malice.  
The package() function simply extracts the .deb archive and adjusts a desktop file category; no network requests, obfuscated code, or unexpected system modifications occur. This is a straightforward packaging job with no evidence of a supply-chain attack.
</details>
<evidence></evidence>
<summary>Standard binary package from official source, no malicious behavior.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard binary package from official source, no malicious behavior.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 7,736
  Completion Tokens: 3,622
  Total Tokens: 11,358
  Total Cost: $0.001348
  Execution Time: 28.01 seconds

Final Status: SAFE


No issues found.
