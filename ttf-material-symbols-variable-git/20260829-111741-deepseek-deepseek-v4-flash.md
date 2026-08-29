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
completion_tokens: 2419
total_tokens: 15000
cost: 0.00145831868
execution_time: 46.78
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: ok
upstream_files: 11
upstream_named_files: 0
unpinned_sources: 11
date: 2026-08-29T11:17:41Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard AUR gitignore, no security issues.
  - file: .SRCINFO
    status: safe
    summary: Standard package metadata, no malicious indicators.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR VCS PKGBUILD with no malicious behavior.
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
The PKGBUILD's top-level code calls `_update_version` which makes network requests to `api.github.com` and the upstream `git` remote to determine the latest version.  These are all directed at the package's own upstream repository (`google/material-design-icons`) and are standard practice for VCS packages that auto-update `pkgver`.  The `_source_main` function then adds font source files from the same upstream's raw master branch.  No code executes `eval`, `base64`, `wget`/`curl` to an unexpected host, or any obfuscated commands.  The `sha256sums` are set to `SKIP`, which is normal for VCS packages and is explicitly allowed by the instructions.  When running `makepkg --nobuild --nodeps --noprepare` and `--printsrcinfo`, the only actions are sourcing the PKGBUILD (which runs the top-level network calls) and fetching the declared sources.  No malicious activity is present.
</details>
<evidence></evidence>
<summary>No malicious code; all network ops target upstream.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious code; all network ops target upstream.
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
The file is a standard `.gitignore` used in AUR git repositories. It ignores all files except those essential for the package (`PKGBUILD`, `.SRCINFO`, and `.gitignore`). No commands, network requests, or obfuscated code are present. There is no evidence of malicious behavior.
</details>
<evidence></evidence>
<summary>Standard AUR gitignore, no security issues.</summary>
</security_assessment>

[1/3] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed .gitignore. Status: SAFE -- Standard AUR gitignore, no security issues.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The .SRCINFO file is a metadata file that describes the package sources and dependencies. All source URLs point to the official Google Material Design Icons GitHub repository under the master branch. No suspicious network destinations, obfuscated code, or dangerous commands are present. The checksums are set to SKIP, which is typical for packages tracking upstream at a mutable branch; this is not a security issue in itself.
</details>
<evidence></evidence>
<summary>Standard package metadata, no malicious indicators.</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard package metadata, no malicious indicators.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard AUR packaging practices for a VCS package. It downloads font files directly from the official Google Material Design Icons repository on GitHub using raw.githubusercontent.com and the GitHub API for version detection. All sources point to the upstream project's own URLs. The `_update_version` function uses `curl` against `api.github.com` and `git ls-remote` to dynamically determine the latest commit and tag, which is expected behavior for `-git` packages to track upstream development. Checksums are `SKIP`, which is normal and required for VCS sources. There is no obfuscated code, no execution of downloaded scripts, no exfiltration of local data, no backdoors, and no manipulation of files outside the package installation directory. The only minor note is that `_update_version` references an undefined variable `$commit_history` (likely meant to be `$_response`), but this does not introduce a security risk—it simply may cause an empty `_date` value.
</details>
<evidence></evidence>
<summary>Standard AUR VCS PKGBUILD with no malicious behavior.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR VCS PKGBUILD with no malicious behavior.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 12,581
  Completion Tokens: 2,419
  Total Tokens: 15,000
  Total Cost: $0.001458
  Execution Time: 46.78 seconds

Final Status: SAFE


No issues found.
