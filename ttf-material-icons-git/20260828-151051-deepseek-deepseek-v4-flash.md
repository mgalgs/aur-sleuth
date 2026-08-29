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
completion_tokens: 3055
total_tokens: 15620
cost: 0.0016209900
execution_time: 88.42
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: ok
upstream_files: 11
upstream_named_files: 0
unpinned_sources: 11
date: 2026-08-28T15:10:50Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard .gitignore file for AUR packaging, no security issues.
  - file: .SRCINFO
    status: safe
    summary: AUR metadata file, all sources from official upstream, no threats.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD; no malicious behavior detected.
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
Running `makepkg --nobuild --nodeps --noprepare` and `makepkg --printsrcinfo` will source the PKGBUILD, which executes top-level code: it calls `_update_version()` and `_source_main()`. `_update_version()` makes HTTPS requests to api.github.com and runs `git ls-remote --tags` on the package's own upstream GitHub repository. These requests fetch version-identification data (commit hash, tag, behind-by count) and do not download or execute any code. The fetched strings are only used to set `_pkgver`. `_source_main()` populates the `source` and `sha256sums` arrays with URL entries pointing to the upstream GitHub raw content (font files). All sources are from the package's official upstream, and no code from those downloads is executed during this step (they are merely fetched for later auditing). No obfuscated commands, eval, base64, or unknown hosts appear. The only subtle bug is the use of an undefined variable `$commit_history`, but that does not introduce a security risk. Therefore, this pre-audit gate is safe.
</details>
<evidence></evidence>
<summary>Version checks and sources are from official upstream.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Version checks and sources are from official upstream.
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
The `.gitignore` file is a standard Git configuration file that instructs Git to ignore all files except `PKGBUILD`, `.SRCINFO`, and itself. This is standard practice for AUR git packages to track only the essential packaging files. No malicious or unusual behavior is present.
</details>
<evidence></evidence>
<summary>Standard .gitignore file for AUR packaging, no security issues.</summary>
</security_assessment>

[1/3] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore file for AUR packaging, no security issues.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The `.SRCINFO` file is a declarative metadata file for an AUR package. All sources are downloaded from the official `google/material-design-icons` GitHub repository via `raw.githubusercontent.com` over HTTPS. This is the legitimate upstream location for Material Design icons. The `sha256sums` are set to `SKIP`, which is standard and necessary for VCS-type packages (those with `-git` suffix) because the source is a mutable upstream file rather than a fixed release tarball. There is no code execution, no unusual network destinations, no obfuscation, and no attempt to fetch or run external scripts. The file only defines package names, descriptions, licenses, source URLs, and split packages. No security concerns are present.
</details>
<evidence></evidence>
<summary>AUR metadata file, all sources from official upstream, no threats.</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- AUR metadata file, all sources from official upstream, no threats.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is for the `ttf-material-icons-git` AUR package, which builds font packages from Google's official Material Design Icons repository. The sources are fetched from `https://github.com/google/material-design-icons/raw/refs/heads/master` – the legitimate upstream URL. Checksums are set to `SKIP`, which is standard practice for VCS (git) packages and explicitly listed as **not** a reason to mark unsafe.  

The `_update_version` function queries the GitHub API (`api.github.com/repos/google/material-design-icons/...`) and runs `git ls-remote --tags` on the same repo to compute a version string. This is a typical AUR helper pattern for auto-updating `pkgver` on mutable VCS sources. No data is exfiltrated, no code is downloaded from unexpected hosts, and there is no obfuscation. The package functions (`package_*`) install font files into standard system directories under `/usr/share/fonts/`.  

Minor bugs exist (e.g., undefined `$_pkgname` and `$commit_history`), but these are packaging typos, not indicators of malicious intent. The file contains no reverse shells, encoded payloads, credential theft, or any operation outside the scope of building and installing a font package.  
</details>
<evidence></evidence>
<summary>Standard AUR PKGBUILD; no malicious behavior detected.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD; no malicious behavior detected.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 12,565
  Completion Tokens: 3,055
  Total Tokens: 15,620
  Total Cost: $0.001621
  Execution Time: 88.42 seconds

Final Status: SAFE


No issues found.
