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
completion_tokens: 2522
total_tokens: 15087
cost: 0.00150627386
execution_time: 338.99
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: ok
upstream_files: 11
upstream_named_files: 0
unpinned_sources: 11
injection_attempts: 0
date: 2026-09-02T15:15:40Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Safe declarative metadata for font package.
  - file: .gitignore
    status: safe
    summary: Standard .gitignore; no security concerns.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR git package, no malicious content found.
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
The PKGBUILD sources global-scope code that fetches the package version from the upstream GitHub repository via `curl` and `git ls-remote`. This is standard behavior for a `-git` VCS package that automatically updates `pkgver` to the latest commit. The requests go to `github.com` (the package's own upstream) and are used only to compute a version string — no downloaded data is executed. The `_source_main()` function adds static source URLs for font files from the same upstream, all with `SKIP` checksums (normal for VCS and raw file downloads). No code within `pkgver()` or the global scope downloads or runs untrusted payloads, exfiltrates local data, or performs unexpected system modifications. Extraction of the source archives writes files to disk but does not execute them, and `--nobuild`/`--noprepare` prevents any code in `prepare()`, `build()`, or `package()` from running. The gate commands are safe.
</details>
<evidence></evidence>
<summary>No malicious behavior in sourced scope.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious behavior in sourced scope.
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
The .SRCINFO file is a standard AUR metadata file. It declares font file sources from the official Google Material Design Icons repository on GitHub. All checksums are set to SKIP, which is normal for VCS/*-git packages where the source points to a mutable branch (in this case `refs/heads/master`). There is no executable code, no suspicious network destinations, no obfuscation, and no commands that could be invoked. The file is purely declarative and poses no security risk.
</details>
<evidence></evidence>
<summary>Safe declarative metadata for font package.</summary>
</security_assessment>

[1/3] Reviewing .gitignore, PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Safe declarative metadata for font package.
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.gitignore` file used in AUR package repositories. It instructs Git to ignore all files except the `PKGBUILD`, `.SRCINFO`, and itself. There is no executable code, no network requests, no obfuscation, and no dangerous operations. The file serves a purely administrative purpose for version control and does not introduce any security risks.
</details>
<evidence></evidence>
<summary>Standard .gitignore; no security concerns.</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore; no security concerns.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a standard Arch Linux package for Google Material Design icons, fetched from the official GitHub repository. All source URLs point to the project's own upstream (`github.com/google/material-design-icons`). The `_update_version` function uses `curl` to query the GitHub API for version tracking—a common practice for `-git` packages. There is no obfuscated code, no unexpected network destinations, and no execution of downloaded scripts. The only notable issue is a minor bug (using an undefined variable `$commit_history` instead of `$_response`), but this does not introduce any security risk. The file contains no evidence of malicious behavior such as data exfiltration, backdoors, or supply-chain attack vectors.
</details>
<evidence>
</evidence>
<summary>Standard AUR git package, no malicious content found.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR git package, no malicious content found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 12,565
  Completion Tokens: 2,522
  Total Tokens: 15,087
  Total Cost: $0.001506
  Execution Time: 338.99 seconds

Final Status: SAFE


No issues found.
