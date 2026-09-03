---
package: wps-office-mui-zh-cn
pkgbase: wps-office-cn
pkgver: 12.1.2.28080
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 171a316e053e9c4b28731ccb1aa63b1168550d3a
prompt_tokens: 18445
completion_tokens: 2981
total_tokens: 21426
cost: 0.002162606642
execution_time: 45.81
files_reviewed: 5
files_skipped: 0
maintainer_files: 5
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-03T07:15:47Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard AUR .gitignore with build artifacts.
  - file: fix-wps-python-parse.patch
    status: safe
    summary: Python 2 to Python 3 compatibility fix.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata; no security issues found.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD with verified official source.
  - file: wps-office-cn.install
    status: safe
    summary: Informational post-install script, no malicious code.
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
The top-level scope of this PKGBUILD contains only standard variable definitions, a helper function definition (`_get_source_url`), and a call to that function via command substitution in the `source_x86_64` array. The function computes a download URL using a hardcoded key, timestamp, and md5sum—it performs no network requests, file writes, or data exfiltration. No other top-level commands or dangerous constructs (e.g., `eval`, `curl`, `wget`) are present. The `install`, `prepare`, and `package_*` functions are not executed during `makepkg --printsrcinfo`. Therefore, sourcing this PKGBUILD to print its metadata is safe.
</details>
<evidence></evidence>
<summary>Top-level code is benign; only URL computation.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Top-level code is benign; only URL computation.
Reviewing the 5 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/5] Reviewing .SRCINFO...
[0/5] Reviewing .SRCINFO, .gitignore...
[0/5] Reviewing .SRCINFO, .gitignore, PKGBUILD...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
The `.gitignore` file contains standard patterns used in AUR packaging to exclude build artifacts (`src`, `pkg`, `*.pkg.tar.*`), partial downloads (`*.part`), logs, and other temporary files. There is no executable code, no network requests, no obfuscation, and no deviation from normal packaging practices. The file is benign.
</details>
<evidence></evidence>
<summary>Standard AUR .gitignore with build artifacts.</summary>
</security_assessment>

[1/5] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed .gitignore. Status: SAFE -- Standard AUR .gitignore with build artifacts.
[1/5] Reviewing .SRCINFO, PKGBUILD, fix-wps-python-parse.patch...
LLM auditresponse for fix-wps-python-parse.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
The patch file updates the `wps` script to use Python 3 syntax for URL decoding, replacing the Python 2 `urllib` module with `urllib.parse`. This is a standard compatibility fix and does not introduce any security issues. No evidence of malicious activity, obfuscation, or unexpected behavior.
</details>
<evidence></evidence>
<summary>Python 2 to Python 3 compatibility fix.</summary>
</security_assessment>

[1/5] Reviewing .SRCINFO, PKGBUILD, fix-wps-python-parse.patch, wps-office-cn.install...
[2/5] Reviewing .SRCINFO, PKGBUILD, wps-office-cn.install...
+ Reviewed fix-wps-python-parse.patch. Status: SAFE -- Python 2 to Python 3 compatibility fix.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard `.SRCINFO` metadata file for an Arch User Repository (AUR) package. It contains only declarative data: package name, version, description, source URL with a pinned SHA256 checksum, dependencies, and subpackage definitions. There is no executable code, no obfuscated commands, no network requests, and no file operations. The source URL points to the official WPS Office CDN (`wpscdn.cn`), and the checksum is provided, ensuring integrity. No evidence of supply-chain attack, data exfiltration, or malicious behavior is present.
</details>
<evidence></evidence>
<summary>Standard AUR metadata; no security issues found.</summary>
</security_assessment>

[3/5] Reviewing PKGBUILD, wps-office-cn.install...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata; no security issues found.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD uses a custom source URL generation function (`_get_source_url`) that builds a signed URL with a hardcoded key and timestamp, but the destination is still the official WPS CDN domain (`wps-linux-personal.wpscdn.cn`). This is an unusual but legitimate authentication mechanism for the upstream download, not a supply-chain attack. The downloaded `.deb` file is verified by a fixed SHA-256 checksum (`2fa999f...`), ensuring integrity. The `prepare()` and `package_*()` functions perform only standard extraction, path patching, and file installation into the package directory. There are no obfuscated commands, no network requests to unexpected hosts, no execution of fetched code, and no modification of system files outside the application scope. The embedded secret key is a hygiene concern (hardcoded secrets) but not evidence of malicious intent; it is a practical choice to enable the download. The comment references to external sites (pastebin, gitlab) are just citations for the URL generation method, not active code. Overall, the file is consistent with standard AUR packaging practices for a prebuilt binary from an official vendor.
</details>
<evidence></evidence>
<summary>Standard AUR PKGBUILD with verified official source.</summary>
</security_assessment>

[4/5] Reviewing wps-office-cn.install...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD with verified official source.
LLM auditresponse for wps-office-cn.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard post-install script for an AUR package. It defines a function `whisperer` that prints a series of informational messages using `echo`. There are no network requests, no obfuscated code, no dangerous commands (such as `eval`, `curl`, `wget`, `base64`), and no file operations beyond standard output. The `post_install` function simply calls `whisperer`. This is a benign informational script with no security risks.
</details>
<evidence></evidence>
<summary>Informational post-install script, no malicious code.</summary>
</security_assessment>

[5/5] Reviewing ...
+ Reviewed wps-office-cn.install. Status: SAFE -- Informational post-install script, no malicious code.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 18,445
  Completion Tokens: 2,981
  Total Tokens: 21,426
  Total Cost: $0.002163
  Execution Time: 45.81 seconds

Final Status: SAFE


No issues found.
