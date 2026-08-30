---
package: ttf-material-icons-git
pkgbase: material-symbols-git
pkgver: 4.0.0.r169.g84ccef28
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 3e318911529c43138ec6bdba0bfcb56907607021
prompt_tokens: 12644
completion_tokens: 3772
total_tokens: 16416
cost: 0.00167883408
execution_time: 51.76
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: ok
upstream_files: 11
upstream_named_files: 0
unpinned_sources: 11
date: 2026-08-29T15:09:42Z
file_verdicts:
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD for Material Design icons; no malicious behavior.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata, no malicious content.
  - file: .gitignore
    status: safe
    summary: Standard .gitignore with no malicious or dangerous content.
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
The PKGBUILD&#x27;s top-level code (sourced by `makepkg`) calls `_update_version` and `_source_main`.  
`_update_version` fetches commit history and tags from the official GitHub API (`api.github.com`) for the project&#x27;s own repository (`google/material-design-icons`), then performs a `git ls-remote --tags` on the same repo. No local data is sent; the fetched data is only used to construct a version string.  
`_source_main` downloads font files (`.ttf`, `.otf`, `.woff2`) from the official GitHub raw content URL. These are pure data files, not executables.  

No obfuscation, hidden network destinations, eval, base64 decoding, or other malicious patterns are present.  
Checksums are `SKIP`, which is standard for VCS-style packages and does not by itself indicate danger during the fetch step.  

The only network activity is to the package&#x27;s upstream provider. Running `makepkg --nobuild --nodeps --noprepare` and `--printsrcinfo` is safe.
</details>
<evidence></evidence>
<summary>Top-level code only fetches from official upstream repo; no malicious execution.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Top-level code only fetches from official upstream repo; no malicious execution.
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
This PKGBUILD follows standard AUR practices for a VCS/git package. It fetches font files directly from the official Google material-design-icons GitHub repository using raw URLs, which is the expected upstream source. The `sha256sums` are set to `SKIP`, which is required for VCS sources and is not a security issue — it merely means integrity is not verified via checksum, but the sources are pinned to a specific commit hash in the source array. The `_update_version` function calls `curl` against GitHub's API and `git ls-remote` to compute a version string; it does not download or execute any external code, only metadata. No obfuscated code, no backdoors, no exfiltration, and no unexpected network destinations are present. All operations are consistent with the stated purpose of packaging Google's Material Design icons.
</details>
<evidence></evidence>
<summary>Standard AUR PKGBUILD for Material Design icons; no malicious behavior.</summary>
</security_assessment>

[1/3] Reviewing .SRCINFO, .gitignore...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD for Material Design icons; no malicious behavior.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard .SRCINFO metadata file for an AUR package. It defines font sources from the official Google Material Design Icons GitHub repository. All checksums are set to `SKIP`, which is normal for VCS/git packages where the source tracks a moving branch (`refs/heads/master`). There are no commands, no executable code, no network requests outside the package's genuine upstream, and no obfuscation. The file contains only package metadata (dependencies, conflicts, provides) and source URLs pointing to the project's own repository. No supply-chain attack indicators are present.
</details>
<evidence></evidence>
<summary>Standard AUR metadata, no malicious content.</summary>
</security_assessment>

[2/3] Reviewing .gitignore...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata, no malicious content.
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard `.gitignore` used to limit version control to the essential AUR packaging files (`PKGBUILD`, `.SRCINFO`, and `.gitignore` itself). It contains no code, no commands, no network operations, and no file modifications. This is a routine and benign AUR repository practice. There are no security concerns.
</details>
<evidence>
</evidence>
<summary>
Standard .gitignore with no malicious or dangerous content.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore with no malicious or dangerous content.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 12,644
  Completion Tokens: 3,772
  Total Tokens: 16,416
  Total Cost: $0.001679
  Execution Time: 51.76 seconds

Final Status: SAFE


No issues found.
