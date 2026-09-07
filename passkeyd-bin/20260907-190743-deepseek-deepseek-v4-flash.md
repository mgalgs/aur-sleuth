---
package: passkeyd-bin
pkgver: 1.9.2
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 171a316e053e9c4b28731ccb1aa63b1168550d3a
prompt_tokens: 9004
completion_tokens: 1251
total_tokens: 10255
cost: 0.001019500636
execution_time: 20.84
files_reviewed: 2
files_skipped: 0
maintainer_files: 2
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-07T19:07:42Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata file, no malicious content.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD; pinned source, normal install steps, no malicious behavior.
---

Materializing passkeyd-bin from local mirror...
Materialized passkeyd-bin
Analyzing passkeyd-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only standard variable definitions (pkgname, pkgver, source, sha256sums, etc.) and a package() function that will not be executed during `makepkg --printsrcinfo`. There are no command substitutions, backticks, or any other code execution at the top-level scope. No dangerous operations are performed during sourcing, so running `makepkg --printsrcinfo` is safe.</details>
<evidence></evidence>
<summary>No malicious top-level code; safe to source.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious top-level code; safe to source.
Reviewing the 2 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/2] Reviewing .SRCINFO...
[0/2] Reviewing .SRCINFO, PKGBUILD...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard AUR `.SRCINFO` metadata file describing the `passkeyd-bin` package. It contains no executable code, only declarative fields such as pkgver, dependencies, source URL, and a SHA256 checksum. The source URL points to the project's official GitHub release tarball, and the checksum is pinned (not `SKIP`). There are no suspicious commands, obfuscated strings, or unexpected network destinations. The contents are consistent with legitimate packaging practices.
</details>
<evidence></evidence>
<summary>Standard AUR metadata file, no malicious content.</summary>
</security_assessment>

[1/2] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata file, no malicious content.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a standard binary package build file. It downloads the upstream release tarball from the project's official GitHub releases URL and verifies it with a pinned SHA-256 checksum, rather than skipping verification. No source is fetched during build or package functions beyond the declared source array.

The `package()` function only installs prebuilt binaries, configuration files, a systemd service unit, icons, and creates a runtime database directory. There are no suspicious network calls, no encoded or obfuscated commands, no use of `eval`, `curl`, `wget`, or dynamic code execution, and no modifications to files outside the package installation scope. The odd `conflicts` entries for `openrc` and `runit` are unusual packaging choices but not evidence of malicious behavior.
</details>
<evidence></evidence>
<summary>Standard AUR PKGBUILD; pinned source, normal install steps, no malicious behavior.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD; pinned source, normal install steps, no malicious behavior.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 9,004
  Completion Tokens: 1,251
  Total Tokens: 10,255
  Total Cost: $0.001020
  Execution Time: 20.84 seconds

Final Status: SAFE


No issues found.
