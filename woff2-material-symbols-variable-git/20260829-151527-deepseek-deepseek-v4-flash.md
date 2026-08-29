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
completion_tokens: 3707
total_tokens: 16292
cost: 0.00166311684
execution_time: 62.57
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: ok
upstream_files: 11
upstream_named_files: 0
unpinned_sources: 11
date: 2026-08-29T15:15:27Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata, no signs of malicious code.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR -git package for Material Design icons.
  - file: .gitignore
    status: safe
    summary: Standard .gitignore for AUR repository; no malicious content.
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
The PKGBUILD is a standard VCS package for Google Material Design icons. The top-level code calls `_update_version()` and `_source_main()`. `_update_version()` makes curl requests to the official GitHub API to determine the latest commit and tag—this is normal for a `-git` package that auto-updates its version. `_source_main()` constructs `source` entries to download font files from the upstream GitHub repo. No obfuscated commands, dangerous downloads, or data exfiltration are present. The `sha256sums` are set to `SKIP`, which is standard for VCS sources and does not pose a risk when sourcing the PKGBUILD or fetching sources. The `pkgver()` function only echoes the version variable. There is no code that executes untrusted payloads at source time. Running `makepkg --nobuild --nodeps --noprepare` and `makepkg --printsrcinfo` is safe.
</details>
<evidence></evidence>
<summary>Top-level code only performs standard version detection and source downloads.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Top-level code only performs standard version detection and source downloads.
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
This is a standard `.SRCINFO` file for an AUR `-git` package of Google&#x27;s Material Design icons. All sources are fetched directly from the official `github.com/google/material-design-icons` repository. The `sha256sums` are set to `SKIP`, which is expected for VCS packages. No commands, scripts, or executable logic are present; the file is purely declarative metadata. There is no evidence of obfuscated code, unexpected network requests, file manipulations, or any other indicators of a supply-chain attack.
</details>
<evidence>
</evidence>
<summary>Standard AUR metadata, no signs of malicious code.</summary>
</security_assessment>

[1/3] Reviewing .gitignore, PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata, no signs of malicious code.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a standard AUR `-git` package for Google Material Design icons. It fetches font files directly from the official GitHub repository (`raw.githubusercontent.com/google/material-design-icons/refs/heads/master`) and sets `sha256sums` to `SKIP`, which is normal for VCS sources that track a mutable branch. The `_update_version` function queries the GitHub API and uses `git ls-remote --tags` to compute a dynamic version string – a common pattern in `-git` packages. There is no obfuscation, no downloading and executing of arbitrary code, and no connection to unexpected hosts. A minor bug (undefined variable `$commit_history`) exists but is harmless. No exfiltration, backdoors, or supply-chain attack indicators are present.
</details>
<evidence></evidence>
<summary>Standard AUR -git package for Material Design icons.</summary>
</security_assessment>

[2/3] Reviewing .gitignore...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR -git package for Material Design icons.
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard `.gitignore` for an AUR git repository. It ignores all files (`*`) except for the essential packaging files (`PKGBUILD`, `.SRCINFO`, and `.gitignore` itself). This is normal practice to keep the repository clean and prevent accidental inclusion of build artifacts or other unnecessary files. There are no dangerous commands, network requests, obfuscated code, or any other indicators of malicious behavior.
</details>
<evidence></evidence>
<summary>Standard .gitignore for AUR repository; no malicious content.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore for AUR repository; no malicious content.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 12,585
  Completion Tokens: 3,707
  Total Tokens: 16,292
  Total Cost: $0.001663
  Execution Time: 62.57 seconds

Final Status: SAFE


No issues found.
