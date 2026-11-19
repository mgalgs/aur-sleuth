---
package: netbird-server
pkgbase: netbird
pkgver: 0.82.1
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 3f8f339d2184315a824bf6b8e30068212deac13a
prompt_tokens: 19393
completion_tokens: 2310
total_tokens: 21703
cost: 0.002185183
execution_time: 79.8
files_reviewed: 7
files_skipped: 0
maintainer_files: 7
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-11-10T16:08:54Z
file_verdicts:
  - file: LICENSE
    status: safe
    summary: Standard license file with no security concerns.
  - file: LICENSE
    status: safe
    summary: Standard license file, no malicious content.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata, no malicious content.
  - file: PKGBUILD
    status: safe
    summary: Standard Go PKGBUILD with verified upstream source.
  - file: .nvchecker.toml
    status: safe
    summary: Standard nvchecker config for netbird.
  - file: REUSE.toml
    status: safe
    summary: Standard REUSE configuration, no security concerns.
  - file: netbird-server.service
    status: safe
    summary: Standard hardened systemd unit; no malicious behavior found.
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
The PKGBUILD contains only standard variable definitions and function declarations at the global scope. No commands, command substitutions, or code execution occurs when sourcing the file. The `source` array, `sha256sums`, and other metadata are static. Functions like `prepare()`, `build()`, `check()`, `package_netbird()`, and `package_netbird-server()` are defined but not invoked during `makepkg --printsrcinfo`. There is no malicious top-level activity.
</details>
<evidence></evidence>
<summary>No dangerous top-level code found.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous top-level code found.
Reviewing the 7 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/7] Reviewing .SRCINFO...
[0/7] Reviewing .SRCINFO, .nvchecker.toml...
[0/7] Reviewing .SRCINFO, .nvchecker.toml, LICENSE...
LLM auditresponse for LICENSE:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a plain-text software license (ISC-style) commonly used for Arch Linux packaging scripts. It contains no executable code, no network requests, no file operations, and no obfuscation. It is a standard license declaration with no security implications.
</details>
<evidence></evidence>
<summary>Standard license file with no security concerns.</summary>
</security_assessment>

[1/7] Reviewing .SRCINFO, .nvchecker.toml...
+ Reviewed LICENSE. Status: SAFE -- Standard license file with no security concerns.
[1/7] Reviewing .SRCINFO, .nvchecker.toml, LICENSE...
LLM auditresponse for LICENSE:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard software license file (similar to the MIT license). It contains no executable code, no network requests, no obfuscation, and no system modifications. It is a harmless legal notice distributed with the package and poses no security risk.
</details>
<evidence></evidence>
<summary>Standard license file, no malicious content.</summary>
</security_assessment>

[1/7] Reviewing .SRCINFO, .nvchecker.toml, LICENSE, PKGBUILD...
[2/7] Reviewing .SRCINFO, .nvchecker.toml, PKGBUILD...
+ Reviewed LICENSE. Status: SAFE -- Standard license file, no malicious content.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The .SRCINFO file is a standard AUR metadata file that contains package information, source URLs, checksums, dependencies, and other declarations. The sources point to the official netbird GitHub repository with a pinned version tag (`v0.82.1`), and checksums are provided for both the tarball and the service file. There is no executable code, obfuscated commands, suspicious network requests, or any deviation from normal packaging practices. The file is entirely declarative and poses no security threat.
</details>
<evidence></evidence>
<summary>Standard AUR metadata, no malicious content.</summary>
</security_assessment>

[3/7] Reviewing .nvchecker.toml, PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata, no malicious content.
[3/7] Reviewing .nvchecker.toml, PKGBUILD, REUSE.toml...
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a standard Arch User Repository (AUR) package for NetBird, a WireGuard-based overlay network. It builds from a verified GitHub release tarball (checksum provided, not SKIP). The build process follows normal Go packaging practices: `go mod download` fetches upstream Go module dependencies, `go build` compiles binaries with standard flags, and files are installed to their correct locations (binaries, systemd services, completion scripts, config files). There are no obfuscated commands, unexpected network requests to unknown hosts, file operations outside the package scope, or any other indicators of malicious tampering. The package splits into client and server subpackages, both using proper licensing and dependencies. The `.service` file is sourced locally from the AUR repo itself (not fetched at build time). No supply-chain attack vectors are present.
</details>
<evidence></evidence>
<summary>Standard Go PKGBUILD with verified upstream source.</summary>
</security_assessment>

[3/7] Reviewing .nvchecker.toml, PKGBUILD, REUSE.toml, netbird-server.service...
[4/7] Reviewing .nvchecker.toml, REUSE.toml, netbird-server.service...
+ Reviewed PKGBUILD. Status: SAFE -- Standard Go PKGBUILD with verified upstream source.
LLM auditresponse for .nvchecker.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard nvchecker configuration for the netbird package. It instructs nvchecker to check for the latest release on the official netbirdio/netbird GitHub repository with a &quot;v&quot; prefix. There is no obfuscation, no embedded commands, no unexpected network destinations, and no execution of any code. This is a normal packaging helper file and poses no security threat.
</details>
<evidence></evidence>
<summary>Standard nvchecker config for netbird.</summary>
</security_assessment>

[5/7] Reviewing REUSE.toml, netbird-server.service...
+ Reviewed .nvchecker.toml. Status: SAFE -- Standard nvchecker config for netbird.
LLM auditresponse for REUSE.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard REUSE configuration file used to declare copyright and licensing metadata for files in the repository. It contains only a version number and a list of file path patterns with associated SPDX copyright and license identifiers. There is no executable code, no network requests, no obfuscated content, and no file operations. The file serves purely as metadata for compliance with the REUSE specification and poses no security risk.
</details>
<evidence></evidence>
<summary>Standard REUSE configuration, no security concerns.</summary>
</security_assessment>

[6/7] Reviewing netbird-server.service...
+ Reviewed REUSE.toml. Status: SAFE -- Standard REUSE configuration, no security concerns.
LLM auditresponse for netbird-server.service:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard systemd unit file for the netbird-server package. It defines a service that starts `/usr/bin/netbird-server` with a local configuration file, sets up cache/configuration/logs/runtime/state directories, and enables a reasonable set of sandboxing and hardening options. There are no network fetches, no code execution beyond the package's own binary, no obfuscated content, and no unexpected file operations. The unit is consistent with ordinary packaging practice and presents no evidence of malicious behavior.
</details>
<evidence>
</evidence>
<summary>
Standard hardened systemd unit; no malicious behavior found.</summary>
</security_assessment>

[7/7] Reviewing ...
+ Reviewed netbird-server.service. Status: SAFE -- Standard hardened systemd unit; no malicious behavior found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 19,393
  Completion Tokens: 2,310
  Total Tokens: 21,703
  Total Cost: $0.002185
  Execution Time: 79.80 seconds

Final Status: SAFE


No issues found.
