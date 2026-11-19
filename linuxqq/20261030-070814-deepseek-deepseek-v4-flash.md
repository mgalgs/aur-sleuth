---
package: linuxqq
pkgver: 3.2.35_54395
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 13451
completion_tokens: 1872
total_tokens: 15323
cost: 0.001564745
execution_time: 30.66
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-30T07:08:13Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard .gitignore; no security concerns.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata file, no malicious content.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD for linuxqq; no security issues found.
  - file: linuxqq.sh
    status: safe
    summary: Standard application wrapper; no malicious indicators.
---

Materializing linuxqq from local mirror...
Materialized linuxqq
Analyzing linuxqq AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD top-level scope contains only standard variable assignments: pkgname, pkgver, pkgrel, epoch, arch, url, license, dependencies, per-architecture source arrays, and sha512sums arrays. There are no top-level command substitutions, no calls to curl/wget/eval/base64, no downloads, and no file operations that would execute when the file is sourced by `makepkg --printsrcinfo`.

The `package()` function contains installation logic (bsdtar extraction, install, sed, rm), but function bodies are not executed during `makepkg --printsrcinfo`; they will be reviewed separately in the full PKGBUILD audit. Downloading the package's own upstream `.deb` artifacts from qqdl.gtimg.cn and including checksums is normal packaging practice and does not pose a risk at this parsing step.
</details>
<evidence>
</evidence>
<summary>
Top-level only defines variables; no malicious code executes during printsrcinfo.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Top-level only defines variables; no malicious code executes during printsrcinfo.
Reviewing the 4 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/4] Reviewing .SRCINFO...
[0/4] Reviewing .SRCINFO, .gitignore...
[0/4] Reviewing .SRCINFO, .gitignore, PKGBUILD...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
The `.gitignore` file contains only standard exclusion patterns for build artifacts (directories `/pkg/` and `/src/`, and file types `*.deb`, `*.zst`, `*.zip`). There is no executable content, no network requests, no obfuscated code, and no system modifications. This file is a normal part of AUR package repositories and poses no security risk.
</details>
<evidence></evidence>
<summary>Standard .gitignore; no security concerns.</summary>
</security_assessment>

[1/4] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore; no security concerns.
[1/4] Reviewing .SRCINFO, PKGBUILD, linuxqq.sh...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The .SRCINFO file is a metadata manifest for the AUR package. It declares sources, checksums, dependencies, and package architecture. All source URLs point to the official Tencent QQ download domain (qqdl.gtimg.cn), which is the expected upstream for the linuxqq package. Checksums are provided for each architecture-specific .deb file, and for the linuxqq.sh helper script. There is no obfuscated code, no dangerous commands, and no reference to external hosts beyond the project&#x27;s own upstream. This file contains no executable content and exhibits no signs of supply-chain compromise. The security of the build depends on the content of linuxqq.sh and the integrity of the downloaded .deb packages, but this metadata file itself is safe.
</details>
<evidence></evidence>
<summary>Standard AUR metadata file, no malicious content.</summary>
</security_assessment>

[2/4] Reviewing PKGBUILD, linuxqq.sh...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata file, no malicious content.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD fetches official `.deb` packages from Tencent&#39;s CDN (`qqdl.gtimg.cn`) with pinned checksums (`sha512sums`). All sources are verified; no `SKIP` checksums are used. The `package()` function performs standard extraction, file installation, and minor desktop file fixes. Removal of bundled `libssh2.so.1` is a documented workaround to avoid conflicts with the system library, not a malicious action. No obfuscated code, unexpected network requests, or execution of untrusted content is present. The file adheres to typical AUR packaging practices for a binary Electron application.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD for linuxqq; no security issues found.</summary>
</security_assessment>

[3/4] Reviewing linuxqq.sh...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD for linuxqq; no security issues found.
LLM auditresponse for linuxqq.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
The script performs routine application cleanup (removing outdated library files and crash dumps from the user's QQ config directory) and launches the official QQ binary. It reads optional user flags from a configuration file. No network requests, obfuscation, or system modifications outside the application's own scope are present. All operations are consistent with expected packaging and application behavior.
</details>
<evidence></evidence>
<summary>Standard application wrapper; no malicious indicators.</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed linuxqq.sh. Status: SAFE -- Standard application wrapper; no malicious indicators.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 13,451
  Completion Tokens: 1,872
  Total Tokens: 15,323
  Total Cost: $0.001565
  Execution Time: 30.66 seconds

Final Status: SAFE


No issues found.
