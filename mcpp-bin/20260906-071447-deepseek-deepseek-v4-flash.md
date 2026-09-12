---
package: mcpp-bin
pkgver: 2026.9.6.2
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 171a316e053e9c4b28731ccb1aa63b1168550d3a
prompt_tokens: 10628
completion_tokens: 2200
total_tokens: 12828
cost: 0.00122658536
execution_time: 22.65
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-06T07:14:47Z
file_verdicts:
  - file: mcpp.sh
    status: safe
    summary: Legitimate wrapper script, no malicious behavior.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD with no signs of malicious code.
  - file: .SRCINFO
    status: safe
    summary: Standard metadata file, no malicious content.
---

Materializing mcpp-bin from local mirror...
Materialized mcpp-bin
Analyzing mcpp-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only standard variable definitions (pkgname, pkgver, source arrays, sha256sums, etc.) and a `package()` function. No top-level command substitutions, backtick executions, `eval`, `curl`, `wget`, or other code that could execute during `makepkg --printsrcinfo` is present. The `package()` function is not evaluated at this stage. The `sha256sums` entries marked as `SKIP` are irrelevant for this gate because no sources are downloaded or verified during `--printsrcinfo`. The content is consistent with normal AUR packaging practice.
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
LLM auditresponse for mcpp.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
The script is a simple launcher wrapper for the mcpp binary installed under /opt/mcpp. It sets two environment variables (MCPP_HOME and MCPP_VENDORED_XLINGS) to ensure per-user writable paths, then execs the actual binary. There are no network requests, obfuscation, dangerous commands (eval, base64, curl, wget), file modifications, or any other suspicious operations. The behavior is entirely consistent with standard AUR packaging practices for a self-contained, read-only installation that requires runtime writable paths per user. No security issues detected.
</details>
<evidence></evidence>
<summary>Legitimate wrapper script, no malicious behavior.</summary>
</security_assessment>

[1/3] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed mcpp.sh. Status: SAFE -- Legitimate wrapper script, no malicious behavior.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard AUR packaging practices for a prebuilt binary package. The source archives are downloaded from the project&apos;s own GitHub releases with pinned version numbers and SHA-256 checksums (only the local `mcpp.sh` helper uses `SKIP`, which is normal for local files). The file uses only expected commands like `install`, `mkdir`, and standard operations. There is no obfuscated code, no unexpected network requests, no execution of untrusted fetched content, and no exfiltration of private data. The only potential hygiene note is the absence of a checksum on the local `mcpp.sh` script, but this is standard for AUR helper scripts included in the repository and does not constitute malicious behavior.
</details>
<evidence>
</evidence>
<summary>Standard PKGBUILD with no signs of malicious code.</summary>
</security_assessment>

[2/3] Reviewing .SRCINFO...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD with no signs of malicious code.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard AUR `.SRCINFO` metadata file for the `mcpp-bin` package. It declares two binary tarballs (x86_64 and aarch64) from the official GitHub releases of the project (https://github.com/mcpp-community/mcpp) with pinned SHA256 checksums. The only source with a `SKIP` checksum is `mcpp.sh`, a local file within the AUR repository. While an unchecked local helper script is a trust consideration, the `.SRCINFO` itself contains no executable commands, no obfuscated content, and no references to unexpected or suspicious external hosts. All supplied URLs point to the project&#x27;s own upstream. No evidence of supply-chain injection, data exfiltration, backdoors, or other malicious behavior is present in this file.
</details>
<evidence>
</evidence>
<summary>Standard metadata file, no malicious content.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed .SRCINFO. Status: SAFE -- Standard metadata file, no malicious content.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 10,628
  Completion Tokens: 2,200
  Total Tokens: 12,828
  Total Cost: $0.001227
  Execution Time: 22.65 seconds

Final Status: SAFE


No issues found.
