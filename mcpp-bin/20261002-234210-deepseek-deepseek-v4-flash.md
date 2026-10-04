---
package: mcpp-bin
pkgver: 2026.10.3.1
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 10634
completion_tokens: 2257
total_tokens: 12891
cost: 0.000424144
execution_time: 72.0
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-02T23:42:09Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Metadata file is benign; no malicious indicators.
  - file: mcpp.sh
    status: safe
    summary: Standard launcher wrapper, no malicious code.
  - file: PKGBUILD
    status: safe
    summary: Standard prebuilt binary PKGBUILD, no signs of malicious code.
---

Materializing mcpp-bin from local mirror...
Materialized mcpp-bin
Analyzing mcpp-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only standard variable definitions (pkgname, pkgver, arch, depends, source arrays, checksums, etc.) and a `package()` function that is not executed during `makepkg --printsrcinfo`. There are no command substitutions, external command executions, or any dangerous operations in the global/top-level scope. All assignments are static strings or simple variable expansions. The file is safe to source for metadata extraction.
</details>
<evidence></evidence>
<summary>No top-level malicious code; safe to source.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No top-level malicious code; safe to source.
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, PKGBUILD...
[0/3] Reviewing .SRCINFO, PKGBUILD, mcpp.sh...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The .SRCINFO file is a metadata file for the mcpp-bin package, describing its sources, checksums, and dependencies. It references a generic source `mcpp.sh` with a SKIP checksum, but as per policy, a SKIP checksum is not inherently malicious—it is used for various reasons (e.g., local helper scripts). The per-architecture sources point to the official GitHub releases for mcpp, with pinned version tags and valid SHA-256 checksums. No evidence of network requests to unexpected hosts, obfuscated code, or attempts to exfiltrate data is present. The file adheres to standard AUR packaging practices and contains no executable instructions.
</details>
<evidence></evidence>
<summary>Metadata file is benign; no malicious indicators.</summary>
</security_assessment>

[1/3] Reviewing PKGBUILD, mcpp.sh...
+ Reviewed .SRCINFO. Status: SAFE -- Metadata file is benign; no malicious indicators.
LLM auditresponse for mcpp.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a straightforward launcher wrapper for the mcpp binary installed under /opt/mcpp. It sets two environment variables (`MCPP_HOME` and `MCPP_VENDORED_XLINGS`) to point to a per-user writable location and the bundled xlings directory, then executes the real binary. There is no obfuscated code, no network requests, no dangerous commands (eval, base64, curl, wget), and no unusual file operations. The script uses `set -eu` for error handling, which is a good practice. This is exactly the kind of wrapper needed when a binary expects to write to its home directory but is installed read-only. No evidence of supply-chain attack or malicious behavior.
</details>
<evidence></evidence>
<summary>Standard launcher wrapper, no malicious code.</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed mcpp.sh. Status: SAFE -- Standard launcher wrapper, no malicious code.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard AUR practices for packaging prebuilt binaries. It downloads two arch-specific tarballs from the project's official GitHub releases (`mcpp-community/mcpp`) with pinned checksums, and includes a local wrapper script (`mcpp.sh`) whose checksum is intentionally set to `SKIP` because it is a local file, not a remote download. The `package()` function only installs the binaries and a wrapper into standard system paths (`/opt/mcpp/`, `/usr/bin/`). There are no suspicious network requests, obfuscated code, unexpected file operations, or commands like `eval`, `curl`, `base64`, etc. The use of `SKIP` for the local script is normal and not evidence of malice.
</details>
<evidence></evidence>
<summary>Standard prebuilt binary PKGBUILD, no signs of malicious code.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard prebuilt binary PKGBUILD, no signs of malicious code.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 10,634
  Completion Tokens: 2,257
  Total Tokens: 12,891
  Total Cost: $0.000424
  Execution Time: 72.00 seconds

Final Status: SAFE


No issues found.
