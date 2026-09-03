---
package: wps-office-mime-cn
pkgbase: wps-office-cn
pkgver: 12.1.2.28080
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 171a316e053e9c4b28731ccb1aa63b1168550d3a
prompt_tokens: 18433
completion_tokens: 3103
total_tokens: 21536
cost: 0.002183163234
execution_time: 87.28
files_reviewed: 5
files_skipped: 0
maintainer_files: 5
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-03T07:14:48Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard .gitignore for AUR package.
  - file: .SRCINFO
    status: safe
    summary: Standard package metadata; no malicious content.
  - file: fix-wps-python-parse.patch
    status: safe
    summary: Python 2 to 3 compatibility patch, no security issues.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD with pinned checksum, no malicious code found.
  - file: wps-office-cn.install
    status: safe
    summary: Simple post-install info script, no malicious code.
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
The global scope of this PKGBUILD defines a helper function `_get_source_url` that is invoked via command substitution in the `source_x86_64` array. The function only constructs a download URL using string operations and an MD5 hash of a hardcoded key and timestamp; it does **not** perform any network requests, execute arbitrary code, or modify the system. All other top-level definitions are standard variable assignments (pkgbase, pkgver, arch, etc.) and a function definition for `_get_source_url`. No commands are executed that download, exfiltrate data, or run untrusted payloads. Therefore, running `makepkg --printsrcinfo` is safe.
</details>
<evidence></evidence>
<summary>Sourcing this PKGBUILD is safe for --printsrcinfo</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Sourcing this PKGBUILD is safe for --printsrcinfo
Reviewing the 5 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/5] Reviewing .SRCINFO...
[0/5] Reviewing .SRCINFO, .gitignore...
[0/5] Reviewing .SRCINFO, .gitignore, PKGBUILD...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard `.gitignore` for an AUR package. It lists common build artifacts and temporary files to be ignored by Git: `src`, `pkg`, `*.src.tar.gz`, `*.part`, `*.pkg.tar.*`, `*.deb`, `*.log`. There is no executable code, no network requests, no obfuscation, and no system modification commands. This file is benign and follows normal packaging practices.
</details>
<evidence>
</evidence>
<summary>Standard .gitignore for AUR package.</summary>
</security_assessment>

[1/5] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore for AUR package.
[1/5] Reviewing .SRCINFO, PKGBUILD, fix-wps-python-parse.patch...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This `.SRCINFO` file is a standard AUR package metadata file. It defines three package variants (`wps-office-cn`, `wps-office-mime-cn`, `wps-office-mui-zh-cn`) with normal dependencies, options, and source declarations. The source URL points to the vendor's official CDN (`wpscdn.cn`) and includes a SHA-256 checksum (not `SKIP`). No executable code, obfuscation, network requests (beyond the source declaration), or suspicious operations are present. The file is purely declarative metadata and does not contain any commands, scripts, or data manipulation.
</details>
<evidence>
</evidence>
<summary>Standard package metadata; no malicious content.</summary>
</security_assessment>

[1/5] Reviewing .SRCINFO, PKGBUILD, fix-wps-python-parse.patch, wps-office-cn.install...
[2/5] Reviewing PKGBUILD, fix-wps-python-parse.patch, wps-office-cn.install...
+ Reviewed .SRCINFO. Status: SAFE -- Standard package metadata; no malicious content.
LLM auditresponse for fix-wps-python-parse.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
This patch updates the `wps` script to use Python 3's `urllib.parse.unquote` instead of the Python 2 `urllib.unquote`. This is a straightforward compatibility fix, common for packages migrating from Python 2 to Python 3. The change is minimal and transparent — it only modifies the import and function call syntax. There is no obfuscation, no network activity, no execution of untrusted code, and no deviation from standard packaging practices. The file is safe.
</details>
<evidence></evidence>
<summary>Python 2 to 3 compatibility patch, no security issues.</summary>
</security_assessment>

[3/5] Reviewing PKGBUILD, wps-office-cn.install...
+ Reviewed fix-wps-python-parse.patch. Status: SAFE -- Python 2 to 3 compatibility patch, no security issues.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a standard Arch Linux packaging script for WPS Office. It fetches a pre-built .deb package from the official WPS CDN using a signed URL (timestamp + MD5 key) and verifies it with a hardcoded SHA256 checksum. All subsequent operations—extracting, patching paths, and installing files—are routine packaging steps. There is no obfuscated code, no unexpected network requests, no execution of untrusted downloaded content (the source is verified by checksum), and no backdoor or exfiltration mechanisms. The hardcoded secret key in `_get_source_url` is part of the official download API and does not constitute malicious behavior. The package actions are limited to installing the application files, mime data, and locale support. No supply-chain attack indicators are present.
</details>
<evidence>
</evidence>
<summary>Standard PKGBUILD with pinned checksum, no malicious code found.</summary>
</security_assessment>

[4/5] Reviewing wps-office-cn.install...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD with pinned checksum, no malicious code found.
LLM auditresponse for wps-office-cn.install:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard Arch Linux `.install` script for the WPS Office package. It contains a single function `whisperer` that prints informational messages to the terminal during package installation. There are no network requests, no obfuscated or encoded commands, no file operations beyond standard shell output (echo), and no execution of downloaded code. The script does exactly what one would expect from a post-install message display. No security issues are present.
</details>
<evidence></evidence>
<summary>Simple post-install info script, no malicious code.</summary>
</security_assessment>

[5/5] Reviewing ...
+ Reviewed wps-office-cn.install. Status: SAFE -- Simple post-install info script, no malicious code.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 18,433
  Completion Tokens: 3,103
  Total Tokens: 21,536
  Total Cost: $0.002183
  Execution Time: 87.28 seconds

Final Status: SAFE


No issues found.
