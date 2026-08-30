---
package: ttf-material-symbols-variable-git
pkgbase: material-symbols-git
pkgver: 4.0.0.r169.g84ccef28
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 3e318911529c43138ec6bdba0bfcb56907607021
prompt_tokens: 12581
completion_tokens: 2494
total_tokens: 15075
cost: 0.00149055396
execution_time: 279.27
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: ok
upstream_files: 11
upstream_named_files: 0
unpinned_sources: 11
date: 2026-08-29T07:14:30Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: A standard .gitignore with no security issues.
  - file: .SRCINFO
    status: safe
    summary: Declarative metadata file with no malicious content.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR font package, no security issues found.
---

ttf-material-symbols-variable-git is built from material-symbols-git
Cloning https://aur.archlinux.org/material-symbols-git.git...
Cloned ttf-material-symbols-variable-git
Analyzing ttf-material-symbols-variable-git AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD only performs standard operations during the source-fetching and PKGBUILD-parsing steps (`makepkg --nobuild --nodeps --noprepare` and `makepkg --printsrcinfo`). The global code calls `_update_version()` which uses `curl` and `git ls-remote` to query the official GitHub API and upstream repository for version information, and then sets `$_pkgver`. This is normal for a VCS/git package and the responses are only parsed with `grep`/`sed`—they are not executed. The `_source_main()` function defines `source` entries that download font files from the project's own repository (`github.com/google/material-design-icons`). No obfuscation, dangerous commands, or unexpected network destinations are present. The `pkgver()` function simply outputs the variable. There is no code that runs `prepare()`, `build()`, or `package()` during the commands in scope. All behavior is consistent with legitimate packaging practices.
</details>
<evidence>
</evidence>
<summary>Safe: only standard PKGBUILD operations and upstream queries.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Safe: only standard PKGBUILD operations and upstream queries.
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
The .gitignore file is a standard Git configuration file used to ignore all files except the specified ones: PKGBUILD, .SRCINFO, and .gitignore itself. This is a common pattern for AUR package repositories to ensure only the essential packaging files are tracked. There is no executable code, network requests, or any other potentially malicious operations. The file is benign and follows normal packaging practices.
</details>
<evidence></evidence>
<summary>A standard .gitignore with no security issues.</summary>
</security_assessment>

[1/3] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed .gitignore. Status: SAFE -- A standard .gitignore with no security issues.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The `.SRCINFO` file is a purely declarative metadata file for the AUR package `material-symbols-git`. It lists source URLs that all point to the official Google Material Design Icons repository on GitHub (`github.com/google/material-design-icons`). All checksums are set to `SKIP`, which is standard practice for packages that track mutable refs (in this case, the `master` branch). While using an unpinned branch is a reproducibility concern, it is not a security threat. The file contains no executable code, no obfuscation, no suspicious network destinations, and no system modifications. There is no evidence of any injected malicious behavior.
</details>
<evidence></evidence>
<summary>Declarative metadata file with no malicious content.</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Declarative metadata file with no malicious content.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a standard packaging script for Google Material Design icons. It downloads font files directly from the official GitHub repository (`github.com/google/material-design-icons`) via raw GitHub URLs and queries the GitHub API to compute a version string for the `-git` package. All network destinations are the project's own upstream, and the commands used (`curl`, `git ls-remote`, `install`, `cp`) are normal for building and installing a font package. No obfuscated code, dangerous encodings, or unexpected system modifications are present. The use of `SKIP` checksums is expected for sources tracked from a mutable branch (here the `master` branch). The only minor oddity is an undefined variable `$commit_history` in `_update_version`, which is a bug but not a security concern. There is no evidence of data exfiltration, backdoors, or malicious behavior.
</details>
<evidence></evidence>
<summary>Standard AUR font package, no security issues found.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR font package, no security issues found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 12,581
  Completion Tokens: 2,494
  Total Tokens: 15,075
  Total Cost: $0.001491
  Execution Time: 279.27 seconds

Final Status: SAFE


No issues found.
