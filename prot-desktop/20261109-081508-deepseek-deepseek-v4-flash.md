---
package: prot-desktop
pkgbase: prot
pkgver: 0.1.0
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 13380
completion_tokens: 1808
total_tokens: 15188
cost: 0.001546636
execution_time: 50.14
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-11-09T08:15:07Z
file_verdicts:
  - file: protd.install
    status: safe
    summary: Standard informational .install file, no malicious content.
  - file: .SRCINFO
    status: safe
    summary: Standard metadata file, no security concerns found.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD with pinned sources, no malicious content.
  - file: protd.service
    status: safe
    summary: Standard systemd unit; binds loopback only; no suspicious or malicious behavior found.
---

prot-desktop is built from prot
Materializing prot-desktop from local mirror...
Materialized prot-desktop
Analyzing prot-desktop AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only standard variable assignments and function definitions in its global scope. No top-level command substitutions, invocations of external commands, or other executable code are present that would run when the file is sourced by `makepkg --printsrcinfo`. The source array references the project&#39;s own GitHub repository with pinned SHA256 checksums, and the `sha256sums` array is fully populated (no SKIP entries). All suspicious content (build commands, npm installs, cargo builds) is confined to the `prepare()`, `build()`, and `package_*()` functions, which are not executed during the `--printsrcinfo` step. Sourcing this file poses no risk.
</details>
<evidence></evidence>
<summary>Sourcing PKGBUILD is safe; no global code executes.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Sourcing PKGBUILD is safe; no global code executes.
Reviewing the 4 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/4] Reviewing .SRCINFO...
[0/4] Reviewing .SRCINFO, PKGBUILD...
[0/4] Reviewing .SRCINFO, PKGBUILD, protd.install...
LLM auditresponse for protd.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `protd.install` contains only standard informational `echo` messages displayed during post-install and post-upgrade steps. It instructs the user how to enable and restart the systemd user service for the `protd` daemon. There is no code execution beyond printing text, no network calls, no file modifications, and no obfuscation. The content is consistent with legitimate AUR packaging practices.
</details>
<evidence></evidence>
<summary>Standard informational .install file, no malicious content.</summary>
</security_assessment>

[1/4] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed protd.install. Status: SAFE -- Standard informational .install file, no malicious content.
[1/4] Reviewing .SRCINFO, PKGBUILD, protd.service...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard AUR `.SRCINFO` file declaring metadata, sources, checksums, and package splits. All checksums are pinned (sha256sums provided, none set to SKIP). Sources point to the official GitHub repository (`https://github.com/terastal-hq/prot`) and included service/install files. The build dependencies (`go`, `rust`, `nodejs`, `npm`, `webkit2gtk`, `gtk3`) are typical for a multi-language desktop application. No suspicious URLs, encoded data, or executable commands are present. The file is purely declarative and contains no code that could be malicious.
</details>
<evidence></evidence>
<summary>Standard metadata file, no security concerns found.</summary>
</security_assessment>

[2/4] Reviewing PKGBUILD, protd.service...
+ Reviewed .SRCINFO. Status: SAFE -- Standard metadata file, no security concerns found.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard Arch packaging practices for a Go + Tauri application. All source tarballs are pinned with explicit SHA-256 checksums (no SKIP). The build process uses `go mod download`, `npm ci`, and `cargo fetch/build` from the package&#39;s own upstream repository. There is no obfuscated code, no unexpected network requests, and no execution of fetched content outside the declared build system. The split packages install binaries and support files into standard system paths. No evidence of supply-chain injection or malicious behavior was found.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD with pinned sources, no malicious content.</summary>
</security_assessment>

[3/4] Reviewing protd.service...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD with pinned sources, no malicious content.
LLM auditresponse for protd.service:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard systemd unit file for the `protd` daemon. It launches `/usr/bin/protd` with gateway and admin interfaces bound to loopback (`127.0.0.1`), configures automatic restart, and installs into the user's default target. There are no network downloads, no execution of fetched content, no obfuscated commands, no file tampering, and no suspicious privilege or security modifications. `LimitNOFILE` is a routine resource limit adjustment. The unit is consistent with normal packaging for a development control plane daemon and contains no evidence of malicious behavior.
</details>
<evidence>
</evidence>
<summary>
Standard systemd unit; binds loopback only; no suspicious or malicious behavior found.
</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed protd.service. Status: SAFE -- Standard systemd unit; binds loopback only; no suspicious or malicious behavior found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 13,380
  Completion Tokens: 1,808
  Total Tokens: 15,188
  Total Cost: $0.001547
  Execution Time: 50.14 seconds

Final Status: SAFE


No issues found.
