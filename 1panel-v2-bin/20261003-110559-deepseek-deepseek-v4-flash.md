---
package: 1panel-v2-bin
pkgver: 2.3.2
pkgrel: 3
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 13739
completion_tokens: 2113
total_tokens: 15852
cost: 0.000503020
execution_time: 34.73
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-03T11:05:59Z
file_verdicts:
  - file: PKGBUILD
    status: safe
    summary: Standard binary PKGBUILD with pinned checksums and no suspicious code.
  - file: .SRCINFO
    status: safe
    summary: Standard .SRCINFO metadata with pinned checksums and official HTTPS sources. No malicious behavior.
  - file: 1panel-v2-bin.install
    status: safe
    summary: Standard install credential generation, no supply chain threat.
---

Materializing 1panel-v2-bin from local mirror...
Materialized 1panel-v2-bin
Analyzing 1panel-v2-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The top-level global scope of this PKGBUILD only contains standard variable definitions (pkgname, pkgver, arch, source arrays, etc.) and a case statement that sets `_arch` based on `$CARCH`. No command substitutions, backtick expansions, function calls, or other executable actions are present at the global level. The `case` statement performs a simple variable assignment, which is safe and standard for architecture-conditional packaging. There are no downloads, data exfiltration, or arbitrary code execution. The `package()` function is defined but not executed during `makepkg --printsrcinfo`. Therefore, sourcing this PKGBUILD poses no risk in this narrow safety gate.
</details>
<evidence></evidence>
<summary>Global scope is safe; no dangerous execution.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Global scope is safe; no dangerous execution.
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, PKGBUILD...
[0/3] Reviewing .SRCINFO, PKGBUILD, 1panel-v2-bin.install...
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard Arch packaging practices for a binary package. It downloads a pinned version (v2.3.2) of the 1Panel binary from the project's own CDN (resource.fit2cloud.com) with verified SHA-256 checksums. The `package()` function copies binaries, adjusts paths via `sed`, installs configuration files, GeoIP data, and systemd services into the package directory. There are no network requests during build, no obfuscated code, no `eval` or `curl|bash` patterns, and no operations that would exfiltrate data or modify unrelated system files. The `.install` file is referenced but not provided; however, from the PKGBUILD alone there is no evidence of malice.
</details>
<evidence></evidence>
<summary>Standard binary PKGBUILD with pinned checksums and no suspicious code.</summary>
</security_assessment>

[1/3] Reviewing .SRCINFO, 1panel-v2-bin.install...
+ Reviewed PKGBUILD. Status: SAFE -- Standard binary PKGBUILD with pinned checksums and no suspicious code.
LLM auditresponse for .SRCINFO:
 <security_assessment>
<decision>SAFE</decision>
<details>
The .SRCINFO file is a standard Arch Linux package metadata file. It declares a single binary package, 1panel-v2-bin, with pinned SHA-256 checksums for both x86_64 and aarch64 source archives. The source URLs point to the project&#39;s official distribution host (resource.fit2cloud.com) using HTTPS, and the checksums are provided and not set to SKIP. No install scripts, build commands, or executable logic are present in this file, so there is no opportunity for code execution, exfiltration, or supply-chain injection here. The dependencies and conflicts listed are normal packaging metadata for this application. Nothing in the file deviates from standard packaging practice or exhibits malicious behavior.
</details>
<evidence>
</evidence>
<summary>
Standard .SRCINFO metadata with pinned checksums and official HTTPS sources. No malicious behavior.
</summary>
</security_assessment>

[2/3] Reviewing 1panel-v2-bin.install...
+ Reviewed .SRCINFO. Status: SAFE -- Standard .SRCINFO metadata with pinned checksums and official HTTPS sources. No malicious behavior.
LLM auditresponse for 1panel-v2-bin.install:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard AUR `.install` script for the `1panel-v2-bin` package. It performs post-installation and post-upgrade configuration:

- Generates random credentials (port, entrance, username, password) from `/dev/urandom` and `md5sum` for the first installation.
- Persists credentials to `/opt/1panel/.install-credentials` (with `chmod 600`) for recovery during upgrades when the package binary is overwritten by pacman.
- Modifies `/usr/bin/1pctl` via `sed -i` to set the generated credentials – this is the package's own control binary, a normal configuration step.
- Reads `/proc/1/net/route` and `/proc/1/net/fib_trie` to determine the local IP for display purposes; no data is sent anywhere.
- Contains no network calls (`curl`, `wget`, etc.), no obfuscated commands, no execution of downloaded code, and no exfiltration of local data.

All operations are confined to the package's own files and the generation of local runtime configuration. The use of `md5` for credential generation is an upstream design choice, not a supply-chain threat. The script behaves as expected for a first-run setup helper of a management panel.
</details>
<evidence>

</evidence>
<summary>Standard install credential generation, no supply chain threat.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed 1panel-v2-bin.install. Status: SAFE -- Standard install credential generation, no supply chain threat.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 13,739
  Completion Tokens: 2,113
  Total Tokens: 15,852
  Total Cost: $0.000503
  Execution Time: 34.73 seconds

Final Status: SAFE


No issues found.
