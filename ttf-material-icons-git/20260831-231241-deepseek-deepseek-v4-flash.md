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
completion_tokens: 2627
total_tokens: 15192
cost: 0.00144191348
execution_time: 78.79
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: ok
upstream_files: 11
upstream_named_files: 0
unpinned_sources: 11
injection_attempts: 0
date: 2026-08-31T23:12:40Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata file, no security issues.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR -git package with no malicious behavior.
  - file: .gitignore
    status: safe
    summary: Standard .gitignore for AUR package.
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
The PKGBUILD's top-level code calls `_update_version` and `_source_main` when sourced.  
`_update_version` makes network requests (curl, git ls-remote) to the official GitHub repository of the project (`google/material-design-icons`) to compute the version string. This is standard behavior for a VCS package that auto-updates `pkgver`. The data fetched is used only to set `_pkgver` and is not executed or sourced from an untrusted origin.  
`_source_main` appends entries to the `source` array with `SKIP` checksums and downloads font files from the same upstream repository; this is the expected source definition for a -git package.  
No obfuscation, encoded commands, or exfiltration of local data is present. The `pkgver()` function simply echoes the computed version.  
While the network activity during `makepkg --printsrcinfo` is somewhat unusual for a non-VCS build, it is a normal part of the auto‑versioning design for this AUR package and does not constitute a supply‑chain attack.  
The `prepare()`, `build()`, and `package()` functions are not executed during the requested commands, so their content is out of scope for this gate.

</details>
<evidence></evidence>
<summary>Standard VCS auto‑update; no malicious code executed.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Standard VCS auto‑update; no malicious code executed.
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
This .SRCINFO file contains only standard package metadata for an AUR package that provides Material Design icon fonts. All source URLs point to the official Google Material Design Icons repository on GitHub, which is the legitimate upstream. The use of `refs/heads/master` (a mutable branch) is not ideal for reproducibility, but it is standard practice for VCS-style AUR packages and is not evidence of a supply-chain attack. Checksums are set to SKIP, which is common and expected for packages that fetch from a moving branch. There are no embedded scripts, no network requests to unknown hosts, no obfuscation, no dangerous commands, and no exfiltration behavior. The file is purely declarative and poses no security risk.
</details>
<evidence></evidence>
<summary>Standard AUR metadata file, no security issues.</summary>
</security_assessment>

[1/3] Reviewing .gitignore, PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata file, no security issues.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD is a standard AUR `-git` package that fetches font files directly from the official Google Material Design Icons GitHub repository. The `_source_main` function constructs download URLs from `raw.githubusercontent.com` and the `_update_version` function uses `curl` to query the GitHub API and `git ls-remote` to auto-determine the version. These network operations are expected for an auto-updating VCS package and are directed only at the package’s own upstream (`github.com/google/material-design-icons`). There are no obfuscated commands, no execution of fetched code (only font binary assets are downloaded), and no exfiltration of sensitive data. The SKIP checksums are standard for VCS sources. All operations are consistent with legitimate packaging practices.
</details>
<evidence></evidence>
<summary>Standard AUR -git package with no malicious behavior.</summary>
</security_assessment>

[2/3] Reviewing .gitignore...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR -git package with no malicious behavior.
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
The `.gitignore` file contains only standard ignore patterns for an Arch User Repository (AUR) package. It ignores all files except the essential `PKGBUILD`, `.SRCINFO`, and `.gitignore` itself, which is normal and expected behavior for maintaining an AUR package repository. No obfuscated code, dangerous commands, network requests, or any other malicious indicators are present.</details>
<evidence></evidence>
<summary>Standard .gitignore for AUR package.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore for AUR package.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 12,565
  Completion Tokens: 2,627
  Total Tokens: 15,192
  Total Cost: $0.001442
  Execution Time: 78.79 seconds

Final Status: SAFE


No issues found.
