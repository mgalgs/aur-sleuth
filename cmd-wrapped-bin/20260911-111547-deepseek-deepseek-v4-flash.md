---
package: cmd-wrapped-bin
pkgver: 0.4.1
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 171a316e053e9c4b28731ccb1aa63b1168550d3a
prompt_tokens: 12079
completion_tokens: 1729
total_tokens: 13808
cost: 0.001376671422
execution_time: 52.25
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-11T11:15:46Z
file_verdicts:
  - file: .nvchecker.toml
    status: safe
    summary: Standard nvchecker configuration, no security issues.
  - file: .SRCINFO
    status: safe
    summary: Metadata only, no executable content, sources pinned with checksums.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR binary package with pinned official sources and checksums; no malicious behavior found.
  - file: .gitignore
    status: safe
    summary: Standard .gitignore for AUR repo; no security issues.
---

Materializing cmd-wrapped-bin from local mirror...
Materialized cmd-wrapped-bin
Analyzing cmd-wrapped-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only static variable definitions, source arrays with checksums, and a standard `package()` function. No top-level command substitutions, arithmetic expansions, or calls to external commands (like `curl`, `wget`, `eval`) are present. Running `makepkg --printsrcinfo` will safely source this file without executing any malicious code. The only executable code is inside the `package()` function, which is not invoked during metadata parsing.
</details>
<evidence></evidence>
<summary>No top-level execution risk; standard PKGBUILD.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No top-level execution risk; standard PKGBUILD.
Reviewing the 4 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/4] Reviewing .SRCINFO...
[0/4] Reviewing .SRCINFO, .gitignore...
[0/4] Reviewing .SRCINFO, .gitignore, .nvchecker.toml...
LLM auditresponse for .nvchecker.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard nvchecker configuration. It defines a version-checking source for the `cmd-wrapped-bin` package pointing to the GitHub repository `YiNNx/cmd-wrapped`, using `use_latest_release` and a version prefix `"v"`. This is a normal, benign packaging helper configuration. No commands, network fetches, obfuscation, or suspicious operations are present. The file only contains static TOML configuration keys and values.
</details>
<evidence></evidence>
<summary>Standard nvchecker configuration, no security issues.</summary>
</security_assessment>

[1/4] Reviewing .SRCINFO, .gitignore...
+ Reviewed .nvchecker.toml. Status: SAFE -- Standard nvchecker configuration, no security issues.
[1/4] Reviewing .SRCINFO, .gitignore, PKGBUILD...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The .SRCINFO file is a metadata file for the AUR package `cmd-wrapped-bin`. It contains only declarative information: package description, version, upstream URL, architecture, license, and source definitions with SHA-256 checksums. All sources point to the official GitHub repository of `cmd-wrapped` (https://github.com/YiNNx/cmd-wrapped), and the checksums are pinned (not SKIP). There is no executable code, no obfuscation, no unexpected network destinations, and no instructions that could lead to a supply-chain attack. The file conforms to standard AUR packaging practices.
</details>
<evidence>
</evidence>
<summary>Metadata only, no executable content, sources pinned with checksums.</summary>
</security_assessment>

[2/4] Reviewing .gitignore, PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Metadata only, no executable content, sources pinned with checksums.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard AUR packaging practices for a binary package. It downloads the package README, LICENSE, and prebuilt release archives from the project's official GitHub repository (`YiNNx/cmd-wrapped`) at a pinned version tag (`v0.4.1`), with valid SHA-256 checksums provided for all sources. There are no suspicious URLs, external hosts, encoded commands, or unexpected build steps.

The `package()` function only installs documentation, the license, and the prebuilt binary into the package directory. No network activity occurs during `package()`, and no code from untrusted sources is fetched or executed. The use of `install` with explicit modes is normal. No malicious, obfuscated, or data-exfiltrating behavior is present.
</details>
<evidence>
</evidence>
<summary>
Standard AUR binary package with pinned official sources and checksums; no malicious behavior found.
</summary>
</security_assessment>

[3/4] Reviewing .gitignore...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR binary package with pinned official sources and checksums; no malicious behavior found.
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.gitignore` file for an AUR repository. It uses the ignore-everything pattern (`*`) and then un-ignores only the essential version-controlled files: `PKGBUILD`, `.SRCINFO`, `.gitignore`, and `.nvchecker.toml`. No commands, network requests, or any executable content is present. The file is purely declarative and serves the normal purpose of keeping the AUR repo clean.
</details>
<evidence></evidence>
<summary>Standard .gitignore for AUR repo; no security issues.</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore for AUR repo; no security issues.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 12,079
  Completion Tokens: 1,729
  Total Tokens: 13,808
  Total Cost: $0.001377
  Execution Time: 52.25 seconds

Final Status: SAFE


No issues found.
