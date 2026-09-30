---
package: maple-mono-nf-cn
pkgver: 7.4
pkgrel: 0
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 171a316e053e9c4b28731ccb1aa63b1168550d3a
prompt_tokens: 7137
completion_tokens: 2468
total_tokens: 9605
cost: 0.000591577
execution_time: 108.12
files_reviewed: 2
files_skipped: 0
maintainer_files: 2
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-18T19:32:41Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Declarative metadata file with no executable code or suspicious content.
  - file: PKGBUILD
    status: safe
    summary: Straightforward font PKGBUILD with pinned checksummed upstream source. No malicious behavior found.
---

Materializing maple-mono-nf-cn from local mirror...
Materialized maple-mono-nf-cn
Analyzing maple-mono-nf-cn AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
Running `makepkg --printsrcinfo` sources the PKGBUILD and executes only top-level code (global variable assignments and function definitions). This PKGBUILD contains only static variable assignments (pkgname, pkgver, etc.), an array definition for source (with a URL string, no command substitution), and a sha256sums array. There is a package() function definition, but it is not executed during sourcing. No command substitutions, dangerous commands (curl, wget, eval, etc.), or obfuscated code appear in the global scope. Therefore, sourcing this PKGBUILD is safe.
</details>
<evidence></evidence>
<summary>No dangerous top-level code.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous top-level code.
Reviewing the 2 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/2] Reviewing .SRCINFO...
[0/2] Reviewing .SRCINFO, PKGBUILD...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The .SRCINFO file is purely declarative metadata for the AUR package. It contains no executable code, no network requests, no file operations, and no obfuscated content. The source URL points to the official GitHub release of the project, and a valid SHA256 checksum is provided (not SKIP), allowing verification of the downloaded artifact. No evidence of malicious behavior is present.
</details>
<evidence></evidence>
<summary>Declarative metadata file with no executable code or suspicious content.</summary>
</security_assessment>

[1/2] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Declarative metadata file with no executable code or suspicious content.
LLM auditresponse for PKGBUILD:
 <security_assessment>
<decision>SAFE</decision>
<details>
This is a conventional, minimal font PKGBUILD and I found no signs of malicious or injected code. The source archive is downloaded over HTTPS from the project&apos;s own GitHub releases page (subframe7536/maple-font) and pinned with a real SHA-256 checksum, so the file integrity is verified before use — no SKIP checksums and no mutable VCS source.

The `package()` function does nothing beyond creating a standard font directory under `$pkgdir` and copying the `.ttf` files from the verified source archive into it. There are no network operations beyond the declared source fetch, no encoded or obfuscated commands, no writes outside `$pkgdir`, no post-install hooks, and no execution of fetched code. The unquoted `$srcdir/*.ttf` glob and the stray commented-out `*otf` line are at most stylistic/minor packaging hygiene points, not security issues. Overall this matches normal, safe AUR packaging practice.
</details>
<evidence></evidence>
<summary>Straightforward font PKGBUILD with pinned checksummed upstream source. No malicious behavior found.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Straightforward font PKGBUILD with pinned checksummed upstream source. No malicious behavior found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 7,137
  Completion Tokens: 2,468
  Total Tokens: 9,605
  Total Cost: $0.000592
  Execution Time: 108.12 seconds

Final Status: SAFE


No issues found.
