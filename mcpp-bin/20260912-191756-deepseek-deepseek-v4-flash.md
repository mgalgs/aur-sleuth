---
package: mcpp-bin
pkgver: 2026.9.12.4
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 171a316e053e9c4b28731ccb1aa63b1168550d3a
prompt_tokens: 10613
completion_tokens: 1691
total_tokens: 12304
cost: 0.00091891170
execution_time: 19.67
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-12T19:17:56Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata, no malicious indicators.
  - file: PKGBUILD
    status: safe
    summary: Standard prebuilt binary PKGBUILD with no malicious content.
  - file: mcpp.sh
    status: safe
    summary: Standard launcher wrapper, no malicious behavior.
---

Materializing mcpp-bin from local mirror...
Materialized mcpp-bin
Analyzing mcpp-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD defines metadata and source arrays in its top-level scope, with no command substitutions, external commands, or code that executes during sourcing. The `package()` function is defined but only runs during the packaging step later. All operations are standard variable assignments and a function definition. No malicious code is present in the global scope.
</details>
<evidence></evidence>
<summary>No dangerous top-level code; safe to parse.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous top-level code; safe to parse.
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing PKGBUILD...
[0/3] Reviewing PKGBUILD, mcpp.sh...
[0/3] Reviewing PKGBUILD, mcpp.sh, .SRCINFO...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard `.SRCINFO` metadata file for an AUR package (`mcpp-bin`). It defines the package as a prebuilt binary from the official GitHub releases of the mcpp project. The source URLs point to the project's own GitHub release assets, each with a specific SHA-256 checksum for integrity verification. The `sha256sums = SKIP` on `mcpp.sh` is a routine practice for inline or local helper scripts; it does not indicate malice. No obfuscation, suspicious network destinations, or dangerous operations are present. The file is purely declarative metadata and poses no supply-chain risk.
</details>
<evidence></evidence>
<summary>Standard AUR metadata, no malicious indicators.</summary>
</security_assessment>

[1/3] Reviewing PKGBUILD, mcpp.sh...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata, no malicious indicators.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard AUR practices for packaging a prebuilt binary release from GitHub. All source tarballs have pinned SHA-256 checksums (only the local helper script `mcpp.sh` has `SKIP`, which is normal for non-remote sources). The `package()` function only installs prebuilt binaries and a wrapper launcher into `/opt/mcpp` and `/usr/bin/mcpp`. There are no dangerous commands, obfuscated code, network requests at build/install time, or attempts to access unrelated files. The project's own GitHub releases are the sole external dependency, and the behavior is fully transparent.
</details>
<evidence></evidence>
<summary>Standard prebuilt binary PKGBUILD with no malicious content.</summary>
</security_assessment>

[2/3] Reviewing mcpp.sh...
+ Reviewed PKGBUILD. Status: SAFE -- Standard prebuilt binary PKGBUILD with no malicious content.
LLM auditresponse for mcpp.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
The script is a simple launcher wrapper for the mcpp binary installed under `/opt/mcpp`. It sets two environment variables (`MCPP_HOME` and `MCPP_VENDORED_XLINGS`) to sensible defaults while respecting any user-predefined values, then `exec`s the actual binary. There are no network requests, no obfuscated commands, no dangerous operations (eval, base64, curl, wget, etc.), and no unexpected file system modifications. This is a standard packaging pattern for applications that need a writable per-user data directory separate from the read-only installation tree. The script contains no supply-chain attack indicators.
</details>
<evidence></evidence>
<summary>Standard launcher wrapper, no malicious behavior.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed mcpp.sh. Status: SAFE -- Standard launcher wrapper, no malicious behavior.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 10,613
  Completion Tokens: 1,691
  Total Tokens: 12,304
  Total Cost: $0.000919
  Execution Time: 19.67 seconds

Final Status: SAFE


No issues found.
