---
package: wps-office
pkgver: 12.1.2.29183
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 3f8f339d2184315a824bf6b8e30068212deac13a
prompt_tokens: 23710
completion_tokens: 2734
total_tokens: 26444
cost: 0.00262602
execution_time: 47.82
files_reviewed: 7
files_skipped: 0
maintainer_files: 7
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-11-12T08:22:32Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard .gitignore for AUR build artifacts.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD with no malicious indicators.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata, no malicious indicators.
  - file: fix-wps-python-parse.patch
    status: safe
    summary: Patch updates Python 2 syntax to Python 3; no security issue.
  - file: add_no_kdialog_variable.patch
    status: safe
    summary: Benign patch to disable KDE native dialogs in WPS Office.
  - file: fix_desktop_exec.patch
    status: safe
    summary: Legitimate patch for desktop entry file handling.
  - file: wps-office.install
    status: safe
    summary: No malicious code; purely informational post-install script.
---

Materializing wps-office from local mirror...
Cloning https://aur.archlinux.org/wps-office.git...
Cloned wps-office
Analyzing wps-office AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD's top-level scope contains only variable definitions (e.g., `pkgbase`, `pkgname`, `pkgver`, `source`, `sha1sums`) and function declarations (`prepare()`, `package_wps-office()`, `package_wps-office-mime()`). No command substitutions, backtick expressions, or any other executable code exists outside of the function bodies. During `makepkg --printsrcinfo`, only the top-level code is sourced, and the functions are not invoked. Therefore, no malicious code executes at this step. The `source` array points to an upstream WPS Office download URL, which is expected, but no download occurs during the metadata parsing step.
</details>
<evidence></evidence>
<summary>Top-level code is purely declarative; no execution risk.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Top-level code is purely declarative; no execution risk.
Reviewing the 7 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/7] Reviewing .SRCINFO...
[0/7] Reviewing .SRCINFO, .gitignore...
[0/7] Reviewing .SRCINFO, .gitignore, PKGBUILD...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
The `.gitignore` file contains standard patterns used in AUR packaging repositories to exclude build artifacts (`src`, `pkg`), compressed archives (`*.src.tar.gz`, `*.pkg.tar.*`, `*.deb`), partial downloads (`*.part`), and log files (`*.log`). There is no executable code, no network requests, no obfuscation, and no behavior that deviates from normal packaging practices. This file poses no security risk.
</details>
<evidence></evidence>
<summary>Standard .gitignore for AUR build artifacts.</summary>
</security_assessment>

[1/7] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore for AUR build artifacts.
[1/7] Reviewing .SRCINFO, PKGBUILD, add_no_kdialog_variable.patch...
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD is a standard Arch User Repository package file for wps-office. It downloads the official upstream .deb package from Kingsoft/WPS Office's own CDN (`wdl1.pcfg.cache.wpscdn.com`), which is the expected source. A SHA1 checksum is provided and verified during the build. The `prepare()` function merely extracts the archive and performs harmless path substitutions via `sed` to adjust installation directories from `/opt/kingsoft/wps-office` to `/usr/lib`. The `package_*()` functions install files normally without any dangerous operations. There are no obfuscated commands, no unexpected network requests, no execution of fetched code outside the standard `makepkg` workflow, and no exfiltration attempts. The package follows typical AUR practices for repackaging a prebuilt binary.
</details>
<evidence>
</evidence>
<summary>Standard AUR PKGBUILD with no malicious indicators.</summary>
</security_assessment>

[2/7] Reviewing .SRCINFO, add_no_kdialog_variable.patch...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD with no malicious indicators.
[2/7] Reviewing .SRCINFO, add_no_kdialog_variable.patch, fix-wps-python-parse.patch...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard AUR .SRCINFO metadata file for the wps-office package. It defines package version, architecture, dependencies, and source locations. The source is a DEB package downloaded from the official WPS Office CDN (wdl1.pcfg.cache.wpscdn.com/wpsdl/wpsoffice/download/linux/wps-office.deb) with a SHA1 checksum provided. No malicious code, obfuscation, unexpected network requests, or dangerous commands are present. The file is purely descriptive and does not execute any operations. The .install file reference is typical for AUR packages and not evaluated here. No evidence of supply-chain attack or malicious behavior.
</details>
<evidence></evidence>
<summary>Standard AUR metadata, no malicious indicators.</summary>
</security_assessment>

