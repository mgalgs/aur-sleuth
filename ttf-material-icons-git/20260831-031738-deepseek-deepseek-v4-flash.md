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
completion_tokens: 4120
total_tokens: 16685
cost: 0.001843447830
execution_time: 129.07
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: ok
upstream_files: 11
upstream_named_files: 0
unpinned_sources: 11
date: 2026-08-31T03:17:37Z
file_verdicts:
  - file: PKGBUILD
    status: safe
    summary: Standard AUR git PKGBUILD for Google Material Design icons.
  - file: .gitignore
    status: safe
    summary: Standard .gitignore for AUR packaging files.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata file, no malicious content.
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
The PKGBUILD&#39;s top-level code calls `_update_version` and `_source_main`.  
`_update_version` uses `curl` and `git ls-remote` to query the GitHub API and determine the latest version tag and commit count.  
No downloaded data is executed; it simply sets the `_pkgver` variable.  
`_source_main` constructs the `source` array by appending direct download URLs to font files from the upstream repository (raw.githubusercontent.com).  
These are standard font files; the packages perform no execution of downloaded content at this stage.  
The `pkgver()` function only echoes a variable.  
No obfuscated commands, no code execution from remote sources, and no exfiltration occur when sourcing the PKGBUILD or fetching sources.  
Therefore, running `makepkg --nobuild --nodeps --noprepare` and `makepkg --printsrcinfo` is safe.
</details>
<evidence></evidence>
<summary>Top-level code only fetches metadata; no execution of downloaded content.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Top-level code only fetches metadata; no execution of downloaded content.
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
The PKGBUILD fetches font files directly from Google's official material-design-icons GitHub repository via raw.githubusercontent.com and api.github.com. All network destinations are the project's own upstream. The `_update_version` function runs at PKGBUILD evaluation time (not in `build()`) to auto-detect the latest commit, which is unusual but not malicious — it only retrieves version metadata and constructs source URLs, which remain hardcoded to the upstream raw path. No obfuscated code, no remote code execution, no exfiltration of local data, and no downloads from untrusted hosts are present. The SKIP checksums are a hygiene concern (the sources are not VCS clones) but are explicitly allowed by AUR conventions for -git packages and do not indicate malice. The PKGBUILD also contains harmless bugs (undefined `$_pkgname` variable, missing `$_response` assignment for `$commit_history`), but these are development errors, not supply-chain attacks.
</details>
<evidence></evidence>
<summary>Standard AUR git PKGBUILD for Google Material Design icons.</summary>
</security_assessment>

[1/3] Reviewing .SRCINFO, .gitignore...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR git PKGBUILD for Google Material Design icons.
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.gitignore` file for an AUR package repository. It ignores all files except the essential packaging files (`PKGBUILD`, `.SRCINFO`, and the `.gitignore` itself). There are no commands, network requests, obfuscated code, or any other potentially malicious operations. It is a trivial, benign configuration file.
</details>
<evidence></evidence>
<summary>Standard .gitignore for AUR packaging files.</summary>
</security_assessment>

[2/3] Reviewing .SRCINFO...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore for AUR packaging files.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This .SRCINFO file is a standard Arch Linux package metadata file for the `material-symbols-git` AUR package. All source URLs point to the official Google Material Design Icons repository on GitHub (github.com/google/material-design-icons) and reference standard font files (ttf, otf, woff2). The checksums are all set to "SKIP", which is normal for a VCS (-git) package that tracks a mutable branch. There are no commands, no network requests beyond the declared source URLs, no obfuscation, and no code execution. The file contains only metadata describing the package sources and subpackage relationships. No security issues are present.
</details>
<evidence></evidence>
<summary>Standard AUR metadata file, no malicious content.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata file, no malicious content.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 12,565
  Completion Tokens: 4,120
  Total Tokens: 16,685
  Total Cost: $0.001843
  Execution Time: 129.07 seconds

Final Status: SAFE


No issues found.
