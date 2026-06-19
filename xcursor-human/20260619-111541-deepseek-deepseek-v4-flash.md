---
package: xcursor-human
pkgver: 0.6
pkgrel: 5
result: safe
model: deepseek/deepseek-v4-flash
provider: openrouter.ai
base_url: https://openrouter.ai/api/v1
aur_sleuth_rev: 11c93a0c95e2166961e3664fea6b5a63827ded10
prompt_tokens: 27641
completion_tokens: 6697
total_tokens: 34338
cost: 0.00369315
execution_time: 90.37
files_reviewed: 12
files_skipped: 0
date: 2026-06-19T11:15:41Z
file_verdicts:
  - file: index.theme
    status: safe
    summary: Static theme metadata, no executable content.
  - file: PKGBUILD
    status: safe
    summary: Standard cursor theme PKGBUILD with no signs of malice.
  - file: src/human-cursors-theme-0.6/debian/compat
    status: safe
    summary: No security issues found; benign version number.
  - file: src/human-cursors-theme-0.6/debian/dirs
    status: safe
    summary: Static directory path, no security concerns.
  - file: src/human-cursors-theme-0.6/debian/postinst
    status: safe
    summary: Standard post-install script for cursor theme.
  - file: src/human-cursors-theme-0.6/debian/pycompat
    status: safe
    summary: File contains only a version indicator; no security issues.
  - file: src/human-cursors-theme-0.6/debian/control
    status: safe
    summary: Standard Debian control file, no security issues.
  - file: src/human-cursors-theme-0.6/cursor.theme
    status: safe
    summary: Plain cursor theme file, no security concerns.
  - file: src/human-cursors-theme-0.6/debian/rules
    status: safe
    summary: Standard Debian CDBS packaging rules; no malicious content.
  - file: Makefile
    status: safe
    summary: Standard AUR maintainer Makefile, no malicious behavior found.
  - file: src/human-cursors-theme-0.6/debian/prerm
    status: safe
    summary: Standard package prerm script, no security issues.
  - file: src/human-cursors-theme-0.6/setup.py
    status: safe
    summary: Safe distutils setup for cursor theme installation.
---

Cloning https://aur.archlinux.org/xcursor-human.git to /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-2mtjocpm...
Cloned repository to /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-2mtjocpm
Analyzing xcursor-human AUR package (working in /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-2mtjocpm) with deepseek/deepseek-v4-flash from https://openrouter.ai/api/v1
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only static variable assignments and a `package()` function that will not be executed during `makepkg --nobuild --nodeps --noprepare` or `makepkg --printsrcinfo`. The `source` array uses the official Ubuntu Launchpad URL (HTTPS) for the tarball and a local `index.theme` file. No command substitutions, dangerous functions (eval, curl, wget, etc.), or obfuscated code are present in the global scope or `pkgver()`. The `sha256sums` are provided (not SKIP), ensuring source integrity. There is no top-level code that could execute malicious payloads during sourcing or source fetching.
</details>
<summary>
Safe, no executable code outside package()</summary>
</security_assessment>

+ Initial PKGBUILD audit complete [grey50]-- Safe, no executable code outside package()[/]
Running makepkg --nobuild --nodeps --noprepare to download sources for agent...
makepkg --nobuild --nodeps --noprepare successful
Running makepkg --printsrcinfo to get source files for agent...
makepkg --printsrcinfo successful
Reviewing required files...
[0/2] Reviewing PKGBUILD...
[0/2] Reviewing PKGBUILD, index.theme...
LLM auditresponse for index.theme:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `index.theme` is a standard icon theme configuration file containing only static metadata (`[Icon Theme]`, `Name=Human`, `Comment=The Human Cursor Theme`). There is no executable code, no obfuscation, no network requests, and no file operations. The content is plain text and entirely benign, consistent with normal packaging practices.
</details>
<summary>Static theme metadata, no executable content.</summary>
</security_assessment>

