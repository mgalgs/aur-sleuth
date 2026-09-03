---
package: woff2-material-symbols-variable-git
pkgbase: material-symbols-git
pkgver: 4.0.0.r169.g84ccef28
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 3e318911529c43138ec6bdba0bfcb56907607021
prompt_tokens: 12585
completion_tokens: 1929
total_tokens: 14514
cost: 0.00140653422
execution_time: 42.2
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: ok
upstream_files: 11
upstream_named_files: 0
unpinned_sources: 11
date: 2026-08-31T15:19:51Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard .gitignore for AUR packaging; no threats.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD, no malicious behavior detected.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata; no malicious content detected.
---

woff2-material-symbols-variable-git is built from material-symbols-git
Cloning https://aur.archlinux.org/material-symbols-git.git...
Cloned woff2-material-symbols-variable-git
Analyzing woff2-material-symbols-variable-git AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD sources official GitHub repositories and API endpoints from `google/material-design-icons` to fetch version data and font files. The global scope calls `_update_version()` (which uses `curl` to query the GitHub API and `git ls-remote` to list tags) and `_source_main()` (which constructs source URLs from the upstream raw repository). These are standard packaging operations for a VCS-based AUR package. No obfuscated code, unexpected downloads, or data exfiltration is present. The `pkgver()` function simply echoes the computed version. The `prepare()`, `build()`, and `package()` functions are not executed by the requested commands, and their content is not relevant to this gate. The only network activity is to trusted GitHub domains, and no malicious payload execution is possible during the quoted commands.
</details>
<evidence></evidence>
<summary>Standard AUR package fetching from official upstream.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Standard AUR package fetching from official upstream.
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
The `.gitignore` file is a standard configuration file for version control, used to exclude all files except the essential packaging files (`PKGBUILD`, `.SRCINFO`, and `.gitignore` itself). This is a common and legitimate practice for AUR packages, ensuring that only the minimum required files are tracked in the repository. There is no executable code, no network requests, no obfuscated content, and no indication of malicious behavior. The file is entirely harmless.
</details>
<evidence>
</evidence>
<summary>Standard .gitignore for AUR packaging; no threats.</summary>
</security_assessment>

[1/3] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore for AUR packaging; no threats.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD is a standard Arch Linux package build script for the `material-symbols-git` package, which fetches font files from Google's official GitHub repository. All source URLs point to `github.com/google/material-design-icons`, the legitimate upstream. The `_update_version` function uses `curl` to query the GitHub API and `git ls-remote` to compute a version string — this is a common pattern for `-git` packages that auto-update. There is no obfuscated code, no unexpected network destinations, no dangerous commands like `eval`, `base64`, or `curl|bash`, and no exfiltration of local data. The `sha256sums` are set to `SKIP`, which is expected for VCS-based packages where checksums are not fixed. The overall behavior is consistent with benign packaging practices.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD, no malicious behavior detected.</summary>
</security_assessment>

[2/3] Reviewing .SRCINFO...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD, no malicious behavior detected.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This `.SRCINFO` file is a standard metadata file for an Arch User Repository (AUR) package. It declares multiple font source files fetched directly from the official upstream GitHub repository `google/material-design-icons` via HTTPS. All `sha256sums` are set to `SKIP`, which is expected and normal for VCS-style packages (e.g., `-git` packages) where the exact content is determined at build time—this is not a supply chain attack indicator.</details>
<evidence></evidence>
<summary>Standard AUR metadata; no malicious content detected.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata; no malicious content detected.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 12,585
  Completion Tokens: 1,929
  Total Tokens: 14,514
  Total Cost: $0.001407
  Execution Time: 42.20 seconds

Final Status: SAFE


No issues found.
