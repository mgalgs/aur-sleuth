---
package: umbriel-git
pkgver: 0.1.0.r619.4473db4
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: f47e5ed5e9b50f484d29402229454e7d1b1d7cdb
prompt_tokens: 8292
completion_tokens: 1422
total_tokens: 9714
cost: 0.00086838528
execution_time: 30.81
files_reviewed: 2
files_skipped: 0
maintainer_files: 2
upstream_files: 322
upstream_named_files: 1
unpinned_sources: 0
date: 2026-08-27T19:36:32Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Declarative metadata file, no security concerns.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR VCS PKGBUILD, no security issues.
---

Cloning https://aur.archlinux.org/umbriel-git.git...
Cloned umbriel-git
Analyzing umbriel-git AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only standard variable definitions and a typical pkgver() function that extracts version information from the local git repository. The source array points to the project's own upstream git repository (`github.com/noctalia-dev/umbriel.git`), which is expected and normal for a `-git` package. Checksums are `SKIP`, which is required for VCS sources and does not introduce risk at this stage. The prepare(), build(), check(), and package() functions are out of scope for this initial gate as they are not executed by `makepkg --nobuild --nodeps --noprepare`. No top-level command substitutions or code that could execute malicious payloads during sourcing exist.
</details>
<evidence></evidence>
<summary>Standard VCS PKGBUILD, no malicious code executed during fetch/source.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Standard VCS PKGBUILD, no malicious code executed during fetch/source.
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Note: the PKGBUILD names 1 file(s) in the downloaded sources (src/umbriel/LICENSE); they are upstream content and were not reviewed.
Reviewing the 2 file(s) in the AUR repository. The 322 downloaded file(s) are upstream content, outside the threat model, and are not read.
Reviewing the AUR repository's files...
[0/2] Reviewing .SRCINFO...
[0/2] Reviewing .SRCINFO, PKGBUILD...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This `.SRCINFO` file is a standard Arch Linux package metadata file. It contains only declarative fields such as package name, description, dependencies, source URL, and checksum entries. No executable code, shell commands, or scripted operations are present. The `b2sums = SKIP` entry is expected for VCS (git) sources and is not a security concern. The source points to the project&#39;s own upstream repository on GitHub. There is no evidence of any malicious or unexpected behavior. This file is part of normal AUR packaging and poses no threat.
</details>
<evidence></evidence>
<summary>Declarative metadata file, no security concerns.</summary>
</security_assessment>

[1/2] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Declarative metadata file, no security concerns.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard AUR packaging practices for a VCS (git) package. The source is fetched directly from the project&#39;s upstream GitHub repository. Checksums are set to &#39;SKIP&#39;, which is required for VCS sources. The prepare() function initializes and updates submodules from the project&#39;s own repository, which is expected for projects with submodules. The build process uses meson with --wrap-mode=nodownload to prevent fetching additional dependencies. No suspicious network requests, obfuscated code, or unexpected file operations are present. All commands are standard for building a Wayland compositor from source.
</details>
<evidence></evidence>
<summary>Standard AUR VCS PKGBUILD, no security issues.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR VCS PKGBUILD, no security issues.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 8,292
  Completion Tokens: 1,422
  Total Tokens: 9,714
  Total Cost: $0.000868
  Execution Time: 30.81 seconds

Final Status: SAFE


No issues found.
