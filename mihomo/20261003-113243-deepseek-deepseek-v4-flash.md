---
package: mihomo
pkgver: 1.19.32
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 24163
completion_tokens: 2439
total_tokens: 26602
cost: 0.000813148
execution_time: 34.89
files_reviewed: 7
files_skipped: 0
maintainer_files: 7
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-03T11:32:41Z
file_verdicts:
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD with no malicious indicators.
  - file: config.yaml
    status: safe
    summary: Standard proxy config, no malicious indicators.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR package metadata, no security concerns.
  - file: mihomo.sysusers
    status: safe
    summary: Standard sysusers config, no malicious content.
  - file: mihomo.service
    status: safe
    summary: Standard service file, no security issues.
  - file: mihomo.tmpfiles
    status: safe
    summary: Benign tmpfiles config for service directories.
  - file: "mihomo@.service"
    status: safe
    summary: Standard systemd service file, no malicious content.
---

Materializing mihomo from local mirror...
Materialized mihomo
Analyzing mihomo AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only static variable assignments in its global scope. There are no command substitutions, function calls, eval statements, or any executable code that would run when the file is sourced. All operations that involve downloading, building, or installing are contained within `build()` and `package()` functions, which are **not** executed by `makepkg --printsrcinfo`. Therefore, running this command is safe.
</details>
<evidence></evidence>
<summary>Only static variable definitions; no executable top-level code.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Only static variable definitions; no executable top-level code.
Reviewing the 7 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/7] Reviewing .SRCINFO...
[0/7] Reviewing .SRCINFO, PKGBUILD...
[0/7] Reviewing .SRCINFO, PKGBUILD, config.yaml...
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard AUR packaging practices. It fetches the source from the official GitHub release tarball with a provided sha256sum, builds with Go, and installs binaries and configuration files. There are no obfuscated commands, no unexpected network requests, no execution of untrusted downloaded code, and no exfiltration of local data. The symlinks to clash-geoip files and the clash-meta compatibility symlink are normal for a package that replaces/replaces those packages. The build uses `-mod=readonly` and `-modcacherw` with `-trimpath`, which are reasonable. No evidence of supply-chain attack or malicious behavior.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD with no malicious indicators.</summary>
</security_assessment>

[0/7] Reviewing .SRCINFO, PKGBUILD, config.yaml, mihomo.service...
[1/7] Reviewing .SRCINFO, config.yaml, mihomo.service...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD with no malicious indicators.
LLM auditresponse for config.yaml:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard configuration file for the mihomo (Clash Meta) proxy client. It defines local ports, DNS settings, proxy server entries, proxy groups, providers, and routing rules. All URLs referenced (e.g., `http://www.gstatic.com/generate_204` for latency checks, `https://raw.githubusercontent.com/../Google.yaml` for rule providers, `https://abc.com/xhYdgd` for proxy subscriptions) are typical for proxy configuration—they fetch the application's own rule sets or perform health checks. No code execution occurs; the file is purely declarative YAML. There are no suspicious commands, encoded payloads, exfiltration attempts, or system modifications. The configuration follows normal AUR packaging practices for a network proxy application.
</details>
<evidence></evidence>
<summary>Standard proxy config, no malicious indicators.</summary>
</security_assessment>

[1/7] Reviewing .SRCINFO, config.yaml, mihomo.service, mihomo.sysusers...
[2/7] Reviewing .SRCINFO, mihomo.service, mihomo.sysusers...
+ Reviewed config.yaml. Status: SAFE -- Standard proxy config, no malicious indicators.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The .SRCINFO file is a metadata file for the Arch User Repository package `mihomo`. It declares the package name, version, dependencies, and source files. All source URLs point to the official GitHub repository of the project (https://github.com/MetaCubeX/mihomo). The file includes SHA256 checksums for every source entry (none are SKIP). There are no executable commands, network requests, obfuscated data, or any evidence of malicious behavior. The content is consistent with normal, trustworthy AUR packaging practices.
</details>
<evidence></evidence>
<summary>Standard AUR package metadata, no security concerns.</summary>
</security_assessment>

[3/7] Reviewing mihomo.service, mihomo.sysusers...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR package metadata, no security concerns.
[3/7] Reviewing mihomo.service, mihomo.sysusers, mihomo.tmpfiles...
LLM auditresponse for mihomo.sysusers:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard sysusers.d configuration file for systemd. It creates a system user named "mihomo" with default settings. There are no network requests, obfuscated code, file operations, or any other malicious behavior. It follows normal packaging practices for services that require a dedicated system user.</details>
<evidence></evidence>
<summary>Standard sysusers config, no malicious content.</summary>
</security_assessment>

[4/7] Reviewing mihomo.service, mihomo.tmpfiles...
+ Reviewed mihomo.sysusers. Status: SAFE -- Standard sysusers config, no malicious content.
[4/7] Reviewing mihomo.service, mihomo.tmpfiles, mihomo@.service...
LLM auditresponse for mihomo.service:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard systemd service unit for the Mihomo daemon. It defines a simple service that runs `/usr/bin/mihomo` with a configuration directory. The capabilities (`CAP_NET_ADMIN`, `CAP_NET_RAW`, `CAP_NET_BIND_SERVICE`) are appropriate for a networking daemon that likely needs to manage network interfaces and connections. There are no suspicious commands, no obfuscation, no network requests, and no deviation from normal packaging practices. The file contains only configuration and does not introduce any supply chain attack vector.
</details>
<evidence></evidence>
<summary>Standard service file, no security issues.</summary>
</security_assessment>

[5/7] Reviewing mihomo.tmpfiles, mihomo@.service...
+ Reviewed mihomo.service. Status: SAFE -- Standard service file, no security issues.
LLM auditresponse for mihomo.tmpfiles:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard systemd-tmpfiles configuration file that creates two directories with specific permissions and ownership. The first line creates /etc/mihomo (mode 0755, owned by mihomo:mihomo) for configuration files. The second line creates /var/log/mihomo (mode 0700, owned by mihomo:mihomo) for log storage. There are no executable commands, network operations, encoded payloads, or any other indicators of malicious activity. The file performs exactly the expected function for a service runtime directory setup.
</details>
<evidence>

</evidence>
<summary>Benign tmpfiles config for service directories.</summary>
</security_assessment>

[6/7] Reviewing mihomo@.service...
+ Reviewed mihomo.tmpfiles. Status: SAFE -- Benign tmpfiles config for service directories.
LLM auditresponse for mihomo@.service:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard systemd service template for running the mihomo application as a specified user. It contains no obfuscation, network requests, file manipulations, or any other suspicious operations. The capabilities granted (`CAP_NET_ADMIN`, `CAP_NET_RAW`, `CAP_NET_BIND_SERVICE`) are appropriate for a networking proxy/VPN application and are explicitly documented in the package's intended use case. The service simply executes `/usr/bin/mihomo` with standard systemd options. No evidence of supply-chain compromise or malicious code injection.
</details>
<evidence></evidence>
<summary>Standard systemd service file, no malicious content.</summary>
</security_assessment>

[7/7] Reviewing ...
+ Reviewed mihomo@.service. Status: SAFE -- Standard systemd service file, no malicious content.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 24,163
  Completion Tokens: 2,439
  Total Tokens: 26,602
  Total Cost: $0.000813
  Execution Time: 34.89 seconds

Final Status: SAFE


No issues found.
