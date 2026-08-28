---
package: vencord
pkgver: 1.15.4
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 3e318911529c43138ec6bdba0bfcb56907607021
prompt_tokens: 12790
completion_tokens: 3089
total_tokens: 15879
cost: 0.0016464224
execution_time: 98.1
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: ok
upstream_files: 801
upstream_named_files: 0
unpinned_sources: 0
date: 2026-08-28T19:22:58Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard .gitignore file, no security concerns.
  - file: vencord.install
    status: safe
    summary: Only echo of help text; no executable or malicious content.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata; no malicious content found.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD with no malicious indicators.
---

Cloning https://aur.archlinux.org/vencord.git...
Cloned vencord
Analyzing vencord AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD only contains variable assignments and function definitions in its global scope. No commands like `curl`, `eval`, or similar execute when sourcing the file. The `pkgver()` function is absent, so no dynamic code runs during retrieval of `pkgver`. The source is fetched from the package's official GitHub repository via a pinned tag, and a valid SHA-256 checksum is provided. The `prepare()`, `build()`, and `package_*()` functions are not executed under `makepkg --nobuild --nodeps --noprepare`. No malicious or suspicious behavior is present in the top-level code.
</details>
<evidence></evidence>
<summary>No malicious code in global scope; safe to fetch sources.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious code in global scope; safe to fetch sources.
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
This is a standard `.gitignore` file used in Arch User Repository (AUR) packaging. It ignores all files except those explicitly allowed: `.SRCINFO`, `PKGBUILD`, `vencord.install`, and the `.gitignore` file itself. There are no network requests, system modifications, obfuscated code, or any other potentially malicious behaviors. The file is entirely benign and follows normal packaging conventions.
</details>
<evidence></evidence>
<summary>Standard .gitignore file, no security concerns.</summary>
</security_assessment>

[0/4] Reviewing .SRCINFO, .gitignore, PKGBUILD, vencord.install...
[1/4] Reviewing .SRCINFO, PKGBUILD, vencord.install...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore file, no security concerns.
LLM auditresponse for vencord.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `vencord.install` contains only a `post_install()` function that outputs informational text via `echo`. This text guides the user on how to manually configure or load the Vencord extension in various applications (Vesktop, Chromium, Firefox, Zen). There are no commands executed, no network requests, no file manipulations, no obfuscated or encoded content, and no use of dangerous shell operations. The script performs no actions beyond printing a post-install message, which is standard and safe packaging practice.
</details>
<evidence></evidence>
<summary>Only echo of help text; no executable or malicious content.</summary>
</security_assessment>

[2/4] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed vencord.install. Status: SAFE -- Only echo of help text; no executable or malicious content.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.SRCINFO` file for the vencord AUR package. It defines metadata for multiple subpackages that install the Vencord Discord client mod as browser extensions or as a Vesktop replacement. The source is pinned to a tagged release from the official GitHub repository (`github.com/Vendicated/Vencord`), which is the project's own upstream. The sha256sums line contains a hash rather than `SKIP`, which is unconventional for a git source but not malicious — it simply means the maintainer computed and pinned the hash of the tarball produced by makepkg. There are no suspicious commands, no obfuscated code, no network requests to unknown hosts, and no file operations beyond what packaging requires. The only files referenced are the PKGBUILD, install scripts, and upstream source — nothing out of scope.
</details>
<evidence></evidence>
<summary>Standard AUR metadata; no malicious content found.</summary>
</security_assessment>

[3/4] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata; no malicious content found.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is for the Vencord Discord client mod, sourced from the official GitHub repository at a pinned tag (v1.15.4) with a checksum. The build process uses standard Node.js tooling (pnpm) to install dependencies and build the application. All package functions copy files into appropriate system directories without any suspicious network requests, obfuscation, or unexpected system modifications. There is no evidence of malicious code intended to exfiltrate data, execute arbitrary commands, or compromise the system. The use of an install script (`vencord.install`) is standard for AUR packages, and its contents are not part of this file; no assumptions about its safety are made here. The file follows normal AUR packaging practices.
</details>
<evidence>
</evidence>
<summary>Standard PKGBUILD with no malicious indicators.</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD with no malicious indicators.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 12,790
  Completion Tokens: 3,089
  Total Tokens: 15,879
  Total Cost: $0.001646
  Execution Time: 98.10 seconds

Final Status: SAFE


No issues found.