[1/2] Reviewing PKGBUILD...
+ Reviewed index.theme. Status: SAFE -- Static theme metadata, no executable content.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard AUR packaging practices for a cursor theme sourced from Ubuntu's official Launchpad archive. The source tarball and an index.theme file are fetched from trusted locations (launchpad.net and included inline in the package source) with pinned SHA-256 checksums. The `package()` function runs the upstream Python setup script to install files, then removes an unwanted `/usr/lib` directory (likely leftover bytecode or library artifacts from the setup process) — a harmless cleanup step. No obfuscation, unexpected network requests, or tampering with system files outside the package's scope is present. All operations are routine for a cursor theme package.
</details>
<summary>
Standard cursor theme PKGBUILD with no signs of malice.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard cursor theme PKGBUILD with no signs of malice.
Reviewed all required files.
Deciding which files to review next...
LLM response for file selection:
Makefile
src/human-cursors-theme-0.6/setup.py
src/human-cursors-theme-0.6/cursor.theme
src/human-cursors-theme-0.6/debian/compat
src/human-cursors-theme-0.6/debian/control
src/human-cursors-theme-0.6/debian/dirs
src/human-cursors-theme-0.6/debian/postinst
src/human-cursors-theme-0.6/debian/prerm
src/human-cursors-theme-0.6/debian/pycompat
src/human-cursors-theme-0.6/debian/rules
Decided to review 10 additional files: Makefile, src/human-cursors-theme-0.6/setup.py, src/human-cursors-theme-0.6/cursor.theme, src/human-cursors-theme-0.6/debian/compat, src/human-cursors-theme-0.6/debian/control, src/human-cursors-theme-0.6/debian/dirs, src/human-cursors-theme-0.6/debian/postinst, src/human-cursors-theme-0.6/debian/prerm, src/human-cursors-theme-0.6/debian/pycompat, src/human-cursors-theme-0.6/debian/rules
Reviewing additional files...
Reviewing additional files...
[0/10] Reviewing src/human-cursors-theme-0.6/setup.py...
[0/10] Reviewing src/human-cursors-theme-0.6/setup.py, Makefile...
[0/10] Reviewing src/human-cursors-theme-0.6/setup.py, Makefile, src/human-cursors-theme-0.6/cursor.theme...
[0/10] Reviewing src/human-cursors-theme-0.6/setup.py, Makefile, src/human-cursors-theme-0.6/cursor.theme, src/human-cursors-theme-0.6/debian/compat...
[0/10] Reviewing src/human-cursors-theme-0.6/setup.py, Makefile, src/human-cursors-theme-0.6/cursor.theme, src/human-cursors-theme-0.6/debian/compat, src/human-cursors-theme-0.6/debian/dirs...
[0/10] Reviewing src/human-cursors-theme-0.6/setup.py, Makefile, src/human-cursors-theme-0.6/cursor.theme, src/human-cursors-theme-0.6/debian/compat, src/human-cursors-theme-0.6/debian/dirs, src/human-cursors-theme-0.6/debian/control...
[0/10] Reviewing src/human-cursors-theme-0.6/setup.py, Makefile, src/human-cursors-theme-0.6/cursor.theme, src/human-cursors-theme-0.6/debian/compat, src/human-cursors-theme-0.6/debian/dirs, src/human-cursors-theme-0.6/debian/control, src/human-cursors-theme-0.6/debian/postinst...
[0/10] Reviewing src/human-cursors-theme-0.6/setup.py, Makefile, src/human-cursors-theme-0.6/cursor.theme, src/human-cursors-theme-0.6/debian/compat, src/human-cursors-theme-0.6/debian/dirs, src/human-cursors-theme-0.6/debian/control, src/human-cursors-theme-0.6/debian/postinst, src/human-cursors-theme-0.6/debian/pycompat...
[0/10] Reviewing src/human-cursors-theme-0.6/setup.py, Makefile, src/human-cursors-theme-0.6/cursor.theme, src/human-cursors-theme-0.6/debian/compat, src/human-cursors-theme-0.6/debian/dirs, src/human-cursors-theme-0.6/debian/control, src/human-cursors-theme-0.6/debian/postinst, src/human-cursors-theme-0.6/debian/pycompat, src/human-cursors-theme-0.6/debian/prerm...
[0/10] Reviewing src/human-cursors-theme-0.6/setup.py, Makefile, src/human-cursors-theme-0.6/cursor.theme, src/human-cursors-theme-0.6/debian/compat, src/human-cursors-theme-0.6/debian/dirs, src/human-cursors-theme-0.6/debian/control, src/human-cursors-theme-0.6/debian/postinst, src/human-cursors-theme-0.6/debian/pycompat, src/human-cursors-theme-0.6/debian/prerm, src/human-cursors-theme-0.6/debian/rules...
LLM auditresponse for compat:
<security_assessment>
<decision>SAFE</decision>
<details>
The file contains only a single line with the number "5". No code, no commands, no network requests, and no obfuscation. This appears to be a standard compatibility version identifier for a cursor theme. There is no evidence of malicious behavior.
</details>
<summary>No security issues found; benign version number.</summary>
</security_assessment>