[2/7] Reviewing .SRCINFO, add_no_kdialog_variable.patch, fix-wps-python-parse.patch, fix_desktop_exec.patch...
[3/7] Reviewing add_no_kdialog_variable.patch, fix-wps-python-parse.patch, fix_desktop_exec.patch...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata, no malicious indicators.
LLM auditresponse for fix-wps-python-parse.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a patch that updates Python 2 style `urllib` imports to Python 3 style `urllib.parse` and adds parentheses to `print` statements, making the script compatible with Python 3. This is a routine compatibility fix, not malicious. No obfuscation, network requests, or suspicious operations are present.
</details>
<evidence></evidence>
<summary>Patch updates Python 2 syntax to Python 3; no security issue.</summary>
</security_assessment>

[3/7] Reviewing add_no_kdialog_variable.patch, fix-wps-python-parse.patch, fix_desktop_exec.patch, wps-office.install...
[4/7] Reviewing add_no_kdialog_variable.patch, fix_desktop_exec.patch, wps-office.install...
+ Reviewed fix-wps-python-parse.patch. Status: SAFE -- Patch updates Python 2 syntax to Python 3; no security issue.
LLM auditresponse for add_no_kdialog_variable.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
This patch file is a standard packaging fix for the WPS Office AUR package. It adds the environment variable `WPS_NO_KDE_NATIVE_DIALOG=1` to the startup scripts and desktop `Exec` lines of WPS Office components (et, wpp, wps, wpspdf). This variable is used by WPS Office to disable native KDE dialogs, which is a known workaround for compatibility issues when running under KDE Plasma. The patch only modifies environment settings; there is no code execution, network activity, obfuscation, or any operation beyond setting an environment variable. No security concerns.
</details>
<evidence></evidence>
<summary>Benign patch to disable KDE native dialogs in WPS Office.</summary>
</security_assessment>

[5/7] Reviewing fix_desktop_exec.patch, wps-office.install...
+ Reviewed add_no_kdialog_variable.patch. Status: SAFE -- Benign patch to disable KDE native dialogs in WPS Office.
LLM auditresponse for fix_desktop_exec.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a straightforward patch to WPS Office desktop entry files. It changes the `Exec` parameter for four `.desktop` files from `%f` (single file argument) to `%F` (multiple file arguments). This is a standard and legitimate improvement for desktop applications, allowing the user to open multiple documents at once. There is no obfuscated code, network requests, unusual system modifications, or any other behavior indicative of a supply chain attack. The patch is purely a functional fix to better support file handling in the desktop environment.
</details>
<evidence></evidence>
<summary>Legitimate patch for desktop entry file handling.</summary>
</security_assessment>

[6/7] Reviewing wps-office.install...
+ Reviewed fix_desktop_exec.patch. Status: SAFE -- Legitimate patch for desktop entry file handling.
LLM auditresponse for wps-office.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard Arch Linux `.install` script used by PKGBUILDs. It contains only a function `whisperer` that prints informational messages about WPS Office and its usage, and a `post_install` hook that calls that function. There are no dangerous commands (e.g., `curl`, `wget`, `eval`, `base64`, file operations, network requests, system modifications, or obfuscated code). The content is entirely benign and serves only to display post-install information to the user.
</details>
<evidence></evidence>
<summary>No malicious code; purely informational post-install script.</summary>
</security_assessment>

[7/7] Reviewing ...
+ Reviewed wps-office.install. Status: SAFE -- No malicious code; purely informational post-install script.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 23,710
  Completion Tokens: 2,734
  Total Tokens: 26,444
  Total Cost: $0.002626
  Execution Time: 47.82 seconds

Final Status: SAFE


No issues found.
