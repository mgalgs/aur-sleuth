---
package: unreal-engine-src-5.5
pkgver: 5.5.4
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 37372
completion_tokens: 10632
total_tokens: 48004
cost: 0.001641808
execution_time: 200.22
files_reviewed: 5
files_skipped: 1
maintainer_files: 6
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-02T23:14:57Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard AUR .SRCINFO file, no malicious content.
  - file: ue5_5editor.svg
    status: skipped
    summary: "Skipping binary file: ue5_5editor.svg"
  - file: com.unrealengine.UE5_5Editor.desktop
    status: safe
    summary: Standard desktop file; no malicious behavior.
  - file: unreal-engine-src-5.5-pacman-cache.hook
    status: safe
    summary: Legitimate pacman hook to clean package cache.
  - file: PKGBUILD
    status: safe
    summary: Standard UE5 PKGBUILD, no malicious indicators.
  - file: unreal-engine-5.5.sh
    status: safe
    summary: Standard launcher, no malicious code.
---

Materializing unreal-engine-src-5.5 from local mirror...
Materialized unreal-engine-src-5.5
Analyzing unreal-engine-src-5.5 AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
Running `makepkg --printsrcinfo` sources the PKGBUILD and executes only its top-level code, not `pkgver()`, `prepare()`, `build()`, or `package()`. In the provided content, the top-level code consists of normal packaging metadata: comments, variable assignments such as `pkgname`, `_uetag`, `source`, `sha256sums`, and `export UE_INSTALL_DIR=...`, plus function definitions.

The network operations and build-time source management commands visible in the file — `git ls-remote`, `git clone`, `git fetch`, `git reset --hard` — appear inside function bodies rather than at the top level. This is supported by the use of `local`, which is only valid inside a function, and by comments indicating that the source is downloaded in `prepare()` or similar build-time logic. Those functions are not invoked by `makepkg --printsrcinfo`.

No top-level `curl`, `wget`, `eval`, `base64`, obfuscated decoding, or similar dangerous pattern is present in the visible content. The HTML entities such as `&quot;` are just escaping artifacts from the surrounding XML, not obfuscation. The `SKIP` checksums and unpinned Git operations are noted as full-audit concerns but do not execute during `--printsrcinfo`, so they do not make this narrow command unsafe.
</details>
<evidence>
No top-level command substitution or top-level function call that downloads, executes, or exfiltrates data was found. The only top-level exports and assignments are benign environment/package metadata. The Git/network commands are inside function bodies, as indicated by `local _ue_remote_ssh=...` and surrounding build-flow comments.
</evidence>
<summary>
Running `makepkg --printsrcinfo` on this PKGBUILD is safe. It only sources top-level assignments and function definitions; no malicious code executes during this narrow step.
</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Running `makepkg --printsrcinfo` on this PKGBUILD is safe. It only sources top-level assignments and function definitions; no malicious code executes during this narrow step.
Reviewing the 6 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/6] Reviewing .SRCINFO...
[0/6] Reviewing .SRCINFO, PKGBUILD...
[0/6] Reviewing .SRCINFO, PKGBUILD, com.unrealengine.UE5_5Editor.desktop...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard .SRCINFO metadata file for an Arch User Repository (AUR) package. It contains only declarative fields such as package name, version, description, dependencies, and source file references. All sha256sums are set to `SKIP`, which is a common and acceptable practice for AUR packages that track mutable sources. No executable code, network requests, data exfiltration, obfuscation, or backdoor mechanisms are present. The file poses no security threat.</details>
<evidence></evidence>
<summary>Standard AUR .SRCINFO file, no malicious content.</summary>
</security_assessment>

[0/6] Reviewing .SRCINFO, PKGBUILD, com.unrealengine.UE5_5Editor.desktop, ue5_5editor.svg...
[1/6] Reviewing PKGBUILD, com.unrealengine.UE5_5Editor.desktop, ue5_5editor.svg...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR .SRCINFO file, no malicious content.
[1/6] Reviewing PKGBUILD, com.unrealengine.UE5_5Editor.desktop, ue5_5editor.svg, unreal-engine-5.5.sh...
[2/6] Reviewing PKGBUILD, com.unrealengine.UE5_5Editor.desktop, unreal-engine-5.5.sh...
! Reviewed ue5_5editor.svg. Status: SKIPPED -- Skipping binary file: ue5_5editor.svg
LLM auditresponse for com.unrealengine.UE5_5Editor.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard `.desktop` entry for the Unreal Engine 5.5 Editor. It defines metadata such as the executable path, icon, and category. There is no malicious content: no network requests, no obfuscated code, no dangerous commands, and no unusual file operations. The shebang line `#!/usr/bin/env xdg-open` is non-standard for a `.desktop` file but appears to be a harmless convenience to make the file directly executable; it does not execute attacker-controlled code or alter system files. The file only serves to launch the legitimate Unreal Engine binary under `/usr/bin/unreal-engine-5.5` and does not deviate from expected packaging practices.
</details>
<evidence></evidence>
<summary>Standard desktop file; no malicious behavior.</summary>
</security_assessment>

