---
package: badness-bin
pkgver: 0.23.0
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 171a316e053e9c4b28731ccb1aa63b1168550d3a
prompt_tokens: 7804
completion_tokens: 977
total_tokens: 8781
cost: 0.00077459004
execution_time: 79.65
files_reviewed: 2
files_skipped: 0
maintainer_files: 2
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-03T19:21:33Z
file_verdicts:
  - file: PKGBUILD
    status: safe
    summary: Standard binary AUR package with pinned checksums and safe install steps.
  - file: .SRCINFO
    status: safe
    summary: Standard metadata with pinned checksums, no malicious content.
---

Materializing badness-bin from local mirror...
Materialized badness-bin
Analyzing badness-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD's global/top-level scope contains only static variable definitions (pkgname, pkgver, source arrays, checksums, etc.) and the definition of the `package()` function, which is not executed during `makepkg --printsrcinfo`. There are no command substitutions, backtick executions, `eval`, `curl`, `wget`, or any other dynamically executed code that would run when the file is sourced. No malicious or suspicious behavior is present in the scope that executes during this gate.
</details>
<evidence></evidence>
<summary>No dangerous code in global scope; safe to source.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous code in global scope; safe to source.
Reviewing the 2 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/2] Reviewing .SRCINFO...
[0/2] Reviewing .SRCINFO, PKGBUILD...
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard AUR packaging practices for a prebuilt binary package. It downloads release tarballs from the project&apos;s own GitHub repository (`https://github.com/jolars/badness`) using pinned versioned URLs and verifies them with hardcoded SHA-256 checksums. No `SKIP` checksums, no mutable VCS sources, and no unexpected network fetching at build time.

The `package()` function only installs the prebuilt binary, optional man pages, shell completions, and the license file into `$pkgdir`. There are no suspicious commands such as `eval`, `curl`, `wget`, `base64`, obfuscation, or modification of files outside the package directory. The dependency on `gcc-libs` is normal for a Rust-produced binary. No evidence of malicious or supply-chain behavior was found.
</details>
<evidence>
</evidence>
<summary>
Standard binary AUR package with pinned checksums and safe install steps.</summary>
</security_assessment>

[1/2] Reviewing .SRCINFO...
+ Reviewed PKGBUILD. Status: SAFE -- Standard binary AUR package with pinned checksums and safe install steps.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a metadata file (.SRCINFO) for the `badness-bin` AUR package. It declares two precompiled binary tarballs (x86_64 and aarch64) fetched from the official GitHub releases page of the upstream project (github.com/jolars/badness). Both sources have pinned SHA256 checksums, ensuring integrity. There is no obfuscated code, no network requests to unexpected hosts, and no instruction to execute downloaded code at build time beyond normal package installation. The file contains only static metadata and is not executable. No supply-chain attack indicators are present.
</details>
<evidence></evidence>
<summary>Standard metadata with pinned checksums, no malicious content.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed .SRCINFO. Status: SAFE -- Standard metadata with pinned checksums, no malicious content.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 7,804
  Completion Tokens: 977
  Total Tokens: 8,781
  Total Cost: $0.000775
  Execution Time: 79.65 seconds

Final Status: SAFE


No issues found.
