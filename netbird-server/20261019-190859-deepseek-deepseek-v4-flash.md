---
package: netbird-server
pkgbase: netbird
pkgver: 0.81.3
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 19227
completion_tokens: 2084
total_tokens: 21311
cost: 0.002128945
execution_time: 52.98
files_reviewed: 7
files_skipped: 0
maintainer_files: 7
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-19T19:08:59Z
file_verdicts:
  - file: LICENSE
    status: safe
    summary: Standard license file, no security issues.
  - file: .nvchecker.toml
    status: safe
    summary: Standard nvchecker config for upstream version checking.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata with no malicious content.
  - file: LICENSE
    status: safe
    summary: Standard license file, no security issues.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD, no malicious behavior detected.
  - file: REUSE.toml
    status: safe
    summary: Standard REUSE compliance metadata, no security concerns.
  - file: netbird-server.service
    status: safe
    summary: Standard systemd service unit, no malicious content.
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
The PKGBUILD contains only static variable assignments and function definitions in its top-level scope. No command substitutions, backticks, or other executable constructs are present at the top level that would run during `makepkg --printsrcinfo`. The `source` array, `sha256sums`, `pkgname`, and other variables are assigned literals. The `prepare()`, `build()`, `check()`, and `package_*()` functions are defined but not executed during sourcing. Therefore, running `makepkg --printsrcinfo` on this file is not dangerous.
</details>
<evidence></evidence>
<summary>Safe to parse, no top-level execution.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Safe to parse, no top-level execution.
Reviewing the 7 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/7] Reviewing .SRCINFO...
[0/7] Reviewing .SRCINFO, .nvchecker.toml...
[0/7] Reviewing .SRCINFO, .nvchecker.toml, LICENSE...
LLM auditresponse for LICENSE:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard ISC license text commonly used in Arch Linux packaging. It contains no executable code, no commands, no network requests, and no obfuscated content. It is purely a legal notice and poses no security risk.
</details>
<evidence></evidence>
<summary>Standard license file, no security issues.</summary>
</security_assessment>

[0/7] Reviewing .SRCINFO, .nvchecker.toml, LICENSE, LICENSE...
[1/7] Reviewing .SRCINFO, .nvchecker.toml, LICENSE...
+ Reviewed LICENSE. Status: SAFE -- Standard license file, no security issues.
LLM auditresponse for .nvchecker.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a configuration file for `nvchecker`, a tool used to automatically check for new upstream releases. It specifies that the package "netbird" should check the GitHub repository "netbirdio/netbird" for releases prefixed with "v" and use the latest release. This is a standard and expected practice for maintaining an AUR package. There is no code execution, no network requests outside of the declared upstream, and no obfuscation or malicious intent. The file is benign.
</details>
<evidence></evidence>
<summary>Standard nvchecker config for upstream version checking.</summary>
</security_assessment>

[1/7] Reviewing .SRCINFO, .nvchecker.toml, LICENSE, PKGBUILD...
[2/7] Reviewing .SRCINFO, LICENSE, PKGBUILD...
+ Reviewed .nvchecker.toml. Status: SAFE -- Standard nvchecker config for upstream version checking.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard `.SRCINFO` metadata file for the `netbird-server` AUR package. It declares the upstream source as a tarball from the official GitHub repository (`https://github.com/netbirdio/netbird/archive/refs/tags/v0.81.3.tar.gz`) and a systemd service file, both with pinned SHA-256 checksums. No obfuscated code, dangerous commands, or unexpected network requests are present. The file only contains package metadata (version, dependencies, licenses, sources) and contains no executable logic. There is no evidence of malicious activity.
</details>
<evidence></evidence>
<summary>Standard AUR metadata with no malicious content.</summary>
</security_assessment>

[3/7] Reviewing LICENSE, PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata with no malicious content.
[3/7] Reviewing LICENSE, PKGBUILD, REUSE.toml...
LLM auditresponse for LICENSE:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard software license (ISC-style). It contains no executable code, no network requests, no obfuscation, and no system modifications. It is purely a legal text file and poses no security risk.
</details>
<evidence></evidence>
<summary>Standard license file, no security issues.</summary>
</security_assessment>

[3/7] Reviewing LICENSE, PKGBUILD, REUSE.toml, netbird-server.service...
[4/7] Reviewing PKGBUILD, REUSE.toml, netbird-server.service...
+ Reviewed LICENSE. Status: SAFE -- Standard license file, no security issues.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard AUR packaging practices for a Go-based application. The source is downloaded from the official GitHub repository with a pinned version tag and a valid SHA-256 checksum (not SKIP). The build process uses `go build` with standard flags and does not execute any untrusted code or make unexpected network requests. The install steps place binaries, configuration files, and systemd units into standard locations. No obfuscation, dangerous commands, or exfiltration attempts are present. The file is a clean, well-structured package definition.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD, no malicious behavior detected.</summary>
</security_assessment>

[5/7] Reviewing REUSE.toml, netbird-server.service...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD, no malicious behavior detected.
LLM auditresponse for REUSE.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a REUSE configuration file used to declare copyright and licensing metadata for the repository. It contains only static TOML data listing file patterns and assigning them a copyright holder and license identifier (“0BSD”). There are no executable commands, no network requests, no file manipulation, no obfuscated code, and no content that deviates from standard packaging or compliance practices. It poses no security risk.
</details>
<evidence></evidence>
<summary>Standard REUSE compliance metadata, no security concerns.</summary>
</security_assessment>

[6/7] Reviewing netbird-server.service...
+ Reviewed REUSE.toml. Status: SAFE -- Standard REUSE compliance metadata, no security concerns.
LLM auditresponse for netbird-server.service:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard systemd service unit for the netbird-server application. It defines a service that launches `/usr/bin/netbird-server` with a configuration file and includes comprehensive sandboxing options (e.g., `ProtectHome=yes`, `NoNewPrivileges=yes`, `PrivateTmp=yes`). There are no network requests, code downloads, obfuscated commands, file exfiltration, or any other malicious or suspicious behavior. The content is consistent with normal packaging practices and contains only legitimate service configuration directives.
</details>
<evidence>
</evidence>
<summary>Standard systemd service unit, no malicious content.</summary>
</security_assessment>

[7/7] Reviewing ...
+ Reviewed netbird-server.service. Status: SAFE -- Standard systemd service unit, no malicious content.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 19,227
  Completion Tokens: 2,084
  Total Tokens: 21,311
  Total Cost: $0.002129
  Execution Time: 52.98 seconds

Final Status: SAFE


No issues found.
