---
package: netbird-server
pkgbase: netbird
pkgver: 0.81.5
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 19865
completion_tokens: 4983
total_tokens: 24848
cost: 0.002714621
execution_time: 90.15
files_reviewed: 7
files_skipped: 0
maintainer_files: 7
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-26T23:08:11Z
file_verdicts:
  - file: LICENSE
    status: safe
    summary: License file only; no executable or malicious content found.
  - file: .nvchecker.toml
    status: safe
    summary: Standard nvchecker config for upstream version checking.
  - file: LICENSE
    status: safe
    summary: Standard license text, no security issues.
  - file: REUSE.toml
    status: safe
    summary: Static REUSE metadata file, no executable content.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD, no signs of malicious content.
  - file: .SRCINFO
    status: safe
    summary: Standard metadata file, no malicious content.
  - file: netbird-server.service
    status: safe
    summary: Standard systemd service file with strict sandboxing.
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
The PKGBUILD consists entirely of variable assignments and function definitions at the top level. No command substitutions, backticks, `eval`, or other dangerous constructs appear in the global scope. The `source` array specifies a URL string but does not execute any download or command. The `sha256sums` are plain quoted strings. While the `prepare()` and `build()` functions contain commands that will be audited later, they are not invoked by `makepkg --printsrcinfo`, so they are out of scope for this gate. There is no risk of executing malicious code during this parsing step.
</details>
<evidence>
</evidence>
<summary>No dangerous top-level code in PKGBUILD.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous top-level code in PKGBUILD.
Reviewing the 7 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/7] Reviewing .SRCINFO...
[0/7] Reviewing .SRCINFO, .nvchecker.toml...
[0/7] Reviewing .SRCINFO, .nvchecker.toml, LICENSE...
LLM auditresponse for LICENSE:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a plain MIT/ISC-style software license text attributed to "Arch Linux Contributors". It contains no executable code, no network requests, no file operations, no obfuscated content, and no instructions. It is a standard software license and poses no security risk.
</details>
<evidence>
</evidence>
<summary>
License file only; no executable or malicious content found.</summary>
</security_assessment>

[0/7] Reviewing .SRCINFO, .nvchecker.toml, LICENSE, LICENSE...
[1/7] Reviewing .SRCINFO, .nvchecker.toml, LICENSE...
+ Reviewed LICENSE. Status: SAFE -- License file only; no executable or malicious content found.
LLM auditresponse for .nvchecker.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a TOML configuration file for the nvchecker tool, which is commonly used in AUR packaging to automate version checks against upstream releases. It simply declares that the "netbird" package should look for new versions on GitHub at the repository "netbirdio/netbird", using releases with a "v" prefix. There are no commands, network requests, obfuscation, or file operations — it is a purely declarative configuration for an external tool. No security issues are present.
</details>
<evidence>
</evidence>
<summary>Standard nvchecker config for upstream version checking.</summary>
</security_assessment>

[1/7] Reviewing .SRCINFO, .nvchecker.toml, LICENSE, PKGBUILD...
[2/7] Reviewing .SRCINFO, LICENSE, PKGBUILD...
+ Reviewed .nvchecker.toml. Status: SAFE -- Standard nvchecker config for upstream version checking.
LLM auditresponse for LICENSE:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a LICENSE file containing a standard permissive software license text (similar to ISC). It contains no executable code, no network requests, no obfuscation, no file operations, and no instructions of any kind. It is a simple text document that poses no security risk.
</details>
<evidence>
</evidence>
<summary>Standard license text, no security issues.</summary>
</security_assessment>

[3/7] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed LICENSE. Status: SAFE -- Standard license text, no security issues.
[3/7] Reviewing .SRCINFO, PKGBUILD, REUSE.toml...
LLM auditresponse for REUSE.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a REUSE.toml manifest — a metadata configuration file that complies with the REUSE specification for software license and copyright documentation. It simply lists file paths (PKGBUILD, README.md, *.service, *.install, etc.) and associates them with a copyright statement (&quot;Arch Linux contributors&quot;) and a license identifier (&quot;0BSD&quot;).  
The file contains no executable code, no network operations, no obfuscation, no system-modification logic, and no commands whatsoever. It is a static declarative configuration that carries zero risk of supply-chain injection.
</details>
<evidence></evidence>
<summary>Static REUSE metadata file, no executable content.</summary>
</security_assessment>

[3/7] Reviewing .SRCINFO, PKGBUILD, REUSE.toml, netbird-server.service...
[4/7] Reviewing .SRCINFO, PKGBUILD, netbird-server.service...
+ Reviewed REUSE.toml. Status: SAFE -- Static REUSE metadata file, no executable content.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard packaging practices: it downloads a source tarball from the project&#x27;s official GitHub release, verifies integrity with SHA256 checksums, builds with Go, and installs the resulting binaries, config files, and systemd units. All network destinations are from the project&#x27;s own repository, no additional downloads or unexpected commands are present. The unusual `go mod download -x` in the `prepare()` function is likely a typo (the `-x` flag is not a standard Go option); it does not introduce a security risk — it would simply cause a build failure. There is no evidence of obfuscated code, data exfiltration, backdoors, or any behavior that deviates from the package&#x27;s stated purpose. The file is safe.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD, no signs of malicious content.</summary>
</security_assessment>

[5/7] Reviewing .SRCINFO, netbird-server.service...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD, no signs of malicious content.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
.SRCINFO is a metadata file defining the package name, version, source URLs, and checksums. All sources point to the official upstream GitHub repository (netbirdio/netbird) and a local service file. No code execution, obfuscated strings, or suspicious network destinations are present. The file follows standard AUR packaging format.
</details>
<evidence></evidence>
<summary>Standard metadata file, no malicious content.</summary>
</security_assessment>

[6/7] Reviewing netbird-server.service...
+ Reviewed .SRCINFO. Status: SAFE -- Standard metadata file, no malicious content.
LLM auditresponse for netbird-server.service:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard systemd service unit for the netbird-server application. It does not perform any network requests, downloads, or system modifications outside of normal service startup. The `ExecStart` directive simply runs the main binary directly from `/usr/bin/`. The remaining directives are standard systemd options for process management and security sandboxing (e.g., `ProtectHome=yes`, `NoNewPrivileges=yes`, `PrivateTmp=yes`, `ProtectSystem=yes`). Implementing these sandboxing restrictions is a best practice for securing services and does not constitute malicious behavior.
</details>
<evidence></evidence>
<summary>Standard systemd service file with strict sandboxing.</summary>
</security_assessment>

[7/7] Reviewing ...
+ Reviewed netbird-server.service. Status: SAFE -- Standard systemd service file with strict sandboxing.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 19,865
  Completion Tokens: 4,983
  Total Tokens: 24,848
  Total Cost: $0.002715
  Execution Time: 90.15 seconds

Final Status: SAFE


No issues found.
