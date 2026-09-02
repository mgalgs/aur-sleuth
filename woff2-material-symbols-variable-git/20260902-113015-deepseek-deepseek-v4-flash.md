---
package: woff2-material-symbols-variable-git
pkgbase: material-symbols-git
pkgver: 4.0.0.r169.g84ccef28
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: b9e20f728bbe0de1871ebaca31738c802edc31f8
prompt_tokens: 12664
completion_tokens: 2311
total_tokens: 14975
cost: 0.001531643316
execution_time: 117.9
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: ok
upstream_files: 11
upstream_named_files: 0
unpinned_sources: 11
injection_attempts: 0
date: 2026-09-02T11:30:12Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Benign .gitignore file with no security-relevant behavior.
  - file: .SRCINFO
    status: safe
    summary: Standard VCS package metadata, no signs of malice.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR git package, no malicious behavior detected.
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
The PKGBUILD sources files from the official Google material-design-icons GitHub repository via HTTPS, constructs a dynamic source array with raw file URLs, and calls `_update_version()` at top-level to determine the package version from the same upstream repository. All network requests (curl to api.github.com, git ls-remote to the upstream repo) are legitimate version-querying operations typical for VCS packages. No obfuscated code, evals, unexpected downloads, or exfiltration is present. The `sha256sums` are set to `SKIP`, which is standard for dynamically-determined sources and not a safety concern for this gate. The `pkgver()` function simply echoes a variable set earlier. No code in the top-level scope or `pkgver()` executes any untrusted payload or performs malicious actions.
</details>
<evidence></evidence>
<summary>Standard AUR VCS PKGBUILD fetching upstream sources.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Standard AUR VCS PKGBUILD fetching upstream sources.
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
This is a standard `.gitignore` file for an AUR Git repository. It ignores all files except `PKGBUILD`, `.SRCINFO`, and the `.gitignore` itself, which is a conventional way to keep only the necessary packaging metadata in the repository. There is no suspicious content, no network activity, no code execution, and no obfuscation. The file presents no security risk.
</details>
<evidence>
</evidence>
<summary>
Benign .gitignore file with no security-relevant behavior.</summary>
</security_assessment>

[1/3] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed .gitignore. Status: SAFE -- Benign .gitignore file with no security-relevant behavior.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.SRCINFO` file for an AUR `-git` package that fetches Material Design icons directly from the official upstream GitHub repository. All sources use `refs/heads/master`, which is expected for a VCS package. Checksums are `SKIP` as required for VCS sources. There are no embedded commands, no obfuscation, no unexpected network destinations, and no operations beyond declaring sources and package splits. No supply-chain attack indicators present.
</details>
<evidence></evidence>
<summary>Standard VCS package metadata, no signs of malice.</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard VCS package metadata, no signs of malice.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard AUR VCS packaging practices. All source downloads come from the official upstream repository `github.com/google/material-design-icons` over HTTPS. The `_update_version` function fetches metadata from GitHub's API and uses `git ls-remote` to determine the latest version, which is normal for a -git package. No obfuscated code, dangerous commands (eval, base64, curl|bash), or unexpected network destinations are present. The only notable issue is a variable name typo (`$commit_history` instead of `$_response` in the date extraction) and an undefined `$_pkgname` in one install line, but these are coding bugs, not security threats. No supply-chain attack indicators found.
</details>
<evidence></evidence>
<summary>Standard AUR git package, no malicious behavior detected.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR git package, no malicious behavior detected.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 12,664
  Completion Tokens: 2,311
  Total Tokens: 14,975
  Total Cost: $0.001532
  Execution Time: 117.90 seconds

Final Status: SAFE


No issues found.
