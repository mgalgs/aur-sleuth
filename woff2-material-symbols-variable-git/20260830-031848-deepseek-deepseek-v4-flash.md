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
completion_tokens: 3072
total_tokens: 15657
cost: 0.00151555068
execution_time: 391.54
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: ok
upstream_files: 11
upstream_named_files: 0
unpinned_sources: 11
date: 2026-08-30T03:18:47Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard AUR gitignore, no security concerns.
  - file: .SRCINFO
    status: safe
    summary: Safe, standard AUR metadata file.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR VCS package; no malicious code found.
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
The PKGBUILD's top-level execution (which runs during `makepkg --nobuild --nodeps --noprepare`) performs two main actions: calling `_update_version` and `_source_main`.  

`_update_version` makes HTTP requests to the official GitHub API (`api.github.com`) and runs `git ls-remote --tags` against the package's upstream repository. These are standard operations for a -git package to compute an updated version string. The responses are parsed with `grep`/`sed` to extract commit hashes and tag numbers; no downloaded content is executed.  

`_source_main` builds the `source` array with URLs pointing to `raw.githubusercontent.com/google/material-design-icons/...` (the official project repository). All checksums are set to `SKIP`, which is expected for VCS sources and not a security concern for this narrow gate.  

No `eval`, `base64`, `curl|bash`, obfuscated commands, or downloads from unexpected hosts are present. The `prepare()`/`build()`/`package()` functions are not executed during this step. Therefore, running the requested commands is safe.  
</details>
<evidence></evidence>
<summary>Safe: only standard upstream API calls and source definitions.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Safe: only standard upstream API calls and source definitions.
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
The `.gitignore` file contains only standard gitignore patterns that are typical for AUR Git repositories. It ignores all files except the essential packaging files (`PKGBUILD`, `.SRCINFO`, and the `.gitignore` itself). There is no executable code, no network requests, no obfuscation, and no deviation from normal packaging practices. This file poses no security risk.
</details>
<evidence></evidence>
<summary>Standard AUR gitignore, no security concerns.</summary>
</security_assessment>

[1/3] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed .gitignore. Status: SAFE -- Standard AUR gitignore, no security concerns.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The `.SRCINFO` file is standard AUR metadata that declares package sources from the official Google material-design-icons GitHub repository. All source URLs point to the upstream project's master branch on github.com. The `sha256sums = SKIP` entries are normal for VCS-style packages or when using versioned filenames that change with every commit. There are no commands, no obfuscated code, no unexpected network destinations, and no system modification operations. This file contains only declarative metadata and poses no security threat.
</details>
<evidence></evidence>
<summary>Safe, standard AUR metadata file.</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Safe, standard AUR metadata file.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a standard VCS package for Google&#x27;s Material Design Icons. It fetches font files directly from the official GitHub repository (google/material-design-icons) via `curl` and `git ls-remote`, which is normal for `-git` packages that auto-update. The `_update_version()` function queries the GitHub API and remote tags to compute a version string; it does **not** execute any code from the response. Checksums are `SKIP`, which is expected for VCS sources and not a security red flag. There is no obfuscated code, no use of `eval`, `base64`, or any other dangerous commands. The build and package functions install font files into standard system paths without tampering with unrelated files. A minor bug exists (`$_pkgname` is undefined in `package_ttf-material-icons-git`), but this is a packaging oversight, not malicious behavior. No evidence of exfiltration, backdoors, or supply-chain injection was found.
</details>
<evidence>

</evidence>
<summary>Standard AUR VCS package; no malicious code found.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR VCS package; no malicious code found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 12,585
  Completion Tokens: 3,072
  Total Tokens: 15,657
  Total Cost: $0.001516
  Execution Time: 391.54 seconds

Final Status: SAFE


No issues found.
