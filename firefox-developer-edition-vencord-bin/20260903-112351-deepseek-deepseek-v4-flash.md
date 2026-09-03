---
package: firefox-developer-edition-vencord-bin
pkgbase: vencord-bin
pkgver: 1.15.4
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 171a316e053e9c4b28731ccb1aa63b1168550d3a
prompt_tokens: 12978
completion_tokens: 1610
total_tokens: 14588
cost: 0.001435239988
execution_time: 100.4
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-03T11:23:50Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Normal .gitignore file, no security issues.
  - file: vencord.install
    status: safe
    summary: Post-install script with only help text, no malicious behavior.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata with no security issues.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD, pinned source, no malicious behavior.
---

firefox-developer-edition-vencord-bin is built from vencord-bin
Materializing firefox-developer-edition-vencord-bin from local mirror...
Materialized firefox-developer-edition-vencord-bin
Analyzing firefox-developer-edition-vencord-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only static variable definitions at the global/top-level scope. There are no command substitutions, no external command invocations, no network requests, and no file modifications that would execute during `makepkg --printsrcinfo`. The `source` array references a pinned commit from the project's own upstream GitHub repository and the checksum is provided. All file operations (install, cp, unzip) are confined within the `package_*()` functions, which are not executed during metadata parsing. No malicious or suspicious top-level behavior exists.
</details>
<evidence>
</evidence>
<summary>Top-level PKGBUILD scope contains only static variables; no code executes during printsrcinfo.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Top-level PKGBUILD scope contains only static variables; no code executes during printsrcinfo.
Reviewing the 4 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/4] Reviewing .SRCINFO...
[0/4] Reviewing .SRCINFO, .gitignore...
[0/4] Reviewing .SRCINFO, .gitignore, PKGBUILD...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard .gitignore file used in AUR package repositories. It ignores all files except those essential for the AUR packaging workflow (.SRCINFO, PKGBUILD, vencord.install, and the .gitignore itself). No suspicious commands, network requests, obfuscated code, or other malicious patterns are present. The file is completely benign and serves a routine version control purpose.
</details>
<evidence></evidence>
<summary>Normal .gitignore file, no security issues.</summary>
</security_assessment>

[0/4] Reviewing .SRCINFO, .gitignore, PKGBUILD, vencord.install...
[1/4] Reviewing .SRCINFO, PKGBUILD, vencord.install...
+ Reviewed .gitignore. Status: SAFE -- Normal .gitignore file, no security issues.
LLM auditresponse for vencord.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard Arch Linux package install script that only contains a `post_install()` function echoing a help message to the user. The message provides instructions for configuring the installed Vencord extension in various browsers (Vesktop, Chromium, Firefox, Zen). There are no network requests, file operations, command executions, or any other potentially malicious behavior. The content is purely informational and follows normal packaging conventions.
</details>
<evidence></evidence>
<summary>Post-install script with only help text, no malicious behavior.</summary>
</security_assessment>

[2/4] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed vencord.install. Status: SAFE -- Post-install script with only help text, no malicious behavior.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The `.SRCINFO` file is standard AUR metadata. It defines package groups, dependencies, a source URL from a pinned GitHub commit, and a SHA-256 checksum. No commands, obfuscation, or unexpected operations are present. The file only contains declarative package information, and there is no evidence of injected malicious code or supply-chain attack within this file.
</details>
<evidence></evidence>
<summary>Standard AUR metadata with no security issues.</summary>
</security_assessment>

[3/4] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata with no security issues.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard AUR packaging practices. It fetches a pinned commit from the official Vencord builds repository with a verified SHA256 checksum. All package functions simply copy the prebuilt extensions and libraries to the correct system paths using `install`, `cp`, and `unzip`. There are no network requests, obfuscated commands, dangerous operations (eval, curl|bash, etc.), or any behavior that deviates from normal packaging. The file references a `.install` script (vencord.install) which is not shown, but such scripts are typical for post-install actions and do not by themselves indicate malice. No evidence of supply-chain attack or malicious injection is present.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD, pinned source, no malicious behavior.</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD, pinned source, no malicious behavior.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 12,978
  Completion Tokens: 1,610
  Total Tokens: 14,588
  Total Cost: $0.001435
  Execution Time: 100.40 seconds

Final Status: SAFE


No issues found.
