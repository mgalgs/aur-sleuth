---
package: stably-orca-bin
pkgver: 1.4.235
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 13463
completion_tokens: 1640
total_tokens: 15103
cost: 0.001523613
execution_time: 32.9
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-21T07:10:09Z
file_verdicts:
  - file: stably-orca.desktop
    status: safe
    summary: Plain desktop entry, no malicious content.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR .SRCINFO metadata file, no malicious content.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD, no malicious content.
  - file: stably-orca.sh
    status: safe
    summary: Standard launcher wrapper, no malicious code found.
---

Materializing stably-orca-bin from local mirror...
Materialized stably-orca-bin
Analyzing stably-orca-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only variable definitions and function declarations (`prepare()` and `package()`) in the global scope. There are no top-level command substitutions or dangerous operations that would execute during `makepkg --printsrcinfo`, which only sources the file and does not run the functions. The source array uses variable interpolation but no command substitution or arbitrary code execution. All values are static strings. Therefore, running `makepkg --printsrcinfo` on this file is safe.
</details>
<evidence></evidence>
<summary>No dangerous global-scope code detected.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous global-scope code detected.
Reviewing the 4 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/4] Reviewing .SRCINFO...
[0/4] Reviewing .SRCINFO, PKGBUILD...
[0/4] Reviewing .SRCINFO, PKGBUILD, stably-orca.desktop...
LLM auditresponse for stably-orca.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
Standard desktop entry file for an Electron-based IDE. The Exec line uses the application binary `stably-orca` with `%U` for URL handling. No obfuscation, network requests, file operations, or any other suspicious content. Perfectly normal packaging artifact.
</details>
<evidence></evidence>
<summary>Plain desktop entry, no malicious content.</summary>
</security_assessment>

[1/4] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed stably-orca.desktop. Status: SAFE -- Plain desktop entry, no malicious content.
[1/4] Reviewing .SRCINFO, PKGBUILD, stably-orca.sh...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard `.SRCINFO` metadata file for an AUR package. It contains no executable code, only package metadata, dependency declarations, and source URLs with SHA‑256 checksums. The sources point to the project’s own GitHub releases (`https://github.com/stablyai/orca/releases/`), which is expected and legitimate. All source entries have explicit checksums (no `SKIP` values), and the file does not contain any obfuscated commands, network requests beyond the declared sources, or unusual operations. There is no indication of malicious content or supply‑chain compromise.
</details>
<evidence></evidence>
<summary>Standard AUR .SRCINFO metadata file, no malicious content.</summary>
</security_assessment>

[2/4] Reviewing PKGBUILD, stably-orca.sh...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR .SRCINFO metadata file, no malicious content.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD file is a conventional AUR package that downloads a prebuilt AppImage from the official GitHub releases page of the stablyai/orca project, checks its SHA256 hash, extracts it with `--appimage-extract`, and installs the extracted contents into the package directory. No obfuscation, encoded commands, unexpected network requests, or attempts to exfiltrate data are present. The file uses standard `makepkg` functions (`prepare`, `package`) and common downstream maintenance patterns for AppImage-based packages (extraction, permission fixups, icon installation). All dependencies listed are typical for Electron apps. The source URL is pinned to a specific version tag, and the SHA256 checksum is provided (not `SKIP`), ensuring integrity of the downloaded artifact. There is no evidence of any supply-chain attack or malicious intent.
</details>
<evidence>
</evidence>
<summary>
Standard PKGBUILD, no malicious content.</summary>
</security_assessment>

[3/4] Reviewing stably-orca.sh...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD, no malicious content.
LLM auditresponse for stably-orca.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
The script is a straightforward wrapper that sets the `APPDIR` environment variable to `/opt/stably-orca` and then executes the upstream `AppRun` binary with `--disable-features=Vulkan` and user-supplied arguments. There are no network requests, no encoded or obfuscated commands, no file operations outside of executing the intended application binary, and no modifications to system files or data. The comments describe configuration workarounds for Electron/Vulkan compatibility, which is standard application behavior. No evidence of malicious or supply-chain attack indicators is present.
</details>
<evidence></evidence>
<summary>Standard launcher wrapper, no malicious code found.</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed stably-orca.sh. Status: SAFE -- Standard launcher wrapper, no malicious code found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 13,463
  Completion Tokens: 1,640
  Total Tokens: 15,103
  Total Cost: $0.001524
  Execution Time: 32.90 seconds

Final Status: SAFE


No issues found.
