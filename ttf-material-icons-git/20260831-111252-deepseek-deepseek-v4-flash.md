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
completion_tokens: 2284
total_tokens: 14849
cost: 0.001518086598
execution_time: 131.09
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: ok
upstream_files: 11
upstream_named_files: 0
unpinned_sources: 11
date: 2026-08-31T11:12:51Z
file_verdicts:
  - file: PKGBUILD
    status: safe
    summary: Standard AUR font package, no malicious behavior found.
  - file: .gitignore
    status: safe
    summary: Standard .gitignore for AUR VCS packages.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata file, no security issues.
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
The PKGBUILD sources use standard `git ls-remote` and `curl` to GitHub API to compute a version string, which is typical for VCS packages. No downloaded content is executed. The `source` array fetches font files from the upstream GitHub raw URLs, and only writes them to disk. There is no obfuscated code, no `eval`, no `curl | bash`, and no execution of fetched content during `makepkg --nobuild --nodeps --noprepare`. All network activity retrieves metadata or font binaries from the package's official upstream, posing no supply-chain risk at this stage.
</details>
<evidence></evidence>
<summary>No malicious code executed during source fetch and parse.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious code executed during source fetch and parse.
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Note: 11 remote source(s) have no checksum (sha256sums=SKIP), so the fetched bytes are not verifiable and can change without any AUR update: MaterialIcons-Regular-4.0.0.r169.g84ccef28.ttf::https://github.com/google/material-design-icons/raw/refs/heads/master/font/MaterialIcons-Regular.ttf, MaterialIconsOutlined-Regular-4.0.0.r169.g84ccef28.otf::https://github.com/google/material-design-icons/raw/refs/heads/master/font/MaterialIconsOutlined-Regular.otf, MaterialIconsRound-Regular-4.0.0.r169.g84ccef28.otf::https://github.com/google/material-design-icons/raw/refs/heads/master/font/MaterialIconsRound-Regular.otf, MaterialIconsSharp-Regular-4.0.0.r169.g84ccef28.otf::https://github.com/google/material-design-icons/raw/refs/heads/master/font/MaterialIconsSharp-Regular.otf, MaterialIconsTwoTone-Regular-4.0.0.r169.g84ccef28.otf::https://github.com/google/material-design-icons/raw/refs/heads/master/font/MaterialIconsTwoTone-Regular.otf, MaterialSymbolsOutlined[FILL,GRAD,opsz,wght]-4.0.0.r169.g84ccef28.ttf::https://github.com/google/material-design-icons/raw/refs/heads/master/variablefont/MaterialSymbolsOutlined%5BFILL,GRAD,opsz,wght%5D.ttf, MaterialSymbolsOutlined[FILL,GRAD,opsz,wght]-4.0.0.r169.g84ccef28.woff2::https://github.com/google/material-design-icons/raw/refs/heads/master/variablefont/MaterialSymbolsOutlined%5BFILL,GRAD,opsz,wght%5D.woff2, MaterialSymbolsRounded[FILL,GRAD,opsz,wght]-4.0.0.r169.g84ccef28.ttf::https://github.com/google/material-design-icons/raw/refs/heads/master/variablefont/MaterialSymbolsRounded%5BFILL,GRAD,opsz,wght%5D.ttf, MaterialSymbolsRounded[FILL,GRAD,opsz,wght]-4.0.0.r169.g84ccef28.woff2::https://github.com/google/material-design-icons/raw/refs/heads/master/variablefont/MaterialSymbolsRounded%5BFILL,GRAD,opsz,wght%5D.woff2, MaterialSymbolsSharp[FILL,GRAD,opsz,wght]-4.0.0.r169.g84ccef28.ttf::https://github.com/google/material-design-icons/raw/refs/heads/master/variablefont/MaterialSymbolsSharp%5BFILL,GRAD,opsz,wght%5D.ttf, MaterialSymbolsSharp[FILL,GRAD,opsz,wght]-4.0.0.r169.g84ccef28.woff2::https://github.com/google/material-design-icons/raw/refs/heads/master/variablefont/MaterialSymbolsSharp%5BFILL,GRAD,opsz,wght%5D.woff2
Reviewing the 3 file(s) in the AUR repository. The 11 downloaded file(s) are upstream content, outside the threat model, and are not read.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, .gitignore...
[0/3] Reviewing .SRCINFO, .gitignore, PKGBUILD...
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD for the `material-symbols-git` package is a standard AUR font package. It fetches font files from the official Google Material Design Icons GitHub repository using raw URLs, which is the expected upstream source. The `_update_version` function queries the GitHub API and uses `git ls-remote` to compute a version string based on the latest commit and tag; these are routine operations for a VCS-based package and do not execute any downloaded code. All network requests are to `github.com`, the project's own domain. There is no obfuscation, no use of dangerous commands like `eval`, `base64`, or `curl|bash`, and no exfiltration of data. The `sha256sums` being `SKIP` is normal for VCS sources and is not a security concern. The only potential issue is a bug in the `_update_version` function where `$commit_history` is used instead of `$_response`, but this is a packaging error, not a malicious supply-chain attack.
</details>
<evidence>
</evidence>
<summary>Standard AUR font package, no malicious behavior found.</summary>
</security_assessment>

[1/3] Reviewing .SRCINFO, .gitignore...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR font package, no malicious behavior found.
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard .gitignore file commonly used in AUR packages to track only essential files (PKGBUILD, .SRCINFO, and .gitignore itself). There is no code execution, network activity, or any suspicious behavior. The file serves a purely organizational purpose for version control.
</details>
<evidence>
</evidence>
<summary>Standard .gitignore for AUR VCS packages.</summary>
</security_assessment>

[2/3] Reviewing .SRCINFO...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore for AUR VCS packages.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard .SRCINFO metadata file for an AUR package that provides Google Material Design icon fonts. All sources point to the official `github.com/google/material-design-icons` repository using HTTPS. The file contains no executable code, no obfuscation, no unexpected network destinations, and no system modification instructions. The SKIP checksums are a normal packaging choice for VCS or raw-file sources and are not themselves evidence of malice. No evidence of supply-chain attack or malicious behavior was found.
</details>
<evidence>
</evidence>
<summary>Standard AUR metadata file, no security issues.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata file, no security issues.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 12,565
  Completion Tokens: 2,284
  Total Tokens: 14,849
  Total Cost: $0.001518
  Execution Time: 131.09 seconds

Final Status: SAFE


No issues found.
