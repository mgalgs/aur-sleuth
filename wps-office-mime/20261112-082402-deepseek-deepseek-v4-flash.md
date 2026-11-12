---
package: wps-office-mime
pkgbase: wps-office
pkgver: 12.1.2.29183
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 3f8f339d2184315a824bf6b8e30068212deac13a
prompt_tokens: 24042
completion_tokens: 5134
total_tokens: 29176
cost: 0.00308790
execution_time: 39.62
files_reviewed: 7
files_skipped: 0
maintainer_files: 7
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-11-12T08:24:01Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Safe .gitignore with no security issues.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata file, no security concerns.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD with no malicious code.
  - file: add_no_kdialog_variable.patch
    status: safe
    summary: Benign configuration patch disabling KDE dialogs.
  - file: fix-wps-python-parse.patch
    status: safe
    summary: Python 2/3 compatibility patch, no malice.
  - file: fix_desktop_exec.patch
    status: safe
    summary: Benign patch fixing desktop file arguments.
  - file: wps-office.install
    status: safe
    summary: No security issues; purely informational install script.
---

wps-office-mime is built from wps-office
Materializing wps-office-mime from local mirror...
Cloning https://aur.archlinux.org/wps-office.git...
Cloned wps-office-mime
Analyzing wps-office-mime AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD's global/top-level scope consists entirely of static variable assignments (`pkgbase`, `pkgname`, `pkgver`, `source`, etc.) and function definitions (`prepare`, `package_wps-office`, `package_wps-office-mime`). There are no command substitutions (`$()` or backticks), no obfuscated strings, and no dangerous commands (such as `curl`, `wget`, `eval`) executed at the top level. The `source` array defines a simple URL with a variable expansion, which is standard AUR practice. Since `makepkg --printsrcinfo` only sources this top-level scope and does **not** invoke any of the packaging functions, there is no risk of executing malicious code during this metadata parsing step.
</details>
<evidence></evidence>
<summary>No top-level malicious code found.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No top-level malicious code found.
Reviewing the 7 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/7] Reviewing .SRCINFO...
[0/7] Reviewing .SRCINFO, .gitignore...
[0/7] Reviewing .SRCINFO, .gitignore, PKGBUILD...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
The .gitignore file contains standard patterns to exclude build artifacts and temporary files (src, pkg, *.src.tar.gz, *.part, *.pkg.tar.*, *.deb, *.log). These are typical for an AUR PKGBUILD repository and do not introduce any security risks. There is no executable code, network requests, or any suspicious activity present.
</details>
<evidence>
</evidence>
<summary>Safe .gitignore with no security issues.</summary>
</security_assessment>

[0/7] Reviewing .SRCINFO, .gitignore, PKGBUILD, add_no_kdialog_variable.patch...
[1/7] Reviewing .SRCINFO, PKGBUILD, add_no_kdialog_variable.patch...
+ Reviewed .gitignore. Status: SAFE -- Safe .gitignore with no security issues.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The .SRCINFO file is a standard AUR package metadata file. It defines the package base and two subpackages (wps-office and wps-office-mime) with their dependencies, source URL pointing to the official WPS Office download server, and a SHA-1 checksum for the binary package. There are no commands, scripts, network requests, or obfuscated content present. The file only contains declarative key-value pairs for package building. No evidence of malicious or supply-chain attack behavior.
</details>
<evidence></evidence>
<summary>Standard AUR metadata file, no security concerns.</summary>
</security_assessment>

[2/7] Reviewing PKGBUILD, add_no_kdialog_variable.patch...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata file, no security concerns.
[2/7] Reviewing PKGBUILD, add_no_kdialog_variable.patch, fix-wps-python-parse.patch...
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a typical Arch Linux package definition for WPS Office. The source is downloaded from the official WPS CDN (wpscdn.com) with a pinned SHA1 checksum ensuring integrity. The `prepare()` function extracts a Debian archive and performs standard path substitutions for Arch Linux. The `package_*()` functions install files into the package directory with no unexpected behavior. No obfuscated code, network requests beyond the declared source, or system modification outside the application scope is present. All operations align with legitimate packaging practices.
</details>
<evidence></evidence>
<summary>Standard AUR PKGBUILD with no malicious code.</summary>
</security_assessment>

