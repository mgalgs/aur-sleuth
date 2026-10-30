---
package: tencent-wechat
pkgver: 4.1.13.26
pkgrel: 2
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 20171
completion_tokens: 9512
total_tokens: 29683
cost: 0.003566745
execution_time: 53.86
files_reviewed: 6
files_skipped: 0
maintainer_files: 6
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-30T03:22:59Z
file_verdicts:
  - file: LICENSE
    status: safe
    summary: Static license file, no executable code or risks.
  - file: DISCLAIMER
    status: safe
    summary: "Safe: Disclaimer file with no executable code."
  - file: PKGBUILD
    status: safe
    summary: Clean repackaging of proprietary binary; no malicious code.
  - file: wechat.desktop
    status: safe
    summary: Standard .desktop file, no malicious content.
  - file: wechat.sh
    status: safe
    summary: No malicious behavior found; standard AUR launcher with sandboxing.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata with pinned checksums and official source.
---

Materializing tencent-wechat from local mirror...
Materialized tencent-wechat
Analyzing tencent-wechat AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only static variable and array definitions at global scope: pkgname, pkgver, pkgrel, pkgdesc, arch, url, license, depends, optdepends, provides, conflicts, options, source, source_x86_64, noextract, and checksum arrays. No command substitutions, external tool invocations, network requests, or code execution occur when the file is sourced during `makepkg --printsrcinfo`.

The `prepare()` and `package()` functions contain file extraction and installation logic, but those functions are not executed by `makepkg --printsrcinfo`. They are out of scope for this narrow safety gate and will be reviewed separately in the full PKGBUILD audit. There is no top-level code that could download, execute, or exfiltrate data during metadata parsing.
</details>
<evidence>
</evidence>
<summary>
No top-level execution risk; static metadata only, safe for printsrcinfo.
</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No top-level execution risk; static metadata only, safe for printsrcinfo.
Reviewing the 6 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/6] Reviewing .SRCINFO...
[0/6] Reviewing .SRCINFO, DISCLAIMER...
[0/6] Reviewing .SRCINFO, DISCLAIMER, LICENSE...
LLM auditresponse for LICENSE:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a static text document containing links to WeChat's Terms of Service and Privacy Policy distributed under a license. It contains no executable code, no network requests, no obfuscation, and no file operations. There is no security risk.
</details>
<evidence></evidence>
<summary>
Static license file, no executable code or risks.
</summary>
</security_assessment>

[0/6] Reviewing .SRCINFO, DISCLAIMER, LICENSE, PKGBUILD...
[1/6] Reviewing .SRCINFO, DISCLAIMER, PKGBUILD...
+ Reviewed LICENSE. Status: SAFE -- Static license file, no executable code or risks.
LLM auditresponse for DISCLAIMER:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a plain-text disclaimer written in Chinese and English. It clarifies that the project is an unofficial community packaging effort for Arch Linux, that it does not contain or modify proprietary WeChat binaries, and that it has no official affiliation with Tencent. There is no executable code, no network requests, no obfuscation, no file operations, and no system modifications. The content is purely informational and presents no security concerns.</details>
<evidence></evidence>
<summary>Safe: Disclaimer file with no executable code.</summary>
</security_assessment>

[1/6] Reviewing .SRCINFO, DISCLAIMER, PKGBUILD, wechat.desktop...
[2/6] Reviewing .SRCINFO, PKGBUILD, wechat.desktop...
+ Reviewed DISCLAIMER. Status: SAFE -- Safe: Disclaimer file with no executable code.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard Arch packaging practices for repackaging a proprietary binary application. The source is fetched from the official Tencent WeChat download domain over HTTPS, with a pinned SHA-256 checksum ensuring integrity. No obfuscated code, unexpected network requests, or dangerous command usage (eval, curl|bash, etc.) is present. The custom files (wechat.sh, wechat.desktop, LICENSE, DISCLAIMER) also have pinned checksums. All operations in `prepare()` and `package()` are limited to extracting the upstream .deb, installing files, and setting permissions—normal for this type of package. There is no evidence of injected malicious behavior.
</details>
<evidence></evidence>
<summary>Clean repackaging of proprietary binary; no malicious code.</summary>
</security_assessment>

[2/6] Reviewing .SRCINFO, PKGBUILD, wechat.desktop, wechat.sh...
[3/6] Reviewing .SRCINFO, wechat.desktop, wechat.sh...
+ Reviewed PKGBUILD. Status: SAFE -- Clean repackaging of proprietary binary; no malicious code.
LLM auditresponse for wechat.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard freedesktop.org Desktop Entry file for the WeChat messaging application. It defines the application's name, icon, launch command (`Exec=wechat %u`), and configured MIME types including the `weixin://` URL scheme handler, which is expected default behavior for a messaging client. The file contains no shell scripts, network commands (curl, wget), obfuscated code, or system modifications beyond standard desktop integration. There is no evidence of malicious code injection or supply-chain attack in this content.
</details>
<evidence></evidence>
<summary>Standard .desktop file, no malicious content.</summary>
</security_assessment>

[4/6] Reviewing .SRCINFO, wechat.sh...
+ Reviewed wechat.desktop. Status: SAFE -- Standard .desktop file, no malicious content.
LLM auditresponse for wechat.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
Standard packaging script. Sets environment variables, creates symlinks for data persistence, and optionally runs WeChat inside a bubblewrap sandbox with privacy precautions (masking ~/.ssh and ~/.gnupg, creating an xdg-open wrapper that uses the Desktop Portal for URL/file opening). No network downloads, no obfuscated code, no tampering with system files outside the user&#39;s home directory, and no evidence of exfiltration or backdoors. All operations serve the stated purpose of launching the application in a controlled environment.
</details>
<evidence>
</evidence>
<summary>No malicious behavior found; standard AUR launcher with sandboxing.</summary>
</security_assessment>

[5/6] Reviewing .SRCINFO...
+ Reviewed wechat.sh. Status: SAFE -- No malicious behavior found; standard AUR launcher with sandboxing.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a `.SRCINFO` file, which is purely declarative metadata used by AUR helpers. It contains no executable code (`build()`, `package()`, etc.) and no invocations of commands. The binary source URL (`source_x86_64`) points directly to the official Tencent CDN (`dldir1v6.qq.com`), which is the expected upstream for the WeChat Linux package. Both the binary download and the local helper scripts have pinned SHA256 checksums, enforcing integrity verification at build time. No obfuscation, exfiltration attempts, unexpected network hosts, or dangerous command patterns are present.
</details>
<evidence></evidence>
<summary>Standard AUR metadata with pinned checksums and official source.</summary>
</security_assessment>

[6/6] Reviewing ...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata with pinned checksums and official source.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 20,171
  Completion Tokens: 9,512
  Total Tokens: 29,683
  Total Cost: $0.003567
  Execution Time: 53.86 seconds

Final Status: SAFE


No issues found.
