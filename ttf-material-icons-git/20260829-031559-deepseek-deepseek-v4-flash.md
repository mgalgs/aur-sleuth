---
package: ttf-material-icons-git
pkgbase: material-symbols-git
pkgver: 4.0.0.r169.g84ccef28
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 3e318911529c43138ec6bdba0bfcb56907607021
prompt_tokens: 12565
completion_tokens: 2562
total_tokens: 15127
cost: 0.00151559352
execution_time: 229.78
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: ok
upstream_files: 11
upstream_named_files: 0
unpinned_sources: 11
date: 2026-08-29T03:15:59Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard .SRCINFO metadata, no suspicious content.
  - file: .gitignore
    status: safe
    summary: Standard .gitignore; no security issues.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR VCS package, no malicious content.
---

ttf-material-icons-git is built from material-symbols-git
Cloning https://aur.archlinux.org/material-symbols-git.git...
Cloned ttf-material-icons-git
Analyzing ttf-material-icons-git AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD sources and fetches only from the official GitHub repository of the project (`github.com/google/material-design-icons`). The global-scope code calls `_update_version()`, which uses `curl` to retrieve commit and tag metadata from the GitHub API for version calculation — this is normal for a `-git` package and does not download or execute any payload. The `source` array is built from GitHub raw file URLs pointing to font files (`.ttf`, `.otf`, `.woff2`); these are extracted as archives but not executed. All functions that install files and run commands (`package_*`) are skipped by the `--nobuild`/`--noprepare` flags. No obfuscated code, network exfiltration, or execution of attacker-controlled content occurs during the sourcing or fetching phases.
</details>
<evidence></evidence>
<summary>Only downloads metadata and fonts from Google's official repo.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Only downloads metadata and fonts from Google's official repo.
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Note: 11 remote source(s) have no checksum (sha256sums=SKIP), so the fetched bytes are not verifiable and can change without any AUR update: MaterialIcons-Regular-4.0.0.r169.g84ccef28.ttf::https://github.com/google/material-design-icons/raw/refs/heads/master/font/MaterialIcons-Regular.ttf, MaterialIconsOutlined-Regular-4.0.0.r169.g84ccef28.otf::https://github.com/google/material-design-icons/raw/refs/heads/master/font/MaterialIconsOutlined-Regular.otf, MaterialIconsRound-Regular-4.0.0.r169.g84ccef28.otf::https://github.com/google/material-design-icons/raw/refs/heads/master/font/MaterialIconsRound-Regular.otf, MaterialIconsSharp-Regular-4.0.0.r169.g84ccef28.otf::https://github.com/google/material-design-icons/raw/refs/heads/master/font/MaterialIconsSharp-Regular.otf, MaterialIconsTwoTone-Regular-4.0.0.r169.g84ccef28.otf::https://github.com/google/material-design-icons/raw/refs/heads/master/font/MaterialIconsTwoTone-Regular.otf, MaterialSymbolsOutlined[FILL,GRAD,opsz,wght]-4.0.0.r169.g84ccef28.ttf::https://github.com/google/material-design-icons/raw/refs/heads/master/variablefont/MaterialSymbolsOutlined%5BFILL,GRAD,opsz,wght%5D.ttf, MaterialSymbolsOutlined[FILL,GRAD,opsz,wght]-4.0.0.r169.g84ccef28.woff2::https://github.com/google/material-design-icons/raw/refs/heads/master/variablefont/MaterialSymbolsOutlined%5BFILL,GRAD,opsz,wght%5D.woff2, MaterialSymbolsRounded[FILL,GRAD,opsz,wght]-4.0.0.r169.g84ccef28.ttf::https://github.com/google/material-design-icons/raw/refs/heads/master/variablefont/MaterialSymbolsRounded%5BFILL,GRAD,opsz,wght%5D.ttf, MaterialSymbolsRounded[FILL,GRAD,opsz,wght]-4.0.0.r169.g84ccef28.woff2::https://github.com/google/material-design-icons/raw/refs/heads/master/variablefont/MaterialSymbolsRounded%5BFILL,GRAD,opsz,wght%5D.woff2, MaterialSymbolsSharp[FILL,GRAD,opsz,wght]-4.0.0.r169.g84ccef28.ttf::https://github.com/google/material-design-icons/raw/refs/heads/master/variablefont/MaterialSymbolsSharp%5BFILL,GRAD,opsz,wght%5D.ttf, MaterialSymbolsSharp[FILL,GRAD,opsz,wght]-4.0.0.r169.g84ccef28.woff2::https://github.com/google/material-design-icons/raw/refs/heads/master/variablefont/MaterialSymbolsSharp%5BFILL,GRAD,opsz,wght%5D.woff2
Reviewing the 3 file(s) in the AUR repository. The 11 downloaded file(s) are upstream content, outside the threat model, and are not read.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, .gitignore...
[0/3] Reviewing .SRCINFO, .gitignore, PKGBUILD...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The .SRCINFO file contains only standard package metadata for a VCS (git) package: source URLs pointing to the upstream Google Material Design Icons repository on GitHub, and all SHA-256 checksums set to `SKIP` (which is normal and expected for `-git` packages). There are no build scripts, shell commands, network requests beyond the specified sources, or any obfuscated or encoded content. This file poses no security risk.
</details>
<evidence>
</evidence>
<summary>Standard .SRCINFO metadata, no suspicious content.</summary>
</security_assessment>

[1/3] Reviewing .gitignore, PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard .SRCINFO metadata, no suspicious content.
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.gitignore` file for an AUR git repository. It ignores all files except `PKGBUILD`, `.SRCINFO`, and `.gitignore` itself. No network requests, code execution, obfuscation, or file operations beyond what is expected for a simple ignore list. No evidence of malicious behavior.</details>
<evidence></evidence>
<summary>Standard .gitignore; no security issues.</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore; no security issues.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard AUR packaging practices for a VCS (git) package. It downloads font files from the official Google Material Design Icons repository on GitHub using raw URLs. The checksums are set to `SKIP`, which is required for VCS sources and is not a security concern. The `_update_version` function uses `curl` to query the GitHub API and `git ls-remote` to determine the latest tag — both are normal operations for updating the package version in a -git package. There is no obfuscated code, no unexpected network destinations, no execution of untrusted downloaded content, and no file operations outside the package's own font directory. The only notable issue is a minor bug: `_date` references an undefined variable `$commit_history`, but this is a packaging error, not a security threat. The PKGBUILD is safe.
</details>
<evidence></evidence>
<summary>Standard AUR VCS package, no malicious content.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR VCS package, no malicious content.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 12,565
  Completion Tokens: 2,562
  Total Tokens: 15,127
  Total Cost: $0.001516
  Execution Time: 229.78 seconds

Final Status: SAFE


No issues found.
