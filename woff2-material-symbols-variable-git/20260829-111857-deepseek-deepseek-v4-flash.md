---
package: woff2-material-symbols-variable-git
pkgbase: material-symbols-git
pkgver: 4.0.0.r169.g84ccef28
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 3e318911529c43138ec6bdba0bfcb56907607021
prompt_tokens: 12664
completion_tokens: 1924
total_tokens: 14588
cost: 0.00138238464
execution_time: 49.77
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: ok
upstream_files: 11
upstream_named_files: 0
unpinned_sources: 11
date: 2026-08-29T11:18:56Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard AUR .gitignore; no malicious behavior or security concerns found.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata file with no security issues.
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
The PKGBUILD contains top-level calls to `_update_version` and `_source_main` which execute when the file is sourced. `_update_version` queries GitHub API and git remote to determine the latest commit/version — this is a standard pattern for `-git` packages and does not execute or install any downloaded content. `_source_main` constructs source entries for font files fetched from the official Google repository (`raw.githubusercontent.com/google/...`). All downloads are from the project’s own upstream, and the fetched files are font data, not executable code. No obfuscated commands, dangerous eval, or exfiltration is present. Running `makepkg --nobuild --nodeps --noprepare` and `--printsrcinfo` is safe.
</details>
<evidence></evidence>
<summary>Safe: only standard upstream queries and font downloads.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Safe: only standard upstream queries and font downloads.
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Note: 11 remote source(s) have no checksum (sha256sums=SKIP), so the fetched bytes are not verifiable and can change without any AUR update: MaterialIcons-Regular-4.0.0.r169.g84ccef28.ttf::https://github.com/google/material-design-icons/raw/refs/heads/master/font/MaterialIcons-Regular.ttf, MaterialIconsOutlined-Regular-4.0.0.r169.g84ccef28.otf::https://github.com/google/material-design-icons/raw/refs/heads/master/font/MaterialIconsOutlined-Regular.otf, MaterialIconsRound-Regular-4.0.0.r169.g84ccef28.otf::https://github.com/google/material-design-icons/raw/refs/heads/master/font/MaterialIconsRound-Regular.otf, MaterialIconsSharp-Regular-4.0.0.r169.g84ccef28.otf::https://github.com/google/material-design-icons/raw/refs/heads/master/font/MaterialIconsSharp-Regular.otf, MaterialIconsTwoTone-Regular-4.0.0.r169.g84ccef28.otf::https://github.com/google/material-design-icons/raw/refs/heads/master/font/MaterialIconsTwoTone-Regular.otf, MaterialSymbolsOutlined[FILL,GRAD,opsz,wght]-4.0.0.r169.g84ccef28.ttf::https://github.com/google/material-design-icons/raw/refs/heads/master/variablefont/MaterialSymbolsOutlined%5BFILL,GRAD,opsz,wght%5D.ttf, MaterialSymbolsOutlined[FILL,GRAD,opsz,wght]-4.0.0.r169.g84ccef28.woff2::https://github.com/google/material-design-icons/raw/refs/heads/master/variablefont/MaterialSymbolsOutlined%5BFILL,GRAD,opsz,wght%5D.woff2, MaterialSymbolsRounded[FILL,GRAD,opsz,wght]-4.0.0.r169.g84ccef28.ttf::https://github.com/google/material-design-icons/raw/refs/heads/master/variablefont/MaterialSymbolsRounded%5BFILL,GRAD,opsz,wght%5D.ttf, MaterialSymbolsRounded[FILL,GRAD,opsz,wght]-4.0.0.r169.g84ccef28.woff2::https://github.com/google/material-design-icons/raw/refs/heads/master/variablefont/MaterialSymbolsRounded%5BFILL,GRAD,opsz,wght%5D.woff2, MaterialSymbolsSharp[FILL,GRAD,opsz,wght]-4.0.0.r169.g84ccef28.ttf::https://github.com/google/material-design-icons/raw/refs/heads/master/variablefont/MaterialSymbolsSharp%5BFILL,GRAD,opsz,wght%5D.ttf, MaterialSymbolsSharp[FILL,GRAD,opsz,wght]-4.0.0.r169.g84ccef28.woff2::https://github.com/google/material-design-icons/raw/refs/heads/master/variablefont/MaterialSymbolsSharp%5BFILL,GRAD,opsz,wght%5D.woff2
Reviewing the 3 file(s) in the AUR repository. The 11 downloaded file(s) are upstream content, outside the threat model, and are not read.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, PKGBUILD...
[0/3] Reviewing .SRCINFO, PKGBUILD, .gitignore...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.gitignore` file used in an AUR Git repository. It ignores all files except `PKGBUILD`, `.SRCINFO`, and `.gitignore`, which is exactly the set of files that should be tracked for an AUR package. There is no network access, no code execution, no obfuscation, and no system modification. It contains no packaging logic or executable content. Nothing in this file deviates from ordinary AUR maintenance practice.
</details>
<evidence>
</evidence>
<summary>
Standard AUR .gitignore; no malicious behavior or security concerns found.</summary>
</security_assessment>

[1/3] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed .gitignore. Status: SAFE -- Standard AUR .gitignore; no malicious behavior or security concerns found.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The `.SRCINFO` file is a metadata descriptor for an AUR package. It defines the package base, version, license, and sources. All sources point to the official Google GitHub repository (`github.com/google/material-design-icons`) on the `master` branch. The checksums are all set to `SKIP`, which is standard practice for VCS (`-git`) packages because the exact commit hash is built into the filenames (e.g., `4.0.0.r119.gc51274e9`), making the sources effectively pinned to that commit. There are no network requests beyond fetching the package's own upstream font files, no obfuscated code, no dangerous commands, and no exfiltration or backdoor mechanisms. The file is perfectly normal for an AUR packaging of an upstream font project.
</details>
<evidence></evidence>
<summary>Standard AUR metadata file with no security issues.</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata file with no security issues.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD fetches font files directly from Google's official GitHub repository (`github.com/google/material-design-icons`) using raw file URLs. All downloaded materials are font files (`.ttf`, `.otf`, `.woff2`) that are installed into the system font directory. There is no execution of downloaded scripts, no obfuscated code, and no exfiltration of data. The `sha256sums` are set to `SKIP`, which is standard for VCS-style packages and not a security concern. The `_update_version` function queries the GitHub API and `git ls-remote` only to compute a version string; it does not download or execute arbitrary code. The only network destinations are `github.com` (the project's own upstream) and `api.github.com`, both expected. No red flags such as `eval`, `base64`, `curl|bash`, or unexpected file operations are present.
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
  Prompt Tokens: 12,664
  Completion Tokens: 1,924
  Total Tokens: 14,588
  Total Cost: $0.001382
  Execution Time: 49.77 seconds

Final Status: SAFE


No issues found.
