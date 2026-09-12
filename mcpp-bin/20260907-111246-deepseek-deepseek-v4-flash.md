---
package: mcpp-bin
pkgver: 2026.9.6.6
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 171a316e053e9c4b28731ccb1aa63b1168550d3a
prompt_tokens: 10624
completion_tokens: 2279
total_tokens: 12903
cost: 0.001345216292
execution_time: 41.34
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-07T11:12:46Z
file_verdicts:
  - file: mcpp.sh
    status: safe
    summary: Standard launcher wrapper, no malicious behavior.
  - file: .SRCINFO
    status: safe
    summary: Metadata-only file, no malicious code found.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD; no malicious indicators found.
---

Materializing mcpp-bin from local mirror...
Materialized mcpp-bin
Analyzing mcpp-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The top-level scope of this PKGBUILD contains only variable assignments and array definitions. There are no command substitutions (`$()` or backticks), no direct execution of external commands, and no obfuscated code. The `_relbase` variable and the `source` arrays build strings using `${pkgver}` and `${CARCH}`, which are simple variable expansions, not command executions. The `sha256sums` is set to `'SKIP'`, which is acceptable for this gate as no downloads occur during `makepkg --printsrcinfo`. No malicious or suspicious top-level behavior is present.
</details>
<evidence></evidence>
<summary>No dangerous top-level code execution.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous top-level code execution.
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, PKGBUILD...
[0/3] Reviewing .SRCINFO, PKGBUILD, mcpp.sh...
LLM auditresponse for mcpp.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a shell launcher script for the `mcpp` application installed via the AUR package `mcpp-bin`. The script sets up environment variables (`MCPP_HOME` and `MCPP_VENDORED_XLINGS`) to redirect per-user writable data away from the read-only `/opt/mcpp` installation directory, then executes the actual binary.

The script is straightforward and contains no obfuscated code, no network requests, no downloads, no execution of fetched content, and no file operations beyond setting environment variables and running the binary. The use of `exec` to run the binary is standard practice for wrapper scripts. The logic is consistent with the documented purpose of the wrapper: ensuring the application's writable data lands in a user-writable location (default `~/.mcpp`) rather than the root-owned `/opt` tree.

There are no supply-chain attack indicators. The script does not exfiltrate data, download or execute code from unexpected sources, decode obfuscated strings, or modify system files. The environment variable defaults are safe and respect user overrides.
</details>
<evidence></evidence>
<summary>Standard launcher wrapper, no malicious behavior.</summary>
</security_assessment>

[1/3] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed mcpp.sh. Status: SAFE -- Standard launcher wrapper, no malicious behavior.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The `.SRCINFO` file is a metadata-only file that describes the package sources and checksums. It does not contain any executable code or commands. The source tarballs are pinned to a specific GitHub release version and have valid SHA-256 checksums provided. One source entry (`mcpp.sh`) has a `SKIP` checksum, which is not uncommon for helper scripts in AUR packages. Without seeing the content of that script or the PKGBUILD, there is no evidence of malicious behavior. The file itself is standard and follows expected AUR packaging practices.
</details>
<evidence></evidence>
<summary>Metadata-only file, no malicious code found.</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Metadata-only file, no malicious code found.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard AUR packaging practices for prebuilt binary releases. All remote sources (the x86_64 and aarch64 tarballs) are downloaded from the project&#x27;s own GitHub releases with pinned SHA256 checksums. The only `SKIP` checksum applies to the local `mcpp.sh` wrapper script, which is an AUR-supplied file—this is ordinary and not a supply-chain concern. The `package()` function only installs the binary, wrapper, and documentation files under `/opt/mcpp` and `/usr/bin`; there are no unexpected network requests, obfuscated code, or dangerous commands. The file contains no evidence of exfiltration, backdoors, or malicious behavior.
</details>
<evidence></evidence>
<summary>Standard AUR PKGBUILD; no malicious indicators found.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD; no malicious indicators found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 10,624
  Completion Tokens: 2,279
  Total Tokens: 12,903
  Total Cost: $0.001345
  Execution Time: 41.34 seconds

Final Status: SAFE


No issues found.
