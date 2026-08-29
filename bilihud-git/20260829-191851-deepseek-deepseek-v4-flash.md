---
package: bilihud-git
pkgver: 0.7.0.r152.g71e14ee
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 3e318911529c43138ec6bdba0bfcb56907607021
prompt_tokens: 8897
completion_tokens: 2057
total_tokens: 10954
cost: 0.00107106552
execution_time: 43.48
files_reviewed: 2
files_skipped: 0
maintainer_files: 2
source_fetch: ok
upstream_files: 252
upstream_named_files: 1
unpinned_sources: 0
date: 2026-08-29T19:18:51Z
file_verdicts:
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD with no security concerns.
  - file: .SRCINFO
    status: safe
    summary: Metadata-only file, no executable content, safe.
---

Cloning https://aur.archlinux.org/bilihud-git.git...
Cloned bilihud-git
Analyzing bilihud-git AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD fetches sources from two public GitHub repositories over HTTPS, which is standard for AUR `-git` packages. The `pkgver()` function runs a hardcoded Python command that parses the local `pyproject.toml` file and reads git revision counts — both harmless operations that do not execute external or untrusted code. No top-level command substitutions, network requests, or obfuscated commands are present. The `prepare()`, `build()`, and `package()` functions contain commands that could be audited later, but they are not executed during `--nobuild --nodeps --noprepare` or `--printsrcinfo`. Therefore, running these two commands poses no security risk.
</details>
<evidence></evidence>
<summary>Safe to fetch sources and source PKGBUILD.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Safe to fetch sources and source PKGBUILD.
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Note: the PKGBUILD names 1 file(s) in the downloaded sources (src/bilihud/src/bilihud/assets/icon.png); they are upstream content and were not reviewed.
Reviewing the 2 file(s) in the AUR repository. The 252 downloaded file(s) are upstream content, outside the threat model, and are not read.
Reviewing the AUR repository's files...
[0/2] Reviewing .SRCINFO...
[0/2] Reviewing .SRCINFO, PKGBUILD...
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a standard AUR `-git` package that builds the `bilihud` application from its upstream GitHub repository. The source array correctly points to the project&#39;s own git repository and a dependency (`blivedm`), both from GitHub. Checksums are set to `SKIP`, which is normal and required for VCS sources.  
The `prepare()` function initializes and updates git submodules, pointing the submodule URL to the local copy of `blivedm` in `$srcdir` — this is safe and follows best practices for AUR packages with submodules.  
Build and packaging steps use standard Python tooling (`python -m build`, `python -m installer`) and install files only into `$pkgdir`. There are no network requests, obfuscated code, dangerous commands, or data exfiltration.  
The package does not deviate from expected packaging practices and contains no signs of a supply-chain attack.
</details>
<evidence></evidence>
<summary>Standard AUR PKGBUILD with no security concerns.</summary>
</security_assessment>

[1/2] Reviewing .SRCINFO...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD with no security concerns.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The `.SRCINFO` file is a metadata descriptor, not an executable script. It declares package attributes, dependencies, and sources for the `bilihud-git` package. Both sources point to legitimate GitHub repositories (`locez/bilihud` and `xfgryujk/blivedm`). The checksums are set to `SKIP`, which is standard practice for VCS sources (git-based packages). No commands, network requests, or obfuscated code are present. The file contains only declarative data and poses no supply-chain risk.
</details>
<evidence>
</evidence>
<summary>Metadata-only file, no executable content, safe.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed .SRCINFO. Status: SAFE -- Metadata-only file, no executable content, safe.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 8,897
  Completion Tokens: 2,057
  Total Tokens: 10,954
  Total Cost: $0.001071
  Execution Time: 43.48 seconds

Final Status: SAFE


No issues found.
