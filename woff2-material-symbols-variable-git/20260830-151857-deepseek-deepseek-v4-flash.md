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
completion_tokens: 2353
total_tokens: 14938
cost: 0.00136529736
execution_time: 66.86
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: ok
upstream_files: 11
upstream_named_files: 0
unpinned_sources: 11
date: 2026-08-30T15:18:56Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata file, no malicious content.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR git package; no malicious code.
  - file: .gitignore
    status: safe
    summary: Standard gitignore; no security concerns.
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
The PKGBUILD defines a standard AUR git package for Google Material Design icons. The top-level code sets an auto-update flag, then calls `_update_version()` and `_source_main()`.  

`_update_version()` uses `curl` to fetch commit metadata from the official GitHub API (api.github.com) to determine a version string – this is a normal pattern for VCS packages that self-update `pkgver`. No downloaded content is executed.  

`_source_main()` constructs `source` entries pointing to the official GitHub raw content for the upstream font files (ttf/woff2/otf). `makepkg --nobuild --nodeps --noprepare` will download and extract these files but will **not** execute anything inside them.  

No code is obfuscated, no data exfiltration, no installation of backdoors, and no execution of attacker-controlled code. The file is consistent with legitimate AUR packaging practices.
</details>
<evidence></evidence>
<summary>Standard AUR git package with safe source fetching.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Standard AUR git package with safe source fetching.
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
The `.SRCINFO` file is a standard AUR metadata file. All source entries point to the official Google Material Design Icons repository on GitHub (`github.com/google/material-design-icons`). The `sha256sums` are set to `SKIP`, which is standard practice for VCS/git packages and is not inherently malicious. No network destinations outside the official upstream are referenced. There are no commands to execute, no obfuscated code, and no file operations beyond normal packaging declarations. The file does not contain any supply-chain attack indicators.
</details>
<evidence></evidence>
<summary>Standard AUR metadata file, no malicious content.</summary>
</security_assessment>

[1/3] Reviewing .gitignore, PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata file, no malicious content.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a standard Arch User Repository (AUR) package for Google's Material Design icon fonts. It fetches font files directly from the official upstream GitHub repository (`github.com/google/material-design-icons`) and installs them into the package directory. The auto-versioning logic uses the GitHub API and `git ls-remote --tags` to determine the latest version, which is normal for VCS-based AUR packages. Checksums are set to `SKIP`, which is required for VCS sources and not a security concern. There are no obfuscated commands, no execution of remotely fetched code (e.g., `curl|bash`), no attempts to exfiltrate data, and no modifications to system files outside the package's own font installation paths. The only network operations are to the official GitHub repository and API, which is expected and appropriate for this package.
</details>
<evidence></evidence>
<summary>Standard AUR git package; no malicious code.</summary>
</security_assessment>

[2/3] Reviewing .gitignore...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR git package; no malicious code.
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.gitignore` file commonly used in AUR git repositories. It ignores all files except the PKGBUILD, .SRCINFO, and the .gitignore itself. There is no executable content, no network requests, no obfuscation, and no system modifications. It poses no security risk.
</details>
<evidence></evidence>
<summary>Standard gitignore; no security concerns.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed .gitignore. Status: SAFE -- Standard gitignore; no security concerns.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 12,585
  Completion Tokens: 2,353
  Total Tokens: 14,938
  Total Cost: $0.001365
  Execution Time: 66.86 seconds

Final Status: SAFE


No issues found.
