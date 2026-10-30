---
package: vencord
pkgver: 1.15.14
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 12951
completion_tokens: 7361
total_tokens: 20312
cost: 0.002518243
execution_time: 55.74
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-30T03:30:58Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard AUR .gitignore, no security issues.
  - file: vencord.install
    status: safe
    summary: Standard post-installation instructions, no security issues.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR .SRCINFO metadata, no malicious code.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD with no malicious indicators.
---

Materializing vencord from local mirror...
Materialized vencord
Analyzing vencord AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The global scope of this PKGBUILD contains only standard variable and array assignments (e.g., `pkgname`, `pkgver`, `source`, `sha256sums`) and function definitions. There are no command substitutions, backticks, `eval`, `curl`, `wget`, or any other operations that would execute code during the `makepkg --printsrcinfo` sourcing step. Variable expansion in the `source` array (`"git+$_ghurl.git#tag=v$pkgver"`) is normal PKGBUILD behavior and does not execute anything. All definitions use literal strings with no dangerous constructs.
</details>
<evidence></evidence>
<summary>No dangerous code in global scope.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous code in global scope.
Reviewing the 4 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/4] Reviewing .SRCINFO...
[0/4] Reviewing .SRCINFO, .gitignore...
[0/4] Reviewing .SRCINFO, .gitignore, PKGBUILD...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard `.gitignore` for an AUR package repository. It ignores all files (`*`) and then un-ignores only the essential AUR files: `.SRCINFO`, `PKGBUILD`, `vencord.install`, and itself. No suspicious patterns (curl, wget, eval, base64, exec) are present. There is no evidence of obfuscation, network requests, file exfiltration, or any deviation from normal packaging practices. The file is benign and serves only to manage version control tracking of the AUR package files.
</details>
<evidence>
</evidence>
<summary>Standard AUR .gitignore, no security issues.</summary>
</security_assessment>

[0/4] Reviewing .SRCINFO, .gitignore, PKGBUILD, vencord.install...
[1/4] Reviewing .SRCINFO, PKGBUILD, vencord.install...
+ Reviewed .gitignore. Status: SAFE -- Standard AUR .gitignore, no security issues.
LLM auditresponse for vencord.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The file vencord.install contains only a post_install() function that echoes a multi-line string providing configuration instructions for various browsers (Vesktop, Chromium, Firefox, Zen). There are no commands executed, no network operations, no file modifications, no obfuscated code, and no evidence of malicious intent. It is a routine post-installation informational message.
</details>
<evidence></evidence>
<summary>Standard post-installation instructions, no security issues.</summary>
</security_assessment>

[2/4] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed vencord.install. Status: SAFE -- Standard post-installation instructions, no security issues.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard AUR `.SRCINFO` file, which is a declarative metadata file that describes the package and its split subpackages. It contains no executable code, no embedded scripts, and no obfuscated content.  

The `source` field points to the project's official upstream repository (`github.com/Vendicated/Vencord`) and is pinned to a specific tag (`v1.15.14`) with a corresponding checksum, which is a secure packaging practice. The dependencies listed (e.g., `vesktop`, `firefox`, `chromium`) are all logically related to a Discord client mod and its browser extensions.  

There is no evidence of data exfiltration, unexpected network requests, backdoors, credential theft, or any behavior that deviates from standard packaging practices.  
</details>
<evidence>

</evidence>
<summary>Standard AUR .SRCINFO metadata, no malicious code.</summary>
</security_assessment>

[3/4] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR .SRCINFO metadata, no malicious code.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard AUR packaging practices. The source is pinned to a specific immutable tag (`v1.15.14`) from the official upstream repository (`github.com/Vendicated/Vencord`). The build process (`pnpm install --frozen-lockfile`, `pnpm buildStandalone`, `pnpm buildWeb`) and installation steps are exactly what is expected for a Node.js-based application and its browser extensions. There are no obfuscated commands, no unexpected network requests in the build functions, no exfiltration of data, and no execution of untrusted downloaded code. The `sha256sums` array contains a specific hash rather than `SKIP`, but for a VCS source this field is ignored by `makepkg` and is therefore harmless. The file contains no malicious or suspicious elements.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD with no malicious indicators.</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD with no malicious indicators.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 12,951
  Completion Tokens: 7,361
  Total Tokens: 20,312
  Total Cost: $0.002518
  Execution Time: 55.74 seconds

Final Status: SAFE


No issues found.
