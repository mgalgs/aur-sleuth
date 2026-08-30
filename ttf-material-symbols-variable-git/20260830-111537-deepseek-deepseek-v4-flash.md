---
package: ttf-material-symbols-variable-git
pkgbase: material-symbols-git
pkgver: 4.0.0.r169.g84ccef28
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 3e318911529c43138ec6bdba0bfcb56907607021
prompt_tokens: 12581
completion_tokens: 3581
total_tokens: 16162
cost: 0.0015754914
execution_time: 61.54
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: ok
upstream_files: 11
upstream_named_files: 0
unpinned_sources: 11
date: 2026-08-30T11:15:37Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard .gitignore with no security issues
  - file: .SRCINFO
    status: safe
    summary: AUR .SRCINFO metadata; standard VCS sources, no malicious content.
  - file: PKGBUILD
    status: safe
    summary: Standard VCS package, no malicious behavior found.
---

ttf-material-symbols-variable-git is built from material-symbols-git
Cloning https://aur.archlinux.org/material-symbols-git.git...
Cloned ttf-material-symbols-variable-git
Analyzing ttf-material-symbols-variable-git AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD sources in two network-dependent functions at top level: `_update_version` and `_source_main`. `_source_main` appends download URLs from the official Google GitHub repository to the `source` array — this is normal for fetching font files. `_update_version` issues HTTP requests to `api.github.com` and `git ls-remote` to compute a version string. While performing network calls at source time is unconventional, the fetched data is only used to set `_pkgver` and is never executed or interpreted as code. There is no `eval`, `curl|bash`, base64 decode, or any mechanism that could lead to code injection or supply-chain attack. No dangerous behavior occurs during the sourcing or source-fetching phases that `makepkg --nobuild --nodeps --noprepare` or `makepkg --printsrcinfo` would execute. Therefore, running these commands is safe.
</details>
<evidence></evidence>
<summary>Network calls but no code execution; sourcing is safe.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Network calls but no code execution; sourcing is safe.
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Note: 11 remote source(s) have no checksum (sha256sums=SKIP), so the fetched bytes are not verifiable and can change without any AUR update: MaterialIcons-Regular-4.0.0.r169.g84ccef28.ttf::https://github.com/google/material-design-icons/raw/refs/heads/master/font/MaterialIcons-Regular.ttf, MaterialIconsOutlined-Regular-4.0.0.r169.g84ccef28.otf::https://github.com/google/material-design-icons/raw/refs/heads/master/font/MaterialIconsOutlined-Regular.otf, MaterialIconsRound-Regular-4.0.0.r169.g84ccef28.otf::https://github.com/google/material-design-icons/raw/refs/heads/master/font/MaterialIconsRound-Regular.otf, MaterialIconsSharp-Regular-4.0.0.r169.g84ccef28.otf::https://github.com/google/material-design-icons/raw/refs/heads/master/font/MaterialIconsSharp-Regular.otf, MaterialIconsTwoTone-Regular-4.0.0.r169.g84ccef28.otf::https://github.com/google/material-design-icons/raw/refs/heads/master/font/MaterialIconsTwoTone-Regular.otf, MaterialSymbolsOutlined[FILL,GRAD,opsz,wght]-4.0.0.r169.g84ccef28.ttf::https://github.com/google/material-design-icons/raw/refs/heads/master/variablefont/MaterialSymbolsOutlined%5BFILL,GRAD,opsz,wght%5D.ttf, MaterialSymbolsOutlined[FILL,GRAD,opsz,wght]-4.0.0.r169.g84ccef28.woff2::https://github.com/google/material-design-icons/raw/refs/heads/master/variablefont/MaterialSymbolsOutlined%5BFILL,GRAD,opsz,wght%5D.woff2, MaterialSymbolsRounded[FILL,GRAD,opsz,wght]-4.0.0.r169.g84ccef28.ttf::https://github.com/google/material-design-icons/raw/refs/heads/master/variablefont/MaterialSymbolsRounded%5BFILL,GRAD,opsz,wght%5D.ttf, MaterialSymbolsRounded[FILL,GRAD,opsz,wght]-4.0.0.r169.g84ccef28.woff2::https://github.com/google/material-design-icons/raw/refs/heads/master/variablefont/MaterialSymbolsRounded%5BFILL,GRAD,opsz,wght%5D.woff2, MaterialSymbolsSharp[FILL,GRAD,opsz,wght]-4.0.0.r169.g84ccef28.ttf::https://github.com/google/material-design-icons/raw/refs/heads/master/variablefont/MaterialSymbolsSharp%5BFILL,GRAD,opsz,wght%5D.ttf, MaterialSymbolsSharp[FILL,GRAD,opsz,wght]-4.0.0.r169.g84ccef28.woff2::https://github.com/google/material-design-icons/raw/refs/heads/master/variablefont/MaterialSymbolsSharp%5BFILL,GRAD,opsz,wght%5D.woff2
Reviewing the 3 file(s) in the AUR repository. The 11 downloaded file(s) are upstream content, outside the threat model, and are not read.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, .gitignore...
[0/3] Reviewing .SRCINFO, .gitignore, PKGBUILD...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard `.gitignore` file commonly used in AUR packages. It only ignores all files except the essential package metadata files (PKGBUILD, .SRCINFO, and the .gitignore itself). There is no executable code, no network requests, no file operations, and no possibility for malicious behavior. It is a perfectly normal and safe configuration file.
</details>
<evidence>
</evidence>
<summary>Standard .gitignore with no security issues</summary>
</security_assessment>

[1/3] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore with no security issues
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard .SRCINFO metadata file for a VCS-style AUR package. It declares sources exclusively from the official Google Material Design Icons GitHub repository (github.com/google/material-design-icons) and specifies that all checksums are SKIP — which is required for VCS packages tracking a mutable branch. There are no executable commands, no obfuscated content, no unexpected network destinations, and no post-install hooks. The file simply defines package names, versions, and download URLs. No supply-chain attack indicators are present.
</details>
<evidence></evidence>
<summary>AUR .SRCINFO metadata; standard VCS sources, no malicious content.</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- AUR .SRCINFO metadata; standard VCS sources, no malicious content.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD fetches font files from the official Google Material Design Icons repository on GitHub, using raw URLs. All checksums are set to `SKIP`, which is standard for VCS (`-git`) packages and is not a security issue per the guidelines. The `_update_version` function uses `curl` to query the GitHub API and `git ls-remote` to determine the latest commit and tag, constructing a version string. This behavior is normal for dynamic version detection in AUR VCS packages; no downloaded data is executed as code, and no unexpected network destinations are contacted. The package functions simply install font files into the standard system directories. There is no obfuscated code, no backdoors, no exfiltration, and no execution of fetched scripts or binaries. The overall file follows standard AUR packaging practices for font packages.
</details>
<evidence></evidence>
<summary>Standard VCS package, no malicious behavior found.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard VCS package, no malicious behavior found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 12,581
  Completion Tokens: 3,581
  Total Tokens: 16,162
  Total Cost: $0.001575
  Execution Time: 61.54 seconds

Final Status: SAFE


No issues found.
