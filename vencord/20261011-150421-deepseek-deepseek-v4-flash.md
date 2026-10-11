---
package: vencord
pkgver: 1.15.11
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 12766
completion_tokens: 2204
total_tokens: 14970
cost: 0.00320410
execution_time: 36.51
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-11T15:04:21Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard declarative metadata; no executable code.
  - file: .gitignore
    status: safe
    summary: Standard gitignore, no malicious content.
  - file: vencord.install
    status: safe
    summary: Informational post-install instructions only.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD with no evidence of malicious behavior.
---

Materializing vencord from local mirror...
Materialized vencord
Analyzing vencord AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD only contains variable assignments, array definitions, and function definitions in its global scope. There are no top-level command substitutions, eval, curl, wget, or other operations that would execute code during `makepkg --printsrcinfo`. The `sha256sums` line is a static string assignment and presents no risk. All potentially dangerous operations are confined to the `prepare()`, `build()`, and `package_*()` functions, which are not invoked during `makepkg --printsrcinfo`. No genuinely malicious code is executed at parse time.
</details>
<evidence>
</evidence>
<summary>Global scope is safe; no dangerous code executes at parse time.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Global scope is safe; no dangerous code executes at parse time.
Reviewing the 4 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/4] Reviewing PKGBUILD...
[0/4] Reviewing PKGBUILD, .SRCINFO...
[0/4] Reviewing PKGBUILD, .SRCINFO, .gitignore...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The .SRCINFO file is purely declarative metadata for the AUR package, containing no executable code. It specifies the package base, split packages, their dependencies, and a verified source URL pointing to the official Vencord repository with a pinned tag and a checksum. No network requests, obfuscation, file operations, or dangerous commands are present. The content adheres to standard AUR packaging practices and poses no security threat.
</details>
<evidence></evidence>
<summary>Standard declarative metadata; no executable code.</summary>
</security_assessment>

[0/4] Reviewing PKGBUILD, .SRCINFO, .gitignore, vencord.install...
[1/4] Reviewing PKGBUILD, .gitignore, vencord.install...
+ Reviewed .SRCINFO. Status: SAFE -- Standard declarative metadata; no executable code.
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard `.gitignore` for an AUR package repository. It only lists ignore patterns to exclude all files except `.SRCINFO`, `PKGBUILD`, `vencord.install`, and itself. There are no commands, network requests, obfuscated code, or any operations that could constitute a security threat. The content is benign and follows normal packaging practices.
</details>
<evidence>
</evidence>
<summary>Standard gitignore, no malicious content.</summary>
</security_assessment>

[2/4] Reviewing PKGBUILD, vencord.install...
+ Reviewed .gitignore. Status: SAFE -- Standard gitignore, no malicious content.
LLM auditresponse for vencord.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `vencord.install` contains only a `post_install()` function that prints setup instructions to the user. It uses `echo` statements to display text about configuring Vesktop, Chromium, and Firefox to use the installed Vencord extension. There are no malicious commands, network requests, file operations, or obfuscated code. The file does not execute any commands or modify system files; it is purely informational.
</details>
<evidence></evidence>
<summary>Informational post-install instructions only.</summary>
</security_assessment>

[3/4] Reviewing PKGBUILD...
+ Reviewed vencord.install. Status: SAFE -- Informational post-install instructions only.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard AUR packaging practices. The source is fetched from the project&#x2019;s official GitHub repository pinned to a specific version tag with a SHA256 checksum. All build and package functions use normal commands (`pnpm install`, `pnpm build*`, `install`, `cp`) to compile and install the upstream application into standard system directories. There are no suspicious network requests, obfuscated code, dangerous commands, or file operations outside the package&#x2019;s own installation paths. The dependency on `vesktop` for the main `vencord` package is a legitimate upstream design choice.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD with no evidence of malicious behavior.</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD with no evidence of malicious behavior.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 12,766
  Completion Tokens: 2,204
  Total Tokens: 14,970
  Total Cost: $0.003204
  Execution Time: 36.51 seconds

Final Status: SAFE


No issues found.
