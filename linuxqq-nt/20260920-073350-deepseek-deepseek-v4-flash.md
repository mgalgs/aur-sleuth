---
package: linuxqq-nt
pkgver: 3.2.33_52892
pkgrel: 3
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 21982
completion_tokens: 9085
total_tokens: 31067
cost: 0.00147277536
execution_time: 172.57
files_reviewed: 7
files_skipped: 0
maintainer_files: 7
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-20T07:33:50Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard AUR package metadata; no security concerns.
  - file: README.md
    status: safe
    summary: Plain README with no executable or malicious content.
  - file: .gitignore
    status: safe
    summary: Standard .gitignore file, no security concerns.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD, no malicious code detected.
  - file: linuxqq-nt.install
    status: safe
    summary: No malicious behavior; standard package install messages.
  - file: linuxqq.sh
    status: safe
    summary: Standard launcher wrapper; no security issues found.
  - file: linuxqq-get-url.sh
    status: safe
    summary: Legitimate Tencent URL-signing download helper; no malicious or unusual behavior found.
---

Materializing linuxqq-nt from local mirror...
Materialized linuxqq-nt
Analyzing linuxqq-nt AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only static variable assignments at the top level (pkgname, pkgver, source arrays, b2sums, DLAGENTS, etc.). No command substitutions, function calls, or executable code is present in the global scope. The `DLAGENTS` line is a simple string assignment that only takes effect during actual source downloading (not during `--printsrcinfo`). The `install`, `package()`, and other function definitions are not executed by `makepkg --printsrcinfo`. Therefore, sourcing this PKGBUILD poses no risk of malicious code execution.
</details>
<evidence></evidence>
<summary>No top-level execution, safe to parse</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No top-level execution, safe to parse
Reviewing the 7 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/7] Reviewing .gitignore...
[0/7] Reviewing .gitignore, PKGBUILD...
[0/7] Reviewing .gitignore, PKGBUILD, .SRCINFO...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a `.SRCINFO` metadata file for an Arch User Repository (AUR) package. It contains only package metadata such as name, version, dependencies, source URLs, and checksums. There is no executable code, no network requests, no obfuscation, and no dangerous commands. The sources point to the official Tencent domain (qqdl.gtimg.cn), which is the expected upstream for the QQ Linux client. All sources have valid b2sums checksums. The file is a standard, legitimate packaging descriptor with no signs of supply-chain attack or malicious intent.
</details>
<evidence></evidence>
<summary>Standard AUR package metadata; no security concerns.</summary>
</security_assessment>

[0/7] Reviewing .gitignore, PKGBUILD, .SRCINFO, README.md...
[1/7] Reviewing .gitignore, PKGBUILD, README.md...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR package metadata; no security concerns.
LLM auditresponse for README.md:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a plain markdown README describing the package. It contains no executable code, no network requests, no obfuscated commands, and no references to unusual operations. It simply provides installation instructions and a link to the upstream GitHub repository for feedback. No security concerns.
</details>
<evidence></evidence>
<summary>Plain README with no executable or malicious content.</summary>
</security_assessment>