[1/10] Reviewing src/human-cursors-theme-0.6/setup.py, Makefile, src/human-cursors-theme-0.6/cursor.theme, src/human-cursors-theme-0.6/debian/dirs, src/human-cursors-theme-0.6/debian/control, src/human-cursors-theme-0.6/debian/postinst, src/human-cursors-theme-0.6/debian/pycompat, src/human-cursors-theme-0.6/debian/prerm, src/human-cursors-theme-0.6/debian/rules...
+ Reviewed src/human-cursors-theme-0.6/debian/compat. Status: SAFE -- No security issues found; benign version number.
LLM auditresponse for dirs:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `dirs` simply contains a single directory path (`usr/share/icons/default`). This is a standard configuration file used by icon theme packages to specify the default icon directory. There is no executable code, no network activity, no obfuscation, and no potential for malicious behavior. It is entirely benign.
</details>
<summary>Static directory path, no security concerns.</summary>
</security_assessment>

[2/10] Reviewing src/human-cursors-theme-0.6/setup.py, Makefile, src/human-cursors-theme-0.6/cursor.theme, src/human-cursors-theme-0.6/debian/control, src/human-cursors-theme-0.6/debian/postinst, src/human-cursors-theme-0.6/debian/pycompat, src/human-cursors-theme-0.6/debian/prerm, src/human-cursors-theme-0.6/debian/rules...
+ Reviewed src/human-cursors-theme-0.6/debian/dirs. Status: SAFE -- Static directory path, no security concerns.
LLM auditresponse for postinst:
<security_assessment>
<decision>SAFE</decision>
<details>
The script is a standard Debian post-installation script for a cursor theme package. It uses `update-alternatives` to manage the system cursor theme, which is a normal and expected operation for such packages. There are no network requests, obfuscated code, or dangerous commands. The script only modifies symbolic links and alternative system settings related to the cursor theme, which is within the scope of the package's purpose.
</details>
<summary>Standard post-install script for cursor theme.</summary>
</security_assessment>

[3/10] Reviewing src/human-cursors-theme-0.6/setup.py, Makefile, src/human-cursors-theme-0.6/cursor.theme, src/human-cursors-theme-0.6/debian/control, src/human-cursors-theme-0.6/debian/pycompat, src/human-cursors-theme-0.6/debian/prerm, src/human-cursors-theme-0.6/debian/rules...
+ Reviewed src/human-cursors-theme-0.6/debian/postinst. Status: SAFE -- Standard post-install script for cursor theme.
LLM auditresponse for pycompat:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `pycompat` contains only the single character "2" (with a trailing newline). This is a common pattern in packaging to indicate Python version compatibility (e.g., Python 2). There is no executable code, no network operations, no obfuscation, or any other security-relevant content. The file is benign.
</details>
<summary>File contains only a version indicator; no security issues.</summary>
</security_assessment>

[4/10] Reviewing src/human-cursors-theme-0.6/setup.py, Makefile, src/human-cursors-theme-0.6/cursor.theme, src/human-cursors-theme-0.6/debian/control, src/human-cursors-theme-0.6/debian/prerm, src/human-cursors-theme-0.6/debian/rules...
+ Reviewed src/human-cursors-theme-0.6/debian/pycompat. Status: SAFE -- File contains only a version indicator; no security issues.
LLM auditresponse for control:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard Debian control file for the `human-cursors-theme` package. It declares package metadata such as source name, section, priority, maintainer, build dependencies, and description. There is no executable code, no network requests, no obfuscation, and no deviations from standard packaging practices. The file is entirely declarative and benign.
</details>
<summary>Standard Debian control file, no security issues.</summary>
</security_assessment>

