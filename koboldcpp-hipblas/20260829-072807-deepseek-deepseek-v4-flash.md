---
package: koboldcpp-hipblas
pkgver: 1.120
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 3e318911529c43138ec6bdba0bfcb56907607021
prompt_tokens: 13363
completion_tokens: 1477
total_tokens: 14840
cost: 0.00137976552
execution_time: 45.95
files_reviewed: 4
files_skipped: 1
maintainer_files: 5
source_fetch: ok
upstream_files: 2635
upstream_named_files: 2
unpinned_sources: 0
date: 2026-08-29T07:28:07Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard .gitignore with no malicious content.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata with no malicious content.
  - file: koboldcpp.png
    status: skipped
    summary: "Skipping binary file: koboldcpp.png"
  - file: PKGBUILD
    status: safe
    summary: PKGBUILD is legitimate, follows standard practices, no malicious behavior detected.
  - file: koboldcpp.desktop
    status: safe
    summary: Standard desktop file, no security issues.
---

Cloning https://aur.archlinux.org/koboldcpp-hipblas.git...
Cloned koboldcpp-hipblas
Analyzing koboldcpp-hipblas AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD only performs variable assignments and array definitions in its global/top-level scope. No command substitutions, function calls, or executable code outside of `build()`/`package()` (which are not run during `--nobuild --noprepare`). The source entries point to standard upstream locations (GitHub tarball, local files), all with valid sha256sums. There is no `pkgver()` function that could execute code during sourcing. No suspicious or malicious content is present. The narrow gate operation (fetching sources and parsing the PKGBUILD) is completely safe.
</details>
<evidence></evidence>
<summary>Safe: no executable code in global scope</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Safe: no executable code in global scope
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Note: the PKGBUILD names 2 file(s) in the downloaded sources (src/koboldcpp-1.120/json_to_gbnf.py, src/koboldcpp-1.120/koboldcpp.py); they are upstream content and were not reviewed.
Reviewing the 5 file(s) in the AUR repository. The 2635 downloaded file(s) are upstream content, outside the threat model, and are not read.
Reviewing the AUR repository's files...
[0/5] Reviewing .SRCINFO...
[0/5] Reviewing .SRCINFO, .gitignore...
[0/5] Reviewing .SRCINFO, .gitignore, PKGBUILD...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.gitignore` file for AUR packaging. It lists common build artifacts (`pkg`, `src`, `makechroot`), log files (`*.log`), and compressed archives (`*.tar.gz`, `*.pkg.tar.zst`). No network requests, obfuscated code, dangerous commands, or system modifications are present. The file is innocuous and follows typical packaging workflow conventions.
</details>
<evidence></evidence>
<summary>Standard .gitignore with no malicious content.</summary>
</security_assessment>

[0/5] Reviewing .SRCINFO, .gitignore, PKGBUILD, koboldcpp.desktop...
[1/5] Reviewing .SRCINFO, PKGBUILD, koboldcpp.desktop...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore with no malicious content.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard .SRCINFO metadata file for an AUR package. It declares the package name, version, source URLs (pointing to the official GitHub repository), checksums (all explicitly listed, not SKIPed), dependencies, and other packaging metadata. No executable code, obfuscation, network requests, or system modifications are present. The file follows standard AUR packaging practices without any indications of supply-chain attack or malicious behavior.
</details>
<evidence></evidence>
<summary>Standard AUR metadata with no malicious content.</summary>
</security_assessment>

[1/5] Reviewing .SRCINFO, PKGBUILD, koboldcpp.desktop, koboldcpp.png...
[2/5] Reviewing PKGBUILD, koboldcpp.desktop, koboldcpp.png...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata with no malicious content.
[3/5] Reviewing PKGBUILD, koboldcpp.desktop...
! Reviewed koboldcpp.png. Status: SKIPPED -- Skipping binary file: koboldcpp.png
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard AUR packaging practices. It fetches the source tarball from the official upstream GitHub repository with a valid SHA256 checksum pinned, reducing the risk of supply-chain tampering. The build and package steps are conventional: `make` with expected flags, `install` commands to place files into `$pkgdir`, and a small wrapper script to launch the Python application. The only post-install processing is `compileall` for Python scripts, which is normal and improves startup performance. There is no use of `eval`, `base64`, `curl|bash`, obfuscated commands, or any operations that exfiltrate data or execute untrusted code. No network requests are made during build or package beyond the declared upstream source. The file is consistent with a legitimate AUR package.
</details>
<evidence></evidence>
<summary>PKGBUILD is legitimate, follows standard practices, no malicious behavior detected.</summary>
</security_assessment>

[4/5] Reviewing koboldcpp.desktop...
+ Reviewed PKGBUILD. Status: SAFE -- PKGBUILD is legitimate, follows standard practices, no malicious behavior detected.
LLM auditresponse for koboldcpp.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard Linux desktop entry file (`.desktop`). It defines an application launcher that executes `/usr/bin/koboldcpp` and is categorized as a utility/text tool. There are no network requests, no obfuscated code, no dangerous command invocations, and no deviations from standard desktop file practices. The only special character is the HTML entity `&amp;apos;` inside the Comment field, which is conventional escaping for an apostrophe in `.desktop` files. Nothing in this file suggests any supply-chain attack or malicious behavior.
</details>
<evidence></evidence>
<summary>Standard desktop file, no security issues.</summary>
</security_assessment>

[5/5] Reviewing ...
+ Reviewed koboldcpp.desktop. Status: SAFE -- Standard desktop file, no security issues.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
(Skipped 1 file: koboldcpp.png)

API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 13,363
  Completion Tokens: 1,477
  Total Tokens: 14,840
  Total Cost: $0.001380
  Execution Time: 45.95 seconds

Final Status: SAFE


No issues found.


Audit Skips:

koboldcpp.png: [SKIPPED] Skipping binary file: koboldcpp.png
