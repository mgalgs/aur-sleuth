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
completion_tokens: 2705
total_tokens: 15290
cost: 0.00152165720
execution_time: 78.52
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: ok
upstream_files: 11
upstream_named_files: 0
unpinned_sources: 11
date: 2026-08-29T07:15:56Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Benign .gitignore with no security concerns.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD for Material Icons; no malicious code found.
  - file: .SRCINFO
    status: safe
    summary: Standard .SRCINFO metadata; no malicious content.
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
The global scope invokes `_update_version()` which makes network calls to `api.github.com` and `git ls-remote` to the package's own upstream repository (`github.com/google/material-design-icons`). These calls only retrieve commit metadata and tags for version detection — a normal pattern for `-git` packages in the AUR. No code is downloaded or executed from these requests; only JSON text is fetched and parsed. `_source_main()` adds source entries pointing to raw files from the same official repository. All operations are standard for a VCS package and do not execute any payloads, exfiltrate data, or modify system state beyond what `makepkg` itself does during source fetching. The `--nobuild` and `--noprepare` flags prevent any build/package functions from running.
</details>
<evidence></evidence>
<summary>Standard AUR -git package with no malicious behavior.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Standard AUR -git package with no malicious behavior.
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
This is a standard `.gitignore` file that ignores all files except `PKGBUILD`, `.SRCINFO`, and `.gitignore`. It contains no executable code, no network requests, no obfuscation, and no instructions that could lead to a supply-chain attack. It is purely a version-control configuration file and poses no security risk.
</details>
<evidence></evidence>
<summary>Benign .gitignore with no security concerns.</summary>
</security_assessment>

[1/3] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed .gitignore. Status: SAFE -- Benign .gitignore with no security concerns.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD downloads font files from the official upstream GitHub repository (`github.com/google/material-design-icons`). The `_update_version` function uses `curl` to query the GitHub API for commit hashes and tags, which is a standard pattern for VCS-style AUR packages to auto-generate the version string. All network requests target the official project's domain. There are no downloads from unexpected hosts, no execution of fetched code, no obfuscated commands, and no exfiltration of local data. The `sha256sums` are set to `SKIP`, which is required for VCS sources and is not a security issue. The file follows normal AUR packaging practices for a `-git` package.
</details>
<evidence></evidence>
<summary>Standard AUR PKGBUILD for Material Icons; no malicious code found.</summary>
</security_assessment>

[2/3] Reviewing .SRCINFO...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD for Material Icons; no malicious code found.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard .SRCINFO file for an AUR package providing Material Design icon fonts. All sources are fetched from the official Google repository (`github.com/google/material-design-icons`) over HTTPS. The file contains no executable code, no obfuscation, no unexpected network requests, and no instructions beyond defining package metadata. The `sha256sums = SKIP` entries are normal for VCS-style packages and do not indicate malice. There are no commands or scripts present—only metadata declarations. The package structure is consistent with typical font packaging practices.
</details>
<evidence></evidence>
<summary>Standard .SRCINFO metadata; no malicious content.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed .SRCINFO. Status: SAFE -- Standard .SRCINFO metadata; no malicious content.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 12,585
  Completion Tokens: 2,705
  Total Tokens: 15,290
  Total Cost: $0.001522
  Execution Time: 78.52 seconds

Final Status: SAFE


No issues found.
