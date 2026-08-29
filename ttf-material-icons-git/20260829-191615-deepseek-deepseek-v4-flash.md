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
completion_tokens: 4476
total_tokens: 17120
cost: 0.00177778272
execution_time: 43.19
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: ok
upstream_files: 11
upstream_named_files: 0
unpinned_sources: 11
date: 2026-08-29T19:16:15Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard .gitignore file with no security issues.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata file, no security issues.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR VCS PKGBUILD with no malicious behavior.
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
Running `makepkg --nobuild --nodeps --noprepare` or `makepkg --printsrcinfo` sources the PKGBUILD and executes its top-level code and `pkgver()`. The active top-level logic is `_update_version` followed by `_source_main`. `_update_version` makes HTTPS requests to `api.github.com` for the same repository named in `url` and runs `git ls-remote --tags` against that upstream; it parses text and constructs `_pkgver`. No fetched content is executed, no `eval` or obfuscation is used, and no local data is exfiltrated.

`_source_main` only appends font file URLs from `github.com/google/material-design-icons` to the `source` array with `sha256sums=SKIP`. Downloading and extracting unverified sources is exactly what this gate is designed to allow; SKIP checksums and unpinned `master` refs are not grounds for an UNSAFE decision here. The `prepare()`, `build()`, and `package()` functions are not executed during these commands, so their contents are out of scope for this narrow gate.
</details>
<evidence>
</evidence>
<summary>
Top-level code only fetches upstream metadata and font sources; no malicious execution.
</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Top-level code only fetches upstream metadata and font sources; no malicious execution.
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
This file is a standard `.gitignore` file used to control which files are tracked by Git. It only allows `PKGBUILD`, `.SRCINFO`, and itself to be tracked. There is no executable code, network requests, file operations, or any other dangerous behavior. It is a routine part of AUR package maintenance and poses no security risk.
</details>
<evidence>
</evidence>
<summary>Standard .gitignore file with no security issues.</summary>
</security_assessment>

[1/3] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore file with no security issues.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.SRCINFO` metadata file for an AUR VCS (git) package. It declares sources pointing to the official Google Material Design Icons repository on GitHub, all using `https://` URLs. All checksums are `SKIP`, which is normal and expected for VCS packages where the source is a live branch. There are no executable commands, no obfuscated code, no unexpected network calls, and no backdoors. The file simply defines package metadata and subpackage splits for font files.
</details>
<evidence></evidence>
<summary>Standard AUR metadata file, no security issues.</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata file, no security issues.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD is a standard VCS (VCS) package for the `material-symbols-git` package. It downloads font files from Google's official GitHub repository (`https://github.com/google/material-design-icons/raw/refs/heads/master/...`). The `_update_version` function uses `curl` to query the GitHub API and `git ls-remote` to determine the latest commit and tag, then constructs a version string. This is normal and expected behavior for an AUR `-git` package.  

All `sha256sums` are set to `SKIP`, which is required for VCS sources and is not a security issue. There are no obfuscated commands, no unexpected network destinations (all requests go to GitHub), no dangerous operations like `eval`, `base64` decoding, or arbitrary file modifications outside the package scope. The file follows standard packaging practices and contains no evidence of malicious code.
</details>
<evidence></evidence>
<summary>Standard AUR VCS PKGBUILD with no malicious behavior.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR VCS PKGBUILD with no malicious behavior.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 12,644
  Completion Tokens: 4,476
  Total Tokens: 17,120
  Total Cost: $0.001778
  Execution Time: 43.19 seconds

Final Status: SAFE


No issues found.
