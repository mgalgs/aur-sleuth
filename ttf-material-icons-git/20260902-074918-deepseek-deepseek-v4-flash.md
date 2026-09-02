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
completion_tokens: 2992
total_tokens: 15557
cost: 0.001643552694
execution_time: 557.9
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: ok
upstream_files: 11
upstream_named_files: 0
unpinned_sources: 11
injection_attempts: 0
date: 2026-09-02T07:49:15Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard AUR .gitignore file, no security issues.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata file, no security issues.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD for font package, no security issues.
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
The PKGBUILD is a standard -git AUR package for Material Design icons. Global-scope code calls `_update_version()` and `_source_main()`.  
`_update_version()` makes HTTPS requests to GitHub’s official API and performs `git ls-remote` on the upstream repository to determine the latest version. This is normal for auto-updating -git packages. No fetched data is executed or used outside of version string generation; it only extracts commit hashes and tag numbers.  
`_source_main()` constructs download URLs for font files from the canonical GitHub raw content server, adding them to the `source` array with SKIP checksums — expected behavior for a VCS/AUR package.  
No base64 decoding, obfuscation, data exfiltration, or execution of untrusted code occurs during sourcing or source fetching. The `pkgver()` function simply echoes the version string.  
`makepkg --printsrcinfo` sets the internal `_srcinfo` variable, which skips the network requests, and `makepkg --nobuild` stops before any build/package function.  
Thus, running these commands is safe.
</details>
<evidence></evidence>
<summary>Standard AUR -git package, no malicious code in global scope.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Standard AUR -git package, no malicious code in global scope.
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
This is a standard `.gitignore` file for an AUR package repository. It instructs Git to ignore all files except `PKGBUILD`, `.SRCINFO`, and the `.gitignore` file itself. This is a common and expected practice for maintaining AUR packages in a Git repository to avoid tracking build artifacts or other irrelevant files. There is no malicious content, no network requests, no obfuscated code, and no system modifications. The file is entirely benign.
</details>
<evidence></evidence>
<summary>Standard AUR .gitignore file, no security issues.</summary>
</security_assessment>

[1/3] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed .gitignore. Status: SAFE -- Standard AUR .gitignore file, no security issues.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The .SRCINFO file is a standard AUR metadata file. All sources point to the official Google Material Design Icons repository on GitHub. The checksums are all set to `SKIP`, which is standard practice for VCS/git packages and is not inherently malicious. There is no evidence of obfuscation, network requests to unexpected hosts, or any dangerous operations. The file contains only package metadata and is consistent with normal packaging practices.
</details>
<evidence>
</evidence>
<summary>Standard AUR metadata file, no security issues.</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata file, no security issues.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard AUR packaging practices for a VCS/git package that fetches font files directly from the official Google Material Design Icons repository. The `_source_main` function builds source URLs from `raw.githubusercontent.com` – the project's own upstream – and sets `sha256sums` to `SKIP`, which is required and normal for VCS-style packages. The `_update_version` function queries the GitHub API and `git ls-remote` to derive the package version; these are expected network operations for a `-git` package. There are no obfuscated commands, no execution of fetched code, no exfiltration, and no system modifications beyond installing font files into the package directory. A minor bug is present (`$commit_history` is undefined in the `_date` assignment), but this is a packaging logic error, not a security threat. The file does not contain any supply-chain attack indicators.
</details>
<evidence>

</evidence>
<summary>Standard AUR PKGBUILD for font package, no security issues.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD for font package, no security issues.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 12,565
  Completion Tokens: 2,992
  Total Tokens: 15,557
  Total Cost: $0.001644
  Execution Time: 557.90 seconds

Final Status: SAFE


No issues found.
