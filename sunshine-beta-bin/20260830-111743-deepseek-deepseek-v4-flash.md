---
package: sunshine-beta-bin
pkgver: 2026.830.44125
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 3e318911529c43138ec6bdba0bfcb56907607021
prompt_tokens: 13181
completion_tokens: 2298
total_tokens: 15479
cost: 0.0014186046
execution_time: 67.49
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: ok
upstream_files: 111
upstream_named_files: 1
unpinned_sources: 1
date: 2026-08-30T11:17:42Z
file_verdicts:
  - file: PKGBUILD
    status: safe
    summary: Standard binary package from official upstream, no malicious code.
  - file: sunshine-beta-bin.install
    status: safe
    summary: Benign install script; no malicious activity.
  - file: .SRCINFO
    status: safe
    summary: Standard metadata file, no malicious content.
  - file: sunshine-capabilities.hook
    status: safe
    summary: Standard capability hook, no malicious content.
---

Cloning https://aur.archlinux.org/sunshine-beta-bin.git...
Cloned sunshine-beta-bin
Analyzing sunshine-beta-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only variable assignments and a `package()` function. Running `makepkg --nobuild --nodeps --noprepare` and `makepkg --printsrcinfo` will source the PKGBUILD (executing top-level code) and fetch the sources. There is no top-level code that executes commands or command substitutions. The `pkgver()` function is not defined, so it is not executed. The sources are downloaded from the official GitHub releases (binary package) and a GitHub blob URL (desktop file). The desktop file URL points to a non-raw page, which is a packaging mistake but not a security threat. No dangerous operations like `curl|bash`, `eval`, or data exfiltration are present. The `package()` function is not executed during these commands. Therefore, the gate level is safe.
</details>
<evidence></evidence>
<summary>No dangerous code in global scope.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous code in global scope.
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Note: 1 remote source(s) have no checksum (sha256sums=SKIP), so the fetched bytes are not verifiable and can change without any AUR update: sunshine-beta-bin-2026.830.44125.desktop::https://github.com/LizardByte/Sunshine/blob/master/packaging/linux/dev.lizardbyte.app.Sunshine.desktop
Note: the PKGBUILD names 1 file(s) in the downloaded sources (src/usr/bin/sunshine); they are upstream content and were not reviewed.
Reviewing the 4 file(s) in the AUR repository. The 111 downloaded file(s) are upstream content, outside the threat model, and are not read.
Reviewing the AUR repository's files...
[0/4] Reviewing .SRCINFO...
[0/4] Reviewing .SRCINFO, PKGBUILD...
[0/4] Reviewing .SRCINFO, PKGBUILD, sunshine-beta-bin.install...
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD defines a binary package sourced from the official LizardByte/Sunshine GitHub releases. All source URLs point to the project's own repository, and checksums are provided for the binary archive and the hook file (the desktop source is set to SKIP, which is common for files fetched from a non-static content delivery URL). The package() function performs standard file installation (binary, libraries, share data) and installs a capabilities hook. No obfuscated code, unexpected network requests, or suspicious system modifications are present. The content follows normal AUR packaging practices for a pre-built binary package.
</details>
<evidence></evidence>
<summary>Standard binary package from official upstream, no malicious code.</summary>
</security_assessment>

[0/4] Reviewing .SRCINFO, PKGBUILD, sunshine-beta-bin.install, sunshine-capabilities.hook...
[1/4] Reviewing .SRCINFO, sunshine-beta-bin.install, sunshine-capabilities.hook...
+ Reviewed PKGBUILD. Status: SAFE -- Standard binary package from official upstream, no malicious code.
LLM auditresponse for sunshine-beta-bin.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The file contains only standard post-installation messages. It echoes a note about the package being a pre-compiled binary with Qt6 support. There are no dangerous commands, network requests, file operations, or any other suspicious behavior. The script is entirely benign and typical of AUR packaging.
</details>
<evidence></evidence>
<summary>Benign install script; no malicious activity.</summary>
</security_assessment>

[2/4] Reviewing .SRCINFO, sunshine-capabilities.hook...
+ Reviewed sunshine-beta-bin.install. Status: SAFE -- Benign install script; no malicious activity.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The .SRCINFO file is a metadata descriptor for the AUR package `sunshine-beta-bin`. It declares package name, version, dependencies, and sources. All referenced sources point to the official LizardByte/Sunshine GitHub repository (the upstream project). Checksums are provided for the binary tarball, the install script, and the hook file. The desktop file source has a SKIP checksum, which is a common but unpinned practice — it does not constitute malicious behavior. The file contains no executable code, no suspicious network requests, no obfuscation, and no commands that would exfiltrate data or install backdoors. The contents are consistent with standard AUR packaging practices.
</details>
<evidence></evidence>
<summary>Standard metadata file, no malicious content.</summary>
</security_assessment>

[3/4] Reviewing sunshine-capabilities.hook...
+ Reviewed .SRCINFO. Status: SAFE -- Standard metadata file, no malicious content.
LLM auditresponse for sunshine-capabilities.hook:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a pacman hook definition that re-applies the `cap_sys_admin` capability to the Sunshine binary after installation or upgrade. This is a standard practice for applications that require elevated privileges for kernel mode-setting (KMS) capture on Wayland. There is no obfuscation, no network requests, no data exfiltration, and no deviation from expected packaging behavior. The file is straightforward and benign.
</details>
<evidence></evidence>
<summary>Standard capability hook, no malicious content.</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed sunshine-capabilities.hook. Status: SAFE -- Standard capability hook, no malicious content.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 13,181
  Completion Tokens: 2,298
  Total Tokens: 15,479
  Total Cost: $0.001419
  Execution Time: 67.49 seconds

Final Status: SAFE


No issues found.
