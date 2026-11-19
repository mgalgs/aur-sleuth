---
package: netbird-server
pkgbase: netbird
pkgver: 0.83.0
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 3f8f339d2184315a824bf6b8e30068212deac13a
prompt_tokens: 19476
completion_tokens: 5237
total_tokens: 24713
cost: 0.00269550
execution_time: 51.8
files_reviewed: 7
files_skipped: 0
maintainer_files: 7
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-11-12T20:14:51Z
file_verdicts:
  - file: LICENSE
    status: safe
    summary: Standard license file, no security issues.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata file with no malicious content.
  - file: .nvchecker.toml
    status: safe
    summary: Standard nvchecker config; no security issues.
  - file: LICENSE
    status: safe
    summary: Standard license file, no security concerns.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD with no malicious behavior detected.
  - file: REUSE.toml
    status: safe
    summary: Static license metadata config, no security concerns.
  - file: netbird-server.service
    status: safe
    summary: Benign systemd service file with robust security sandboxing.
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
The PKGBUILD only contains variable definitions and function definitions at the top level. No commands are executed during sourcing that would download, exfiltrate data, or run untrusted code. All potentially dangerous operations are inside `prepare()`, `build()`, `check()`, and `package*()` functions, which are not invoked by `makepkg --printsrcinfo`. The `source` array and `sha256sums` are static string assignments with no embedded command substitution. There is no evals, backticks, or inline commands in the global scope.
</details>
<evidence>

</evidence>
<summary>No top-level executable code, sourcing is safe.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No top-level executable code, sourcing is safe.
Reviewing the 7 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/7] Reviewing .SRCINFO...
[0/7] Reviewing .SRCINFO, .nvchecker.toml...
[0/7] Reviewing .SRCINFO, .nvchecker.toml, LICENSE...
LLM auditresponse for LICENSE:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard ISC license text, identical to the one commonly used by Arch Linux contributors. It contains no executable code, no network requests, no obfuscated content, and no instructions. There is no evidence of any malicious behavior or supply-chain attack. The file is purely informational.
</details>
<evidence></evidence>
<summary>Standard license file, no security issues.</summary>
</security_assessment>

[0/7] Reviewing .SRCINFO, .nvchecker.toml, LICENSE, LICENSE...
[1/7] Reviewing .SRCINFO, .nvchecker.toml, LICENSE...
+ Reviewed LICENSE. Status: SAFE -- Standard license file, no security issues.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The `.SRCINFO` file is a metadata descriptor for the AUR package. It contains only package metadata: name, version, dependencies, license, and source URLs with their SHA-256 checksums. The sources point to the official GitHub repository of the Netbird project. No executable code, obfuscation, network requests, or file operations are present. There are no signs of malicious activity. The checksums are provided (not `SKIP`), which is a good hygiene practice. This file is safe.
</details>
<evidence></evidence>
<summary>Standard AUR metadata file with no malicious content.</summary>
</security_assessment>

[2/7] Reviewing .nvchecker.toml, LICENSE...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata file with no malicious content.
[2/7] Reviewing .nvchecker.toml, LICENSE, PKGBUILD...
LLM auditresponse for .nvchecker.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard configuration for the `nvchecker` tool, which automates version checks for upstream releases. It instructs nvchecker to track the GitHub repository `netbirdio/netbird` using the latest release as the version source, with a version prefix of `v`. There is no obfuscation, no dangerous commands, and no network requests embedded directly in the file. The content is purely declarative and consistent with normal AUR maintenance practices.
</details>
<evidence></evidence>
<summary>Standard nvchecker config; no security issues.</summary>
</security_assessment>

[3/7] Reviewing LICENSE, PKGBUILD...
+ Reviewed .nvchecker.toml. Status: SAFE -- Standard nvchecker config; no security issues.
[3/7] Reviewing LICENSE, PKGBUILD, REUSE.toml...
LLM auditresponse for LICENSE:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard permissive software license (ISC-style). It contains no executable code, no network operations, no file manipulation, and no instructions. There is no evidence of malicious content or supply-chain attack indicators. The file is exactly what it claims to be: a license file for the package.
</details>
<evidence>
</evidence>
<summary>Standard license file, no security concerns.</summary>
</security_assessment>

[4/7] Reviewing PKGBUILD, REUSE.toml...
+ Reviewed LICENSE. Status: SAFE -- Standard license file, no security concerns.
[4/7] Reviewing PKGBUILD, REUSE.toml, netbird-server.service...
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard Arch Linux packaging practices for a Go-based project. The source is fetched from the official Netbird GitHub repository with a pinned version tag and a valid SHA256 checksum. The build and install steps use standard Go tooling and install files to expected locations. There are no obfuscated commands, no unexpected network requests (other than the declared source archive download via `makepkg`), and no attempts to exfiltrate data or execute untrusted code. The use of `go mod download -x` is normal for resolving Go module dependencies from the upstream module proxy. No evidence of a supply-chain attack or malicious behavior is present.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD with no malicious behavior detected.</summary>
</security_assessment>

[5/7] Reviewing REUSE.toml, netbird-server.service...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD with no malicious behavior detected.
LLM auditresponse for REUSE.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard REUSE software license compliance configuration. It is purely declarative metadata (a TOML file) that maps file paths to their SPDX copyright and license identifiers for the purpose of automated license auditing. It contains no executable code, no system commands, no network requests, no obfuscated strings, and no logic of any kind. There are no security issues or indications of a supply-chain attack present in this file.
</details>
<evidence>
</evidence>
<summary>Static license metadata config, no security concerns.</summary>
</security_assessment>

[6/7] Reviewing netbird-server.service...
+ Reviewed REUSE.toml. Status: SAFE -- Static license metadata config, no security concerns.
LLM auditresponse for netbird-server.service:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a systemd service unit for the netbird-server daemon. It contains no malicious code. The `ExecStart` directive runs the standard binary from a legitimate path (`/usr/bin/netbird-server`) with a configuration file from a standard location. The service unit includes a comprehensive set of systemd security hardening directives (sandboxing) such as `ProtectSystem=yes`, `ProtectHome=yes`, `NoNewPrivileges=yes`, and `MemoryDenyWriteExecute=yes`. These directives are considered security best practices and are the opposite of indicators of malicious intent; they restrict the service to minimize the impact of potential vulnerabilities. There is no evidence of obfuscation, data exfiltration, code execution from untrusted sources, or any behavior that deviates from standard packaging practices.
</details>
<evidence></evidence>
<summary>Benign systemd service file with robust security sandboxing.</summary>
</security_assessment>

[7/7] Reviewing ...
+ Reviewed netbird-server.service. Status: SAFE -- Benign systemd service file with robust security sandboxing.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 19,476
  Completion Tokens: 5,237
  Total Tokens: 24,713
  Total Cost: $0.002696
  Execution Time: 51.80 seconds

Final Status: SAFE


No issues found.
