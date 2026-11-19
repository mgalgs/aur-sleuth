---
package: librewolf-vencord
pkgbase: vencord
pkgver: 1.15.13
pkgrel: 2
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 12626
completion_tokens: 2108
total_tokens: 14734
cost: 0.001532622
execution_time: 42.37
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-24T03:18:45Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata file with no malicious content.
  - file: .gitignore
    status: safe
    summary: Standard AUR .gitignore file, no threats.
  - file: vencord.install
    status: safe
    summary: Post-install instructions only; no malicious behavior.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD for Vencord, no supply-chain risks found.
---

librewolf-vencord is built from vencord
Materializing librewolf-vencord from local mirror...
Materialized librewolf-vencord
Analyzing librewolf-vencord AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only variable definitions and function definitions at the global scope. No command substitutions, external command calls, or any code that would execute during sourcing. The source array uses a fixed git tag URL, which is normal. There is no malicious or suspicious top-level code that could execute during `makepkg --printsrcinfo`.
</details>
<evidence></evidence>
<summary>No executable code at global scope; safe to source.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No executable code at global scope; safe to source.
Reviewing the 4 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/4] Reviewing .SRCINFO...
[0/4] Reviewing .SRCINFO, .gitignore...
[0/4] Reviewing .SRCINFO, .gitignore, PKGBUILD...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The .SRCINFO file is a standard AUR metadata file. It defines package names, version, source (pinned to a specific tag on GitHub with a checksum), dependencies, and install scripts. There is no executable code, no obfuscation, no unexpected network requests, no dangerous commands. The source is pinned with a SHA256 hash, which aligns with good packaging practices. The sub-packages declare legitimate browsers as dependencies. No evidence of supply chain attack or malicious content.
</details>
<evidence>
</evidence>
<summary>Standard AUR metadata file with no malicious content.</summary>
</security_assessment>

[1/4] Reviewing .gitignore, PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata file with no malicious content.
[1/4] Reviewing .gitignore, PKGBUILD, vencord.install...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `.gitignore` is a standard configuration file for git repositories, commonly found in AUR packages. It specifies that only the files `!.SRCINFO`, `!PKGBUILD`, `!vencord.install`, and `!.gitignore` should be tracked by git, ignoring everything else (`*`). This is a normal packaging practice to commit only essential files. There is no network activity, no code execution, no obfuscation, no exfiltration, or any other suspicious behavior. The file is benign and poses no security risk.
</details>
<evidence></evidence>
<summary>Standard AUR .gitignore file, no threats.</summary>
</security_assessment>

[2/4] Reviewing PKGBUILD, vencord.install...
+ Reviewed .gitignore. Status: SAFE -- Standard AUR .gitignore file, no threats.
LLM auditresponse for vencord.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard `.install` script used by Arch Linux packages to display post-installation instructions to the user. It contains only an `echo` statement outputting plain text with setup steps for Vesktop, Chromium, Firefox, and Zen browsers. There are no executing commands, no network requests, no file manipulations, no obfuscated code, and no references to external or unexpected sources. The content is purely informational and consistent with normal AUR packaging practices.
</details>
<evidence>
</evidence>
<summary>Post-install instructions only; no malicious behavior.</summary>
</security_assessment>

[3/4] Reviewing PKGBUILD...
+ Reviewed vencord.install. Status: SAFE -- Post-install instructions only; no malicious behavior.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a standard Arch Linux package definition for building and installing the Vencord Discord client mod. It fetches the source code from the project’s official GitHub repository using a signed tag and a pinned SHA256 checksum, ensuring integrity. The build process uses `pnpm install --frozen-lockfile`, which respects the upstream lockfile and does not introduce arbitrary dependencies. All packaging steps simply copy built artifacts into the appropriate system directories for each browser variant. The file follows common AUR packaging practices without any obfuscation, unexpected network requests, or dangerous command execution. No malicious behavior is present.
</details>
<evidence>
</evidence>
<summary>Standard PKGBUILD for Vencord, no supply-chain risks found.</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD for Vencord, no supply-chain risks found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 12,626
  Completion Tokens: 2,108
  Total Tokens: 14,734
  Total Cost: $0.001533
  Execution Time: 42.37 seconds

Final Status: SAFE


No issues found.
