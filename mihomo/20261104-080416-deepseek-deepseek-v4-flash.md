---
package: mihomo
pkgver: 1.19.33
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 24786
completion_tokens: 6695
total_tokens: 31481
cost: 0.003474016
execution_time: 40.43
files_reviewed: 7
files_skipped: 0
maintainer_files: 7
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-11-04T08:04:15Z
file_verdicts:
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD with pinned sources and no suspicious behavior.
  - file: mihomo.service
    status: safe
    summary: Standard systemd service file with no malicious content.
  - file: mihomo.sysusers
    status: safe
    summary: Standard sysusers file for daemon user.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata file, no malicious behavior found.
  - file: config.yaml
    status: safe
    summary: Static config file, no executable or malicious content.
  - file: "mihomo@.service"
    status: safe
    summary: Standard systemd service, no security issues.
  - file: mihomo.tmpfiles
    status: safe
    summary: Standard tmpfiles config, no security concerns.
---

Materializing mihomo from local mirror...
Materialized mihomo
Analyzing mihomo AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
Running `makepkg --printsrcinfo` only sources the global/top-level scope of this PKGBUILD. The top-level content consists solely of standard package metadata definitions: `pkgname`, `pkgver`, `pkgrel`, `pkgdesc`, `arch`, `url`, `license`, dependencies, `source`, and `sha256sums`. There are no top-level command substitutions, function calls, downloads, eval-like constructs, or file-manipulation statements that would execute during sourcing. The `build()` and `package()` functions contain normal Go build/install commands, but they are not executed by `makepkg --printsrcinfo`.

This gate therefore poses no execution risk beyond normal PKGBUILD sourcing.
</details>
<evidence>
</evidence>
<summary>
Top-level metadata only; no malicious code executes during printsrcinfo.
</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Top-level metadata only; no malicious code executes during printsrcinfo.
Reviewing the 7 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/7] Reviewing PKGBUILD...
[0/7] Reviewing PKGBUILD, .SRCINFO...
[0/7] Reviewing PKGBUILD, .SRCINFO, config.yaml...
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a standard, well-maintained build file for the mihomo package (MetaCubeX fork of Clash.Meta). The source tarball is fetched from the project&#39;s official GitHub releases with a pinned version tag (v1.19.33). All six source files have explicit SHA256 checksums. The build function uses a straightforward `go build` invocation with standard Go compiler flags to produce a binary. The package function installs the compiled binary, configuration files, systemd service units, sysusers config, and tmpfiles config into the expected system directories, then creates a compatibility symlink (`clash-meta` → `mihomo`). There are no network requests, obfuscated code, eval/injection patterns, or file operations outside the package&#39;s legitimate scope. No evidence of a supply-chain attack.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD with pinned sources and no suspicious behavior.</summary>
</security_assessment>

[1/7] Reviewing .SRCINFO, config.yaml...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD with pinned sources and no suspicious behavior.
[1/7] Reviewing .SRCINFO, config.yaml, mihomo.service...
LLM auditresponse for mihomo.service:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `mihomo.service` is a standard systemd service unit file for the Mihomo daemon. It defines a service that runs `/usr/bin/mihomo` as user and group `mihomo`, with appropriate capability bounding (CAP_NET_ADMIN, CAP_NET_RAW, CAP_NET_BIND_SERVICE) for a proxy application. It does not contain any commands that fetch or execute code from external sources, perform obfuscated operations, exfiltrate data, or modify system files outside its scope. The service restarts automatically and is enabled for multi-user boot targets. There is no evidence of injected malicious code or supply chain attack indicators.
</details>
<evidence></evidence>
<summary>Standard systemd service file with no malicious content.</summary>
</security_assessment>

[1/7] Reviewing .SRCINFO, config.yaml, mihomo.service, mihomo.sysusers...
[2/7] Reviewing .SRCINFO, config.yaml, mihomo.sysusers...
+ Reviewed mihomo.service. Status: SAFE -- Standard systemd service file with no malicious content.
LLM auditresponse for mihomo.sysusers:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a systemd-sysusers configuration snippet that creates a system user named &quot;mihomo&quot; with default UID/GID assignment. This is a standard and expected practice for daemon packages that need a dedicated system user for privilege separation. No malicious behavior is present.
</details>
<evidence>

