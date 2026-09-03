---
package: librewolf-vencord-bin
pkgbase: vencord-bin
pkgver: 1.15.4
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 171a316e053e9c4b28731ccb1aa63b1168550d3a
prompt_tokens: 12963
completion_tokens: 1889
total_tokens: 14852
cost: 0.001483353046
execution_time: 92.14
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-03T11:25:43Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard AUR .gitignore whitelisting packaging files; no malicious or suspicious content.
  - file: .SRCINFO
    status: safe
    summary: Benign metadata file, no malicious content.
  - file: PKGBUILD
    status: safe
    summary: No malicious behavior found; standard PKGBUILD.
  - file: vencord.install
    status: safe
    summary: Informational post-install message; no risky operations.
---

librewolf-vencord-bin is built from vencord-bin
Materializing librewolf-vencord-bin from local mirror...
Materialized librewolf-vencord-bin
Analyzing librewolf-vencord-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD only contains global variable definitions in its top-level scope. No command substitutions, function calls, or code that would execute during `makepkg --printsrcinfo` are present. All variables are assigned simple strings or references to other variables. There is no dangerous behavior at parse time.
</details>
<evidence>
</evidence>
<summary>No executable code in global scope.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No executable code in global scope.
Reviewing the 4 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/4] Reviewing .SRCINFO...
[0/4] Reviewing .SRCINFO, .gitignore...
[0/4] Reviewing .SRCINFO, .gitignore, PKGBUILD...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.gitignore` file for an AUR package git repository. It ignores all files (`*`) and then whitelists only the packaging files (`!.SRCINFO`, `!PKGBUILD`, `!vencord.install`, `!.gitignore`) so they remain tracked in the AUR git repository. This is ordinary, expected AUR maintenance practice and matches the listed filenames of the package itself.

There is no executable code, no network access, no file operations outside the git repository scope, no obfuscation, and no suspicious patterns (curl, wget, eval, base64, exec, etc.). The file contains only simple gitignore patterns and poses no security risk.
</details>
<evidence>
</evidence>
<summary>
Standard AUR .gitignore whitelisting packaging files; no malicious or suspicious content.</summary>
</security_assessment>

[0/4] Reviewing .SRCINFO, .gitignore, PKGBUILD, vencord.install...
[1/4] Reviewing .SRCINFO, PKGBUILD, vencord.install...
+ Reviewed .gitignore. Status: SAFE -- Standard AUR .gitignore whitelisting packaging files; no malicious or suspicious content.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The `.SRCINFO` file is a package metadata descriptor containing only declarative fields: package name, version, dependencies, source URL, and checksum. No executable code, network requests, obfuscation, or system-modifying commands are present. The source is pinned to a specific commit (`478b22bc5c874d7d61be9152ee9754b65c8757a0`) with a SHA-256 checksum, which is a standard security practice. The file references an install script (`vencord.install`) that is not included here, so it cannot be evaluated—however, within the scope of this file alone, there is no evidence of malicious or anomalous behavior.
</details>
<evidence></evidence>
<summary>Benign metadata file, no malicious content.</summary>
</security_assessment>

[2/4] Reviewing PKGBUILD, vencord.install...
+ Reviewed .SRCINFO. Status: SAFE -- Benign metadata file, no malicious content.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a standard AUR packaging file for Vencord builds. It sources a pinned commit from the official GitHub repository with a verified SHA-256 checksum. The package functions simply copy pre-built files (Vencord libraries, Chrome/Firefox extensions) into the appropriate system directories. There are no obfuscated commands, no unexpected network requests, no exfiltration, and no execution of untrusted code. The use of an slmail.me email address is unconventional but not malicious. The file adheres to normal AUR packaging practices.
</details>
<evidence></evidence>
<summary>No malicious behavior found; standard PKGBUILD.</summary>
</security_assessment>

[3/4] Reviewing vencord.install...
+ Reviewed PKGBUILD. Status: SAFE -- No malicious behavior found; standard PKGBUILD.
LLM auditresponse for vencord.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `vencord.install` is a standard Arch Linux package install script that only contains a `post_install()` function printing a multi-line help message to the user. This message provides setup instructions for integrating Vencord with various desktop applications (Vesktop, Chromium-based browsers, Firefox-based browsers, and Zen). There are no commands executed, no network requests, no file modifications, no obfuscation, or any other potentially dangerous operations. The content is purely informational and follows expected packaging conventions for displaying post-installation guidance.
</details>
<evidence></evidence>
<summary>Informational post-install message; no risky operations.</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed vencord.install. Status: SAFE -- Informational post-install message; no risky operations.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 12,963
  Completion Tokens: 1,889
  Total Tokens: 14,852
  Total Cost: $0.001483
  Execution Time: 92.14 seconds

Final Status: SAFE


No issues found.
