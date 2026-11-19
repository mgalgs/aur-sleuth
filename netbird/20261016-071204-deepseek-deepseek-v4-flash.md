---
package: netbird
pkgver: 0.81.1
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 19865
completion_tokens: 2088
total_tokens: 21953
cost: 0.002187731
execution_time: 54.15
files_reviewed: 7
files_skipped: 0
maintainer_files: 7
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-16T07:12:04Z
file_verdicts:
  - file: LICENSE
    status: safe
    summary: Plain license text; no executable or suspicious content. Safe.
  - file: .nvchecker.toml
    status: safe
    summary: Benign nvchecker config; checks upstream GitHub releases only. No security concerns.
  - file: LICENSE
    status: safe
    summary: Standard license file; no executable or malicious content present.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR package metadata; official upstream source, pinned checksums, no malicious content.
  - file: PKGBUILD
    status: safe
    summary: Standard Go AUR package; no malicious or suspicious behavior detected.
  - file: REUSE.toml
    status: safe
    summary: Standard REUSE licensing metadata file; no security issues found.
  - file: netbird-server.service
    status: safe
    summary: Standard systemd unit; no malicious behavior or supply-chain indicators.
---

Materializing netbird from local mirror...
Materialized netbird
Analyzing netbird AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only standard top-level variable definitions (pkgbase, pkgname, pkgver, url, arch, makedepends, source, sha256sums) and function definitions (prepare, build, check, package_*). Running `makepkg --printsrcinfo` sources the PKGBUILD, which evaluates only the global scope. There are no top-level command substitutions, network requests, file downloads, obfuscated code, or dangerous operations that would execute during sourcing. The `go mod download`, `go build`, completion generation, and file installation logic all reside inside functions that are not executed during `--printsrcinfo`, so they are out of scope for this gate.

The source URL points to the project’s own upstream GitHub release and checksums are pinned. Even if checksums were skipped, that would not affect this step since no sources are downloaded while printing SRCINFO. No evidence of injected malicious behavior was found.
</details>
<evidence>
</evidence>
<summary>
No top-level malicious code; printsrcinfo is safe to run.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No top-level malicious code; printsrcinfo is safe to run.
Reviewing the 7 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/7] Reviewing .nvchecker.toml...
[0/7] Reviewing .nvchecker.toml, .SRCINFO...
[0/7] Reviewing .nvchecker.toml, .SRCINFO, LICENSE...
LLM auditresponse for LICENSE:
<security_assessment>
<decision>SAFE</decision>
<details>
This file contains only the standard ISC-style license text used by Arch Linux contributors. There is no executable code, no network activity, no file operations, and no suspicious or obfuscated content. It is a plain license file included with the package and poses no security risk.
</details>
<evidence>
</evidence>
<summary>
Plain license text; no executable or suspicious content. Safe.</summary>
</security_assessment>

[1/7] Reviewing .nvchecker.toml, .SRCINFO...
+ Reviewed LICENSE. Status: SAFE -- Plain license text; no executable or suspicious content. Safe.
[1/7] Reviewing .nvchecker.toml, .SRCINFO, LICENSE...
LLM auditresponse for .nvchecker.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a configuration for `nvchecker`, a tool used to check for new upstream releases. It simply instructs nvchecker to query the official GitHub repository `netbirdio/netbird` and look at the latest release, applying a `v` prefix. There are no commands, network downloads outside the upstream source, file modifications, or obfuscated content. This is a standard, benign packaging helper configuration.
</details>
<evidence>
</evidence>
<summary>
Benign nvchecker config; checks upstream GitHub releases only. No security concerns.</summary>
</security_assessment>

[1/7] Reviewing .nvchecker.toml, .SRCINFO, LICENSE, PKGBUILD...
[2/7] Reviewing .SRCINFO, LICENSE, PKGBUILD...
+ Reviewed .nvchecker.toml. Status: SAFE -- Benign nvchecker config; checks upstream GitHub releases only. No security concerns.
LLM auditresponse for LICENSE:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard MIT/ISC-style license text attributed to Arch Linux Contributors. It grants permission to use, copy, modify, and distribute the software and contains only a warranty disclaimer. There is no executable code, no network operations, no file manipulation, and no obfuscation. It is an ordinary license file with no security concerns.
</details>
<evidence>

