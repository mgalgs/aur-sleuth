---
package: ttf-material-icons-git
pkgbase: material-symbols-git
pkgver: 4.0.0.r119.gc51274e9
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 1d6b5f000e2ff2cbdfdf4e324a3e5ac914955c8a
prompt_tokens: 12385
completion_tokens: 3652
total_tokens: 16037
cost: 0.001744563534
execution_time: 100.68
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 11
injection_attempts: 0
date: 2026-09-03T00:43:32Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard VCS font package from official upstream, no threats.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD with minor bug, no malicious code.
  - file: .gitignore
    status: safe
    summary: Standard .gitignore file, no security concerns.
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
The top-level code in this PKGBUILD is safe to source during `makepkg --printsrcinfo`. The only dynamic behavior is the call to `_update_version`, but that function checks `$_autoupdate` first. Since `makepkg` sets `$_srcinfo` (a makepkg internal variable), the condition `[ -z "$_srcinfo" ]` is false, so `_autoupdate` is never set to `true`. Consequently, `_update_version` immediately returns after setting `_pkgver` to the existing `$pkgver` (line 15), without performing any network requests or executing any dangerous commands. The subsequent `_source_main` call only builds the `source` array and appends `SKIP` checksums—no network or execution occurs. No obfuscation, base64 decoding, eval, or data exfiltration is present in the top-level scope.
</details>
<evidence>
</evidence>
<summary>No malicious code executes during `makepkg --printsrcinfo`.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious code executes during `makepkg --printsrcinfo`.
Note: 11 remote source(s) have no checksum (sha256sums=SKIP), so the bytes are not verifiable: MaterialIcons-Regular-4.0.0.r169.g84ccef28.ttf::https://github.com/google/material-design-icons/raw/refs/heads/master/font/MaterialIcons-Regular.ttf, MaterialIconsOutlined-Regular-4.0.0.r169.g84ccef28.otf::https://github.com/google/material-design-icons/raw/refs/heads/master/font/MaterialIconsOutlined-Regular.otf, MaterialIconsRound-Regular-4.0.0.r169.g84ccef28.otf::https://github.com/google/material-design-icons/raw/refs/heads/master/font/MaterialIconsRound-Regular.otf, MaterialIconsSharp-Regular-4.0.0.r169.g84ccef28.otf::https://github.com/google/material-design-icons/raw/refs/heads/master/font/MaterialIconsSharp-Regular.otf, MaterialIconsTwoTone-Regular-4.0.0.r169.g84ccef28.otf::https://github.com/google/material-design-icons/raw/refs/heads/master/font/MaterialIconsTwoTone-Regular.otf, MaterialSymbolsOutlined[FILL,GRAD,opsz,wght]-4.0.0.r169.g84ccef28.ttf::https://github.com/google/material-design-icons/raw/refs/heads/master/variablefont/MaterialSymbolsOutlined%5BFILL,GRAD,opsz,wght%5D.ttf, MaterialSymbolsOutlined[FILL,GRAD,opsz,wght]-4.0.0.r169.g84ccef28.woff2::https://github.com/google/material-design-icons/raw/refs/heads/master/variablefont/MaterialSymbolsOutlined%5BFILL,GRAD,opsz,wght%5D.woff2, MaterialSymbolsRounded[FILL,GRAD,opsz,wght]-4.0.0.r169.g84ccef28.ttf::https://github.com/google/material-design-icons/raw/refs/heads/master/variablefont/MaterialSymbolsRounded%5BFILL,GRAD,opsz,wght%5D.ttf, MaterialSymbolsRounded[FILL,GRAD,opsz,wght]-4.0.0.r169.g84ccef28.woff2::https://github.com/google/material-design-icons/raw/refs/heads/master/variablefont/MaterialSymbolsRounded%5BFILL,GRAD,opsz,wght%5D.woff2, MaterialSymbolsSharp[FILL,GRAD,opsz,wght]-4.0.0.r169.g84ccef28.ttf::https://github.com/google/material-design-icons/raw/refs/heads/master/variablefont/MaterialSymbolsSharp%5BFILL,GRAD,opsz,wght%5D.ttf, MaterialSymbolsSharp[FILL,GRAD,opsz,wght]-4.0.0.r169.g84ccef28.woff2::https://github.com/google/material-design-icons/raw/refs/heads/master/variablefont/MaterialSymbolsSharp%5BFILL,GRAD,opsz,wght%5D.woff2
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .gitignore...
[0/3] Reviewing .gitignore, .SRCINFO...
[0/3] Reviewing .gitignore, .SRCINFO, PKGBUILD...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This .SRCINFO file declares a VCS (git-based) AUR package for Material Design icons by Google. All sources are fetched from the official upstream GitHub repository (github.com/google/material-design-icons) using raw file URLs from the master branch. The package simply downloads font files (TTF, OTF, WOFF2) and splits them into subpackages for classic fonts, variable fonts, and WOFF2 variable fonts. The sha256sums are correctly set to SKIP, which is standard and required for VCS/git packages as the checksums cannot be pinned for mutable sources. There is no evidence of malicious content: no obfuscated code, no unusual network destinations, no dangerous commands, and no exfiltration of data. This is a straightforward font packaging operation consistent with normal AUR practices.
</details>
<evidence></evidence>
<summary>Standard VCS font package from official upstream, no threats.</summary>
</security_assessment>

[1/3] Reviewing .gitignore, PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard VCS font package from official upstream, no threats.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD is a standard AUR packaging script for Google Material Design icons. It downloads font files from the official GitHub repository using raw URLs and installs them into system font directories. The `_update_version` function fetches commit data from GitHub's API to auto-generate the package version string, which is normal for VCS-based AUR packages. There are no obfuscated commands, no execution of downloaded code, and all network requests target the official `github.com` domain. The only notable issue is a minor bug: the variable `$commit_history` is used in the date extraction but is never defined (likely intended to be `$_response`). This could cause a harmless error but does not introduce any security risk. The file does not contain any supply-chain attack indicators such as backdoors, exfiltration, or unexpected system modifications.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD with minor bug, no malicious code.</summary>
</security_assessment>

[2/3] Reviewing .gitignore...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD with minor bug, no malicious code.
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.gitignore` file used to control which files are tracked in a Git repository. It ignores all files except the three explicitly listed: `PKGBUILD`, `.SRCINFO`, and itself (`.gitignore`). This is a normal and harmless pattern for AUR package repositories to ensure only the essential packaging files are version-controlled. There is no code, no network activity, no obfuscation, and no system modifications.
</details>
<evidence></evidence>
<summary>Standard .gitignore file, no security concerns.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore file, no security concerns.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 12,385
  Completion Tokens: 3,652
  Total Tokens: 16,037
  Total Cost: $0.001745
  Execution Time: 100.68 seconds

Final Status: SAFE


No issues found.
