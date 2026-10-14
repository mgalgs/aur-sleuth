---
package: wps-office-mui-zh-cn
pkgbase: wps-office-cn
pkgver: 12.1.2.29183
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 18845
completion_tokens: 3054
total_tokens: 21899
cost: 0.002270723
execution_time: 34.68
files_reviewed: 5
files_skipped: 0
maintainer_files: 5
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-14T07:04:12Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard .gitignore file; no malicious or suspicious behavior detected.
  - file: .SRCINFO
    status: safe
    summary: Declarative .SRCINFO only; official source with checksum; no malicious behavior found.
  - file: fix-wps-python-parse.patch
    status: safe
    summary: Benign Python 2 to Python 3 compatibility patch; no security issues found.
  - file: PKGBUILD
    status: safe
    summary: Legitimate WPS Office repackaging with pinned checksum; no malicious behavior found.
  - file: wps-office-cn.install
    status: safe
    summary: Install script only prints informational messages; no malicious activity found.
---

wps-office-mui-zh-cn is built from wps-office-cn
Materializing wps-office-mui-zh-cn from local mirror...
Materialized wps-office-mui-zh-cn
Analyzing wps-office-mui-zh-cn AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only standard top-level variable assignments and function definitions. The `_get_source_url` function is called in a command substitution to generate a download URL, but it does not perform any network requests or execute any code beyond computing a timestamp and MD5 hash. No dangerous commands (curl, wget, eval, base64 decoding, etc.) are executed at the top level. All potentially suspicious code is inside `prepare()`, `build()`, or `package()` functions, which are not executed during `makepkg --printsrcinfo`.
</details>
<evidence></evidence>
<summary>No malicious top-level execution; safe to parse.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious top-level execution; safe to parse.
Reviewing the 5 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/5] Reviewing .SRCINFO...
[0/5] Reviewing .SRCINFO, .gitignore...
[0/5] Reviewing .SRCINFO, .gitignore, PKGBUILD...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.gitignore` file used in an AUR package repository. It only lists common build artifacts and temporary files (`src`, `pkg`, `*.src.tar.gz`, `*.part`, `*.pkg.tar.*`, `*.deb`, `*.log`) to prevent them from being committed to version control. There is no executable code, no network access, no obfuscation, and no file operations outside of normal Git ignore behavior. No security concerns are present.
</details>
<evidence>
</evidence>
<summary>
Standard .gitignore file; no malicious or suspicious behavior detected.</summary>
</security_assessment>

[0/5] Reviewing .SRCINFO, .gitignore, PKGBUILD, fix-wps-python-parse.patch...
[1/5] Reviewing .SRCINFO, PKGBUILD, fix-wps-python-parse.patch...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore file; no malicious or suspicious behavior detected.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard AUR `.SRCINFO` metadata file for the WPS Office CN package. It declares the package name, version, architecture, dependencies, optdepends, and a single source tarball downloaded from the official WPS CDN domain (`wps-linux-personal.wpscdn.cn`) with a pinned SHA-256 checksum. The source URL points to the vendor's own distribution host and the checksum is not `SKIP`, so the download is verifiable. No commands, scripts, hooks, or executable logic are present in this file; it contains only declarative packaging metadata. The presence of separate subpackages (`wps-office-mime-cn`, `wps-office-mui-zh-cn`) is normal multi-package AUR structure. There is no evidence of exfiltration, remote code execution, obfuscation, or tampering.
</details>
<evidence>
</evidence>
<summary>
Declarative .SRCINFO only; official source with checksum; no malicious behavior found.</summary>
</security_assessment>

[2/5] Reviewing PKGBUILD, fix-wps-python-parse.patch...
+ Reviewed .SRCINFO. Status: SAFE -- Declarative .SRCINFO only; official source with checksum; no malicious behavior found.
[2/5] Reviewing PKGBUILD, fix-wps-python-parse.patch, wps-office-cn.install...
LLM auditresponse for fix-wps-python-parse.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a patch that updates a WPS Office shell script for Python 3 compatibility. It changes the Python one-liner used to decode `file://` URIs from the Python 2 syntax (`import sys, urllib; print urllib.unquote(...)`) to the Python 3 syntax (`import sys, urllib.parse; print(urllib.parse.unquote(...))`). This is a routine and expected compatibility fix for newer Python versions.

There is no evidence of malicious behavior: no obfuscated code, no network requests, no downloads, no execution of untrusted content, no exfiltration of data, and no unexpected file operations. The patch only modifies the argument parsing logic for URL-decoding, which serves the application's stated purpose of correctly opening file paths. It is consistent with standard packaging and patching practices.
</details>
<evidence>
</evidence>
<summary>
Benign Python 2 to Python 3 compatibility patch; no security issues found.
</summary>
</security_assessment>

[3/5] Reviewing PKGBUILD, wps-office-cn.install...
+ Reviewed fix-wps-python-parse.patch. Status: SAFE -- Benign Python 2 to Python 3 compatibility patch; no security issues found.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD downloads the official WPS Office `.deb` from `wps-linux-personal.wpscdn.cn`, a WPS/Kingsoft CDN, and pins it with a fixed `sha256sums` entry. The `_get_source_url()` helper builds a time-limited signed URL using an embedded CDN access key and an MD5 digest. This is unusual and worth noting as a transparency/hygiene concern, but it is not malicious: the data fetched is the package's own declared upstream source, the destination host is related to the project, and the resulting file is verified against a pinned checksum before use.

The `prepare()` and `package_*()` functions perform ordinary packaging operations: extracting the upstream archive, relocating files from `/opt/kingsoft/wps-office` to `/usr/lib`, removing bundled incompatible libraries, and installing files into `$pkgdir`. No `eval`, `curl|bash`, obfuscated payloads, exfiltration, backdoors, or unexpected network behavior is present. The final locale exports in `package_wps-office-mime-cn()` only affect the packaging function environment and are harmless.
</details>
<evidence>
</evidence>
<summary>
Legitimate WPS Office repackaging with pinned checksum; no malicious behavior found.
</summary>
</security_assessment>

[4/5] Reviewing wps-office-cn.install...
+ Reviewed PKGBUILD. Status: SAFE -- Legitimate WPS Office repackaging with pinned checksum; no malicious behavior found.
LLM auditresponse for wps-office-cn.install:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is an Arch Linux package install script (`wps-office-cn.install`). It defines a single `post_install()` function that calls `whisperer()`, which only prints informational text about WPS Office and provides support links. There are no network requests, file modifications, obfuscated commands, or execution of downloaded content. The mention of `sudo chmod -x /usr/lib/office6/wpsoffice` is displayed as user-facing advice only; it is not executed by the script. This is consistent with standard packaging practices.
</details>
<evidence>
</evidence>
<summary>
Install script only prints informational messages; no malicious activity found.</summary>
</security_assessment>

[5/5] Reviewing ...
+ Reviewed wps-office-cn.install. Status: SAFE -- Install script only prints informational messages; no malicious activity found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 18,845
  Completion Tokens: 3,054
  Total Tokens: 21,899
  Total Cost: $0.002271
  Execution Time: 34.68 seconds

Final Status: SAFE


No issues found.
