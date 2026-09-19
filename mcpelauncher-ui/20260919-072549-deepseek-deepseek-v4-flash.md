---
package: mcpelauncher-ui
pkgver: 1.8.4
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 18253
completion_tokens: 2254
total_tokens: 20507
cost: 0.00107067744
execution_time: 39.1
files_reviewed: 6
files_skipped: 0
maintainer_files: 6
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-19T07:25:48Z
file_verdicts:
  - file: .nvchecker.toml
    status: safe
    summary: Standard nvchecker config; no security concerns.
  - file: .SRCINFO
    status: safe
    summary: Declarative metadata, no executable code.
  - file: LICENSE
    status: safe
    summary: Standard license file, no security concerns.
  - file: LICENSE
    status: safe
    summary: Standard license file with no security issues.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD with no malicious content.
  - file: REUSE.toml
    status: safe
    summary: Benign REUSE compliance config; no security issues.
---

Materializing mcpelauncher-ui from local mirror...
Materialized mcpelauncher-ui
Analyzing mcpelauncher-ui AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only static variable assignments and function definitions (`prepare()`, `build()`, `package()`). No code executes at the global/top-level scope beyond these variable definitions. There are no command substitutions, backtick executions, eval invocations, or any other constructs that would run during a `makepkg --printsrcinfo` operation. All source URLs are standard git repository references. The unsafe content in functions like `prepare()` (which manipulates git submodules) cannot execute during this parsing step and will be audited separately.
</details>
<evidence></evidence>
<summary>No malicious top-level code; safe to parse.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious top-level code; safe to parse.
Reviewing the 6 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/6] Reviewing .SRCINFO...
[0/6] Reviewing .SRCINFO, .nvchecker.toml...
[0/6] Reviewing .SRCINFO, .nvchecker.toml, LICENSE...
LLM auditresponse for .nvchecker.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard configuration for `nvchecker`, a tool used by AUR maintainers to automate version checks. It specifies checking the GitHub repository `minecraft-linux/mcpelauncher-ui-manifest` for tags prefixed with &quot;v&quot;. There is no executable code, no obfuscation, no network request to unexpected hosts, and no file operations. The configuration is entirely benign and follows normal packaging practices.
</details>
<evidence></evidence>
<summary>Standard nvchecker config; no security concerns.</summary>
</security_assessment>

[0/6] Reviewing .SRCINFO, .nvchecker.toml, LICENSE, LICENSE...
[1/6] Reviewing .SRCINFO, LICENSE, LICENSE...
+ Reviewed .nvchecker.toml. Status: SAFE -- Standard nvchecker config; no security concerns.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The .SRCINFO file is a purely declarative metadata file for the AUR package. It specifies the package name, version, description, dependencies, and sources. All sources point to legitimate upstream GitHub repositories under the `minecraft-linux` organization or related projects (`MCMrARM`). The checksums follow standard AUR practices: the first source (tagged tarball) has a verified SHA256 sum, while the git-based sources correctly use `SKIP` (required for VCS sources). There are no commands, shell scripts, or any executable content in this file. No network requests, obfuscated code, or suspicious operations are present. The file is consistent with normal packaging metadata and does not exhibit any supply-chain attack indicators.
</details>
<evidence></evidence>
<summary>Declarative metadata, no executable code.</summary>
</security_assessment>

[1/6] Reviewing .SRCINFO, LICENSE, LICENSE, PKGBUILD...
[2/6] Reviewing LICENSE, LICENSE, PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Declarative metadata, no executable code.
LLM auditresponse for LICENSE:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard open-source license (ISC-style permissive license). It contains only a copyright notice and permission/warranty disclaimer text. There is no executable code, no network requests, no file system modifications, no obfuscation, and no instructions to execute anything. It poses no security risk.
</details>
<evidence></evidence>
<summary>Standard license file, no security concerns.</summary>
</security_assessment>

[3/6] Reviewing LICENSE, PKGBUILD...
+ Reviewed LICENSE. Status: SAFE -- Standard license file, no security concerns.
[3/6] Reviewing LICENSE, PKGBUILD, REUSE.toml...
LLM auditresponse for LICENSE:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard ISC license text. It contains no executable code, no network requests, no file operations, and no obfuscation. There is no evidence of malicious behavior. This is a routine license file provided with the package.
</details>
<evidence></evidence>
<summary>Standard license file with no security issues.</summary>
</security_assessment>

[4/6] Reviewing PKGBUILD, REUSE.toml...
+ Reviewed LICENSE. Status: SAFE -- Standard license file with no security issues.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard AUR packaging practices for a VCS-based package. All sources are fetched from the official `minecraft-linux` GitHub organization, which is the project's upstream. The `prepare()` function configures git submodules to use local copies already cloned via the `source` array, avoiding unnecessary network calls; `git submodule update` with `protocol.file.allow=always` is a normal pattern for offline builds. The build and package steps are standard CMake invocations with no suspicious flags or commands. There are no obfuscated scripts, no unexpected network downloads, and no data exfiltration attempts. The use of `SKIP` checksums for git sources is expected and not a security concern. The single commented-out line in `build()` is a disabled feature flag and does nothing.
</details>
<evidence></evidence>
<summary>Standard AUR PKGBUILD with no malicious content.</summary>
</security_assessment>

[5/6] Reviewing REUSE.toml...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD with no malicious content.
LLM auditresponse for REUSE.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a REUSE.toml configuration used by the REUSE/SPDX license compliance tool. It simply declares which files in the repository are covered by a copyright and license header. The paths listed (PKGBUILD, .gitignore, README.md, keys, .SRCINFO, various install/service/socket/timer/desktop/hook files) are all standard packaging-related files. The `SPDX-FileCopyrightText` and `SPDX-License-Identifier` fields are normal metadata for the REUSE specification. There is no executable code, no network access, no file operations, and no deviation from standard packaging practices. No security concerns are present.
</details>
<evidence></evidence>
<summary>Benign REUSE compliance config; no security issues.</summary>
</security_assessment>

[6/6] Reviewing ...
+ Reviewed REUSE.toml. Status: SAFE -- Benign REUSE compliance config; no security issues.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 18,253
  Completion Tokens: 2,254
  Total Tokens: 20,507
  Total Cost: $0.001071
  Execution Time: 39.10 seconds

Final Status: SAFE


No issues found.
