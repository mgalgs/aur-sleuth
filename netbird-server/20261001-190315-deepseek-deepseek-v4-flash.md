---
package: netbird-server
pkgbase: netbird
pkgver: 0.80.0
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 11091
completion_tokens: 1690
total_tokens: 12781
cost: 0.00060575606
execution_time: 44.47
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-01T19:03:14Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata file, no security concerns.
  - file: netbird-server.service
    status: safe
    summary: Standard service file with no malicious content.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD; no malicious content found.
---

netbird-server is built from netbird
Materializing netbird-server from local mirror...
Materialized netbird-server
Analyzing netbird-server AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only standard top-level variable declarations (pkgbase, pkgname, pkgver, etc.) and function definitions. No code executes in the global scope beyond variable assignments. There are no command substitutions, backticks, or other dangerous constructs at the top level. All potentially risky operations (downloads, builds, installations) are confined within function bodies (prepare, build, package_*), which are not executed by `makepkg --printsrcinfo`. Therefore, sourcing this PKGBUILD for metadata extraction is safe.
</details>
<evidence>
</evidence>
<summary>No malicious top-level code; safe to source.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious top-level code; safe to source.
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, netbird-server.service...
[0/3] Reviewing .SRCINFO, netbird-server.service, PKGBUILD...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard AUR .SRCINFO metadata file. It provides package definitions, source URLs, and SHA-256 checksums. The source URL points to the official Netbird GitHub release tag v0.80.0. The second source (netbird-server.service) is a local file without an external URL, which is normal when a file is included directly in the AUR repository. No executable code, obfuscated content, or suspicious instructions are present. The checksums are explicit and not skipped, allowing verification of integrity. There is no evidence of a supply chain attack or malicious behavior.
</details>
<evidence></evidence>
<summary>Standard AUR metadata file, no security concerns.</summary>
</security_assessment>

[1/3] Reviewing netbird-server.service, PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata file, no security concerns.
LLM auditresponse for netbird-server.service:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard systemd service file for the Netbird server. It defines the service unit (ExecStart, restart behavior, directory management) and applies a thorough set of security sandboxing directives (e.g., `NoNewPrivileges`, `ProtectSystem`, `PrivateTmp`, etc.). There is no embedded code, no network requests, no data exfiltration, no obfuscation, and no deviation from expected packaging conventions. The file is entirely benign and follows security best practices for service isolation.
</details>
<evidence></evidence>
<summary>Standard service file with no malicious content.</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed netbird-server.service. Status: SAFE -- Standard service file with no malicious content.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard AUR packaging practices: it fetches the upstream source from the official GitHub repository (netbirdio/netbird) with a pinned version and SHA-256 checksums. The build steps use Go&#39;s standard toolchain and install only the intended binaries, completions, systemd services, and configuration files. There are no hidden network requests, obfuscated code, dangerous commands (eval, base64, curl|bash), or unusual file operations that would indicate a supply-chain attack. The `go mod download` and `go build` commands are normal for Go-based packages. The file does not bypass its own source checks or fetch unverified content at build time. Overall, no malicious behavior is present.
</details>
<evidence>

</evidence>
<summary>Standard PKGBUILD; no malicious content found.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD; no malicious content found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 11,091
  Completion Tokens: 1,690
  Total Tokens: 12,781
  Total Cost: $0.000606
  Execution Time: 44.47 seconds

Final Status: SAFE


No issues found.
