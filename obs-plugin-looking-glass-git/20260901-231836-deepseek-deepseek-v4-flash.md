---
package: obs-plugin-looking-glass-git
pkgbase: looking-glass-git
pkgver: B7.r826.g236efcb1
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: b9e20f728bbe0de1871ebaca31738c802edc31f8
prompt_tokens: 16110
completion_tokens: 2010
total_tokens: 18120
cost: 0.00141191820
execution_time: 258.49
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: ok
upstream_files: 1602
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-01T23:18:35Z
file_verdicts:
  - file: client.install
    status: safe
    summary: Informational post-install messages, no security concerns.
  - file: host.install
    status: safe
    summary: Only prints a warning message; no malicious behavior.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata file with no malicious content.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR -git PKGBUILD, no malicious content.
---

obs-plugin-looking-glass-git is built from looking-glass-git
Cloning https://aur.archlinux.org/looking-glass-git.git...
Cloned obs-plugin-looking-glass-git
Analyzing obs-plugin-looking-glass-git AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD only fetches sources from legitimate upstream repositories (github.com/gnif, github.com/cimgui, github.com/ocornut, github.com/epezent, gitlab.freedesktop.org, github.com/memononen) via standard git+https URLs. All checksums are SKIP, which is expected for VCS sources. The `pkgver()` function runs only `git describe` and string manipulation -- no downloads, obfuscation, or execution of untrusted payloads. The top-level scope contains only variable definitions and function declarations. The `prepare()`, `build()`, and `package()` functions are not executed by `makepkg --nobuild --nodeps --noprepare`, so any content there is out of scope for this gate. No malicious code runs during sourcing or source fetching.
</details>
<evidence></evidence>
<summary>Safe - no malicious code executed during source fetch.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Safe - no malicious code executed during source fetch.
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Reviewing the 4 file(s) in the AUR repository. The 1602 downloaded file(s) are upstream content, outside the threat model, and are not read.
Reviewing the AUR repository's files...
[0/4] Reviewing .SRCINFO...
[0/4] Reviewing .SRCINFO, PKGBUILD...
[0/4] Reviewing .SRCINFO, PKGBUILD, client.install...
LLM auditresponse for client.install:
<security_assessment>
<decision>SAFE</decision>
<details>
This file contains only informational echo statements that print messages to the user during package installation or upgrade. The messages guide the user to obtain the Windows host application from the official Looking Glass website and suggest considering the stable release package. There are no commands that download, execute, modify files, or perform any other potentially dangerous operations. The content is purely cosmetic and informative.</details>
<evidence></evidence>
<summary>Informational post-install messages, no security concerns.</summary>
</security_assessment>

[0/4] Reviewing .SRCINFO, PKGBUILD, client.install, host.install...
[1/4] Reviewing .SRCINFO, PKGBUILD, host.install...
+ Reviewed client.install. Status: SAFE -- Informational post-install messages, no security concerns.
LLM auditresponse for host.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `host.install` is a standard Arch Linux install script that simply prints a warning message to the user during package installation or upgrade. The message indicates that the Linux host component of LookingGlass is unmaintained and advises using it at own risk. There are no suspicious commands, network operations, file modifications, or obfuscated code. The output uses terminal color codes (ANSI escape sequences) for formatting, which is normal for user-facing messages. Absolutely no evidence of malicious behavior.</details>
<evidence></evidence>
<summary>Only prints a warning message; no malicious behavior.</summary>
</security_assessment>

[2/4] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed host.install. Status: SAFE -- Only prints a warning message; no malicious behavior.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `.SRCINFO` is a metadata descriptor for an AUR package. It lists package names, descriptions, dependencies, and source URLs. All sources point to official upstream repositories (GitHub, GitLab). Checksums are set to SKIP, which is standard for VCS-based packages. No executable code, network requests, or obfuscated content is present. The file does not contain any malicious or dangerous behavior. The referenced install scripts (`client.install`, `host.install`) are not provided, but their presence is normal packaging practice. No evidence of supply-chain attack is found.
</details>
<evidence>
</evidence>
<summary>Standard AUR metadata file with no malicious content.</summary>
</security_assessment>

[3/4] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata file with no malicious content.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard AUR -git packaging conventions. All source URLs point to the official upstream repositories (gnif/LookingGlass, gnif/LGMP, ocornut/imgui, etc.) and use git protocols with SKIP checksums, which is expected for VCS packages. The prepare() function correctly resolves submodules to local directories fetched via the source array. The build and package functions only run cmake/make and install built artifacts into appropriate system paths. No suspicious network requests, obfuscated code, file operations outside the package scope, or unexpected commands like curl, wget, eval, or base64 decoding are present.
</details>
<evidence></evidence>
<summary>Standard AUR -git PKGBUILD, no malicious content.</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR -git PKGBUILD, no malicious content.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 16,110
  Completion Tokens: 2,010
  Total Tokens: 18,120
  Total Cost: $0.001412
  Execution Time: 258.49 seconds

Final Status: SAFE


No issues found.
