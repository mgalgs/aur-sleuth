---
package: touchdesigner-linux
pkgver: 1.8.1
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 171a316e053e9c4b28731ccb1aa63b1168550d3a
prompt_tokens: 27839
completion_tokens: 3787
total_tokens: 31626
cost: 0.00236488014
execution_time: 99.71
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 5
injection_attempts: 0
date: 2026-09-12T11:25:43Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata with expected upstream sources; only checksum and pinning hygiene concerns noted.
  - file: PKGBUILD
    status: safe
    summary: Clean AUR PKGBUILD with no malicious behavior.
  - file: touchdesigner-linux.install
    status: safe
    summary: Standard .install file, no malicious code.
  - file: touchdesigner-launcher.py
    status: safe
    summary: Standard Wine launcher, no malicious behavior.
---

Materializing touchdesigner-linux from local mirror...
Materialized touchdesigner-linux
Analyzing touchdesigner-linux AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only top-level variable definitions and function declarations. No command substitutions, backtick executions, or other code that would execute during sourcing appear at the global scope. The functions `build()` and `package()` are defined but not invoked by `makepkg --printsrcinfo`. Therefore, running `makepkg --printsrcinfo` on this file poses no security risk at this stage.
</details>
<evidence></evidence>
<summary>No top-level executable code; safe to parse.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No top-level executable code; safe to parse.
Note: 5 remote source(s) have no checksum (sha256sums=SKIP), so the bytes are not verifiable: touchdesigner-linux-1.8.1.tar.gz::https://github.com/ismail-bahloul/TouchDesigner-Linux/archive/refs/tags/v1.8.1.tar.gz, soda-9.0-1.tar.xz::https://github.com/bottlesdevs/wine/releases/download/soda-9.0-1/soda-9.0-1-x86_64.tar.xz, TouchDesigner.2025.33070.exe::https://download.derivative.ca/TouchDesigner.2025.33070.exe, dxvk-2.7.1.tar.gz::https://github.com/doitsujin/dxvk/releases/download/v2.7.1/dxvk-2.7.1.tar.gz, winetricks::https://raw.githubusercontent.com/Winetricks/winetricks/master/src/winetricks
Reviewing the 4 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/4] Reviewing .SRCINFO...
[0/4] Reviewing .SRCINFO, touchdesigner-launcher.py...
[0/4] Reviewing .SRCINFO, touchdesigner-launcher.py, PKGBUILD...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This `.SRCINFO` is a standard AUR package metadata file. It declares dependencies, sources, and checksums for the `touchdesigner-linux` package. The sources point to the project's own GitHub repository, the official TouchDesigner download domain (`download.derivative.ca`), and well-known upstream projects (Wine, DXVK, Winetricks). These are expected locations for the components this package combines, not unexpected or malicious hosts.

No obfuscation, encoded payloads, suspicious commands, or data-exfiltration behavior is present in this file. The main concerns are hygiene-related: every source has `sha256sums = SKIP`, and the Winetricks source tracks an unpinned `master` branch. This weakens supply-chain reproducibility and means downloaded content is fetched without integrity verification, but the guidance is clear that `SKIP` checksums and mutable upstream branches are ordinary AUR practices and not, by themselves, evidence of malice.

The file itself contains only declarative packaging metadata. Any actual risk would depend on the contents of the referenced scripts (`touchdesigner-launcher.py`, `touchdesigner-linux.install`) and the downloaded binaries, which are not visible in this file. Based solely on this `.SRCINFO`, there is no evidence of a supply-chain attack.
</details>
<evidence>
</evidence>
<summary>
Standard AUR metadata with expected upstream sources; only checksum and pinning hygiene concerns noted.
</summary>
</security_assessment>

[0/4] Reviewing .SRCINFO, touchdesigner-launcher.py, PKGBUILD, touchdesigner-linux.install...
[1/4] Reviewing touchdesigner-launcher.py, PKGBUILD, touchdesigner-linux.install...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata with expected upstream sources; only checksum and pinning hygiene concerns noted.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a standard AUR packaging for running TouchDesigner on Linux via Wine. All source URLs point to the official upstream projects (TouchDesigner from derivative.ca, Soda Wine from bottlesdevs/wine, DXVK from doitsujin/dxvk, winetricks from the official repository). The build process extracts the Windows executable, sets up a Wine prefix, installs dependencies, and patches project files—all expected behavior for a Wine-based wrapper. The use of all‑SKIP checksums is permitted and common for packages that track binary releases or use variable filenames. There is no obfuscated code, no unexpected network requests, no data exfiltration, and no backdoors. The script performs only operations necessary to bundle the application and its runtime environment.
</details>
<evidence></evidence>
<summary>Clean AUR PKGBUILD with no malicious behavior.</summary>
</security_assessment>

[2/4] Reviewing touchdesigner-launcher.py, touchdesigner-linux.install...
+ Reviewed PKGBUILD. Status: SAFE -- Clean AUR PKGBUILD with no malicious behavior.
LLM auditresponse for touchdesigner-linux.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `touchdesigner-linux.install` contains standard post-installation and post-removal hooks for registering MIME types and cleaning up associated configuration files. No network requests, obfuscation, or dangerous commands are present. All operations are within the expected scope of a package installer script and pose no security risk.
</details>
<evidence></evidence>
<summary>Standard .install file, no malicious code.</summary>
</security_assessment>

[3/4] Reviewing touchdesigner-launcher.py...
+ Reviewed touchdesigner-linux.install. Status: SAFE -- Standard .install file, no malicious code.
LLM auditresponse for touchdesigner-launcher.py:
<security_assessment>
<decision>SAFE</decision>
<details>
The script is a standard Wine launcher for TouchDesigner. It performs routine Wine prefix setup, font and DPI configuration, and project file patching (via Wine&apos;s expand/collapse tools). All operations are confined to the package&apos;s install prefix and the user&apos;s Wine prefix. There is no network activity, obfuscation, or execution of untrusted code. The script does not exfiltrate data, download anything, or modify system files outside its scope. It follows typical patterns for running Windows applications under Wine on Linux.
</details>
<evidence></evidence>
<summary>Standard Wine launcher, no malicious behavior.</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed touchdesigner-launcher.py. Status: SAFE -- Standard Wine launcher, no malicious behavior.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 27,839
  Completion Tokens: 3,787
  Total Tokens: 31,626
  Total Cost: $0.002365
  Execution Time: 99.71 seconds

Final Status: SAFE


No issues found.
