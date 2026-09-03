---
package: eden-git
pkgver: 0.2.0.r276.g1dcc574
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 171a316e053e9c4b28731ccb1aa63b1168550d3a
prompt_tokens: 9230
completion_tokens: 1019
total_tokens: 10249
cost: 0.000998412408
execution_time: 18.89
files_reviewed: 2
files_skipped: 0
maintainer_files: 2
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-03T07:30:11Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata file, no security issues.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD, no malicious code detected.
---

Materializing eden-git from local mirror...
Materialized eden-git
Analyzing eden-git AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only standard variable definitions, arrays, and a source array. All executable code is within the `pkgver()`, `build()`, and `package()` functions, which are **not** executed when running `makepkg --printsrcinfo`. There are no top-level command substitutions, dangerous commands (`curl`, `wget`, `eval`, `bash`, etc.), or any operations that could exfiltrate data or download and execute untrusted code. The file is a straightforward AUR git package for the Eden emulator. Sourcing it to obtain metadata poses no security risk.
</details>
<evidence></evidence>
<summary>No dangerous top-level code execution</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous top-level code execution
Reviewing the 2 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/2] Reviewing .SRCINFO...
[0/2] Reviewing .SRCINFO, PKGBUILD...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a metadata file (.SRCINFO) for the `eden-git` AUR package. It contains only package metadata such as name, version, description, architecture, licenses, dependencies, and source origin. The source is a git repository URL (`git+https://git.eden-emu.dev/eden-emu/eden.git`) which is the upstream project's own host. Checksums are set to `SKIP`, which is standard for VCS-type packages. No executable code, obfuscation, network requests, or dangerous operations are present. The file is consistent with legitimate AUR packaging practices.
</details>
<evidence></evidence>
<summary>Standard AUR metadata file, no security issues.</summary>
</security_assessment>

[1/2] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata file, no security issues.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard AUR packaging practices for a VCS-based emulator project. It clones from the official upstream repository (`git.eden-emu.dev`), builds with cmake, and installs normally. No obfuscated code, suspicious network requests, or data exfiltration is present. All operations are confined to the package's own source and build directories. The SKIP checksum is expected for a git source and is not a security concern.
</details>
<evidence></evidence>
<summary>Standard AUR PKGBUILD, no malicious code detected.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD, no malicious code detected.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 9,230
  Completion Tokens: 1,019
  Total Tokens: 10,249
  Total Cost: $0.000998
  Execution Time: 18.89 seconds

Final Status: SAFE


No issues found.
