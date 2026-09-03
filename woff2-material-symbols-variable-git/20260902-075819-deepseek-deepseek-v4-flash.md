---
package: woff2-material-symbols-variable-git
pkgbase: material-symbols-git
pkgver: 4.0.0.r169.g84ccef28
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: b9e20f728bbe0de1871ebaca31738c802edc31f8
prompt_tokens: 12585
completion_tokens: 2657
total_tokens: 15242
cost: 0.001585958794
execution_time: 166.01
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: ok
upstream_files: 11
upstream_named_files: 0
unpinned_sources: 11
injection_attempts: 0
date: 2026-09-02T07:58:15Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard .SRCINFO for VCS font package, no malicious content.
  - file: PKGBUILD
    status: safe
    summary: Standard font package, no malicious behavior detected.
  - file: .gitignore
    status: safe
    summary: Standard AUR .gitignore, no security issues.
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
The global scope of this PKGBUILD calls `_update_version()`, which makes network requests to GitHub's API (`api.github.com`) and performs `git ls-remote --tags` against the official upstream repository. This is a standard version auto-detection pattern used by many AUR `-git` packages and does not exfiltrate data or download/execute untrusted code. The `_source_main()` function constructs source URLs pointing to the same upstream repository for font files. No obfuscation, `eval`, base64, or suspicious commands are present. `makepkg --nobuild --nodeps --noprepare` will only source the PKGBUILD (running global scope and `pkgver()`) and download the source files; no malicious code executes during these steps. The `prepare()`, `build()`, and `package()` functions are out of scope for this gate.
</details>
<evidence></evidence>
<summary>Safe for source fetch and sourcing</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Safe for source fetch and sourcing
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
This .SRCINFO file is standard metadata for an AUR VCS package (`-git`). It declares font sources from the official Google material-design-icons GitHub repository. All SHA-256 checksums are set to `SKIP`, which is normal and expected for VCS-based packages where the source is a raw file from a git branch rather than a fixed release tarball. There is no obfuscated code, no commands, no network requests to unexpected hosts, and no execution of downloaded content beyond what is typical for a font packaging PKGBUILD. The file contains only declarative metadata — no scripts or logic. No security issues are present.
</details>
<evidence></evidence>
<summary>Standard .SRCINFO for VCS font package, no malicious content.</summary>
</security_assessment>

[1/3] Reviewing .gitignore, PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard .SRCINFO for VCS font package, no malicious content.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard AUR packaging practices for a VCS (-git) font package. It downloads font files from the official upstream GitHub repository via raw.githubusercontent.com and installs them into the system font directory. The `_update_version` function uses `curl` to query the GitHub API and `git ls-remote` to compute a dynamic version string—this is a common pattern for auto-updating VCS packages and does not involve executing arbitrary downloaded code. All sources point to the project&#x27;s own GitHub repository, and there is no obfuscation, base64 decoding, `eval`, or network requests to unrelated hosts. A minor scripting bug (using an undefined variable `$commit_history` instead of `$_response`) is present but harmless and does not affect security. No genuinely malicious behavior (data exfiltration, backdoors, credential theft, or execution of untrusted binaries) is found.
</details>
<evidence>
</evidence>
<summary>Standard font package, no malicious behavior detected.</summary>
</security_assessment>

[2/3] Reviewing .gitignore...
+ Reviewed PKGBUILD. Status: SAFE -- Standard font package, no malicious behavior detected.
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.gitignore` file for an AUR package. It ignores all files except the packaging metadata (`PKGBUILD`, `.SRCINFO`, and `.gitignore` itself). There is no executable code, no network requests, no obfuscation, and no system modification. It follows normal packaging practices.
</details>
<evidence></evidence>
<summary>Standard AUR .gitignore, no security issues.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed .gitignore. Status: SAFE -- Standard AUR .gitignore, no security issues.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 12,585
  Completion Tokens: 2,657
  Total Tokens: 15,242
  Total Cost: $0.001586
  Execution Time: 166.01 seconds

Final Status: SAFE


No issues found.
