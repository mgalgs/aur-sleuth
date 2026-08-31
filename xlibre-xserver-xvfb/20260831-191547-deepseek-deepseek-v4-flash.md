---
package: xlibre-xserver-xvfb
pkgbase: xlibre-xserver
pkgver: 25.1.9
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: b9e20f728bbe0de1871ebaca31738c802edc31f8
prompt_tokens: 31685
completion_tokens: 3257
total_tokens: 34942
cost: 0.00309106308
execution_time: 121.93
files_reviewed: 7
files_skipped: 0
maintainer_files: 7
source_fetch: ok
upstream_files: 1629
upstream_named_files: 1
unpinned_sources: 0
injection_attempts: 0
date: 2026-08-31T19:15:46Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata file, no malicious content.
  - file: LICENSE
    status: safe
    summary: Standard license file, no security issues.
  - file: LICENSE
    status: safe
    summary: Standard license file with no malicious content.
  - file: REUSE.toml
    status: safe
    summary: Static REUSE config file, no security issues.
  - file: xvfb-run
    status: safe
    summary: Standard xvfb-run wrapper, no malicious code.
  - file: xvfb-run.1
    status: safe
    summary: Documentation file with no executable code or threats.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD, no malicious content detected.
---

xlibre-xserver-xvfb is built from xlibre-xserver
Cloning https://aur.archlinux.org/xlibre-xserver.git...
Cloned xlibre-xserver-xvfb
Analyzing xlibre-xserver-xvfb AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains no top-level code execution, no `pkgver()` function, and no dangerous operations such as `eval`, `curl`, `wget`, or obfuscated commands in its global scope. All source entries point to the project's expected GitHub repository (`github.com/X11Libre/xserver`) or are local files (`xvfb-run`, `xvfb-run.1`) that come with the AUR source tarball. The sha512sums are provided and pinned. Because `makepkg --nobuild --nodeps --noprepare` only sources the PKGBUILD and fetches/extracts the source archives, none of the code in `build()`, `package()`, or helper functions (like `_install`) is executed. There is no evidence of malicious behavior that would execute during these steps.
</details>
<evidence></evidence>
<summary>No malicious code in global scope or pkgver.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious code in global scope or pkgver.
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Note: the PKGBUILD names 1 file(s) in the downloaded sources (src/xserver-xlibre-xserver-25.1.9/xkb/README.compiled); they are upstream content and were not reviewed.
Reviewing the 7 file(s) in the AUR repository. The 1629 downloaded file(s) are upstream content, outside the threat model, and are not read.
Reviewing the AUR repository's files...
[0/7] Reviewing .SRCINFO...
[0/7] Reviewing .SRCINFO, LICENSE...
[0/7] Reviewing .SRCINFO, LICENSE, LICENSE...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.SRCINFO` metadata file for the `xlibre-xserver` AUR package. It declares package metadata, dependencies, sources, and checksums. The sources are fetched from the project's own GitHub repository (`https://github.com/X11Libre/xserver`) and two local files (`xvfb-run`, `xvfb-run.1`). All SHA512 checksums are provided (no `SKIP` entries). The file contains no executable code, obfuscation, network requests, or system modifications. It is purely declarative and follows normal AUR packaging practices.
</details>
<evidence></evidence>
<summary>Standard AUR metadata file, no malicious content.</summary>
</security_assessment>

[0/7] Reviewing .SRCINFO, LICENSE, LICENSE, PKGBUILD...
[1/7] Reviewing LICENSE, LICENSE, PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata file, no malicious content.
LLM auditresponse for LICENSE:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a plain-text license file (similar to ISC/BSDL). It contains only a copyright notice and a permission statement. There are no executable commands, network requests, obfuscated code, or references to any external resources. No security concerns are present.
</details>
<evidence></evidence>
<summary>Standard license file, no security issues.</summary>
</security_assessment>

[1/7] Reviewing LICENSE, LICENSE, PKGBUILD, REUSE.toml...
[2/7] Reviewing LICENSE, PKGBUILD, REUSE.toml...
+ Reviewed LICENSE. Status: SAFE -- Standard license file, no security issues.
LLM auditresponse for LICENSE:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard ISC license text, containing only copyright and permission notices. There is no executable code, no network requests, no obfuscated content, and no system operations. It poses no security risk.
</details>
<evidence></evidence>
<summary>Standard license file with no malicious content.</summary>
</security_assessment>

[3/7] Reviewing PKGBUILD, REUSE.toml...
+ Reviewed LICENSE. Status: SAFE -- Standard license file with no malicious content.
[3/7] Reviewing PKGBUILD, REUSE.toml, xvfb-run...
LLM auditresponse for REUSE.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a REUSE configuration file (REUSE.toml) that contains only metadata about copyright and license annotations for files in the package. It lists file paths and specifies SPDX copyright holders and license identifiers. There is no executable code, no network requests, no obfuscation, and no commands of any kind. It is a static, descriptive file used for compliance with the REUSE specification. No security concerns are present.
</details>
<evidence></evidence>
<summary>Static REUSE config file, no security issues.</summary>
</security_assessment>

[3/7] Reviewing PKGBUILD, REUSE.toml, xvfb-run, xvfb-run.1...
[4/7] Reviewing PKGBUILD, xvfb-run, xvfb-run.1...
+ Reviewed REUSE.toml. Status: SAFE -- Static REUSE config file, no security issues.
LLM auditresponse for xvfb-run:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard xvfb-run wrapper script, derived from the Debian package, that launches a virtual X server (Xvfb), runs a user-specified command, and cleans up the server and authentication files afterwards. It uses `getopt` for argument parsing, `mktemp` for safe temporary file creation, and `mcookie` for generating an X authority cookie. The script performs no network requests, no obfuscated or encoded commands, and no system modifications outside of expected temporary file creation and process management. All operations are directly related to the package's stated purpose of providing a virtual X server environment. No supply-chain attack indicators are present.
</details>
<evidence></evidence>
<summary>Standard xvfb-run wrapper, no malicious code.</summary>
</security_assessment>

[5/7] Reviewing PKGBUILD, xvfb-run.1...
+ Reviewed xvfb-run. Status: SAFE -- Standard xvfb-run wrapper, no malicious code.
LLM auditresponse for xvfb-run.1:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a manual page (troff format) for the `xvfb-run` command. It contains only documentation text, macro formatting, and standard man page conventions. There is no executable code, no network requests, no obfuscated content, and no system-modifying operations. The URL to the Debian Bug Tracker is a normal documentation reference. The file poses no security risk.
</details>
<evidence></evidence>
<summary>Documentation file with no executable code or threats.</summary>
</security_assessment>

[6/7] Reviewing PKGBUILD...
+ Reviewed xvfb-run.1. Status: SAFE -- Documentation file with no executable code or threats.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard packaging practices for Arch Linux and the AUR. It fetches source from the project's own GitHub repository, uses meson/ninja for building, splits into multiple subpackages, and includes checksums for all source files. No suspicious network requests, obfuscated code, or unexpected system modifications are present. The additional file `xvfb-run` is included in the source array with a valid sha512 checksum and installed as a helper script. The build process is typical and does not execute any untrusted code outside the upstream build system.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD, no malicious content detected.</summary>
</security_assessment>

[7/7] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD, no malicious content detected.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 31,685
  Completion Tokens: 3,257
  Total Tokens: 34,942
  Total Cost: $0.003091
  Execution Time: 121.93 seconds

Final Status: SAFE


No issues found.
