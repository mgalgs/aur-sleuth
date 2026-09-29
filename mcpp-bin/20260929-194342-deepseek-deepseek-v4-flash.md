---
package: mcpp-bin
pkgver: 2026.9.29.5
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 10704
completion_tokens: 1997
total_tokens: 12701
cost: 0.0011214574
execution_time: 45.83
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-29T19:43:41Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Declarative metadata with no executable code.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD with no malicious indicators.
  - file: mcpp.sh
    status: safe
    summary: Clean wrapper script, no security concerns.
---

Materializing mcpp-bin from local mirror...
Materialized mcpp-bin
Analyzing mcpp-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only standard variable definitions and a function definition (`package()`) in its top-level scope. No command substitutions, eval, or other executable code is present at the global level. The source arrays reference a local file and GitHub download URLs, but these are mere string assignments and are not fetched or executed during a simple source/parse operation. Therefore running `makepkg --printsrcinfo` on this file is safe.
</details>
<evidence></evidence>
<summary>No malicious top-level code; safe to parse.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious top-level code; safe to parse.
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, PKGBUILD...
[0/3] Reviewing .SRCINFO, PKGBUILD, mcpp.sh...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The .SRCINFO file is purely declarative metadata; it contains no executable code. It defines the package name, version, dependencies, and sources. All remote sources (the prebuilt tarballs) are pinned to specific GitHub release URLs and have SHA256 checksums verifying their integrity. The only unpinned entry is the local `mcpp.sh` helper script (sha256sums = SKIP), which is a standard AUR practice for scripts bundled with the package directory rather than downloaded externally. There is no evidence of malicious network requests, obfuscation, or system modification within this file.
</details>
<evidence>
</evidence>
<summary>Declarative metadata with no executable code.</summary>
</security_assessment>

[1/3] Reviewing PKGBUILD, mcpp.sh...
+ Reviewed .SRCINFO. Status: SAFE -- Declarative metadata with no executable code.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard AUR packaging practices for a prebuilt binary package. It downloads upstream artifacts from the project's official GitHub releases (`github.com/mcpp-community/mcpp`) with pinned checksums for both supported architectures. The `SKIP` on the shared source `mcpp.sh` is explicitly acknowledged as a permitted practice — it is not evidence of malice. The `package()` function only installs the upstream binaries and a launcher script into standard directories (`/opt/mcpp` and `/usr/bin`), with no dangerous commands, obfuscation, or unexpected system modifications. No evidence of supply-chain attack or malicious intent was found in this file.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD with no malicious indicators.</summary>
</security_assessment>

[2/3] Reviewing mcpp.sh...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD with no malicious indicators.
LLM auditresponse for mcpp.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
The script is a standard launcher wrapper for the mcpp application installed under /opt/mcpp. It sets two environment variables (`MCPP_HOME` and `MCPP_VENDORED_XLINGS`) to ensure the binary's runtime data lands in a per-user writable location (default ~/.mcpp) rather than the read-only /opt tree. It then executes the mcpp binary with the provided arguments. There are no network requests, no obfuscated code, and no dangerous commands. The script follows normal packaging practices for applications that require writable per-user data at runtime.
</details>
<evidence>
</evidence>
<summary>Clean wrapper script, no security concerns.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed mcpp.sh. Status: SAFE -- Clean wrapper script, no security concerns.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 10,704
  Completion Tokens: 1,997
  Total Tokens: 12,701
  Total Cost: $0.001121
  Execution Time: 45.83 seconds

Final Status: SAFE


No issues found.
