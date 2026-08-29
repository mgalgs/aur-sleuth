---
package: dragengine
pkgver: 1.34
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 3e318911529c43138ec6bdba0bfcb56907607021
prompt_tokens: 18232
completion_tokens: 2539
total_tokens: 20771
cost: 0.00201678120
execution_time: 73.03
files_reviewed: 5
files_skipped: 0
maintainer_files: 5
source_fetch: ok
upstream_files: 15131
upstream_named_files: 0
unpinned_sources: 0
date: 2026-08-28T23:46:21Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard .SRCINFO metadata; no malicious content.
  - file: .gitignore
    status: safe
    summary: Benign .gitignore with standard build artifact patterns; no security issues.
  - file: LICENSE
    status: safe
    summary: Standard MIT license text; no code, no security concerns.
  - file: custom.py
    status: safe
    summary: Pure build configuration, no security issues.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD with no malicious behavior.
---

Cloning https://aur.archlinux.org/dragengine.git...
Cloned dragengine
Analyzing dragengine AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only standard variable assignments, comments, and function definitions (`build()`, `package_dragengine()`, `package_deigde()`). There is no top-level code execution (no command substitutions, no `eval`, no `curl|bash`, etc.) that would run during `makepkg --nobuild --nodeps --noprepare` or `makepkg --printsrcinfo`. The `source` array includes a git+https URL from the project's official GitHub repository and a static file `custom.py` with a valid SHA-256 checksum. Fetching these sources and parsing the PKGBUILD does not execute any untrusted code. The `pkgver()` function is absent, so no code runs during version determination. All potentially dangerous commands are inside `build()` and `package_*()` functions, which are not executed during the requested commands. There is no evidence of malicious behavior targeting this narrow gate.
</details>
<evidence></evidence>
<summary>Source fetching and PKGBUILD parsing are safe.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Source fetching and PKGBUILD parsing are safe.
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Reviewing the 5 file(s) in the AUR repository. The 15131 downloaded file(s) are upstream content, outside the threat model, and are not read.
Reviewing the AUR repository's files...
[0/5] Reviewing .SRCINFO...
[0/5] Reviewing .SRCINFO, LICENSE...
[0/5] Reviewing .SRCINFO, LICENSE, .gitignore...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The .SRCINFO file contains purely declarative metadata for the AUR package: package name, version, dependencies, build sources (a tagged git checkout and a Python helper script), and checksums. No executable instructions or suspicious content is present. The sources point to the project&#39;s official GitHub repository, which is expected. The presence of a `custom.py` source file is normal for packaging helper scripts. There are no network requests, obfuscated code, or system modifications defined in this file.
</details>
<evidence></evidence>
<summary>Standard .SRCINFO metadata; no malicious content.</summary>
</security_assessment>

[0/5] Reviewing .SRCINFO, LICENSE, .gitignore, PKGBUILD...
[1/5] Reviewing LICENSE, .gitignore, PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard .SRCINFO metadata; no malicious content.
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This `.gitignore` file contains only standard git ignore patterns for build artifacts produced by an AUR package (compressed packages like `*.pkg.tar.zst`, the source directory `src/`, the package directory `pkg/`, and a staging directory name). There is no executable code, no network access, no obfuscation, and no system modification capability. This is entirely routine packaging hygiene.
</details>
<evidence>
</evidence>
<summary>
Benign .gitignore with standard build artifact patterns; no security issues.</summary>
</security_assessment>

[2/5] Reviewing LICENSE, PKGBUILD...
+ Reviewed .gitignore. Status: SAFE -- Benign .gitignore with standard build artifact patterns; no security issues.
[2/5] Reviewing LICENSE, PKGBUILD, custom.py...
LLM auditresponse for LICENSE:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard MIT License text for the DragonDreams GmbH project. It contains no executable code, no network requests, no file operations, and no obfuscated content. It is purely a legal notice and poses no security risk.

The `&quot;` entities are simply HTML-escaped quotation marks around the word "Software" in the license text, which is a common formatting artifact and not an indication of obfuscation or encoded commands.

</details>
<evidence>
</evidence>
<summary>
Standard MIT license text; no code, no security concerns.</summary>
</security_assessment>

[3/5] Reviewing PKGBUILD, custom.py...
+ Reviewed LICENSE. Status: SAFE -- Standard MIT license text; no code, no security concerns.
LLM auditresponse for custom.py:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a build configuration script for the Drag[en]gine project. It defines variables for enabling/disabling features and external library usage (e.g., `with_system_zlib = 'yes'`), build modules (`build_audio_openal = 'yes'`), archiving options, and a URL pointing to the project&#39;s own website (`distro_maintained_info_url`). There are no embedded commands, no network downloads, no obfuscated code, no attempts to exfiltrate data or modify system files. The configuration is entirely declarative and consistent with standard upstream packaging practices. No malicious or dangerous behavior is present.
</details>
<evidence></evidence>
<summary>Pure build configuration, no security issues.</summary>
</security_assessment>

[4/5] Reviewing PKGBUILD...
+ Reviewed custom.py. Status: SAFE -- Pure build configuration, no security issues.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard AUR packaging practices. It builds the Drag[en]gine game engine and its editor (deigde) from the upstream GitHub repository using scons. All dependencies are legitimate and necessary for the project. The source tarballs are pinned by checksum, and the git tag source is additionally verified by a SHA-256 checksum. There is no obfuscated code, no unexpected network requests, no attempts to exfiltrate data, and no use of dangerous commands like `curl|bash` or `eval`. The commented-out sections are inert and do not affect the build. The only file copied from the AUR source tree (`custom.py`) is a build configuration script with an appended version string, which is normal. No supply-chain attack indicators are present.
</details>
<evidence>
</evidence>
<summary>Standard AUR PKGBUILD with no malicious behavior.</summary>
</security_assessment>

[5/5] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD with no malicious behavior.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 18,232
  Completion Tokens: 2,539
  Total Tokens: 20,771
  Total Cost: $0.002017
  Execution Time: 73.03 seconds

Final Status: SAFE


No issues found.
