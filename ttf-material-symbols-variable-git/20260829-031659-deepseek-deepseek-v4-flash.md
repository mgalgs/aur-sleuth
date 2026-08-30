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
completion_tokens: 2818
total_tokens: 15399
cost: 0.00156083256
execution_time: 52.02
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: ok
upstream_files: 11
upstream_named_files: 0
unpinned_sources: 11
date: 2026-08-29T03:16:59Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard AUR .gitignore, no security issues.
  - file: .SRCINFO
    status: safe
    summary: Declarative metadata; all sources from official upstream; no malicious content found.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR VCS font package, no malicious content.
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
The top-level code and `pkgver()` do not contain any genuinely malicious behavior. The `_update_version` function makes network requests to the official GitHub API and the project's own repository to derive a version string, which is standard for VCS packages. The `_source_main` function constructs source URLs from the official GitHub repository and adds them with `SKIP` checksums — this is ordinary for AUR -git packages. No obfuscated commands, unexpected downloads, or data exfiltration are present. The `pkgver()` function only echoes a variable. The `makepkg --nobuild --nodeps --noprepare` and `makepkg --printsrcinfo` commands will safely fetch the sources and parse the PKGBUILD without executing any dangerous code.
</details>
<evidence>
</evidence>
<summary>Standard AUR VCS package with no malicious code in top-level or pkgver().</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Standard AUR VCS package with no malicious code in top-level or pkgver().
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
This is a standard `.gitignore` file for an AUR Git repository. It ignores all files except the essential package files (`PKGBUILD`, `.SRCINFO`, and the `.gitignore` itself). There is no evidence of malicious code, network requests, obfuscation, or any dangerous operations. The file is benign and follows normal AUR packaging practices.</details>
<evidence></evidence>
<summary>Standard AUR .gitignore, no security issues.</summary>
</security_assessment>

[1/3] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed .gitignore. Status: SAFE -- Standard AUR .gitignore, no security issues.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This .SRCINFO file is standard AUR package metadata for `material-symbols-git`. All source URLs point to the official Google Material Design Icons repository on GitHub under `/var/lib/github.com/google/material-design-icons/raw/refs/heads/master/`. The downloads are font files (TTF, OTF, WOFF2) used for the package's intended purpose. Checksums are set to SKIP, which is common for VCS-based or directly fetched upstream files and does not indicate malice. There are no obfuscated commands, suspicious network destinations, or any code execution instructions. The file is purely declarative and poses no supply-chain risk.
</details>
<evidence>
</evidence>
<summary>
Declarative metadata; all sources from official upstream; no malicious content found.</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Declarative metadata; all sources from official upstream; no malicious content found.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD defines a VCS (git) package for Google's Material Design Icons. All sources are fetched directly from the official GitHub repository (`https://github.com/google/material-design-icons`) via HTTPS. The script downloads font files (TTF, OTF, WOFF2) and installs them into standard font directories. The `_update_version` function uses `curl` to query the GitHub API and `git ls-remote` to determine the latest commit and tag — this is a standard, non-malicious pattern for AUR VCS packages that auto-generate a version string.

There is no obfuscated code, no execution of downloaded content, no unexpected file operations, and no data exfiltration. Checksums are set to `SKIP`, which is normal for VCS sources. Minor undefined variable references (e.g., `$commit_history` instead of `$_response`, and `$_pkgname` in one `package_*` function) are scripting bugs without security implications. The package conforms to typical AUR packaging practices and does not exhibit any supply-chain attack indicators.
</details>
<evidence></evidence>
<summary>Standard AUR VCS font package, no malicious content.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR VCS font package, no malicious content.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 12,581
  Completion Tokens: 2,818
  Total Tokens: 15,399
  Total Cost: $0.001561
  Execution Time: 52.02 seconds

Final Status: SAFE


No issues found.
