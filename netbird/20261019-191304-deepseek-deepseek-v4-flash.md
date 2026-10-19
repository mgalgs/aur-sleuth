---
package: netbird
pkgver: 0.81.3
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 19377
completion_tokens: 5909
total_tokens: 25286
cost: 0.002838745
execution_time: 194.4
files_reviewed: 7
files_skipped: 0
maintainer_files: 7
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-19T19:13:03Z
file_verdicts:
  - file: LICENSE
    status: safe
    summary: Standard license file, no security issues.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata file, no malicious content found.
  - file: .nvchecker.toml
    status: safe
    summary: Simple version checker config, no malicious content.
  - file: LICENSE
    status: safe
    summary: Standard license file, no security concerns.
  - file: REUSE.toml
    status: safe
    summary: Static REUSE configuration file, no security concerns.
  - file: netbird-server.service
    status: safe
    summary: Standard service file, no malicious content detected.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD, pinned sources, no suspicious behavior.
---

Materializing netbird from local mirror...
Materialized netbird
Analyzing netbird AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only standard top-level variable assignments (pkgbase, pkgname, pkgver, url, arch, makedepends, source, sha256sums) and function definitions (prepare, build, check, package_netbird, package_netbird-server). Running `makepkg --printsrcinfo` sources the PKGBUILD, which would only evaluate these top-level assignments and function definitions. There are no top-level command substitutions, no `eval`, no `curl`/`wget`/`bash` downloads, no obfuscated code, and no exfiltration attempts that would execute during the `--printsrcinfo` step.

The build and package functions are not executed by `makepkg --printsrcinfo`; they will be audited separately. Their content is also consistent with ordinary Go project packaging (downloading Go modules during build, compiling, installing into $pkgdir), and no supply-chain red flags are apparent from a quick scan.
</details>
<evidence>
</evidence>
<summary>
No top-level malicious code; printsrcinfo sourcing is safe.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No top-level malicious code; printsrcinfo sourcing is safe.
Reviewing the 7 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/7] Reviewing .SRCINFO...
[0/7] Reviewing .SRCINFO, .nvchecker.toml...
[0/7] Reviewing .SRCINFO, .nvchecker.toml, LICENSE...
LLM auditresponse for LICENSE:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard ISC license text. It contains no executable code, no commands, no network requests, and no obfuscation. As a plain-text license file, it poses no security risk.
</details>
<evidence>
</evidence>
<summary>Standard license file, no security issues.</summary>
</security_assessment>

[1/7] Reviewing .SRCINFO, .nvchecker.toml...
+ Reviewed LICENSE. Status: SAFE -- Standard license file, no security issues.
[1/7] Reviewing .SRCINFO, .nvchecker.toml, LICENSE...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This .SRCINFO file is a metadata manifest for the AUR package `netbird`. It declares two subpackages (`netbird` and `netbird-server`), specifies standard dependencies, and lists two sources: an upstream release tarball from `github.com/netbirdio/netbird` and a systemd service file. Both sources have non-SKIP SHA256 checksums. There are no scripts, commands, or encoded content that could perform malicious actions. The file is a normal, well-formed package declaration with no security issues.
</details>
<evidence></evidence>
<summary>Standard AUR metadata file, no malicious content found.</summary>
</security_assessment>

[1/7] Reviewing .SRCINFO, .nvchecker.toml, LICENSE, PKGBUILD...
[2/7] Reviewing .nvchecker.toml, LICENSE, PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata file, no malicious content found.
LLM auditresponse for .nvchecker.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `.nvchecker.toml` is a configuration file for `nvchecker`, a tool that monitors upstream releases. It specifies the GitHub repository `netbirdio/netbird` and instructs the tool to use the latest release with a version prefix `v`. This is a standard and expected AUR packaging practice for automatically tracking upstream versions. There are no commands, scripts, or network operations defined beyond the configuration of the version check source. No obfuscation, dangerous functions, or suspicious network destinations are present. The file poses no supply-chain risk.
</details>
<evidence>
</evidence>
<summary>Simple version checker config, no malicious content.</summary>
</security_assessment>

[3/7] Reviewing LICENSE, PKGBUILD...
+ Reviewed .nvchecker.toml. Status: SAFE -- Simple version checker config, no malicious content.
[3/7] Reviewing LICENSE, PKGBUILD, REUSE.toml...
LLM auditresponse for LICENSE:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard ISC (Internet Systems Consortium) license file. It contains no executable code, no network requests, no obfuscation, and no system modifications. It is a plain text license commonly found in software packages. No security issues are present.
</details>
<evidence>
</evidence>
<summary>Standard license file, no security concerns.</summary>
</security_assessment>

[3/7] Reviewing LICENSE, PKGBUILD, REUSE.toml, netbird-server.service...
[4/7] Reviewing PKGBUILD, REUSE.toml, netbird-server.service...
+ Reviewed LICENSE. Status: SAFE -- Standard license file, no security concerns.
LLM auditresponse for REUSE.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a `REUSE.toml` configuration for the REUSE tool, which standardizes copyright and license annotations. It only declares path patterns and associated SPDX fields (`SPDX-FileCopyrightText` and `SPDX-License-Identifier`). There are no executable commands, network requests, obfuscation, or any operations that could be considered malicious. This is a standard metadata file with no security implications.
</details>
<evidence></evidence>
<summary>Static REUSE configuration file, no security concerns.</summary>
</security_assessment>

[5/7] Reviewing PKGBUILD, netbird-server.service...
+ Reviewed REUSE.toml. Status: SAFE -- Static REUSE configuration file, no security concerns.
LLM auditresponse for netbird-server.service:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard systemd service unit for the Netbird combined server. It defines the service to start the `/usr/bin/netbird-server` binary with a configuration file, sets restart behavior, and applies extensive sandboxing options (e.g., `ProtectSystem=yes`, `NoNewPrivileges=yes`, `PrivateTmp=yes`, `ProtectHome=yes`, etc.). There is no evidence of any malicious code: no network requests, no obfuscated commands, no unexpected file operations, and no deviations from standard packaging practices for a systemd service. The sandboxing flags are a positive security measure, not a threat.
</details>
<evidence></evidence>
<summary>Standard service file, no malicious content detected.</summary>
</security_assessment>

[6/7] Reviewing PKGBUILD...
+ Reviewed netbird-server.service. Status: SAFE -- Standard service file, no malicious content detected.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD uses standard Arch packaging practices for a Go project. The sources are tarballs pinned to specific versions with SHA-256 checksums, ensuring integrity. The build process runs `go build` and shell completion generation, which are normal for a Go application. There are no network requests outside of the specified source URLs, no obfuscated code, no `eval`, `curl`, or `wget` calls, and no unexpected file operations. The `go mod download -x` command in `prepare()` is not a standard Go subcommand and is likely a custom build step expected by the upstream project; it does not introduce any externally controlled downloads or execution in the PKGBUILD itself. The package functions install binaries, service files, and configuration into the expected locations without modifying system configuration or exfiltrating data.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD, pinned sources, no suspicious behavior.</summary>
</security_assessment>

[7/7] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD, pinned sources, no suspicious behavior.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 19,377
  Completion Tokens: 5,909
  Total Tokens: 25,286
  Total Cost: $0.002839
  Execution Time: 194.40 seconds

Final Status: SAFE


No issues found.
