---
package: firefox-developer-edition-vencord
pkgbase: vencord
pkgver: 1.15.4
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 3e318911529c43138ec6bdba0bfcb56907607021
prompt_tokens: 12820
completion_tokens: 1915
total_tokens: 14735
cost: 0.0014452200
execution_time: 117.3
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: ok
upstream_files: 801
upstream_named_files: 0
unpinned_sources: 0
date: 2026-08-28T19:25:03Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard AUR .gitignore file, no issues.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata file, no security issues.
  - file: vencord.install
    status: safe
    summary: Post-install message script, no malicious content.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR packaging, no malicious behavior detected
---

firefox-developer-edition-vencord is built from vencord
Cloning https://aur.archlinux.org/vencord.git...
Cloned firefox-developer-edition-vencord
Analyzing firefox-developer-edition-vencord AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD defines only variables and functions at top-level scope. No command substitutions, backtick executions, or other executable code exist outside of the defined functions (prepare, build, check, package_*). The `pkgver()` function is not defined — `pkgver` is a plain variable assignment. The sole source entry is a `git+https` clone from the official Vencord GitHub repository with a pinned tag, which is standard and non-dangerous. Running `makepkg --nobuild --nodeps --noprepare` and `makepkg --printsrcinfo` will only fetch that source, assign variables, and print metadata. No malicious execution occurs.
</details>
<evidence></evidence>
<summary>Safe: no top-level execution, clean source.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Safe: no top-level execution, clean source.
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Reviewing the 4 file(s) in the AUR repository. The 801 downloaded file(s) are upstream content, outside the threat model, and are not read.
Reviewing the AUR repository's files...
[0/4] Reviewing .SRCINFO...
[0/4] Reviewing .SRCINFO, PKGBUILD...
[0/4] Reviewing .SRCINFO, PKGBUILD, .gitignore...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is an ordinary `.gitignore` used in AUR git repositories to only track the packaging files (PKGBUILD, .SRCINFO, vencord.install, and itself). It contains no commands, network requests, obfuscation, or any other malicious content. This is a standard configuration file for version control.
</details>
<evidence></evidence>
<summary>Standard AUR .gitignore file, no issues.</summary>
</security_assessment>

[1/4] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed .gitignore. Status: SAFE -- Standard AUR .gitignore file, no issues.
[1/4] Reviewing .SRCINFO, PKGBUILD, vencord.install...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This .SRCINFO file is a standard AUR package metadata file. It declares the package base, version, source (a git tag from the official Vencord repository), and a checksum. There are multiple subpackages for different browsers. The file contains no executable code, no network requests, no obfuscation, and no unexpected system operations. It is a clean, declarative packaging file. Therefore, it is safe.
</details>
<evidence></evidence>
<summary>Standard AUR metadata file, no security issues.</summary>
</security_assessment>

[2/4] Reviewing PKGBUILD, vencord.install...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata file, no security issues.
LLM auditresponse for vencord.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard post-installation message script. It contains only an `echo` statement that prints user-facing instructions on how to configure the installed Vencord package for various browsers and Vesktop. There are no commands that execute external code, download files, modify system files, or perform any network operations. The content is purely informational and follows normal AUR packaging practices.
</details>
<evidence></evidence>
<summary>Post-install message script, no malicious content.</summary>
</security_assessment>

[3/4] Reviewing PKGBUILD...
+ Reviewed vencord.install. Status: SAFE -- Post-install message script, no malicious content.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD conforms to standard AUR packaging practices. The source is pinned to a specific git tag (`v1.15.4`) with a valid SHA-256 checksum, ensuring integrity of the downloaded code. The build and install steps use the upstream build system (pnpm) and simply copy the resulting artifacts into the appropriate system directories. There are no network requests beyond the declared upstream source, no obfuscated or encoded commands, no file operations outside the package’s own scope, and no attempts to exfiltrate data or execute untrusted content. The reference to an install script (`vencord.install`) is normal and cannot be assessed from this file alone, but the PKGBUILD itself shows no evidence of a supply-chain attack.
</details>
<evidence></evidence>
<summary>Standard AUR packaging, no malicious behavior detected</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR packaging, no malicious behavior detected
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 12,820
  Completion Tokens: 1,915
  Total Tokens: 14,735
  Total Cost: $0.001445
  Execution Time: 117.30 seconds

Final Status: SAFE


No issues found.
