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
completion_tokens: 2778
total_tokens: 15363
cost: 0.00156955932
execution_time: 133.21
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: ok
upstream_files: 11
upstream_named_files: 0
unpinned_sources: 11
date: 2026-08-28T23:22:31Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata file; no malicious content found.
  - file: PKGBUILD
    status: safe
    summary: Legitimate font package from official upstream source.
  - file: .gitignore
    status: safe
    summary: Standard .gitignore file, no security risk.
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
The PKGBUILD performs several operations in its top-level scope: setting variables, defining helper functions, and then calling `_update_version` and `_source_main`. Both functions exclusively interact with the package's official upstream repository (`github.com/google/material-design-icons`) — `_update_version` queries the GitHub API to derive a dynamic version string, and `_source_main` constructs download URLs for font files from the same repository. No code is fetched or executed from an unexpected domain; the downloaded font files (`.ttf`, `.woff2`, `.otf`) are binary assets and are not executed by `makepkg --nobuild --nodeps --noprepare`. The `pkgver()` function simply echoes the precomputed `$_pkgver`. None of these operations constitute a supply-chain attack or execute malicious payloads during this narrow gate (source fetch and PKGBUILD evaluation phase).
</details>
<evidence>
</evidence>
<summary>Top-level code only queries official GitHub; safe.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Top-level code only queries official GitHub; safe.
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
The .SRCINFO file is a metadata-only file for the Arch User Repository (AUR) package `material-symbols-git`. It declares source URLs that all point to the official Google `material-design-icons` repository on GitHub (`raw.githubusercontent.com/google/material-design-icons/`). All checksums are set to `SKIP`, which is standard practice for VCS-based AUR packages (the `-git` suffix indicates this) and is not malicious. The sources use the `master` branch rather than a pinned commit, making them mutable — this is a reproducibility/hygiene concern, but it does not constitute a supply-chain attack. There is no obfuscated code, no encoded payloads, no execution of downloaded content, and no references to unauthorized external hosts. The file simply defines package metadata and sources for font files.
</details>
<evidence></evidence>
<summary>Standard AUR metadata file; no malicious content found.</summary>
</security_assessment>

[1/3] Reviewing .gitignore, PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata file; no malicious content found.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD downloads font files directly from Google's official GitHub repository (`github.com/google/material-design-icons`). All source URLs point to the project's own raw content, and the version detection uses standard GitHub API calls and `git ls-remote` to determine the latest tag and commit distance. There is no execution of downloaded content, no obfuscated code, no unexpected network destinations, and no system tampering beyond standard font installation. The use of `SKIP` checksums and the `_update_version` function are both normal for a VCS/git package and do not indicate malice.
</details>
<evidence></evidence>
<summary>Legitimate font package from official upstream source.</summary>
</security_assessment>

[2/3] Reviewing .gitignore...
+ Reviewed PKGBUILD. Status: SAFE -- Legitimate font package from official upstream source.
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard `.gitignore` used in Git repositories to exclude all files except the package metadata files (`PKGBUILD`, `.SRCINFO`, and itself). It contains no executable code, no network requests, no obfuscation, and no system modifications. It is a normal configuration file for version control and poses no security risk.
</details>
<evidence></evidence>
<summary>Standard .gitignore file, no security risk.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore file, no security risk.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 12,585
  Completion Tokens: 2,778
  Total Tokens: 15,363
  Total Cost: $0.001570
  Execution Time: 133.21 seconds

Final Status: SAFE


No issues found.