[2/7] Reviewing PKGBUILD, add_no_kdialog_variable.patch, fix-wps-python-parse.patch, fix_desktop_exec.patch...
[3/7] Reviewing add_no_kdialog_variable.patch, fix-wps-python-parse.patch, fix_desktop_exec.patch...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD with no malicious code.
LLM auditresponse for add_no_kdialog_variable.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
This patch file adds the environment variable `WPS_NO_KDE_NATIVE_DIALOG=1` to WPS Office startup scripts and desktop entries. The variable disables KDE native file dialogs, which is a common compatibility workaround for WPS Office on Linux systems, especially when using non-KDE desktop environments or to avoid dialog crashes. There is no obfuscation, no network access, no execution of downloaded code, and no data exfiltration. The changes are limited to configuration environment variables and desktop Exec lines, all consistent with standard packaging practices for adjusting application behavior.
</details>
<evidence></evidence>
<summary>Benign configuration patch disabling KDE dialogs.</summary>
</security_assessment>

[3/7] Reviewing add_no_kdialog_variable.patch, fix-wps-python-parse.patch, fix_desktop_exec.patch, wps-office.install...
[4/7] Reviewing fix-wps-python-parse.patch, fix_desktop_exec.patch, wps-office.install...
+ Reviewed add_no_kdialog_variable.patch. Status: SAFE -- Benign configuration patch disabling KDE dialogs.
LLM auditresponse for fix-wps-python-parse.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
This patch file updates Python 2 syntax to Python 3 syntax in WPS Office's `wps` script. It replaces `import sys, urllib; print urllib.unquote(...)` with `import sys, urllib.parse; print(urllib.parse.unquote(...))`. This is a routine compatibility update, not a security threat. No suspicious network activity, obfuscated code, or unexpected system modifications are present. The patch only modifies two lines to correct Python module and print function usage, which is standard packaging maintenance.
</details>
<evidence>
</evidence>
<summary>Python 2/3 compatibility patch, no malice.</summary>
</security_assessment>

[5/7] Reviewing fix_desktop_exec.patch, wps-office.install...
+ Reviewed fix-wps-python-parse.patch. Status: SAFE -- Python 2/3 compatibility patch, no malice.
LLM auditresponse for fix_desktop_exec.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a patch that modifies the `Exec=` lines in several WPS Office `.desktop` files, changing `%f` to `%F`. In the FreeDesktop.org specification, `%f` passes a single file as an argument, while `%F` passes a list of files (more appropriate for handling URIs or multiple selections). This is a routine packaging fix that improves compatibility and file handling behavior of the application. There is no obfuscated code, network activity, dangerous command execution, or any deviation from standard packaging practices. The patch serves its stated purpose and contains no malicious content.
</details>
<evidence>
</evidence>
<summary>Benign patch fixing desktop file arguments.</summary>
</security_assessment>

[6/7] Reviewing wps-office.install...
+ Reviewed fix_desktop_exec.patch. Status: SAFE -- Benign patch fixing desktop file arguments.
LLM auditresponse for wps-office.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `wps-office.install` is a standard Arch Linux package install script. It contains a function `whisperer` that only prints informational messages to the terminal (e.g., URLs for support, description of the software, and a known issue note). The `post_install` function simply calls `whisperer`. There are no network requests, file operations, system modifications, execution of external code, or any obfuscation. The content is purely informational and follows normal packaging practices.
</details>
<evidence></evidence>
<summary>No security issues; purely informational install script.</summary>
</security_assessment>

[7/7] Reviewing ...
+ Reviewed wps-office.install. Status: SAFE -- No security issues; purely informational install script.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 24,042
  Completion Tokens: 5,134
  Total Tokens: 29,176
  Total Cost: $0.003088
  Execution Time: 39.62 seconds

Final Status: SAFE


No issues found.
