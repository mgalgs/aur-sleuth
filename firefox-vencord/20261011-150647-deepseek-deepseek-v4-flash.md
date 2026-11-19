---
package: firefox-vencord
pkgbase: vencord
pkgver: 1.15.11
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 12881
completion_tokens: 4460
total_tokens: 17341
cost: 0.00609523
execution_time: 89.52
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-11T15:06:47Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Normal .gitignore for AUR package; no security issues.
  - file: PKGBUILD
    status: safe
    summary: Standard upstream build PKGBUILD; no malicious behavior detected.
  - file: vencord.install
    status: safe
    summary: Post-install script contains only an informational echo; no security concerns.
  - file: .SRCINFO
    status: safe
    summary: Pinned upstream source, no executable content or malicious patterns; safe.
---

firefox-vencord is built from vencord
Materializing firefox-vencord from local mirror...
Materialized firefox-vencord
Analyzing firefox-vencord AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only standard variable definitions and function declarations in its top-level scope. No command substitutions, backtick expressions, or other executable code are present outside of function bodies. The `source` array uses a parameter expansion for the tag, but this is ordinary PKGBUILD syntax and does not execute any commands at parse time. Running `makepkg --printsrcinfo` will only source these definitions, which is safe.
</details>
<evidence></evidence>
<summary>No dangerous top-level code; safe to parse.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous top-level code; safe to parse.
Reviewing the 4 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/4] Reviewing .SRCINFO...
[0/4] Reviewing .SRCINFO, PKGBUILD...
[0/4] Reviewing .SRCINFO, PKGBUILD, .gitignore...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard `.gitignore` for an AUR package repository. It instructs Git to ignore all files except the listed ones (`.SRCINFO`, `PKGBUILD`, `vencord.install`, `.gitignore`). This is conventional and serves to keep the repository minimal, containing only the files needed for the AUR package. There is no code execution, no network activity, no obfuscation, and no deviation from normal packaging practices. No security concerns.
</details>
<evidence></evidence>
<summary>Normal .gitignore for AUR package; no security issues.</summary>
</security_assessment>

[1/4] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed .gitignore. Status: SAFE -- Normal .gitignore for AUR package; no security issues.
[1/4] Reviewing .SRCINFO, PKGBUILD, vencord.install...
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a standard multi-package build for Vencord and its browser extension variants. It clones the official upstream repository from `https://github.com/Vendicated/Vencord.git` at a pinned tag (`v1.15.11`), installs dependencies with pnpm, runs the upstream build and test scripts, and installs the resulting files into `$pkgdir`. There is no obfuscated code, no suspicious network request, no execution of downloaded scripts outside the normal build process, and no attempt to access or exfiltrate local data.

The only noteworthy packaging issue is that a non-`SKIP` sha256sum is listed for a VCS (`git+`) source; this is unusual and may be invalid, since VCS sources normally require `SKIP`. That is a packaging-hygiene concern, not evidence of malicious behavior. Running `pnpm install` and the upstream build scripts is the normal way this project is built and does not by itself indicate a supply-chain attack.
</details>
<evidence>
</evidence>
<summary>
Standard upstream build PKGBUILD; no malicious behavior detected.</summary>
</security_assessment>

[2/4] Reviewing .SRCINFO, vencord.install...
+ Reviewed PKGBUILD. Status: SAFE -- Standard upstream build PKGBUILD; no malicious behavior detected.
LLM auditresponse for vencord.install:
<security_assessment>
<decision>SAFE</decision>
<details>
This is an `.install` file for the firefox-vencord AUR package. The `post_install()` function contains only a single `echo` statement that prints installation/finishing instructions to the user's terminal. There are no network requests, no file operations, no code execution, no obfuscation, and no references to external hosts. The content is purely informational text guiding the user on how to complete the integration of the Vencord extension with different browsers.

No security concerns of any kind are present. The file performs no actions beyond displaying a message, which is a standard packaging practice for post-install instructions.
</details>
<evidence>
</evidence>
<summary>Post-install script contains only an informational echo; no security concerns.</summary>
</security_assessment>

[3/4] Reviewing .SRCINFO...
+ Reviewed vencord.install. Status: SAFE -- Post-install script contains only an informational echo; no security concerns.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is pure AUR package metadata for a split package group. It contains no executable code, no shell commands, and no build or install logic. The declared source points to the upstream project's official GitHub repository at a pinned release tag (`v1.15.11`), which is normal packaging practice. There are no unexpected network destinations, no obfuscation, no encoded commands, and no suspicious file operations.

One minor packaging oddity: the source is a `git+https` VCS source, which normally uses a `SKIP` checksum rather than a literal hash. This is not malicious, only an unusual or potentially invalid checksum entry. The referenced `vencord.install` hook is not included in this file, so it cannot be evaluated from the provided content.
</details>
<evidence></evidence>
<summary>Pinned upstream source, no executable content or malicious patterns; safe.</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed .SRCINFO. Status: SAFE -- Pinned upstream source, no executable content or malicious patterns; safe.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 12,881
  Completion Tokens: 4,460
  Total Tokens: 17,341
  Total Cost: $0.006095
  Execution Time: 89.52 seconds

Final Status: SAFE


No issues found.
