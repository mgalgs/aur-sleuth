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
completion_tokens: 1962
total_tokens: 14543
cost: 0.00135869160
execution_time: 42.51
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: ok
upstream_files: 11
upstream_named_files: 0
unpinned_sources: 11
date: 2026-08-29T19:18:50Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard .gitignore; no security issues.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata, no malicious content.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR font PKGBUILD, no security issues.
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
The top-level code in this PKGBUILD calls `_update_version()` and `_source_main()`.  
`_update_version()` makes HTTPS requests to `api.github.com` and runs `git ls-remote --tags` against the package's own upstream repository (google/material-design-icons) to compute a version string. No data is exfiltrated, no code is executed from the network, and the results are used only to set `_pkgver`.  
`_source_main()` constructs source URLs from `raw.githubusercontent.com` (the official GitHub raw content host) using the computed version; these are standard font files.  
The `pkgver()` function simply echoes the already-set variable.  
Network requests to the package's own upstream are expected for a VCS/git PKGBUILD, and none of the operations execute downloaded content or perform dangerous actions.  
No obfuscation, no malicious payloads, no unexpected remote destinations.  
The gate operation (`makepkg --nobuild --nodeps --noprepare` and `--printsrcinfo`) is safe.
</details>
<evidence></evidence>
<summary>Safe: standard VCS PKGBUILD with upstream-only network requests.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Safe: standard VCS PKGBUILD with upstream-only network requests.
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
This is a standard `.gitignore` file for an AUR package repository. It instructs Git to ignore all files except `PKGBUILD`, `.SRCINFO`, and the `.gitignore` itself. There is no executable code, no network requests, no obfuscation, and no system modification commands. It is a harmless configuration file with no security risks.
</details>
<evidence>
</evidence>
<summary>Standard .gitignore; no security issues.</summary>
</security_assessment>

[1/3] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore; no security issues.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.SRCINFO` metadata file for the `material-symbols-git` AUR package. It defines the package base, sources, licenses, and subpackages. All sources point to the official Google Material Design Icons repository on GitHub under the `master` branch. All checksums are set to `SKIP`, which is normal for VCS packages or when fetching raw files from a mutable branch. There are no executable instructions, no obfuscated code, no suspicious network destinations, and no potential for supply chain attacks. The file is purely declarative and follows standard AUR packaging practices.
</details>
<evidence>
</evidence>
<summary>Standard AUR metadata, no malicious content.</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata, no malicious content.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD is a standard AUR package for Google Material Design icons. It downloads font files from the official GitHub repository of the upstream project. All network requests are directed to `github.com/google/material-design-icons` (raw file downloads and API calls). There is no obfuscated code, no encoded commands, no unexpected system modifications, and no exfiltration of local data. The `sha256sums` are set to `SKIP`, which is normal for VCS-based AUR packages and is not a security concern. The `_update_version` function fetches commit and tag information via the GitHub API to compute a version string, which is typical for `-git` packages. No genuinely malicious behavior is present.
</details>
<evidence></evidence>
<summary>Standard AUR font PKGBUILD, no security issues.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR font PKGBUILD, no security issues.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 12,581
  Completion Tokens: 1,962
  Total Tokens: 14,543
  Total Cost: $0.001359
  Execution Time: 42.51 seconds

Final Status: SAFE


No issues found.
