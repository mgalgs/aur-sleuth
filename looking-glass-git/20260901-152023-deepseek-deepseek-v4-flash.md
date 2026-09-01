---
package: looking-glass-git
pkgver: B7.r826.g236efcb1
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: b9e20f728bbe0de1871ebaca31738c802edc31f8
prompt_tokens: 16100
completion_tokens: 1868
total_tokens: 17968
cost: 0.0015134868
execution_time: 326.97
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: ok
upstream_files: 1602
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-01T15:20:22Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard .SRCINFO metadata, no malicious content.
  - file: host.install
    status: safe
    summary: No malicious content; harmless warning message.
  - file: client.install
    status: safe
    summary: Only prints informational messages; no malicious code present.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD with no malicious indicators.
---

Cloning https://aur.archlinux.org/looking-glass-git.git...
Cloned looking-glass-git
Analyzing looking-glass-git AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only variable assignments and function definitions in its global scope. The `pkgver()` function runs standard git commands (`git describe`, `sed`, `printf`) to generate a version string, which is benign. The `source` array defines git clones from well-known upstream repositories (GitHub and GitLab.freedesktop.org) — all expected for this package. There are no top-level command substitutions, `eval`, base64 decoding, or network requests outside the declared git sources. The SKIP checksums are standard for VCS sources and do not pose a threat during source fetching. Running `makepkg --nobuild --nodeps --noprepare` and `--printsrcinfo` will only clone the repositories and source the PKGBUILD; no malicious code executes in this step.
</details>
<evidence>
</evidence>
<summary>No malicious code found in PKGBUILD scope.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious code found in PKGBUILD scope.
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Reviewing the 4 file(s) in the AUR repository. The 1602 downloaded file(s) are upstream content, outside the threat model, and are not read.
Reviewing the AUR repository's files...
[0/4] Reviewing .SRCINFO...
[0/4] Reviewing .SRCINFO, client.install...
[0/4] Reviewing .SRCINFO, client.install, PKGBUILD...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard `.SRCINFO` metadata file for an AUR VCS package. It lists the package base, version, dependencies, and sources. All sources are git repositories from well-known upstream locations (GitHub, GitLab) related to the project (LookingGlass, LGMP, PureSpice, cimgui, imgui, etc.). Checksums are set to `SKIP` for all sources, which is normal and required for VCS packages as they are not pinned to a specific commit at packaging time. There are no network requests, no downloads, no obfuscated code, no dangerous commands (eval, curl, wget, etc.), and no file operations. The file is purely declarative metadata used by `makepkg` to fetch and build the package. No supply-chain attack signs are present.
</details>
<evidence></evidence>
<summary>Standard .SRCINFO metadata, no malicious content.</summary>
</security_assessment>

[1/4] Reviewing client.install, PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard .SRCINFO metadata, no malicious content.
[1/4] Reviewing client.install, PKGBUILD, host.install...
LLM auditresponse for host.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The install script only prints a warning message to the user indicating that the Linux host component of LookingGlass is unmaintained and advising against asking for support. There are no dangerous commands, network operations, file modifications, or any other malicious activity. The script is purely informational and follows standard packaging practices.
</details>
<evidence>
</evidence>
<summary>No malicious content; harmless warning message.</summary>
</security_assessment>

[2/4] Reviewing client.install, PKGBUILD...
+ Reviewed host.install. Status: SAFE -- No malicious content; harmless warning message.
LLM auditresponse for client.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `client.install` contains only standard `post_install` and `post_upgrade` functions that print informational messages to the user. It advises the user to obtain the latest Windows host application from the official Looking Glass website and suggests a versioned release alternative from the AUR. There are no dangerous commands, network requests, file operations, obfuscation, or any other malicious activity. The content is purely cosmetic and serves as a notice for the user.
</details>
<evidence>
</evidence>
<summary>Only prints informational messages; no malicious code present.</summary>
</security_assessment>

[3/4] Reviewing PKGBUILD...
+ Reviewed client.install. Status: SAFE -- Only prints informational messages; no malicious code present.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard AUR practices for a git-based package. All sources point to the expected upstream repositories (https://github.com/gnif/LookingGlass, etc.), and the prepare function handles git submodules by redirecting them to local srcdir paths – a common pattern to avoid fetching submodule URLs at build time. There are no obfuscated commands, no unexpected network requests (beyond the declared git clones), no dangerous operations like eval, curl, or base64 decoding, and no attempts to exfiltrate data or modify system files outside of the package’s intended scope. The use of SKIP checksums is normal for VCS sources and not inherently malicious. The file references install scripts (`client.install`, `host.install`) which are not included, but their mere presence is ordinary packaging practice. No evidence of a supply-chain attack is present.
</details>
<evidence>
</evidence>
<summary>Standard AUR PKGBUILD with no malicious indicators.</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD with no malicious indicators.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 16,100
  Completion Tokens: 1,868
  Total Tokens: 17,968
  Total Cost: $0.001513
  Execution Time: 326.97 seconds

Final Status: SAFE


No issues found.
