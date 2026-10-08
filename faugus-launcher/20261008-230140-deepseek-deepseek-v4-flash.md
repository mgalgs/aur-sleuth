---
package: faugus-launcher
pkgver: 2.4.4
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 23540
completion_tokens: 2328
total_tokens: 25868
cost: 0.0031140180
execution_time: 27.88
files_reviewed: 4
files_skipped: 1
maintainer_files: 5
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 1
injection_attempts: 0
date: 2026-10-08T23:01:40Z
file_verdicts:
  - file: faugus-launcher.desktop
    status: safe
    summary: Standard desktop entry file; no security issues.
  - file: faugus-launcher.png
    status: skipped
    summary: "Skipping binary file: faugus-launcher.png"
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata, no malicious content.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD, no security issues found.
  - file: faugus-launcher.py
    status: safe
    summary: No supply-chain attack; upstream app with user-input risk but not malicious.
---

Materializing faugus-launcher from local mirror...
Materialized faugus-launcher
Analyzing faugus-launcher AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only standard variable definitions in the global scope: package metadata, dependencies, source URL, and checksums set to SKIP. There are no dangerous command substitutions, network requests, or code executions at the top level. The build() and package() functions are defined but not invoked during `makepkg --printsrcinfo`. No malicious code is present in the global scope that would execute during sourcing.</details>
<evidence></evidence>
<summary>No global scope code execution risk.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No global scope code execution risk.
Note: 1 remote source(s) have no checksum (sha256sums=SKIP), so the bytes are not verifiable: https://github.com/Faugus/faugus-launcher/archive/refs/tags/2.4.4.tar.gz
Reviewing the 5 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/5] Reviewing .SRCINFO...
[0/5] Reviewing .SRCINFO, PKGBUILD...
[0/5] Reviewing .SRCINFO, PKGBUILD, faugus-launcher.desktop...
LLM auditresponse for faugus-launcher.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard Linux desktop entry file (`.desktop`). It contains no executable code, network requests, obfuscation, or file operations. It simply declares a launcher that runs the `faugus-launcher` binary with a specified icon and category. There is no evidence of malicious behavior.</details>
<evidence></evidence>
<summary>Standard desktop entry file; no security issues.</summary>
</security_assessment>

[1/5] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed faugus-launcher.desktop. Status: SAFE -- Standard desktop entry file; no security issues.
[1/5] Reviewing .SRCINFO, PKGBUILD, faugus-launcher.png...
[1/5] Reviewing .SRCINFO, PKGBUILD, faugus-launcher.png, faugus-launcher.py...
[2/5] Reviewing .SRCINFO, PKGBUILD, faugus-launcher.py...
! Reviewed faugus-launcher.png. Status: SKIPPED -- Skipping binary file: faugus-launcher.png
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard `.SRCINFO` metadata file for an AUR package. It declares the package source as an archive from the project's official GitHub repository (`https://github.com/Faugus/faugus-launcher/archive/refs/tags/2.4.4.tar.gz`). The dependencies listed are standard Python and GTK libraries, all legitimate for a gaming launcher application. The `sha256sums = SKIP` is a common practice (especially for automatically generated files or when the maintainer chooses not to pin checksums) and is not evidence of malice. No network requests, obfuscated code, file operations, or backdoor-like behavior are present. The file is purely declarative and contains only metadata.
</details>
<evidence></evidence>
<summary>Standard AUR metadata, no malicious content.</summary>
</security_assessment>

[3/5] Reviewing PKGBUILD, faugus-launcher.py...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata, no malicious content.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD is a standard AUR packaging file. It fetches the source tarball from the project's own GitHub repository, uses meson for building and installation, and declares standard dependencies. There is no obfuscated code, no unexpected network requests, no execution of untrusted downloaded content, and no file operations outside the expected build and install process. The SKIP checksum is noted but is not itself evidence of malice. The package does not contain any supply-chain attack indicators.
</details>
<evidence>

</evidence>
<summary>Standard PKGBUILD, no security issues found.</summary>
</security_assessment>

[4/5] Reviewing faugus-launcher.py...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD, no security issues found.
LLM auditresponse for faugus-launcher.py:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is the main Python script for the Faugus Launcher, a GTK-based GUI for launching Wine/Proton games using tools like Mangohud, GameMode, and umu-run. The code manages game entries, creates desktop shortcuts, and runs user-provided commands via subprocess. There is no evidence of injected malicious code intended as a supply-chain attack.

The script contains a notable security concern: it uses `os.system()` with a user-supplied path (the game executable path) when extracting icons via 7z (`os.system(f'7z e "{path}" -o{icon_directory} -r -aoa')`). This could allow command injection if a malicious path is entered. However, this is an upstream coding flaw, not an injected attack—the path is provided by the user running the launcher for their own games. No network requests, obfuscated code, data exfiltration, or unexpected external downloads are present. The script only interacts with the user’s home directory and standard system binaries.
</details>
<evidence></evidence>
<summary>No supply-chain attack; upstream app with user-input risk but not malicious.</summary>
</security_assessment>

[5/5] Reviewing ...
+ Reviewed faugus-launcher.py. Status: SAFE -- No supply-chain attack; upstream app with user-input risk but not malicious.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
(Skipped 1 file: faugus-launcher.png)

API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 23,540
  Completion Tokens: 2,328
  Total Tokens: 25,868
  Total Cost: $0.003114
  Execution Time: 27.88 seconds

Final Status: SAFE


No issues found.


Audit Skips:

faugus-launcher.png: [SKIPPED] Skipping binary file: faugus-launcher.png
