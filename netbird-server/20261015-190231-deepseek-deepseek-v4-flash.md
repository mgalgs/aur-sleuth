---
package: netbird-server
pkgbase: netbird
pkgver: 0.81.0
pkgrel: 2
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 19315
completion_tokens: 3950
total_tokens: 23265
cost: 0.002476565
execution_time: 60.32
files_reviewed: 7
files_skipped: 0
maintainer_files: 7
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-15T19:02:30Z
file_verdicts:
  - file: LICENSE
    status: safe
    summary: License file, no security concerns.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata file, no security concerns.
  - file: LICENSE
    status: safe
    summary: License file with no security concerns.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD with no malicious code.
  - file: REUSE.toml
    status: safe
    summary: Declarative REUSE config file, no executable or suspicious content.
  - file: netbird-server.service
    status: safe
    summary: Standard systemd unit file; no malicious content.
  - file: .nvchecker.toml
    status: safe
    summary: Standard nvchecker config for upstream version tracking.
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
The top-level scope of this PKGBUILD contains only standard variable definitions: `pkgbase`, `pkgname`, `pkgver`, `pkgrel`, `url`, `arch`, `makedepends`, `source`, and `sha256sums`. No command substitutions, external downloads, obfuscated code, or file-modifying operations execute when the PKGBUILD is sourced by `makepkg --printsrcinfo`.

All potentially active logic is confined to `prepare()`, `build()`, `check()`, and the `package_*()` functions, which are not executed during `--printsrcinfo`. The build and packaging steps visible in those functions are consistent with normal Go-based AUR packaging for the netbird project. There is no evidence of malicious code that would run during this metadata-printing step.
</details>
<evidence>
</evidence>
<summary>
Top-level PKGBUILD scope is safe for makepkg --printsrcinfo.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Top-level PKGBUILD scope is safe for makepkg --printsrcinfo.
Reviewing the 7 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/7] Reviewing .SRCINFO...
[0/7] Reviewing .SRCINFO, .nvchecker.toml...
[0/7] Reviewing .SRCINFO, .nvchecker.toml, LICENSE...
LLM auditresponse for LICENSE:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard open-source license (ISC-style). It contains no executable code, no network requests, no obfuscated content, and no system modifications. It is purely a legal notice and poses no security risk.
</details>
<evidence></evidence>
<summary>License file, no security concerns.</summary>
</security_assessment>

[1/7] Reviewing .SRCINFO, .nvchecker.toml...
+ Reviewed LICENSE. Status: SAFE -- License file, no security concerns.
[1/7] Reviewing .SRCINFO, .nvchecker.toml, LICENSE...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The `.SRCINFO` file is purely metadata describing the AUR package. It contains the package name, version, upstream source URL (pointing to the official Netbird GitHub release tarball), SHA-256 checksums, dependencies, and other packaging metadata. There is no executable code, no shell commands, no obfuscated strings, no network requests or file operations. The source download is from the official project repository, and checksums are provided (not skipped). This file cannot perform any dangerous action on its own and follows standard AUR packaging practices.
</details>
<evidence></evidence>
<summary>Standard AUR metadata file, no security concerns.</summary>
</security_assessment>

[2/7] Reviewing .nvchecker.toml, LICENSE...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata file, no security concerns.
[2/7] Reviewing .nvchecker.toml, LICENSE, PKGBUILD...
LLM auditresponse for LICENSE:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a plain-text license file (ISC-style). It contains no executable code, no network requests, no obfuscation, and no instructions. There is no evidence of malicious or dangerous behavior. This is a standard packaging artifact.
</details>
<evidence></evidence>
<summary>License file with no security concerns.</summary>
</security_assessment>

[2/7] Reviewing .nvchecker.toml, LICENSE, PKGBUILD, REUSE.toml...
[3/7] Reviewing .nvchecker.toml, PKGBUILD, REUSE.toml...
+ Reviewed LICENSE. Status: SAFE -- License file with no security concerns.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard Arch Linux packaging practices for a Go-based upstream project. It downloads the source tarball from the official GitHub repository with a pinned version and validated checksum. The `prepare()` and `build()` phases use standard Go module commands and build flags. The `package_*()` functions install the binaries, completions, configuration files, and systemd units to the expected locations. There is no obfuscated code, no unexpected network requests, no execution of untrusted content, and no attempts to exfiltrate data. The `check()` simply verifies the built binary version string. No supply‑chain attack indicators are present.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD with no malicious code.</summary>
</security_assessment>

[3/7] Reviewing .nvchecker.toml, PKGBUILD, REUSE.toml, netbird-server.service...
[4/7] Reviewing .nvchecker.toml, REUSE.toml, netbird-server.service...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD with no malicious code.
LLM auditresponse for REUSE.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `REUSE.toml` is a standard configuration file for the REUSE tool, which helps manage software licensing metadata. It declares which files in a repository are covered by a given copyright and license. The content is entirely declarative (version and annotations) and contains no executable code, no network requests, no file operations, no obfuscation, and no commands of any kind. The listed paths are all typical packaging files (PKGBUILD, .SRCINFO, .service files, etc.). The SPDX license identifier &quot;0BSD&quot; is a well-known open-source license. There is nothing in this file that deviates from normal packaging practices or poses any security risk.
</details>
<evidence></evidence>
<summary>Declarative REUSE config file, no executable or suspicious content.</summary>
</security_assessment>

[5/7] Reviewing .nvchecker.toml, netbird-server.service...
+ Reviewed REUSE.toml. Status: SAFE -- Declarative REUSE config file, no executable or suspicious content.
LLM auditresponse for netbird-server.service:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a systemd service unit for the netbird server. It contains no executable code, network requests, obfuscation, or unexpected file operations. The configuration is standard: it specifies the binary path, restart behavior, and a set of security hardening directives (e.g., `NoNewPrivileges`, `ProtectSystem`). All paths and settings are consistent with a legitimate application service. There is no evidence of supply-chain attack or malicious injection.
</details>
<evidence>
</evidence>
<summary>Standard systemd unit file; no malicious content.</summary>
</security_assessment>

[6/7] Reviewing .nvchecker.toml...
+ Reviewed netbird-server.service. Status: SAFE -- Standard systemd unit file; no malicious content.
LLM auditresponse for .nvchecker.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a configuration for `nvchecker` (new version checker), a standard tool in the AUR ecosystem used by maintainers to automatically detect new upstream releases. It does not contain any code to execute, nor does it perform any network requests by itself; it merely defines rules for another tool. The configuration points the checker at the official `netbirdio/netbird` GitHub repository to look for the latest release tagged with a "v" prefix.

There is no evidence of malicious behavior. There are no obfuscated commands, no suspicious file operations, no exfiltration of local data, and no downloads from unexpected or untrusted hosts. The tool and configuration represent an expected and beneficial automation practice for keeping AUR packages up to date with the vendor's upstream releases.
</details>
<evidence>
</evidence>
<summary>Standard nvchecker config for upstream version tracking.</summary>
</security_assessment>

[7/7] Reviewing ...
+ Reviewed .nvchecker.toml. Status: SAFE -- Standard nvchecker config for upstream version tracking.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 19,315
  Completion Tokens: 3,950
  Total Tokens: 23,265
  Total Cost: $0.002477
  Execution Time: 60.32 seconds

Final Status: SAFE


No issues found.