</evidence>
<summary>Standard sysusers file for daemon user.</summary>
</security_assessment>

[3/7] Reviewing .SRCINFO, config.yaml...
+ Reviewed mihomo.sysusers. Status: SAFE -- Standard sysusers file for daemon user.
[3/7] Reviewing .SRCINFO, config.yaml, mihomo.tmpfiles...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This file (`.SRCINFO`) is a declarative metadata file generated by AUR helpers. It contains no executable code, no network request logic, no obfuscated content, and no file manipulation commands. The `source` array points to the package's official upstream repository on GitHub and is pinned to a specific release tag (`v1.19.33`). SHA256 checksums are provided for every source file, which is a strong integrity practice. All dependencies, provides, and system files (`mihomo.service`, `mihomo.sysusers`, etc.) are entirely standard for a daemon package like this. No evidence of genuinely malicious behavior (exfiltration, backdoors, unexpected execution of untrusted code, or system tampering) exists in this file.
</details>
<evidence>
</evidence>
<summary>Standard AUR metadata file, no malicious behavior found.</summary>
</security_assessment>

[3/7] Reviewing .SRCINFO, config.yaml, mihomo.tmpfiles, mihomo@.service...
[4/7] Reviewing config.yaml, mihomo.tmpfiles, mihomo@.service...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata file, no malicious behavior found.
LLM auditresponse for config.yaml:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a YAML configuration for the Clash/Meta proxy application. It defines proxy server entries, proxy groups, DNS settings, rules, and provider URLs — all standard configuration data for a proxy tool. There are no executable commands, obfuscated code, network requests hidden within the file (the URLs shown are example placeholders that would be used by the application itself at runtime), or any system modification directives. The file is purely declarative and follows the expected structure for the application's configuration. No evidence of supply-chain injection or malicious intent is present.
</details>
<evidence></evidence>
<summary>Static config file, no executable or malicious content.</summary>
</security_assessment>

[5/7] Reviewing mihomo.tmpfiles, mihomo@.service...
+ Reviewed config.yaml. Status: SAFE -- Static config file, no executable or malicious content.
LLM auditresponse for mihomo@.service:
<security_assessment>
<decision>SAFE</decision>
<details>
The service unit is a standard template for running the Mihomo daemon per user. It sets appropriate process capabilities for network operations (CAP_NET_ADMIN, CAP_NET_RAW, CAP_NET_BIND_SERVICE), which are expected for a proxy/VPN application. There are no network requests, file downloads, obfuscated code, or other suspicious activities. All directives are typical for a systemd service file packaging a daemon. No security issues found.
</details>
<evidence>
</evidence>
<summary>Standard systemd service, no security issues.</summary>
</security_assessment>

[6/7] Reviewing mihomo.tmpfiles...
+ Reviewed mihomo@.service. Status: SAFE -- Standard systemd service, no security issues.
LLM auditresponse for mihomo.tmpfiles:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a systemd tmpfiles configuration snippet intended to create directories needed by the mihomo application. It uses the standard `d` directive to create `/etc/mihomo` (with world-readable permissions 0755) and `/var/log/mihomo` (with restricted permissions 0700) under the ownership of the mihomo user and group. There is no executable code, no network access, no obfuscation, and no reference to any external resources. The configuration is typical for packages that require dedicated runtime or log directories.
</details>
<evidence></evidence>
<summary>Standard tmpfiles config, no security concerns.</summary>
</security_assessment>

[7/7] Reviewing ...
+ Reviewed mihomo.tmpfiles. Status: SAFE -- Standard tmpfiles config, no security concerns.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 24,786
  Completion Tokens: 6,695
  Total Tokens: 31,481
  Total Cost: $0.003474
  Execution Time: 40.43 seconds

Final Status: SAFE


No issues found.