[2/6] Reviewing PKGBUILD, com.unrealengine.UE5_5Editor.desktop, unreal-engine-5.5.sh, unreal-engine-src-5.5-pacman-cache.hook...
[3/6] Reviewing PKGBUILD, unreal-engine-5.5.sh, unreal-engine-src-5.5-pacman-cache.hook...
+ Reviewed com.unrealengine.UE5_5Editor.desktop. Status: SAFE -- Standard desktop file; no malicious behavior.
LLM auditresponse for unreal-engine-src-5.5-pacman-cache.hook:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard pacman hook file that triggers after installing or upgrading the `unreal-engine-src-5.5` package. It runs `/usr/bin/paccache -rvk1 unreal-engine-src-5.5`, which instructs `paccache` (from `pacman-contrib`) to remove all cached versions of the package except the most recent one (`-k1`). This is a common, non-malicious practice to save disk space. There are no network requests, obfuscated code, file exfiltration, or unexpected system modifications.
</details>
<evidence>
</evidence>
<summary>Legitimate pacman hook to clean package cache.</summary>
</security_assessment>

[4/6] Reviewing PKGBUILD, unreal-engine-5.5.sh...
+ Reviewed unreal-engine-src-5.5-pacman-cache.hook. Status: SAFE -- Legitimate pacman hook to clean package cache.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard AUR packaging practices for a large source-based package like Unreal Engine. All network destinations are legitimate: GitHub for the upstream source, `cdn.unrealengine.com` for the official SDK toolchain, and an optional icon download from `raw.githubusercontent.com/EliverLara/candy-icons` (a well-known icon repository) that only fetches an SVG file and its license — no code execution. The optional icon behavior is controlled by a user-configured variable (`UE_USE_DEFAULT_LOGO_AT_INSTALL`), defaulting to using the included icon. There is no obfuscated code, no data exfiltration, no unusual commands, and no backdoors. The `git fetch`/`git reset` in `prepare()` targets the same verified tag from the same upstream remote, which is a standard update mechanism and not a supply-chain risk.
</details>
<evidence></evidence>
<summary>Standard UE5 PKGBUILD, no malicious indicators.</summary>
</security_assessment>

[5/6] Reviewing unreal-engine-5.5.sh...
+ Reviewed PKGBUILD. Status: SAFE -- Standard UE5 PKGBUILD, no malicious indicators.
LLM auditresponse for unreal-engine-5.5.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This script is a per-user launch helper for the Unreal Engine 5.5 package. It performs several setup tasks: creating a symlink between `~/.steampath` and `~/.steam/bin` (likely for Steam integration), ensuring configuration directories exist, copying a desktop file, optionally updating it with the installed engine location, and registering the engine with `UnrealVersionSelector`. None of these operations exfiltrate data, download or execute external code, or exhibit obfuscation. While the manipulation of Steam paths is unusual, it does not by itself constitute malicious intent—it is consistent with enabling Steam-related functionality of the Unreal Engine. The script does not contain any genuinely dangerous behaviors (no eval, no base64, no curl/wget to unknown hosts, no backdoors). Therefore, it is marked SAFE.
</details>
<evidence>
</evidence>
<summary>Standard launcher, no malicious code.</summary>
</security_assessment>

[6/6] Reviewing ...
+ Reviewed unreal-engine-5.5.sh. Status: SAFE -- Standard launcher, no malicious code.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
(Skipped 1 file: ue5_5editor.svg)

API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 37,372
  Completion Tokens: 10,632
  Total Tokens: 48,004
  Total Cost: $0.001642
  Execution Time: 200.22 seconds

Final Status: SAFE


No issues found.


Audit Skips:

ue5_5editor.svg: [SKIPPED] Skipping binary file: ue5_5editor.svg