[1/7] Reviewing .gitignore, PKGBUILD, README.md, linuxqq-get-url.sh...
[2/7] Reviewing .gitignore, PKGBUILD, linuxqq-get-url.sh...
+ Reviewed README.md. Status: SAFE -- Plain README with no executable or malicious content.
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.gitignore` file found in many AUR package repositories. It contains only file-glob patterns to ignore build artifacts (archives, packages, source directories) and prevent them from being committed to the Git repository. There are no commands, no network requests, no obfuscated code, and no system modifications. The content is entirely benign and follows typical packaging practices.
</details>
<evidence>
</evidence>
<summary>Standard .gitignore file, no security concerns.</summary>
</security_assessment>

[3/7] Reviewing PKGBUILD, linuxqq-get-url.sh...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore file, no security concerns.
[3/7] Reviewing PKGBUILD, linuxqq-get-url.sh, linuxqq-nt.install...
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard Arch packaging practices for a prebuilt Electron application (Tencent QQ). The sources are fetched from Tencent&#39;s official CDN (qqdl.gtimg.cn), and checksums (b2sums) are provided for all downloaded deb files and helper scripts. The custom DLAGENT script (`linuxqq-get-url.sh`) is used to handle a signing step required by the upstream download process, which is explicitly documented in the PKGBUILD comment. No obfuscation, suspicious network requests, or data exfiltration is present. The `package()` function performs routine operations: extracting the deb, installing a launcher, fixing desktop entries, setting SUID on the chrome-sandbox (standard for Electron), and cleaning macOS artifacts. There is no evidence of supply-chain attack or malicious code injection.
</details>
<evidence>
</evidence>
<summary>Standard AUR PKGBUILD, no malicious code detected.</summary>
</security_assessment>

[3/7] Reviewing PKGBUILD, linuxqq-get-url.sh, linuxqq-nt.install, linuxqq.sh...
[4/7] Reviewing linuxqq-get-url.sh, linuxqq-nt.install, linuxqq.sh...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD, no malicious code detected.
LLM auditresponse for linuxqq-nt.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `linuxqq-nt.install` contains only standard post-installation message functions (`post_install`, `post_upgrade`, `post_remove`). These functions merely print colored informational messages to the terminal about the package status and configuration file locations. There are no network operations, file modifications outside of standard output, obfuscated code, or any other suspicious behaviors. The content is innocuous and follows normal AUR packaging practices.
</details>
<evidence>
</evidence>
<summary>No malicious behavior; standard package install messages.</summary>
</security_assessment>

[5/7] Reviewing linuxqq-get-url.sh, linuxqq.sh...
+ Reviewed linuxqq-nt.install. Status: SAFE -- No malicious behavior; standard package install messages.
LLM auditresponse for linuxqq.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This script is a standard launcher wrapper for the QQ messaging application. It performs routine tasks: cleaning crash files under the user's config directory, reading optional user-defined flags from a config file, and launching the main binary with appropriate environment flags (e.g., Wayland support). No network requests, obfuscated code, dangerous commands, or deviations from expected packaging behavior are present. All operations are confined to the application's own configuration and cache directories.
</details>
<evidence></evidence>
<summary>Standard launcher wrapper; no security issues found.</summary>
</security_assessment>

[6/7] Reviewing linuxqq-get-url.sh...
+ Reviewed linuxqq.sh. Status: SAFE -- Standard launcher wrapper; no security issues found.
LLM auditresponse for linuxqq-get-url.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This script is a download helper for the linuxqq-nt AUR package. Its stated purpose is to obtain a signed download URL for the QQ Linux .deb package by querying Tencent's own services (im.qq.com GetSign) and then download the package via curl in DLAGENT mode. All network endpoints used (qq-web.cdn-go.cn, im.qq.com) are Tencent-owned domains directly associated with the package upstream, and the operations performed (fetching a routing cookie, posting the deb URL to the signing endpoint, downloading the signed URL to the requested output path) match that documented purpose exactly.

No injected or malicious behavior was found: there is no obfuscation, no base64/hex-encoded payloads, no eval of decoded content, no writes outside the requested output path, and no reading or exfiltration of local files or credentials. The URL argument in DLAGENT mode is passed to python3 as an argument and JSON-encoded, not evaluated as shell code, so no command-injection vector is apparent. Only standard tools (bash, curl, python3) are used, all appropriate for the task.

The dynamic link-signing behavior means the downloaded artifact is ultimately served from a URL produced by Tencent's server. This is the script's intended function and represents the same trust model as downloading a vendor package normally, not a supply-chain attack by the AUR maintainer. Any remaining notes are minor hygiene considerations (e.g., relying on python3/curl being installed at build time) and do not rise to the level of a security threat.
</details>
<evidence>
</evidence>
<summary>
Legitimate Tencent URL-signing download helper; no malicious or unusual behavior found.</summary>
</security_assessment>

[7/7] Reviewing ...
+ Reviewed linuxqq-get-url.sh. Status: SAFE -- Legitimate Tencent URL-signing download helper; no malicious or unusual behavior found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 21,982
  Completion Tokens: 9,085
  Total Tokens: 31,067
  Total Cost: $0.001473
  Execution Time: 172.57 seconds

Final Status: SAFE


No issues found.
