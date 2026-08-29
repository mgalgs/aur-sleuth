---
package: firefox-vencord
pkgbase: vencord
pkgver: 1.15.4
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 3e318911529c43138ec6bdba0bfcb56907607021
prompt_tokens: 12879
completion_tokens: 2076
total_tokens: 14955
cost: 0.0014782908
execution_time: 148.5
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: ok
upstream_files: 801
upstream_named_files: 0
unpinned_sources: 0
date: 2026-08-28T19:25:34Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata; no malicious content.
  - file: .gitignore
    status: safe
    summary: Standard AUR .gitignore, no security issues.
  - file: PKGBUILD
    status: safe
    summary: Legitimate PKGBUILD with pinned source and standard build.
  - file: vencord.install
    status: safe
    summary: Install script only prints setup instructions; no malicious behavior found.
---

firefox-vencord is built from vencord
Cloning https://aur.archlinux.org/vencord.git...
Cloned firefox-vencord
Analyzing firefox-vencord AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only standard variable assignments and function definitions in its global scope. No command substitutions (`$()`, backticks), `eval`, `curl`, `wget`, or other potentially dangerous operations are present outside of the `prepare()`, `build()`, and `package_*()` functions, which are **not** executed during the requested commands (`makepkg --nobuild --nodeps --noprepare` and `makepkg --printsrcinfo`). The source is fetched from the official Vencord GitHub repository using a pinned tag, and a SHA-256 checksum is provided (though irrelevant for a VCS source, it is not a security issue). Sourcing the PKGBUILD and fetching the source are safe.
</details>
<evidence>
</evidence>
<summary>No malicious code in global scope; sourcing and fetching are safe.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious code in global scope; sourcing and fetching are safe.
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Reviewing the 4 file(s) in the AUR repository. The 801 downloaded file(s) are upstream content, outside the threat model, and are not read.
Reviewing the AUR repository's files...
[0/4] Reviewing .SRCINFO...
[0/4] Reviewing .SRCINFO, .gitignore...
[0/4] Reviewing .SRCINFO, .gitignore, PKGBUILD...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The .SRCINFO file is a plain metadata declaration for the Arch User Repository package. It defines package names, version, source, checksums, and dependencies. The source points to the official Vencord GitHub repository at a specific tag (v1.15.4) with a SHA256 checksum. No executable instructions, network requests, obfuscation, or other suspicious content exist. The file adheres to standard AUR packaging practices.
</details>
<evidence></evidence>
<summary>Standard AUR metadata; no malicious content.</summary>
</security_assessment>

[0/4] Reviewing .SRCINFO, .gitignore, PKGBUILD, vencord.install...
[1/4] Reviewing .gitignore, PKGBUILD, vencord.install...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata; no malicious content.
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.gitignore` file used in AUR Git repositories. It instructs Git to ignore all files (`*`) except for the listed files: `.SRCINFO`, `PKGBUILD`, `vencord.install`, and `.gitignore` itself. This is a common and expected practice in AUR packages to prevent non-essential files from being tracked. There are no executable commands, network requests, or any obfuscated content. The file is completely benign.
</details>
<evidence></evidence>
<summary>Standard AUR .gitignore, no security issues.</summary>
</security_assessment>

[2/4] Reviewing PKGBUILD, vencord.install...
+ Reviewed .gitignore. Status: SAFE -- Standard AUR .gitignore, no security issues.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard packaging practices for an AUR package that distributes a Discord client mod (Vencord) as browser extensions and a standalone component. The source is pinned to a specific git tag (v1.15.4) with a valid SHA256 checksum, ensuring verifiable downloads. Build steps use `pnpm install --frozen-lockfile` and standard `pnpm build` commands. Package installation copies built artifacts (LICENSE, README, dist files) to appropriate system directories and installs the Firefox XPI into the browser's extensions folder. There is no network activity beyond fetching the pinned source, no obfuscated code, no dangerous commands like `curl|bash`, and no exfiltration or backdoor mechanisms. The file is consistent with legitimate packaging and contains no evidence of a supply-chain attack.
</details>
<evidence></evidence>
<summary>Legitimate PKGBUILD with pinned source and standard build.</summary>
</security_assessment>

[3/4] Reviewing vencord.install...
+ Reviewed PKGBUILD. Status: SAFE -- Legitimate PKGBUILD with pinned source and standard build.
LLM auditresponse for vencord.install:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is an Arch Linux package install scriptlet (`vencord.install`). It only defines a `post_install()` function that prints user-facing instructions about how to configure the installed Vencord package in Vesktop, Chromium-based browsers, Firefox, and Zen. There are no file operations, network requests, command executions, encoded payloads, or system modifications. The content is purely informational output and poses no supply-chain or security risk.
</details>
<evidence>
</evidence>
<summary>
Install script only prints setup instructions; no malicious behavior found.</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed vencord.install. Status: SAFE -- Install script only prints setup instructions; no malicious behavior found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 12,879
  Completion Tokens: 2,076
  Total Tokens: 14,955
  Total Cost: $0.001478
  Execution Time: 148.50 seconds

Final Status: SAFE


No issues found.
