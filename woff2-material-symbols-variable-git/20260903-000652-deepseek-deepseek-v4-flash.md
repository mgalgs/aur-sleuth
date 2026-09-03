---
package: woff2-material-symbols-variable-git
pkgbase: material-symbols-git
pkgver: 4.0.0.r119.gc51274e9
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e1aa01f19251c0ab5d086ae2b4a1ce353c3f844d
prompt_tokens: 12551
completion_tokens: 2299
total_tokens: 14850
cost: 0.001519504294
execution_time: 86.25
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: ok
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 11
injection_attempts: 0
date: 2026-09-03T00:06:51Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: A standard .gitignore file; no security concerns.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR VCS PKGBUILD with no malicious code.
  - file: .SRCINFO
    status: safe
    summary: Package metadata only; no malicious content.
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
The PKGBUILD sources files from the official Google Material Design Icons repository via HTTPS and git. At global scope, the `_update_version` function makes network requests to GitHub's API and the repository itself—this is standard for -git packages that auto-detect the latest version. No data is exfiltrated, no code is downloaded and executed from untrusted sources, and there is no obfuscation or encoding. The `SKIP` checksums are expected for VCS-style raw file sources. All operations are within normal packaging practices for an AUR -git package.
</details>
<evidence></evidence>
<summary>No malicious code in this PKGBUILD.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious code in this PKGBUILD.
Downloading sources...
makepkg --verifysource --nodeps successful
Note: 11 remote source(s) have no checksum (sha256sums=SKIP), so the fetched bytes are not verifiable and can change without any AUR update: MaterialIcons-Regular-4.0.0.r169.g84ccef28.ttf::https://github.com/google/material-design-icons/raw/refs/heads/master/font/MaterialIcons-Regular.ttf, MaterialIconsOutlined-Regular-4.0.0.r169.g84ccef28.otf::https://github.com/google/material-design-icons/raw/refs/heads/master/font/MaterialIconsOutlined-Regular.otf, MaterialIconsRound-Regular-4.0.0.r169.g84ccef28.otf::https://github.com/google/material-design-icons/raw/refs/heads/master/font/MaterialIconsRound-Regular.otf, MaterialIconsSharp-Regular-4.0.0.r169.g84ccef28.otf::https://github.com/google/material-design-icons/raw/refs/heads/master/font/MaterialIconsSharp-Regular.otf, MaterialIconsTwoTone-Regular-4.0.0.r169.g84ccef28.otf::https://github.com/google/material-design-icons/raw/refs/heads/master/font/MaterialIconsTwoTone-Regular.otf, MaterialSymbolsOutlined[FILL,GRAD,opsz,wght]-4.0.0.r169.g84ccef28.ttf::https://github.com/google/material-design-icons/raw/refs/heads/master/variablefont/MaterialSymbolsOutlined%5BFILL,GRAD,opsz,wght%5D.ttf, MaterialSymbolsOutlined[FILL,GRAD,opsz,wght]-4.0.0.r169.g84ccef28.woff2::https://github.com/google/material-design-icons/raw/refs/heads/master/variablefont/MaterialSymbolsOutlined%5BFILL,GRAD,opsz,wght%5D.woff2, MaterialSymbolsRounded[FILL,GRAD,opsz,wght]-4.0.0.r169.g84ccef28.ttf::https://github.com/google/material-design-icons/raw/refs/heads/master/variablefont/MaterialSymbolsRounded%5BFILL,GRAD,opsz,wght%5D.ttf, MaterialSymbolsRounded[FILL,GRAD,opsz,wght]-4.0.0.r169.g84ccef28.woff2::https://github.com/google/material-design-icons/raw/refs/heads/master/variablefont/MaterialSymbolsRounded%5BFILL,GRAD,opsz,wght%5D.woff2, MaterialSymbolsSharp[FILL,GRAD,opsz,wght]-4.0.0.r169.g84ccef28.ttf::https://github.com/google/material-design-icons/raw/refs/heads/master/variablefont/MaterialSymbolsSharp%5BFILL,GRAD,opsz,wght%5D.ttf, MaterialSymbolsSharp[FILL,GRAD,opsz,wght]-4.0.0.r169.g84ccef28.woff2::https://github.com/google/material-design-icons/raw/refs/heads/master/variablefont/MaterialSymbolsSharp%5BFILL,GRAD,opsz,wght%5D.woff2
Reviewing the 3 file(s) in the AUR repository. The 0 downloaded file(s) are upstream content, outside the threat model, and are not read.
Reviewing the AUR repository's files...
[0/3] Reviewing .gitignore...
[0/3] Reviewing .gitignore, PKGBUILD...
[0/3] Reviewing .gitignore, PKGBUILD, .SRCINFO...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard `.gitignore` file used in many AUR git repositories to ignore all files except the PKGBUILD, .SRCINFO, and itself. This is a normal and expected pattern for maintaining a minimal repository. There is no executable code, no network access, no obfuscation, and no system modifications. Nothing in this file poses a security risk.
</details>
<evidence></evidence>
<summary>A standard .gitignore file; no security concerns.</summary>
</security_assessment>

[1/3] Reviewing PKGBUILD, .SRCINFO...
+ Reviewed .gitignore. Status: SAFE -- A standard .gitignore file; no security concerns.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD downloads font files from Google's official GitHub repository (`raw.githubusercontent.com/google/material-design-icons`), which is the declared upstream project. `_update_version()` fetches commit info and tags from GitHub's API and `git ls-remote` solely to compute an accurate `pkgver` — standard practice for VCS/git packages. There is no obfuscated code, no execution of downloaded scripts, no unintended network destinations, and no file operations outside the package's own install directory. A minor bug exists where `$commit_history` is used instead of `$_response` when extracting the date (line `_date=$( echo "$commit_history" | ... )`), but this only causes an empty `_date` variable and does not introduce any security risk. No supply-chain attack indicators are present.
</details>
<evidence></evidence>
<summary>Standard AUR VCS PKGBUILD with no malicious code.</summary>
</security_assessment>

[2/3] Reviewing .SRCINFO...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR VCS PKGBUILD with no malicious code.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.SRCINFO` file for an AUR package. It declares sources from the official Google `material-design-icons` GitHub repository and defines three subpackages (`ttf-material-icons-git`, `ttf-material-symbols-variable-git`, `woff2-material-symbols-variable-git`). All checksums are set to `SKIP`, which is expected for VCS/git sources. There are no commands, scripts, or code of any kind—only package metadata. No unusual or dangerous behavior is present.
</details>
<evidence></evidence>
<summary>Package metadata only; no malicious content.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed .SRCINFO. Status: SAFE -- Package metadata only; no malicious content.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 12,551
  Completion Tokens: 2,299
  Total Tokens: 14,850
  Total Cost: $0.001520
  Execution Time: 86.25 seconds

Final Status: SAFE


No issues found.
