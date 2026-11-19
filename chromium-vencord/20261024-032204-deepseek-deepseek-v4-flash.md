---
package: chromium-vencord
pkgbase: vencord
pkgver: 1.15.13
pkgrel: 2
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 12695
completion_tokens: 2801
total_tokens: 15496
cost: 0.001665027
execution_time: 50.8
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-24T03:22:03Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard AUR .gitignore file, no issues.
  - file: .SRCINFO
    status: safe
    summary: Standard .SRCINFO, no malicious content.
  - file: vencord.install
    status: safe
    summary: Standard post-install message, no security issues.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD, no malicious code.
---

chromium-vencord is built from vencord
Materializing chromium-vencord from local mirror...
Materialized chromium-vencord
Analyzing chromium-vencord AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The global/top-level scope of this PKGBUILD contains only variable definitions (pkgname, pkgver, source, sha256sums, etc.) and comments. There are no command substitutions, function calls, or any other executable code outside of the function definitions. Since `makepkg --printsrcinfo` only sources the PKGBUILD and does not execute `pkgver()`, `prepare()`, `build()`, or `package_*()` functions, there is no risk of malicious execution at this step. The source URL and checksum are standard and do not trigger any dangerous behavior during sourcing.
</details>
<evidence></evidence>
<summary>No dangerous execution at top-level scope.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous execution at top-level scope.
Reviewing the 4 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/4] Reviewing .SRCINFO...
[0/4] Reviewing .SRCINFO, .gitignore...
[0/4] Reviewing .SRCINFO, .gitignore, PKGBUILD...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard `.gitignore` for an AUR package. It ignores all files by default (`*`) and then explicitly un-ignores only the essential packaging files (`.SRCINFO`, `PKGBUILD`, `vencord.install`, and itself). There is no executable code, no network operations, no obfuscation, and no indication of malicious intent. It follows normal AUR packaging practices.
</details>
<evidence>
</evidence>
<summary>Standard AUR .gitignore file, no issues.</summary>
</security_assessment>

[0/4] Reviewing .SRCINFO, .gitignore, PKGBUILD, vencord.install...
[1/4] Reviewing .SRCINFO, PKGBUILD, vencord.install...
+ Reviewed .gitignore. Status: SAFE -- Standard AUR .gitignore file, no issues.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The .SRCINFO file is a standard metadata file for the AUR. It defines a package base &quot;vencord&quot; with multiple split packages (vencord, chromium-vencord, firefox-vencord, etc.). The source is pinned to a specific Git tag (v1.15.13) from the official GitHub repository with a valid SHA256 checksum. There are no unexpected or dangerous commands, network requests, obfuscation, or file manipulations. This file is consistent with normal AUR packaging practices and contains no evidence of supply-chain attack or malicious intent.
</details>
<evidence>
</evidence>
<summary>Standard .SRCINFO, no malicious content.</summary>
</security_assessment>

[2/4] Reviewing PKGBUILD, vencord.install...
+ Reviewed .SRCINFO. Status: SAFE -- Standard .SRCINFO, no malicious content.
LLM auditresponse for vencord.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `vencord.install` contains only a `post_install` function that prints an informational message via `echo`. The message provides instructions for the user to manually complete the installation for various browsers (Vesktop, Chromium, Firefox, Zen). There are no commands executed, no network operations, no file modifications, no obfuscated code, and no external data exfiltration. This is a standard post-installation message typical for AUR packages, serving only to guide the user.
</details>
<evidence>
</evidence>
<summary>Standard post-install message, no security issues.</summary>
</security_assessment>

[3/4] Reviewing PKGBUILD...
+ Reviewed vencord.install. Status: SAFE -- Standard post-install message, no security issues.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a standard AUR package for Vencord, a Discord client mod. It clones the upstream repository from `https://github.com/Vendicated/Vencord` at a pinned tag (`v$pkgver`), installs dependencies using `pnpm`, builds the project with `pnpm buildStandalone` and `pnpm buildWeb`, and packages the output into multiple browser and standalone variants. All file operations are confined to the package's own build directory and installation destination (`$pkgdir`). There are no network requests beyond the declared git source, no obfuscated commands, no base64/eval usage, and no exfiltration of system data. The `sha256sums` entry is present (not `SKIP`) for the git source URL string, which is a valid albeit uncommon practice; it does not indicate malice. The reference to `vencord.install` is a separate file not included here, so no analysis of it is performed. Overall, the PKGBUILD exhibits only expected packaging behavior.
</details>
<evidence></evidence>
<summary>Standard AUR PKGBUILD, no malicious code.</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD, no malicious code.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 12,695
  Completion Tokens: 2,801
  Total Tokens: 15,496
  Total Cost: $0.001665
  Execution Time: 50.80 seconds

Final Status: SAFE


No issues found.
