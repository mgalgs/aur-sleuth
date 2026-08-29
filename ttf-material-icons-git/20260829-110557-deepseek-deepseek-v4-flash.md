---
package: ttf-material-icons-git
pkgbase: material-symbols-git
pkgver: 4.0.0.r169.g84ccef28
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 3e318911529c43138ec6bdba0bfcb56907607021
prompt_tokens: 12565
completion_tokens: 2691
total_tokens: 15256
cost: 0.00150252284
execution_time: 51.82
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: ok
upstream_files: 11
upstream_named_files: 0
unpinned_sources: 11
date: 2026-08-29T11:05:57Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard .SRCINFO metadata; no malicious content found.
  - file: .gitignore
    status: safe
    summary: Standard .gitignore, no malicious content.
  - file: PKGBUILD
    status: safe
    summary: No malicious behavior; standard AUR packaging practice.
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
The global scope calls `_update_version()` and `_source_main()`. `_update_version` performs `curl` calls to the official GitHub API and `git ls-remote` on the upstream repository to compute a version string; the responses are parsed with `grep`/`sed` but never executed. `_source_main` constructs download URLs for standard font files from the same upstream source. No data is exfiltrated, no code is downloaded and executed, and no obfuscated payloads are present. The `pkgver()` function only echoes a variable. The `--nobuild --noprepare --nodeps` flags ensure `prepare()`, `build()`, and `package()` are not run, so the packaging functions are out of scope for this gate. The operations during sourcing are standard for a VCS package and pose no security risk.
</details>
<evidence></evidence>
<summary>Standard VCS PKGBUILD, safe to source.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Standard VCS PKGBUILD, safe to source.
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
This file is a `.SRCINFO` metadata file for the `material-symbols-git` AUR package. It describes the package sources, checksums, and split packages. All source URLs point to the official Google Material Design Icons repository on GitHub (`github.com/google/material-design-icons`). All `sha256sums` are set to `SKIP`, which is standard practice for VCS (git) packages where checksums are not pinned. There is no executable code, no obfuscation, no unexpected network destinations, and no dangerous commands. The file is purely declarative metadata and does not contain any supply-chain attack indicators.
</details>
<evidence></evidence>
<summary>Standard .SRCINFO metadata; no malicious content found.</summary>
</security_assessment>

[1/3] Reviewing .gitignore, PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard .SRCINFO metadata; no malicious content found.
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This `.gitignore` file is a standard Git ignore configuration. It ignores all files (`*`) except for the package build and source info files (`PKGBUILD`, `.SRCINFO`) and itself (`.gitignore`). This is conventional behavior for AUR package repositories, ensuring only essential files are tracked. No malicious or suspicious content is present.</details>
<evidence></evidence>
<summary>Standard .gitignore, no malicious content.</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore, no malicious content.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD for the `material-symbols-git` package downloads font files directly from Google's official GitHub repository (`github.com/google/material-design-icons`). The `_update_version` function queries the GitHub API to determine the latest commit and tag, also from the same upstream project. All network operations target the package's own upstream source and are typical for a `-git` AUR package. There is no obfuscated code, no execution of fetched scripts, no exfiltration of data, and no operations outside the expected packaging workflow. The use of `SKIP` checksums is standard for VCS packages and is not a security concern. A minor unused variable (`$commit_history`) exists but does not introduce any risk.
</details>
<evidence></evidence>
<summary>No malicious behavior; standard AUR packaging practice.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- No malicious behavior; standard AUR packaging practice.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 12,565
  Completion Tokens: 2,691
  Total Tokens: 15,256
  Total Cost: $0.001503
  Execution Time: 51.82 seconds

Final Status: SAFE


No issues found.
