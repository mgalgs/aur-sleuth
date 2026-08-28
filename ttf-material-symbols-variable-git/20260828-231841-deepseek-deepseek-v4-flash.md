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
completion_tokens: 3077
total_tokens: 15658
cost: 0.00162095220
execution_time: 116.13
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: ok
upstream_files: 11
upstream_named_files: 0
unpinned_sources: 11
date: 2026-08-28T23:18:40Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard AUR .gitignore with no security concerns.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD for font package, no malicious behavior.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata file, no security concerns.
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
The top-level code and `pkgver()` contain only standard dynamic version detection (GitHub API calls to compute `_pkgver`) and no malicious payloads. The function `_update_version` makes network requests to GitHub for the official repository — this is normal for VCS packages and does not exfiltrate data or execute untrusted code. The `_source_main` function that would populate the `source` array is defined but never called, so no sources are downloaded during `makepkg --nobuild --nodeps --noprepare`. No obfuscation, backdoors, or dangerous operations are present. The commands are safe to run.
</details>
<evidence></evidence>
<summary>Top-level code only does benign version detection.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Top-level code only does benign version detection.
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
The `.gitignore` file contains a standard pattern for AUR packages: it ignores all files (`*`) except for `PKGBUILD`, `.SRCINFO`, and the `.gitignore` file itself. There is no executable code, network requests, obfuscation, or any other security-relevant content. This is a normal part of AUR repository hygiene.
</details>
<evidence></evidence>
<summary>Standard AUR .gitignore with no security concerns.</summary>
</security_assessment>

[1/3] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed .gitignore. Status: SAFE -- Standard AUR .gitignore with no security concerns.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD defines a standard AUR package for Google's Material Design icon fonts. It fetches font files directly from the official GitHub repository (`raw.githubusercontent.com/google/material-design-icons`) and installs them into `/usr/share/fonts/`.  
The `_update_version` function uses `curl` against the GitHub API to compute a version string from the latest commit – a common pattern for VCS packages that track a mutable branch. There is no execution of fetched code, no obfuscated commands, no unexpected network destinations, and no operations that exfiltrate data or modify system files outside the package scope.  
A minor bug exists (`$commit_history` is used but never defined), but this only causes an empty date variable and does not introduce a security issue. The file contains no genuinely malicious behavior.
</details>
<evidence>
</evidence>
<summary>Standard AUR PKGBUILD for font package, no malicious behavior.</summary>
</security_assessment>

[2/3] Reviewing .SRCINFO...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD for font package, no malicious behavior.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This .SRCINFO file is a standard packaging metadata file for an AUR package that provides Material Design icon fonts from the official Google repository. All source URLs point to `github.com/google/material-design-icons` using the `master` branch, which is the expected upstream location. The `sha256sums` are set to `SKIP` for each source, which is normal for VCS-style or mutable-source packages in the AUR; it is not evidence of malice. No commands, scripts, or executable content are present in this file—it only declares package metadata, sources, and dependencies. There is no obfuscation, no network requests to unexpected hosts, and no file operations beyond standard packaging declarations. The package structure (multiple split packages for classic fonts, variable TTF, and variable WOFF2 fonts) aligns with its stated purpose of distributing Google&#8217;s Material Design icon fonts.
</details>
<evidence></evidence>
<summary>Standard AUR metadata file, no security concerns.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata file, no security concerns.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 12,581
  Completion Tokens: 3,077
  Total Tokens: 15,658
  Total Cost: $0.001621
  Execution Time: 116.13 seconds

Final Status: SAFE


No issues found.
