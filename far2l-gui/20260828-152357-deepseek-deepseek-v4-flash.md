---
package: far2l-gui
pkgbase: far2l
pkgver: 2.9.0
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 3e318911529c43138ec6bdba0bfcb56907607021
prompt_tokens: 11808
completion_tokens: 1624
total_tokens: 13432
cost: 0.0013068608
execution_time: 42.22
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: ok
upstream_files: 2782
upstream_named_files: 2
unpinned_sources: 0
date: 2026-08-28T15:23:56Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard .gitignore excluding build artifacts and package files; no security concerns.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD with no security issues.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata, no suspicious content.
---

far2l-gui is built from far2l
Cloning https://aur.archlinux.org/far2l.git...
Cloned far2l-gui
Analyzing far2l-gui AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD sources a fixed-release tarball from the official upstream repository with a valid SHA256 checksum. No commands in the global scope (variable assignments, array definitions, function definitions) perform any dangerous operations. The `pkgver` function is not defined, so no dynamic code execution occurs during sourcing. The `makepkg --nobuild --nodeps --noprepare` and `makepkg --printsrcinfo` commands will only fetch the source and parse the PKGBUILD, which is safe.
</details>
<evidence></evidence>
<summary>PKGBUILD sourcing and source fetch are safe.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- PKGBUILD sourcing and source fetch are safe.
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Note: the PKGBUILD names 2 file(s) in the downloaded sources (src/far2l-v_2.9.0/far2l/DE/far2l.desktop, src/far2l-v_2.9.0/far2l/DE/far2ledit.desktop); they are upstream content and were not reviewed.
Reviewing the 3 file(s) in the AUR repository. The 2782 downloaded file(s) are upstream content, outside the threat model, and are not read.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, .gitignore...
[0/3] Reviewing .SRCINFO, .gitignore, PKGBUILD...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.gitignore` file used in an Arch Linux packaging repository. It excludes common build artifacts (`src`, `pkg`), source tarballs (`*.tar.gz`), and built package files (`*.pkg.tar*`) from version control. There is no executable code, no network access, no file modification outside normal packaging conventions, and no indication of malicious behavior.
</details>
<evidence></evidence>
<summary>Standard .gitignore excluding build artifacts and package files; no security concerns.</summary>
</security_assessment>

[1/3] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore excluding build artifacts and package files; no security concerns.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard AUR packaging practices for the far2l package. The source is pinned to a specific GitHub tag with a valid SHA256 checksum, and the build process uses cmake and standard installation commands. No suspicious network requests, obfuscated code, or dangerous commands (like curl, wget, eval) are present. The `env -C` usage in `package_far2l-python` is a legitimate way to install plugin files from the build directory. All operations are confined to the expected source tree and package destination directories. There is no evidence of supply chain injection or malicious behavior.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD with no security issues.</summary>
</security_assessment>

[2/3] Reviewing .SRCINFO...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD with no security issues.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The `.SRCINFO` file is a standard metadata descriptor for the AUR package `far2l-gui`. It contains only package declarations (version, architecture, dependencies, source URL with SHA256 checksum, and subpackage definitions). The source URL points to the official GitHub repository of the project (`elfmz/far2l`), and the checksum is provided (not `SKIP`). There is no executable code, no obfuscation, no unexpected network requests, and no commands of any kind. The file conforms to normal AUR packaging practices.
</details>
<evidence></evidence>
<summary>Standard AUR metadata, no suspicious content.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata, no suspicious content.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 11,808
  Completion Tokens: 1,624
  Total Tokens: 13,432
  Total Cost: $0.001307
  Execution Time: 42.22 seconds

Final Status: SAFE


No issues found.
