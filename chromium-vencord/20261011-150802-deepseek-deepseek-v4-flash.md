---
package: chromium-vencord
pkgbase: vencord
pkgver: 1.15.11
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 12692
completion_tokens: 2174
total_tokens: 14866
cost: 0.00316348
execution_time: 49.98
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-11T15:08:02Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata file, no malicious content.
  - file: .gitignore
    status: safe
    summary: Standard AUR .gitignore; no malicious or suspicious behavior detected.
  - file: vencord.install
    status: safe
    summary: Install script with only informational echoes; no security issues.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD, no malicious indicators.
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
The PKGBUILD contains only top-level variable assignments and function definitions. No commands are executed at global scope beyond the normal evaluation of strings for `source` and `sha256sums`. There are no invocations of `curl`, `wget`, `eval`, or any other potentially dangerous commands. All code that could perform downloads or system modifications is inside `prepare()`, `build()`, `check()`, or `package_*()` functions, which are not executed by `makepkg --printsrcinfo`. Therefore, running this command is safe.
</details>
<evidence></evidence>
<summary>No dangerous top-level execution.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous top-level execution.
Reviewing the 4 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/4] Reviewing .SRCINFO...
[0/4] Reviewing .SRCINFO, PKGBUILD...
[0/4] Reviewing .SRCINFO, PKGBUILD, .gitignore...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This .SRCINFO file is a standard metadata file for Arch Linux AUR packages. It defines multiple subpackages (vencord, chromium-vencord, firefox-vencord, etc.) based on the Vencord Discord client mod. The source is pinned to a specific version tag from the official GitHub repository with a valid SHA256 checksum. There are no suspicious operations, obfuscated code, or unexpected network destinations. The file only declares build dependencies, sources, and package relationships. No malicious behavior is present.
</details>
<evidence>
</evidence>
<summary>Standard AUR metadata file, no malicious content.</summary>
</security_assessment>

[0/4] Reviewing .SRCINFO, PKGBUILD, .gitignore, vencord.install...
[1/4] Reviewing PKGBUILD, .gitignore, vencord.install...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata file, no malicious content.
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard `.gitignore` for an AUR package repository. It ignores all files except the expected packaging files: `.SRCINFO`, `PKGBUILD`, `vencord.install`, and the `.gitignore` itself. There is no obfuscation, no network activity, no file manipulation outside the repository, and no evidence of malicious or suspicious behavior. It is consistent with routine AUR maintenance.
</details>
<evidence>
</evidence>
<summary>
Standard AUR .gitignore; no malicious or suspicious behavior detected.</summary>
</security_assessment>

[2/4] Reviewing PKGBUILD, vencord.install...
+ Reviewed .gitignore. Status: SAFE -- Standard AUR .gitignore; no malicious or suspicious behavior detected.
LLM auditresponse for vencord.install:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard Arch Linux `.install` script that only outputs informational messages to the user during post-installation. It contains no command execution, file manipulation, network requests, or any other dynamic operations beyond echoing text to the terminal. The content is purely instructional, directing the user how to manually configure their browser or Vesktop to use the installed Vencord files. There is no obfuscated code, encoded payloads, or unexpected behavior. The file conforms to normal AUR packaging practices and presents no security threat.
</details>
<evidence></evidence>
<summary>Install script with only informational echoes; no security issues.</summary>
</security_assessment>

[3/4] Reviewing PKGBUILD...
+ Reviewed vencord.install. Status: SAFE -- Install script with only informational echoes; no security issues.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is for the Vencord Discord client mod, a well-known open-source project. It fetches the source code from the project's official GitHub repository, pinned to a specific tag (`v1.15.11`) with a checksum provided. The build and package steps use standard tools (`git`, `pnpm`, `install`, `cp`) and follow typical AUR packaging conventions. There are no suspicious network requests to unrelated hosts, no obfuscated or encoded commands, no exfiltration of data, and no deviation from legitimate packaging practices. The presence of an `install` script reference is normal; this file does not contain anything malicious.
</details>
<evidence>
</evidence>
<summary>Standard PKGBUILD, no malicious indicators.</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD, no malicious indicators.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 12,692
  Completion Tokens: 2,174
  Total Tokens: 14,866
  Total Cost: $0.003163
  Execution Time: 49.98 seconds

Final Status: SAFE


No issues found.
