---
package: mcpp-bin
pkgver: 2026.9.7.1
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 171a316e053e9c4b28731ccb1aa63b1168550d3a
prompt_tokens: 10601
completion_tokens: 2139
total_tokens: 12740
cost: 0.001318368674
execution_time: 87.4
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-07T19:16:33Z
file_verdicts:
  - file: mcpp.sh
    status: safe
    summary: Clean launcher script; no malicious behavior.
  - file: .SRCINFO
    status: safe
    summary: Metadata file only; no executable or suspicious content.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR binary package, no malicious indicators.
---

Materializing mcpp-bin from local mirror...
Materialized mcpp-bin
Analyzing mcpp-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only static variable assignments, comments, and a `package()` function definition at the top level. No command substitutions, function calls, or dangerous operations like `curl`, `wget`, `eval`, or backtick execution are present in the global scope. Sourcing this file to run `makepkg --printsrcinfo` will simply parse the metadata without executing any harmful code.
</details>
<evidence></evidence>
<summary>No dangerous top-level code; safe to source.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous top-level code; safe to source.
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, PKGBUILD...
[0/3] Reviewing .SRCINFO, PKGBUILD, mcpp.sh...
LLM auditresponse for mcpp.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard wrapper/launcher script for the `mcpp` application installed under `/opt/mcpp`. It performs no network operations, does not download or execute code from external sources, and contains no obfuscation or encoded commands. It simply sets two environment variables (`MCPP_HOME` and `MCPP_VENDORED_XLINGS`) to sensible defaults (with user-override support) and then `exec`s the main binary. All file operations are limited to reading the script itself and executing the binary; no writing, modification, or data exfiltration occurs. The script follows common AUR packaging patterns for applications that need a writable per-user data directory separate from the read-only installation tree. There are no genuine security concerns.
</details>
<evidence></evidence>
<summary>Clean launcher script; no malicious behavior.</summary>
</security_assessment>

[1/3] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed mcpp.sh. Status: SAFE -- Clean launcher script; no malicious behavior.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The `.SRCINFO` file is a plain-text metadata file for the AUR package. It does not contain any executable code, obfuscated strings, or network requests. The only potential concern is that one source (`mcpp.sh`) has a `SKIP` checksum, but this is a standard AUR practice for helper scripts and does not by itself constitute malicious behavior. The binary tarballs have pinned SHA-256 checksums, and all URLs point to the legitimate upstream GitHub repository. No evidence of a supply-chain attack or malicious injection is present in this file.
</details>
<evidence>
</evidence>
<summary>Metadata file only; no executable or suspicious content.</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Metadata file only; no executable or suspicious content.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD for `mcpp-bin` follows standard AUR binary packaging practices. It downloads prebuilt binaries from the official GitHub releases of the mcpp project, with pinned SHA-256 checksums for the architecture-specific tarballs. The only source file without a checksum is `mcpp.sh`, which is a local file included in the AUR package itself (not an external download) — this is a trust/hygiene concern but not a supply-chain attack vector. The `package()` function installs binaries and the wrapper script into `/opt/mcpp` and `/usr/bin/mcpp`, which is routine. No obfuscated code, unexpected network requests, or dangerous commands (such as `eval`, `curl|bash`, `git pull` in build) are present. The package is considered safe.
</details>
<evidence></evidence>
<summary>Standard AUR binary package, no malicious indicators.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR binary package, no malicious indicators.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 10,601
  Completion Tokens: 2,139
  Total Tokens: 12,740
  Total Cost: $0.001318
  Execution Time: 87.40 seconds

Final Status: SAFE


No issues found.
