---
package: 3dgenstudio-git
pkgver: r552.6b385df
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 3e318911529c43138ec6bdba0bfcb56907607021
prompt_tokens: 9411
completion_tokens: 2796
total_tokens: 12207
cost: 0.00118043604
execution_time: 52.16
files_reviewed: 2
files_skipped: 0
maintainer_files: 2
source_fetch: ok
upstream_files: 1159
upstream_named_files: 1
unpinned_sources: 0
date: 2026-08-30T19:38:23Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard AUR .SRCINFO with no suspicious content.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD with no malicious behavior.
---

Cloning https://aur.archlinux.org/3dgenstudio-git.git...
Cloned 3dgenstudio-git
Analyzing 3dgenstudio-git AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD's global scope and `pkgver()` function are benign. The source array fetches the project's own Git repository over HTTPS, and `pkgver()` only runs standard `git rev-list` and `git rev-parse` commands inside that repo. No `curl`, `wget`, `eval`, `base64`, or other suspicious operations are present in these sections. The `base64 -d` and file-write operations occur exclusively in `package()`, which is **not** executed by `makepkg --nobuild --nodeps --noprepare` or `makepkg --printsrcinfo`. Therefore, running these two commands is safe.
</details>
<evidence></evidence>
<summary>No malicious code in global scope or pkgver(). Only routine git operations.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious code in global scope or pkgver(). Only routine git operations.
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Note: the PKGBUILD names 1 file(s) in the downloaded sources (src/3dgenstudio-git/eslint.config.js); they are upstream content and were not reviewed.
Reviewing the 2 file(s) in the AUR repository. The 1159 downloaded file(s) are upstream content, outside the threat model, and are not read.
Reviewing the AUR repository's files...
[0/2] Reviewing .SRCINFO...
[0/2] Reviewing .SRCINFO, PKGBUILD...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard .SRCINFO metadata file for a VCS (git) package from the Arch User Repository. It defines the package name, description, dependencies, and source location pointing to the legitimate upstream GitHub repository. The checksums are correctly set to `SKIP` as required for VCS sources. No executable code, obfuscation, or suspicious content is present. The file simply describes the package for the AUR build system.</details>
<evidence></evidence>
<summary>Standard AUR .SRCINFO with no suspicious content.</summary>
</security_assessment>

[1/2] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR .SRCINFO with no suspicious content.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard AUR packaging practices for a VCS package. It clones the upstream repository from GitHub, builds with `npm ci` and `npm run build`, and installs the production artifacts to `/opt/3dgenstudio-git`. The base64-encoded launcher script, when decoded, is a benign shell script that starts the Node.js server, checks if it is already running, and opens the browser. The base64 encoding is simply a packaging convenience to embed a small script inline, not an attempt to hide malicious behavior. No suspicious network requests, data exfiltration, or unexpected system modifications are present. The only potential hygiene concern is the unpinned VCS source (branch tracking), which is explicitly allowed and normal for `-git` packages.
</details>
<evidence></evidence>
<summary>Standard AUR PKGBUILD with no malicious behavior.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD with no malicious behavior.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 9,411
  Completion Tokens: 2,796
  Total Tokens: 12,207
  Total Cost: $0.001180
  Execution Time: 52.16 seconds

Final Status: SAFE


No issues found.
