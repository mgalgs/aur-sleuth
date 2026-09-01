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
completion_tokens: 3625
total_tokens: 16190
cost: 0.00160342980
execution_time: 298.38
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: ok
upstream_files: 11
upstream_named_files: 0
unpinned_sources: 11
injection_attempts: 0
date: 2026-09-01T03:17:15Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard AUR gitignore file, no security issues.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata file, all sources from official upstream, no malice.
  - file: PKGBUILD
    status: safe
    summary: "Safe: upstream network fetches, no injected malicious behavior."
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
The PKGBUILD is a standard VCS package for Google material-design-icons font files.  
During the narrow gate (`makepkg --nobuild --nodeps --noprepare` and `makepkg --printsrcinfo`),  
only the global scope and `pkgver()` are executed.  

The top-level code calls `_update_version()` which may query GitHub API and `git ls-remote` to compute a dynamic `pkgver`.  
This is normal AUR VCS behavior (auto-updating version). All network requests target the official GitHub repository  
of the upstream project (`github.com/google/material-design-icons`). No data is exfiltrated and no untrusted code is executed.  

`_source_main()` constructs source URLs pointing to the same official repo (raw GitHub content for font files).  
Checksums are set to `SKIP`; this is standard for AUR and does not introduce risk at this stage  
since the files are merely downloaded and extracted, not executed.  
`pkgver()` simply echoes `$_pkgver`. There is no obfuscation, no use of `eval`, `curl|bash`, or any other dangerous pattern.  
The file is consistent with legitimate packaging practice.
</details>
<evidence></evidence>
<summary>Standard AUR VCS PKGBUILD; no malicious code executes during fetch/source.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Standard AUR VCS PKGBUILD; no malicious code executes during fetch/source.
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
This `.gitignore` file is a standard exclusion list used in AUR git repositories. It ignores all files except `PKGBUILD`, `.SRCINFO`, and `.gitignore` itself. There is no executable code, no network activity, no obfuscation, and no system modification. The file serves only to prevent accidental tracking of non-essential files in the git repository. No security concerns are present.
</details>
<evidence></evidence>
<summary>Standard AUR gitignore file, no security issues.</summary>
</security_assessment>

[1/3] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed .gitignore. Status: SAFE -- Standard AUR gitignore file, no security issues.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The .SRCINFO file is a standard metadata file for an Arch Linux AUR package. It declares three subpackages for Material Design icons by Google, sourcing all font files directly from the official upstream GitHub repository (github.com/google/material-design-icons). All sources are fetched via HTTPS from the project&#39;s own repository, which is expected and legitimate. The SHA256 sums are set to SKIP, which is typical for VCS (-git) packages where the source is not a fixed release archive but a mutable pointer; this is not a security issue. No obfuscated code, suspicious network destinations, unexpected file operations, or dangerous commands are present. The file contains only package metadata (pkgbase, pkgdesc, source URLs, sha256sums, and subpackage definitions) and does not execute any code or perform any actions during parsing. There is no evidence of supply-chain attack or malicious intent.
</details>
<evidence></evidence>
<summary>Standard AUR metadata file, all sources from official upstream, no malice.</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata file, all sources from official upstream, no malice.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a standard AUR -git package for Google Material Design icons. It dynamically generates the source array by fetching font files directly from the official Google GitHub repository (raw.githubusercontent.com). The version function queries the GitHub API and uses `git ls-remote` to determine the latest tag and commit count relative to the variable font directory. While these network requests execute at top-level sourcing time (not just during build), they are directed exclusively at the project's own upstream repository and do not download or execute any arbitrary code. No obfuscated commands, base64 decoding, eval, unexpected file operations, or exfiltration attempts are present. The use of `SKIP` checksums and unpinned HTTP sources is a trust/hygiene concern but does not constitute genuine malicious behavior. All installation steps are limited to placing font files into the proper system directories.
</details>
<evidence></evidence>
<summary>Safe: upstream network fetches, no injected malicious behavior.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Safe: upstream network fetches, no injected malicious behavior.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 12,565
  Completion Tokens: 3,625
  Total Tokens: 16,190
  Total Cost: $0.001603
  Execution Time: 298.38 seconds

Final Status: SAFE


No issues found.
