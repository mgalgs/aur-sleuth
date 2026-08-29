---
package: koboldcpp
pkgver: 1.120
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 3e318911529c43138ec6bdba0bfcb56907607021
prompt_tokens: 13104
completion_tokens: 1774
total_tokens: 14878
cost: 0.00140809312
execution_time: 35.09
files_reviewed: 4
files_skipped: 1
maintainer_files: 5
source_fetch: ok
upstream_files: 2635
upstream_named_files: 2
unpinned_sources: 0
date: 2026-08-29T07:26:49Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard gitignore file, no security issues.
  - file: .SRCINFO
    status: safe
    summary: Standard .SRCINFO, no security issues.
  - file: koboldcpp.png
    status: skipped
    summary: "Skipping binary file: koboldcpp.png"
  - file: koboldcpp.desktop
    status: safe
    summary: Standard desktop entry file, no security issues.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD with no security issues.
---

Cloning https://aur.archlinux.org/koboldcpp.git...
Cloned koboldcpp
Analyzing koboldcpp AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains standard variable assignments and function definitions. No code executes during the sourcing phase (global scope) other than variable assignments and function declarations. There is no `pkgver()` function with dangerous commands. The source array points to the official upstream GitHub repository with a pinned version tag, and all checksums are provided (none SKIP). No top-level command substitutions, obfuscation, or suspicious network operations are present. Running `makepkg --nobuild --nodeps --noprepare` and `--printsrcinfo` will only fetch the declared sources and parse the PKGBUILD safely.
</details>
<evidence></evidence>
<summary>PKGBUILD is safe for source fetching and parsing.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- PKGBUILD is safe for source fetching and parsing.
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Note: the PKGBUILD names 2 file(s) in the downloaded sources (src/koboldcpp-1.120/json_to_gbnf.py, src/koboldcpp-1.120/koboldcpp.py); they are upstream content and were not reviewed.
Reviewing the 5 file(s) in the AUR repository. The 2635 downloaded file(s) are upstream content, outside the threat model, and are not read.
Reviewing the AUR repository's files...
[0/5] Reviewing .SRCINFO...
[0/5] Reviewing .SRCINFO, .gitignore...
[0/5] Reviewing .SRCINFO, .gitignore, PKGBUILD...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard `.gitignore` file used in git repositories. It contains only a list of patterns for ignoring files and directories such as build artifacts (`pkg`, `src`, `makechroot`), log files (`*.log`), and archive files (`*.tar.gz`, `*.pkg.tar.zst`). There is no executable code, no network operations, no obfuscation, and no system modification. This file poses no security threat.
</details>
<evidence></evidence>
<summary>Standard gitignore file, no security issues.</summary>
</security_assessment>

[1/5] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed .gitignore. Status: SAFE -- Standard gitignore file, no security issues.
[1/5] Reviewing .SRCINFO, PKGBUILD, koboldcpp.desktop...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard `.SRCINFO` metadata descriptor for the AUR package `koboldcpp`. It contains only package metadata: name, version, description, URL, license, dependencies, and source file definitions with SHA256 checksums. All sources point to the project's official GitHub repository (`https://github.com/LostRuins/koboldcpp/`), which is the expected upstream. Checksums are present and not skipped. There are no embedded scripts, no obfuscation, no suspicious commands, and no network operations outside of declaring the expected source URLs. This file presents no security concerns.
</details>
<evidence></evidence>
<summary>Standard .SRCINFO, no security issues.</summary>
</security_assessment>

[1/5] Reviewing .SRCINFO, PKGBUILD, koboldcpp.desktop, koboldcpp.png...
[2/5] Reviewing PKGBUILD, koboldcpp.desktop, koboldcpp.png...
+ Reviewed .SRCINFO. Status: SAFE -- Standard .SRCINFO, no security issues.
[3/5] Reviewing PKGBUILD, koboldcpp.desktop...
! Reviewed koboldcpp.png. Status: SKIPPED -- Skipping binary file: koboldcpp.png
LLM auditresponse for koboldcpp.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `koboldcpp.desktop` is a standard Linux desktop entry file. It defines an application launcher with fields such as Comment, Exec, Icon, Name, Categories, etc. The Exec line points to `/usr/bin/koboldcpp`, which is the expected binary path for this package. There is no embedded code, no network requests, no obfuscation, and no system modifications beyond the normal function of a .desktop file. The file follows standard packaging practices and contains no evidence of malicious behavior.
</details>
<evidence>
</evidence>
<summary>Standard desktop entry file, no security issues.</summary>
</security_assessment>

[4/5] Reviewing PKGBUILD...
+ Reviewed koboldcpp.desktop. Status: SAFE -- Standard desktop entry file, no security issues.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a standard and well-structured packaging script for the koboldcpp application. It fetches source code from the official GitHub repository with a pinned version tag and a valid SHA256 checksum, ensuring integrity. The build and install steps use only conventional tools (make, install, python) and produce no unexpected network requests, obfuscated code, or dangerous operations. The wrapper script in `/usr/bin/koboldcpp` is a simple shell wrapper that invokes the Python application. All actions are consistent with normal AUR packaging practices and the stated purpose of the package.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD with no security issues.</summary>
</security_assessment>

[5/5] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD with no security issues.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
(Skipped 1 file: koboldcpp.png)

API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 13,104
  Completion Tokens: 1,774
  Total Tokens: 14,878
  Total Cost: $0.001408
  Execution Time: 35.09 seconds

Final Status: SAFE


No issues found.


Audit Skips:

koboldcpp.png: [SKIPPED] Skipping binary file: koboldcpp.png
