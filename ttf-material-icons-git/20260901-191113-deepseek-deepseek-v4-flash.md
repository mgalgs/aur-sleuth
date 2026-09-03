---
package: ttf-material-icons-git
pkgbase: material-symbols-git
pkgver: 4.0.0.r169.g84ccef28
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: b9e20f728bbe0de1871ebaca31738c802edc31f8
prompt_tokens: 12565
completion_tokens: 2390
total_tokens: 14955
cost: 0.00127000090
execution_time: 199.65
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: ok
upstream_files: 11
upstream_named_files: 0
unpinned_sources: 11
injection_attempts: 0
date: 2026-09-01T19:11:08Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard .gitignore with no security concerns.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata with legitimate upstream sources.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD with dynamic version detection.
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
This PKGBUILD sources and runs code in global scope and `pkgver()`. The global code calls `_update_version()`, which performs network requests to GitHub API and `git ls-remote` to determine the latest version. These requests are standard for VCS package version detection and do not execute downloaded content — they only parse strings into variables. The function `_source_main()` builds the `source` array from the upstream GitHub repository, which is normal source fetching. All network destinations are the project's own upstream. No obfuscation, eval, or execution of untrusted payloads occurs during sourcing or source fetching. The checksums are set to `'SKIP'`, which is expected for this workflow and not a security issue for this narrow gate. Thus, running `makepkg --nobuild --nodeps --noprepare` or `makepkg --printsrcinfo` is safe.
</details>
<evidence>
</evidence>
<summary>No malicious code executes in global scope or pkgver().</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious code executes in global scope or pkgver().
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
The file is a standard `.gitignore` used in AUR git repositories. It instructs Git to ignore all files except the PKGBUILD, .SRCINFO, and the .gitignore itself. This is a common practice to keep only the necessary packaging files in version control. There is no evidence of malicious behavior, obfuscation, network requests, or system modifications. The file is purely a configuration file for Git and does not contain any executable or dangerous content.
</details>
<evidence>
</evidence>
<summary>Standard .gitignore with no security concerns.</summary>
</security_assessment>

[1/3] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore with no security concerns.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This `.SRCINFO` file is a standard AUR metadata descriptor for a font package. All sources are fetched directly from the official Google Material Design Icons repository on GitHub (`github.com/google/material-design-icons`). There are no unexpected network destinations, no executable code, no obfuscation, and no system modification commands. The use of `SKIP` checksums is normal practice for VCS/git packages. No evidence of malicious or dangerous behavior is present.
</details>
<evidence>
</evidence>
<summary>Standard AUR metadata with legitimate upstream sources.</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata with legitimate upstream sources.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD fetches font files from the official GitHub repository of Google Material Design Icons using HTTPS. It uses `curl` to query the GitHub API and `git ls-remote` to determine the latest version, which is standard for VCS/git-based packages to compute `pkgver`. All package functions simply install font files into the appropriate directories. There is no obfuscated code, no unexpected network destinations, no execution of downloaded scripts, and no exfiltration of local data. The only network activity is querying the official GitHub API and fetching font files from the same upstream repository. The checksums are set to `SKIP`, which is normal for packages that fetch files from a VCS source (raw files here). The behavior is consistent with legitimate AUR packaging practices.</details>
<evidence></evidence>
<summary>Standard AUR PKGBUILD with dynamic version detection.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD with dynamic version detection.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 12,565
  Completion Tokens: 2,390
  Total Tokens: 14,955
  Total Cost: $0.001270
  Execution Time: 199.65 seconds

Final Status: SAFE


No issues found.