[5/10] Reviewing src/human-cursors-theme-0.6/setup.py, Makefile, src/human-cursors-theme-0.6/cursor.theme, src/human-cursors-theme-0.6/debian/prerm, src/human-cursors-theme-0.6/debian/rules...
+ Reviewed src/human-cursors-theme-0.6/debian/control. Status: SAFE -- Standard Debian control file, no security issues.
LLM auditresponse for cursor.theme:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard cursor theme configuration file. It contains only plain INI-style settings: an `Inherits` directive (pointing to the "Human" theme) and `Hidden=true`. There is no executable code, no network requests, no obfuscation, no file operations outside its scope, and no deviation from expected packaging practices. The content is purely declarative and poses no security risk.
</details>
<summary>Plain cursor theme file, no security concerns.</summary>
</security_assessment>

[6/10] Reviewing src/human-cursors-theme-0.6/setup.py, Makefile, src/human-cursors-theme-0.6/debian/prerm, src/human-cursors-theme-0.6/debian/rules...
+ Reviewed src/human-cursors-theme-0.6/cursor.theme. Status: SAFE -- Plain cursor theme file, no security concerns.
LLM auditresponse for rules:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard CDBS (Common Debian Build System) Makefile used for packaging Python applications. It includes standard CDBS rules files (`debhelper.mk` and `python-distutils.mk`) and runs `dh_iconcache` during post-install to update the icon cache, which is a routine packaging operation. There is no obfuscated code, network requests, or any deviation from normal packaging practices. No security issues are present.
</details>
<summary>Standard Debian CDBS packaging rules; no malicious content.</summary>
</security_assessment>

[7/10] Reviewing src/human-cursors-theme-0.6/setup.py, Makefile, src/human-cursors-theme-0.6/debian/prerm...
+ Reviewed src/human-cursors-theme-0.6/debian/rules. Status: SAFE -- Standard Debian CDBS packaging rules; no malicious content.
LLM auditresponse for Makefile:
<security_assessment>
<decision>SAFE</decision>
<details>
The Makefile is a standard helper script for AUR maintainers. It defines targets for building (`makepkg -sfr`), installing, updating checksums (`updpkgsums`), linting (`shellcheck`, `namcap`), cleaning via `trash-put` (with user confirmation), formatting, and committing changes. All commands are routine AUR packaging operations and do not exfiltrate data, download code from unexpected hosts, execute obfuscated payloads, or modify system files outside of the normal packaging workflow. The `clean` target uses `trash-put` with a prompt, which is a benign file management utility. No genuinely malicious behavior is present.
</details>
<summary>Standard AUR maintainer Makefile, no malicious behavior found.</summary>
</security_assessment>

[8/10] Reviewing src/human-cursors-theme-0.6/setup.py, src/human-cursors-theme-0.6/debian/prerm...
+ Reviewed Makefile. Status: SAFE -- Standard AUR maintainer Makefile, no malicious behavior found.
LLM auditresponse for prerm:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard pre-removal (prerm) script for a Debian/Arch package. It simply removes an update-alternatives entry for the cursor theme during package removal, upgrade, or deconfiguration. It uses only standard shell commands (`update-alternatives`) with no network access, no obfuscated code, and no dangerous operations. This is normal packaging behavior.
</details>
<summary>Standard package prerm script, no security issues.</summary>
</security_assessment>

[9/10] Reviewing src/human-cursors-theme-0.6/setup.py...
+ Reviewed src/human-cursors-theme-0.6/debian/prerm. Status: SAFE -- Standard package prerm script, no security issues.
LLM auditresponse for setup.py:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard Python distutils `setup()` call that installs cursor files and a theme configuration. No code execution, network requests, decoding, or obfuscation is present. The only unusual element is a cursor filename that looks like an MD5 hash (`08e8e1c95fe2fc01f976f1e063a24ccd`). While atypical, such hash-named files can exist in Xcursor themes as fallback definitions (e.g., for aliasing standard cursor shapes). Without any other indicators of malice (such as dynamic data, external downloads, or system tampering), this does not constitute a security threat. The script performs only routine packaging operations.
</details>
<summary>Safe distutils setup for cursor theme installation.</summary>
</security_assessment>

[10/10] Reviewing ...
+ Reviewed src/human-cursors-theme-0.6/setup.py. Status: SAFE -- Safe distutils setup for cursor theme installation.
Reviewed all additional files.
Reviewed additional files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 27,641
  Completion Tokens: 6,697
  Total Tokens: 34,338
  Total Cost: $0.003693
  Execution Time: 90.37 seconds
Full audit report can be found in /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-report-xcursor-human.txt
Final Status: SAFE


No issues found.
