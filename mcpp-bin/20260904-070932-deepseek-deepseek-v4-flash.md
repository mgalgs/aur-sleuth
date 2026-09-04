---
package: mcpp-bin
pkgver: 2026.9.4.2
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 171a316e053e9c4b28731ccb1aa63b1168550d3a
prompt_tokens: 10619
completion_tokens: 1853
total_tokens: 12472
cost: 0.001269280950
execution_time: 29.58
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-04T07:09:32Z
file_verdicts:
  - file: mcpp.sh
    status: safe
    summary: Launcher script, no malicious behavior.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata file, no security issues found.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD, no malicious code.
---

Materializing mcpp-bin from local mirror...
Materialized mcpp-bin
Analyzing mcpp-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only standard variable assignments at the top level. No command substitutions, backticks, eval, or any other code execution mechanisms are present outside of function definitions. The `_relbase` variable and source arrays are constructed using string interpolation, which is normal and safe. The `install` commands are inside the `package()` function, which is not executed during `makepkg --printsrcinfo`. Therefore, sourcing this PKGBUILD for metadata parsing poses no danger.
</details>
<evidence></evidence>
<summary>No global-scope code execution present.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No global-scope code execution present.
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, mcpp.sh...
[0/3] Reviewing .SRCINFO, mcpp.sh, PKGBUILD...
LLM auditresponse for mcpp.sh:
<security_assessment>
<decision>SAFE</decision>
<details>Standard launcher script that sets environment variables (MCPP_HOME, MCPP_VENDORED_XLINGS) and executes the mcpp binary from /opt/mcpp. No suspicious network requests, obfuscated code, or dangerous commands. The script only initializes per-user writable paths and runs the application binary.</details>
<evidence></evidence>
<summary>Launcher script, no malicious behavior.</summary>
</security_assessment>

[1/3] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed mcpp.sh. Status: SAFE -- Launcher script, no malicious behavior.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The .SRCINFO file is a standard AUR metadata file that defines the mcpp-bin package. It specifies the package name, version, description, dependencies, and source URLs. The binary tarballs are fetched from the official GitHub releases page with pinned version and valid SHA256 checksums for both x86_64 and aarch64 architectures. The only source with a SKIP checksum is `mcpp.sh`, which is likely a local script included in the AUR package. While SKIP is not ideal, it is not inherently malicious and is a common practice in AUR packages for local files. There are no suspicious network requests, obfuscated code, or dangerous commands in this file. The metadata is consistent with trustworthy packaging practices.
</details>
<evidence></evidence>
<summary>Standard AUR metadata file, no security issues found.</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata file, no security issues found.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD for `mcpp-bin` follows standard AUR packaging practices. It downloads prebuilt binaries directly from the project&apos;s official GitHub releases, uses proper checksums for the tarballs, and only installs them into the expected locations (`/opt/mcpp/` and a wrapper script in `/usr/bin/mcpp`). There are no suspicious network requests (only the project&apos;s own release URL), no obfuscated code, no attempts to exfiltrate data, and no execution of untrusted content. The `SKIP` checksum for the arch‑independent `mcpp.sh` source is acceptable—it is a local file included in the source array, not a downloaded tarball. The package does not contain any malicious or supply-chain attack indicators.
</details>
<evidence></evidence>
<summary>Standard AUR PKGBUILD, no malicious code.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD, no malicious code.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 10,619
  Completion Tokens: 1,853
  Total Tokens: 12,472
  Total Cost: $0.001269
  Execution Time: 29.58 seconds

Final Status: SAFE


No issues found.
