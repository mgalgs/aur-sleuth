---
package: wps-office-mime-cn
pkgbase: wps-office-cn
pkgver: 12.1.2.29183
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 18438
completion_tokens: 3145
total_tokens: 21583
cost: 0.002250248
execution_time: 65.1
files_reviewed: 5
files_skipped: 0
maintainer_files: 5
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-14T07:04:44Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard .gitignore for AUR builds, no malicious content.
  - file: .SRCINFO
    status: safe
    summary: Standard package metadata, no malicious content.
  - file: wps-office-cn.install
    status: safe
    summary: Routine informational install script with no malicious actions.
  - file: fix-wps-python-parse.patch
    status: safe
    summary: Routine Python 2 to 3 compatibility patch, no malicious behavior.
  - file: PKGBUILD
    status: safe
    summary: Standard repackaging of WPS Office with pinned checksums; no malicious behavior.
---

wps-office-mime-cn is built from wps-office-cn
Materializing wps-office-mime-cn from local mirror...
Materialized wps-office-mime-cn
Analyzing wps-office-mime-cn AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD's top-level scope (which is sourced by `makepkg --printsrcinfo`) contains only variable definitions, an array assignment with a command substitution that calls the helper function `_get_source_url`, and function definitions. The helper function constructs a URL string using `date` and `md5sum`—it does not perform any network requests, download files, or execute arbitrary code. No dangerous commands (e.g., `eval`, `curl`, `wget`) are executed at parse time. Functions `prepare`, `package_*` are not invoked during `--printsrcinfo`. No malicious or suspicious top-level behavior is present.
</details>
<evidence>
</evidence>
<summary>No dangerous top‑level code; safe to parse.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous top‑level code; safe to parse.
Reviewing the 5 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/5] Reviewing .SRCINFO...
[0/5] Reviewing .SRCINFO, .gitignore...
[0/5] Reviewing .SRCINFO, .gitignore, PKGBUILD...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.gitignore` file for an Arch Linux package repository. It lists common build artifacts and temporary files that should be ignored by version control: source directories (`src`), package output directories (`pkg`), source tarballs (`*.src.tar.gz`), partial downloads (`*.part`), built package files (`*.pkg.tar.*`), Debian packages (`*.deb`), and log files (`*.log`). There is no executable code, no network requests, and no indication of malicious intent. The file purely serves to prevent accidental commits of build products, which is normal packaging hygiene.</details>
<evidence></evidence>
<summary>Standard .gitignore for AUR builds, no malicious content.</summary>
</security_assessment>

[0/5] Reviewing .SRCINFO, .gitignore, PKGBUILD, fix-wps-python-parse.patch...
[1/5] Reviewing .SRCINFO, PKGBUILD, fix-wps-python-parse.patch...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore for AUR builds, no malicious content.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a `.SRCINFO` metadata file describing the `wps-office-cn` package and its subpackages (`wps-office-mime-cn`, `wps-office-mui-zh-cn`). It contains only package metadata: version, architecture, license, source URL, checksum, dependencies, and conflicts. The source URL points to an official Kingsoft (WPS) CDN over HTTPS, and the checksum is a fixed SHA-256 value (not `SKIP`). No executable code, obfuscated strings, dangerous commands (e.g., `curl|bash`, `eval`, `base64`), or unexpected system-modification instructions are present. The file adheres to standard AUR packaging practices and shows no evidence of a supply-chain attack.
</details>
<evidence>
</evidence>
<summary>Standard package metadata, no malicious content.</summary>
</security_assessment>

[1/5] Reviewing .SRCINFO, PKGBUILD, fix-wps-python-parse.patch, wps-office-cn.install...
[2/5] Reviewing PKGBUILD, fix-wps-python-parse.patch, wps-office-cn.install...
+ Reviewed .SRCINFO. Status: SAFE -- Standard package metadata, no malicious content.
LLM auditresponse for wps-office-cn.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard Arch Linux package install script (`wps-office-cn.install`). It defines a function `whisperer` that prints help and informational messages about the WPS Office suite, and a `post_install()` hook that calls it. There are no obfuscated commands, network requests, dangerous executions, or any operations that modify the system beyond normal packaging practices. All output is static text. No security concerns.
</details>
<evidence></evidence>
<summary>Routine informational install script with no malicious actions.</summary>
</security_assessment>

[3/5] Reviewing PKGBUILD, fix-wps-python-parse.patch...
+ Reviewed wps-office-cn.install. Status: SAFE -- Routine informational install script with no malicious actions.
LLM auditresponse for fix-wps-python-parse.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a patch file that updates Python 2 legacy `urllib` import syntax to Python 3 compatible `urllib.parse` syntax. The patch modifies two lines in a WPS Office start script (`/usr/bin/wps`) where `python -c 'import sys, urllib; print urllib.unquote(sys.argv[1])'` is replaced with `python -c 'import sys, urllib.parse; print(urllib.parse.unquote(sys.argv[1]))'`. This is a routine compatibility fix with no evidence of malicious intent. No obfuscation, no network requests, no dangerous commands, and no deviation from standard packaging best practices.
</details>
<evidence></evidence>
<summary>Routine Python 2 to 3 compatibility patch, no malicious behavior.</summary>
</security_assessment>

[4/5] Reviewing PKGBUILD...
+ Reviewed fix-wps-python-parse.patch. Status: SAFE -- Routine Python 2 to 3 compatibility patch, no malicious behavior.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a standard repackaging of the official WPS Office Debian package for Arch Linux. The source is downloaded from the official WPS CDN (`wps-linux-personal.wpscdn.cn`) with a pinned SHA-256 checksum, ensuring integrity. The `_get_source_url` helper function generates an authenticated download URL using a hardcoded key and timestamp, which is the CDN's expected mechanism—not obfuscation or a supply-chain attack. All operations in `prepare()` and `package_*()` are routine: extracting archives, adjusting paths, copying files, and removing bundled libraries to use system versions. There are no network requests during build time, no execution of unverified code, no exfiltration, and no backdoors. The file is consistent with safe packaging practices.
</details>
<evidence></evidence>
<summary>Standard repackaging of WPS Office with pinned checksums; no malicious behavior.</summary>
</security_assessment>

[5/5] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard repackaging of WPS Office with pinned checksums; no malicious behavior.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 18,438
  Completion Tokens: 3,145
  Total Tokens: 21,583
  Total Cost: $0.002250
  Execution Time: 65.10 seconds

Final Status: SAFE


No issues found.
