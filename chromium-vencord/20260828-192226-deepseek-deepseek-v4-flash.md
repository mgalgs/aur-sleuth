---
package: chromium-vencord
pkgbase: vencord
pkgver: 1.15.4
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 3e318911529c43138ec6bdba0bfcb56907607021
prompt_tokens: 12874
completion_tokens: 2828
total_tokens: 15702
cost: 0.0016084040
execution_time: 65.84
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: ok
upstream_files: 801
upstream_named_files: 0
unpinned_sources: 0
date: 2026-08-28T19:22:26Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard AUR .gitignore, no security issues.
  - file: .SRCINFO
    status: safe
    summary: Standard package metadata with no security concerns.
  - file: vencord.install
    status: safe
    summary: Standard post-install instructions, no malicious content.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD for Vencord; no malicious behavior found.
---

chromium-vencord is built from vencord
Cloning https://aur.archlinux.org/vencord.git...
Cloned chromium-vencord
Analyzing chromium-vencord AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
No dangerous code executes during `makepkg --nobuild --nodeps --noprepare` or `makepkg --printsrcinfo`. The global scope only defines variables and arrays; `pkgver()` is not present, so the version string is static. The `source` entry is a pinned git tag from the official Vencord repository, with a valid checksum. All potentially risky operations (package functions, build, prepare) are inside functions that are not run by these commands. Therefore, sourcing the PKGBUILD and fetching the git source is safe.</details>
<evidence></evidence>
<summary>No malicious code executed during source fetch.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious code executed during source fetch.
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Reviewing the 4 file(s) in the AUR repository. The 801 downloaded file(s) are upstream content, outside the threat model, and are not read.
Reviewing the AUR repository's files...
[0/4] Reviewing .SRCINFO...
[0/4] Reviewing .SRCINFO, .gitignore...
[0/4] Reviewing .SRCINFO, .gitignore, PKGBUILD...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard `.gitignore` used by AUR packaging repositories. It ignores all files except the essential ones: `.SRCINFO`, `PKGBUILD`, `vencord.install`, and `.gitignore` itself. No malicious or suspicious content is present. This is a normal and expected file for an AUR package.
</details>
<evidence></evidence>
<summary>Standard AUR .gitignore, no security issues.</summary>
</security_assessment>

[1/4] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed .gitignore. Status: SAFE -- Standard AUR .gitignore, no security issues.
[1/4] Reviewing .SRCINFO, PKGBUILD, vencord.install...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a `.SRCINFO` metadata file for the AUR package set. It contains only standard declarative fields: `pkgbase`, `pkgver`, `url`, `license`, dependencies, and source references. The source is pinned to a specific Git tag (`v1.15.4`) from the official Vencord repository (`github.com/Vendicated/Vencord`), and a SHA-256 checksum is provided. No malicious commands, obfuscation, network requests, or unexpected operations are present. The file itself poses no security risk.
</details>
<evidence></evidence>
<summary>Standard package metadata with no security concerns.</summary>
</security_assessment>

[2/4] Reviewing PKGBUILD, vencord.install...
+ Reviewed .SRCINFO. Status: SAFE -- Standard package metadata with no security concerns.
LLM auditresponse for vencord.install:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard AUR `.install` script that only prints post-installation instructions for the user. It does not execute any commands, alter system files, or perform network operations. The content is a simple echo of a multi-line string guiding the user on how to manually configure the Vencord extension in various browsers. There is no evidence of malicious behavior, obfuscated code, or unexpected system modifications. The file is consistent with ordinary packaging practices.
</details>
<evidence></evidence>
<summary>Standard post-install instructions, no malicious content.</summary>
</security_assessment>

[3/4] Reviewing PKGBUILD...
+ Reviewed vencord.install. Status: SAFE -- Standard post-install instructions, no malicious content.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a standard multi-package AUR build for the Vencord Discord client mod. It fetches the pinned upstream tag v1.15.4 from the official GitHub repository, installs dependencies with pnpm --frozen-lockfile, builds the standalone and web artifacts, runs tests, and packages browser extensions/standalone files into the expected lib directories. No obfuscated commands, no unexpected network endpoints, no eval/base64/curl|bash patterns, and no exfiltration or backdoor-like behavior are present.

The only minor hygiene note is that a hex sha256sum is listed for a git+ VCS source; makepkg normally expects SKIP for such sources. This is not evidence of malice and does not affect the safety decision. The referenced vencord.install file is not included in this analysis and its contents should be reviewed separately if desired.
</details>
<evidence></evidence>
<summary>Standard AUR PKGBUILD for Vencord; no malicious behavior found.</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD for Vencord; no malicious behavior found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 12,874
  Completion Tokens: 2,828
  Total Tokens: 15,702
  Total Cost: $0.001608
  Execution Time: 65.84 seconds

Final Status: SAFE


No issues found.
