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
completion_tokens: 2340
total_tokens: 14921
cost: 0.00143542476
execution_time: 202.86
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: ok
upstream_files: 11
upstream_named_files: 0
unpinned_sources: 11
date: 2026-08-29T15:13:25Z
file_verdicts:
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD for upstream font package, no malicious code.
  - file: .gitignore
    status: safe
    summary: Standard AUR .gitignore, no malicious content.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata file; no malicious content.
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
The top-level code executes `_update_version` and `_source_main` when the PKGBUILD is sourced.  
`_update_version` makes HTTP requests to the official GitHub API (`api.github.com/repos/google/material-design-icons/…`) and runs `git ls-remote --tags` against the same upstream repository. This is a standard auto-versioning pattern for VCS packages and does **not** download or execute arbitrary code—it only determines a version string (`_pkgver`).  
`_source_main` constructs the `source` array with URLs pointing to the official Google `material-design-icons` repository on GitHub. All sources are plain font files fetched from the project’s own upstream.  
`pkgver()` simply echoes the already-computed `$_pkgver`.  
There is no obfuscated code, base64 decoding, `eval`, or any command that would execute untrusted payloads during sourcing. The only network operations fetch version metadata or font files from the package’s declared upstream. No exfiltration, backdoor, or dangerous system modification is present.  
Therefore, running `makepkg --nobuild --nodeps --noprepare` and `makepkg --printsrcinfo` is safe.
</details>
<evidence></evidence>
<summary>No malicious code in top-level or pkgver(). Safe to run.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious code in top-level or pkgver(). Safe to run.
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
This PKGBUILD is a standard AUR package for Google Material Design icons. It downloads font files from the project's own upstream GitHub repository (`github.com/google/material-design-icons`) using raw.githubusercontent.com URLs, and uses the GitHub API and `git ls-remote` to determine the latest version for the `-git` variant. All network operations are directed at the official upstream project. No suspicious code, obfuscation, or unexpected system modifications are present. The use of `SKIP` checksums is normal for VCS/git packages. The only minor issue is an unused variable `$commit_history` in `_update_version`, which is a harmless oversight and not malicious.
</details>
<evidence></evidence>
<summary>Standard AUR PKGBUILD for upstream font package, no malicious code.</summary>
</security_assessment>

[1/3] Reviewing .SRCINFO, .gitignore...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD for upstream font package, no malicious code.
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `.gitignore` contains a standard pattern used in AUR package repositories: it ignores all files (`*`) except the essential ones (`PKGBUILD`, `.SRCINFO`, and itself). There is no executable code, network requests, obfuscation, or any other potentially dangerous content. This is a benign configuration file with no security implications.
</details>
<evidence></evidence>
<summary>Standard AUR .gitignore, no malicious content.</summary>
</security_assessment>

[2/3] Reviewing .SRCINFO...
+ Reviewed .gitignore. Status: SAFE -- Standard AUR .gitignore, no malicious content.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This `.SRCINFO` file defines three splits of the `material-symbols-git` package, all sourcing font files directly from the official Google Material Design Icons GitHub repository (`github.com/google/material-design-icons`). The sources are fetched from the master branch via raw.githubusercontent.com, which is the expected upstream for this type of font package. All checksums are set to `SKIP`, a standard practice for VCS-style AUR packages (the `-git` suffix) where the source content is not pinned to a specific commit by hash. There is no obfuscation, no suspicious network destinations, no execution of external code, no data exfiltration, and no deviation from normal packaging metadata. The file is purely declarative and contains no executable instructions. The use of a mutable branch and SKIP checksums is a trust/hygiene concern, not evidence of a supply-chain attack.
</details>
<evidence></evidence>
<summary>Standard AUR metadata file; no malicious content.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata file; no malicious content.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 12,581
  Completion Tokens: 2,340
  Total Tokens: 14,921
  Total Cost: $0.001435
  Execution Time: 202.86 seconds

Final Status: SAFE


No issues found.
