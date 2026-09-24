---
package: faugus-launcher
pkgver: 2.4.0
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 23540
completion_tokens: 2120
total_tokens: 25660
cost: 0.00237630120
execution_time: 40.29
files_reviewed: 4
files_skipped: 1
maintainer_files: 5
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 1
injection_attempts: 0
date: 2026-09-24T15:01:32Z
file_verdicts:
  - file: faugus-launcher.desktop
    status: safe
    summary: Standard .desktop file, no malicious content.
  - file: faugus-launcher.png
    status: skipped
    summary: "Skipping binary file: faugus-launcher.png"
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata file; no malicious content.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD, no malicious code found.
  - file: faugus-launcher.py
    status: safe
    summary: No supply-chain attack indicators found.
---

Materializing faugus-launcher from local mirror...
Materialized faugus-launcher
Analyzing faugus-launcher AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only standard variable declarations at the top level, with no command substitutions, function calls, or any executable code. The source URL is a static string pointing to the project's own GitHub tag. Since `makepkg --printsrcinfo` only sources the PKGBUILD and executes top-level code, there is no opportunity for malicious execution during this step. All potentially dangerous logic is confined to the build() and package() functions, which are not invoked by this command.
</details>
<evidence></evidence>
<summary>No top-level executable code found.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No top-level executable code found.
Note: 1 remote source(s) have no checksum (sha256sums=SKIP), so the bytes are not verifiable: https://github.com/Faugus/faugus-launcher/archive/refs/tags/2.4.0.tar.gz
Reviewing the 5 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/5] Reviewing .SRCINFO...
[0/5] Reviewing .SRCINFO, PKGBUILD...
[0/5] Reviewing .SRCINFO, PKGBUILD, faugus-launcher.desktop...
LLM auditresponse for faugus-launcher.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard desktop entry file. It contains typical fields (Type, Name, Exec, Icon, Categories) with no suspicious content. The Exec command simply references the installed binary `faugus-launcher`. There are no network requests, obfuscated code, unexpected file operations, or any deviation from normal packaging practices. It poses no security risk.
</details>
<evidence></evidence>
<summary>Standard .desktop file, no malicious content.</summary>
</security_assessment>

[0/5] Reviewing .SRCINFO, PKGBUILD, faugus-launcher.desktop, faugus-launcher.png...
[1/5] Reviewing .SRCINFO, PKGBUILD, faugus-launcher.png...
+ Reviewed faugus-launcher.desktop. Status: SAFE -- Standard .desktop file, no malicious content.
[2/5] Reviewing .SRCINFO, PKGBUILD...
! Reviewed faugus-launcher.png. Status: SKIPPED -- Skipping binary file: faugus-launcher.png
[2/5] Reviewing .SRCINFO, PKGBUILD, faugus-launcher.py...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The `.SRCINFO` file is a metadata descriptor for the AUR package. It contains only standard fields such as package name, version, dependencies, and source URL. The source points to the official GitHub repository of the project. The `sha256sums` value is `SKIP`, which is a common practice for AUR packages and does not by itself indicate malice. There are no scripts, encoded payloads, network exfiltration, or any other malicious patterns present. This file is purely declarative and poses no supply-chain risk.
</details>
<evidence></evidence>
<summary>Standard AUR metadata file; no malicious content.</summary>
</security_assessment>

LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD is a standard Arch Linux package definition. It downloads the source tarball from the project's official GitHub repository (`https://github.com/Faugus/${pkgname}/archive/refs/tags/${pkgver}.tar.gz`). The build process uses `meson` and `meson compile`, which is a typical build system for Python/GTK applications. The `package()` function installs to `$pkgdir`. There are no obfuscated commands, no unexpected network requests, no execution of untrusted code outside the upstream source, and no data exfiltration. The `sha256sums` is set to `'SKIP'`, which is a common practice (especially for VCS sources, though this is a tarball; still not malicious by itself). No genuinely malicious behavior is present.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD, no malicious code found.</summary>
</security_assessment>

[3/5] Reviewing PKGBUILD, faugus-launcher.py...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata file; no malicious content.
[4/5] Reviewing faugus-launcher.py...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD, no malicious code found.
LLM auditresponse for faugus-launcher.py:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `faugus-launcher.py` is a Python GTK3 application that launches Windows games via `umu-run`. It contains no network requests, no obfuscated code, and no exfiltration or backdoor mechanisms. All file operations are confined to the user&#x27;s home directory (`~/.config/faugus-launcher/`, `~/.local/share/applications/`, `~/Desktop/`). The application does include shell command construction from user-supplied fields (game path, arguments), which is inherent to its functionality as a game launcher. This can be a security weakness (command injection if a user enters malicious input), but it is a design flaw of the upstream application, not evidence of a supply-chain attack injected into the AUR package. The PKGBUILD and helper scripts elsewhere in the repository would need separate auditing, but within this file there are no indicators of malicious intent.
</details>
<evidence></evidence>
<summary>No supply-chain attack indicators found.</summary>
</security_assessment>

[5/5] Reviewing ...
+ Reviewed faugus-launcher.py. Status: SAFE -- No supply-chain attack indicators found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
(Skipped 1 file: faugus-launcher.png)

API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 23,540
  Completion Tokens: 2,120
  Total Tokens: 25,660
  Total Cost: $0.002376
  Execution Time: 40.29 seconds

Final Status: SAFE


No issues found.


Audit Skips:

faugus-launcher.png: [SKIPPED] Skipping binary file: faugus-launcher.png
