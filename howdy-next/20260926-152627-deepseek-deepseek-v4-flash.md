---
package: howdy-next
pkgver: 3.4.2
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 12676
completion_tokens: 2151
total_tokens: 14827
cost: 0.00079864512
execution_time: 46.18
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-26T15:26:27Z
file_verdicts:
  - file: howdy-next.install
    status: safe
    summary: File contains only informational setup messages, no malicious code.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD with no security issues.
  - file: polkit-agent-helper-howdy.conf
    status: safe
    summary: Systemd service configuration for legitimate device access.
  - file: .SRCINFO
    status: safe
    summary: Metadata-only packaging file; sources pinned by checksums; no malicious behavior found.
---

Materializing howdy-next from local mirror...
Materialized howdy-next
Analyzing howdy-next AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD only defines variables, arrays, and functions at global scope. No command substitutions, backticks, or inline code executions are present that would run during sourcing. Functions like `build()`, `check()`, and `package()` are defined but not invoked during `makepkg --printsrcinfo`. All content is standard package metadata. There is no risk of malicious execution from simply sourcing this file to print .SRCINFO.
</details>
<evidence></evidence>
<summary>No dangerous top-level code; safe for printsrcinfo.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous top-level code; safe for printsrcinfo.
Reviewing the 4 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/4] Reviewing .SRCINFO...
[0/4] Reviewing .SRCINFO, PKGBUILD...
[0/4] Reviewing .SRCINFO, PKGBUILD, howdy-next.install...
LLM auditresponse for howdy-next.install:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard `.install` script used by Arch Linux packages. It only contains informational echo messages guiding the user through post-installation setup steps. There are no suspicious commands, network requests, file operations, or obfuscated code. The messages advise the user to keep a root shell open, download models, configure the camera, test authentication, add a face model, and edit PAM configuration — all of which are legitimate instructions for setting up the howdy face authentication system. No supply-chain attack indicators are present.</details>
<evidence></evidence>
<summary>File contains only informational setup messages, no malicious code.</summary>
</security_assessment>

[0/4] Reviewing .SRCINFO, PKGBUILD, howdy-next.install, polkit-agent-helper-howdy.conf...
[1/4] Reviewing .SRCINFO, PKGBUILD, polkit-agent-helper-howdy.conf...
+ Reviewed howdy-next.install. Status: SAFE -- File contains only informational setup messages, no malicious code.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard AUR packaging practices. It downloads the source archive from the project's own upstream repository (codeberg.org) with a pinned version tag and a valid B2 checksum. The build uses standard cmake commands, tests with ctest, and installs with cmake --install. No suspicious network requests, obfuscated code, dangerous commands (eval, base64, curl in unexpected contexts), or unexpected file operations are present. The installation of a polkit override file is documented as recommended upstream and is within normal system configuration scope. The removal of the LICENSE file is a routine packaging step to avoid redundancy. There is no evidence of malicious behavior or supply-chain attack.</details>
<evidence></evidence>
<summary>Standard PKGBUILD with no security issues.</summary>
</security_assessment>

[2/4] Reviewing .SRCINFO, polkit-agent-helper-howdy.conf...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD with no security issues.
LLM auditresponse for polkit-agent-helper-howdy.conf:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a systemd service drop-in configuration for the polkit-agent-helper used by howdy-next. The settings adjust device permissions (`PrivateDevices=no`, `DeviceAllow=char-video4linux rw`, `DeviceAllow=/dev/uinput rw`) to allow the face authentication helper to access the camera and create uinput devices, which are required for its core functionality. There is no indication of malicious activity such as data exfiltration, code execution, or obfuscated commands. The file solely contains standard service configuration directives.
</details>
<evidence></evidence>
<summary>Systemd service configuration for legitimate device access.</summary>
</security_assessment>

[3/4] Reviewing .SRCINFO...
+ Reviewed polkit-agent-helper-howdy.conf. Status: SAFE -- Systemd service configuration for legitimate device access.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is `.SRCINFO`, the generated package metadata for the AUR package `howdy-next`. It contains only declarative fields: package name, description, version, URL, license, dependencies, checksums, and source file names. There are no scripts, commands, hooks, or executable content in this file.

The sources point to the project's own upstream Codeberg repository and a local polkit helper configuration file. Both entries have pinned `b2sums` checksums, and there is no `SKIP` checksum or unpinned VCS source present. The dependency version operators are correctly escaped as XML entities in the raw `.SRCINFO` format, which is normal. No network requests beyond normal package fetching, no obfuscation, no file operations, and no evidence of injected malicious behavior are present.
</details>
<evidence>
</evidence>
<summary>
Metadata-only packaging file; sources pinned by checksums; no malicious behavior found.
</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed .SRCINFO. Status: SAFE -- Metadata-only packaging file; sources pinned by checksums; no malicious behavior found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 12,676
  Completion Tokens: 2,151
  Total Tokens: 14,827
  Total Cost: $0.000799
  Execution Time: 46.18 seconds

Final Status: SAFE


No issues found.
