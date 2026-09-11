---
package: mcpp-bin
pkgver: 2026.9.11.4
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 171a316e053e9c4b28731ccb1aa63b1168550d3a
prompt_tokens: 10622
completion_tokens: 2058
total_tokens: 12680
cost: 0.0012586252
execution_time: 24.69
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-11T19:18:52Z
file_verdicts:
  - file: mcpp.sh
    status: safe
    summary: Benign launcher wrapper, no security issues.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata, no malicious content.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD for prebuilt binary; no issues found.
---

Materializing mcpp-bin from local mirror...
Materialized mcpp-bin
Analyzing mcpp-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The global scope of this PKGBUILD contains only static variable assignments and a function definition for `package()`. No command substitutions, calls to `curl`, `wget`, `eval`, or other execution primitives exist at the top level. Sourcing this file for `makepkg --printsrcinfo` will not trigger any network activity, data exfiltration, or code execution beyond normal variable expansion. The `package()` function is defined but not executed during this parsing step. Therefore, running `makepkg --printsrcinfo` on this PKGBUILD is safe.
</details>
<evidence></evidence>
<summary>No dangerous top-level code found</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous top-level code found
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, PKGBUILD...
[0/3] Reviewing .SRCINFO, PKGBUILD, mcpp.sh...
LLM auditresponse for mcpp.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
The script is a simple launcher wrapper that sets two environment variables (`MCPP_HOME` and `MCPP_VENDORED_XLINGS`) to user-writable or system-provided paths, then executes the main binary. It does not perform any network requests, download or execute code from external sources, manipulate files outside the application scope, or contain obfuscated commands. The use of `exec` is standard for wrapper scripts that replace the shell process with the target binary. No signs of supply-chain attack or malicious behavior are present.
</details>
<evidence></evidence>
<summary>Benign launcher wrapper, no security issues.</summary>
</security_assessment>

[1/3] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed mcpp.sh. Status: SAFE -- Benign launcher wrapper, no security issues.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard AUR .SRCINFO metadata file. It defines the package name, version, dependencies, and source URLs. All source URLs point to the official GitHub releases of the mcpp project (`github.com/mcpp-community/mcpp`) and include pinned SHA256 checksums for the binary tarballs. The `mcpp.sh` source has a SKIP checksum, which is common practice and not indicative of malice. There are no commands, no obfuscated code, no network requests outside the declared upstream, and no signs of supply-chain compromise. The file contains only packaging metadata.
</details>
<evidence></evidence>
<summary>Standard AUR metadata, no malicious content.</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata, no malicious content.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a standard prebuilt binary package for the AUR. It downloads release tarballs from the official GitHub repository of the project (&quot;mcpp-community/mcpp&quot;) and verifies them with SHA256 checksums (except for the local wrapper script `mcpp.sh`, which uses `SKIP` — an acceptable practice for per-arch sources or local files). The `package()` function installs binaries into `/opt/mcpp` and a wrapper script into `/usr/bin/mcpp`. No obfuscated code, unexpected network requests, dangerous commands, or tampering with unrelated system files is present. The use of `git` as a dependency is explained for package-index synchronization and is not suspicious. Overall, this file contains no evidence of a supply-chain attack or malicious behavior.
</details>
<evidence></evidence>
<summary>Standard AUR PKGBUILD for prebuilt binary; no issues found.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD for prebuilt binary; no issues found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 10,622
  Completion Tokens: 2,058
  Total Tokens: 12,680
  Total Cost: $0.001259
  Execution Time: 24.69 seconds

Final Status: SAFE


No issues found.
