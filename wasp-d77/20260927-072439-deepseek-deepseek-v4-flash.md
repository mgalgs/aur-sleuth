---
package: wasp-d77
pkgver: 0.9.1
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 8116
completion_tokens: 1246
total_tokens: 9362
cost: 0.0004975152
execution_time: 35.58
files_reviewed: 2
files_skipped: 0
maintainer_files: 2
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-27T07:24:39Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Metadata-only, pinned upstream source with checksum; no malicious content.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD, no security issues found.
---

Materializing wasp-d77 from local mirror...
Materialized wasp-d77
Analyzing wasp-d77 AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD's global/top-level scope contains only static variable assignments (names, version, dependencies, source URL, checksum). There are no command substitutions, backtick executions, or function calls. No dangerous commands (curl, wget, eval, etc.) appear. Sourcing this PKGBUILD to run `makepkg --printsrcinfo` will not execute any malicious code.</details>
<evidence></evidence>
<summary>No malicious code in global scope; safe to source.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious code in global scope; safe to source.
Reviewing the 2 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/2] Reviewing .SRCINFO...
[0/2] Reviewing .SRCINFO, PKGBUILD...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a `.SRCINFO` metadata file, not an executable script. It declares the package name, version, dependencies, and the source tarball URL pointing to the official upstream GitHub repository (https://github.com/dani-77/wasp/archive/refs/tags/v0.9.1.tar.gz). The source has a pinned SHA256 checksum, which is good practice. All dependencies are standard libraries/tools for a Wayland compositor, and the backup configuration file is normal. There is no obfuscated code, suspicious network requests, or hidden operations. The file contains no executable content.

</details>
<evidence></evidence>
<summary>Metadata-only, pinned upstream source with checksum; no malicious content.</summary>
</security_assessment>

[1/2] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Metadata-only, pinned upstream source with checksum; no malicious content.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD for the wasp-d77 package follows standard Arch packaging practices. The source is a tagged release tarball from the project's own GitHub repository, with a pinned SHA256 checksum (not skipped). The build and package functions only run `make` and `install` commands, installing the compositor binary and licenses into the package directory. There are no network fetches, no obfuscated commands, no unusual file operations, and no execution of untrusted code. The `provides` and `conflicts` entries with `wasp` are legitimate disambiguation—an unrelated MQTT broker also ships `/usr/bin/wasp`. Nothing in this file indicates a supply-chain attack or malicious intent.
</details>
<evidence></evidence>
<summary>Standard AUR PKGBUILD, no security issues found.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD, no security issues found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 8,116
  Completion Tokens: 1,246
  Total Tokens: 9,362
  Total Cost: $0.000498
  Execution Time: 35.58 seconds

Final Status: SAFE


No issues found.
