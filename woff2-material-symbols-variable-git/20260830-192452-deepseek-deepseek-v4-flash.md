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
completion_tokens: 3244
total_tokens: 15829
cost: 0.00150066364
execution_time: 48.22
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: ok
upstream_files: 11
upstream_named_files: 0
unpinned_sources: 11
date: 2026-08-30T19:24:52Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard .gitignore, no malicious content.
  - file: .SRCINFO
    status: safe
    summary: Declarative metadata for legitimate Google icon fonts.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD with no malicious behavior.
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
The global scope of this PKGBUILD calls `_update_version()` and `_source_main()` when sourced.  
`_update_version()` uses `curl` and `git ls-remote` to query the GitHub API and the upstream repository for version data (commit hash, tag, revision). It does **not** download or execute any code from those responses; it only parses text to set the `$_pkgver` variable.  
`_source_main()` builds the `source` array from hardcoded upstream URLs (all `https://github.com/...`) with `SKIP` checksums, which is normal for a VCS package.  
No `eval`, `base64`, `curl | bash`, or other dangerous constructs are present. The network requests are to the package's own upstream and serve only to determine the version – a common pattern for auto-updating AUR packages.  
There is no exfiltration, no execution of untrusted payloads, and no backdoor during sourcing or the requested `makepkg` commands.  
The code is consistent with standard packaging practice.
</details>
<evidence></evidence>
<summary>No malicious code in global scope.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious code in global scope.
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
The .gitignore file is a standard configuration file that only specifies which files Git should ignore. The content is minimal and matches common practices for AUR package repositories, ensuring only essential packaging files (`PKGBUILD`, `.SRCINFO`, and `.gitignore`) are tracked. No suspicious commands, obfuscation, or malicious operations are present.
</details>
<evidence>
</evidence>
<summary>Standard .gitignore, no malicious content.</summary>
</security_assessment>

[1/3] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore, no malicious content.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard `.SRCINFO` metadata file used by the Arch User Repository (AUR). It declares a split package (`material-symbols-git`) that provides three subpackages: two for TTF fonts and one for WOFF2 variable fonts. All source URLs point directly to the official Google `material-design-icons` repository on GitHub, using the `master` branch. All checksums are set to `SKIP`, which is normal and expected for VCS-based (`-git`) packages. There are no execute commands, network requests beyond fetching the declared upstream sources, file manipulations, encoded/obfuscated strings, or any other indicators of malicious behavior. The file is purely declarative and does not contain any executable code.
</details>
<evidence></evidence>
<summary>Declarative metadata for legitimate Google icon fonts.</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Declarative metadata for legitimate Google icon fonts.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD is a standard AUR packaging file for the `material-symbols-git` package. All sources are fetched from the official Google GitHub repository (`https://github.com/google/material-design-icons`). Checksums are set to `SKIP`, which is normal for VCS/git packages. The `_update_version` function uses `curl` to query the GitHub API and `git ls-remote` to determine the latest revision and tag from the same repository—this is a standard pattern for AUR -git packages and does not introduce unexpected network destinations or executable code. No obfuscation, no base64 or eval, no exfiltration, no backdoors, and no tampering with system files outside the package's own installation paths. The packaging logic is purely routine: downloading font files, installing them into `$pkgdir` under `/usr/share/fonts/`. Everything aligns with the stated purpose of providing Material Design icons as fonts.
</details>
<evidence></evidence>
<summary>Standard AUR PKGBUILD with no malicious behavior.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD with no malicious behavior.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 12,585
  Completion Tokens: 3,244
  Total Tokens: 15,829
  Total Cost: $0.001501
  Execution Time: 48.22 seconds

Final Status: SAFE


No issues found.