</evidence>
<summary>
Standard license file; no executable or malicious content present.</summary>
</security_assessment>

[2/7] Reviewing .SRCINFO, LICENSE, PKGBUILD, REUSE.toml...
[3/7] Reviewing .SRCINFO, PKGBUILD, REUSE.toml...
+ Reviewed LICENSE. Status: SAFE -- Standard license file; no executable or malicious content present.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This `.SRCINFO` file is a standard Arch Linux package metadata file. It declares the `netbird` package, its version, architectures, dependencies, sources, and checksums. The source tarball is fetched from the project's official GitHub repository (`github.com/netbirdio/netbird`), which matches the package's stated upstream. Both sources have pinned SHA-256 checksums, and no suspicious URLs, commands, or encoded payloads are present. There is no evidence of malicious behavior, obfuscation, or supply-chain tampering in this file.
</details>
<evidence>
</evidence>
<summary>
Standard AUR package metadata; official upstream source, pinned checksums, no malicious content.</summary>
</security_assessment>

[4/7] Reviewing PKGBUILD, REUSE.toml...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR package metadata; official upstream source, pinned checksums, no malicious content.
[4/7] Reviewing PKGBUILD, REUSE.toml, netbird-server.service...
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard Arch packaging practices for a Go project. It fetches the upstream source tarball from the official `github.com/netbirdio/netbird` repository with pinned version `0.81.1`, verifies it with a fixed SHA-256 checksum, and builds the client and server binaries using the upstream Go build system. No untrusted sources, obfuscated commands, suspicious network calls, or unexpected file operations are present.

The `prepare()` and `build()` functions only run `go mod download` and `go build` using upstream code, which is normal for Go packages. The package functions install binaries, license files, completion scripts, systemd units, and configuration examples into the package directory. The bundled systemd service and config file come from the package's declared upstream source and are installed as standard packaging artifacts. There is no evidence of injected malicious code or behavior outside the application's scope.
</details>
<evidence>
</evidence>
<summary>
Standard Go AUR package; no malicious or suspicious behavior detected.</summary>
</security_assessment>

[5/7] Reviewing REUSE.toml, netbird-server.service...
+ Reviewed PKGBUILD. Status: SAFE -- Standard Go AUR package; no malicious or suspicious behavior detected.
LLM auditresponse for REUSE.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a REUSE specification configuration (REUSE.toml) used to declare licensing and copyright metadata for files in a repository. It contains only a version number and an annotations table listing packaging-related files (PKGBUILD, README.md, .SRCINFO, install scripts, systemd units, etc.) with associated SPDX copyright and license identifiers.

There is no executable code, no obfuscation, no network access, no file modification logic, and no behavior outside standard packaging metadata. The content is consistent with an AUR package simply using the REUSE license-compliance tooling. No security issues are present.
</details>
<evidence>
</evidence>
<summary>
Standard REUSE licensing metadata file; no security issues found.</summary>
</security_assessment>

[6/7] Reviewing netbird-server.service...
+ Reviewed REUSE.toml. Status: SAFE -- Standard REUSE licensing metadata file; no security issues found.
LLM auditresponse for netbird-server.service:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard systemd service unit for the Netbird server. It launches the packaged `/usr/bin/netbird-server` binary with a config file under `/etc/netbird-server/config.yaml`, which is expected upstream application behavior. The service includes extensive systemd sandboxing options (NoNewPrivileges, ProtectSystem, ProtectHome, PrivateTmp, RestrictNamespaces, etc.) that reduce the service's attack surface.

There is no obfuscated code, no network download or execution of remote content, no file exfiltration, and no unexpected system modification. The service only starts the installed server binary and does not deviate from normal packaging practices. No security issues were found.
</details>
<evidence>
</evidence>
<summary>
Standard systemd unit; no malicious behavior or supply-chain indicators.</summary>
</security_assessment>

[7/7] Reviewing ...
+ Reviewed netbird-server.service. Status: SAFE -- Standard systemd unit; no malicious behavior or supply-chain indicators.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 19,865
  Completion Tokens: 2,088
  Total Tokens: 21,953
  Total Cost: $0.002188
  Execution Time: 54.15 seconds

Final Status: SAFE


No issues found.
