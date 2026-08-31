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
completion_tokens: 3058
total_tokens: 15643
cost: 0.00151328492
execution_time: 46.97
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: ok
upstream_files: 11
upstream_named_files: 0
unpinned_sources: 11
injection_attempts: 0
date: 2026-08-31T23:21:37Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata; no malicious content.
  - file: .gitignore
    status: safe
    summary: Standard .gitignore file, no security issues.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR -git PKGBUILD, no malicious behavior.
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
The PKGBUILD's global scope calls `_update_version()` and `_source_main()`. The former makes network requests (curl and git ls-remote) to the official GitHub repository (github.com/google/material-design-icons) to determine the latest commit and tag for versioning. This is standard practice for VCS packages and does not fetch or execute any untrusted code; it only parses JSON and tag output. The latter builds the `source` array with URLs from the same upstream, which is expected. The `pkgver()` function simply echoes a precomputed variable. No obfuscated code, base64, eval, or suspicious downloads are present. The `--nobuild` / `--noprepare` flags ensure that `prepare()`, `build()`, and `package()` are not executed, so any code in those functions is out of scope for this gate. The network requests are benign and do not exfiltrate data or execute remote payloads.
</details>
<evidence></evidence>
<summary>Network requests to upstream, no malicious execution.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Network requests to upstream, no malicious execution.
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
This .SRCINFO file defines an AUR package for Material Design icon fonts. All source URLs point to the official Google `material-design-icons` repository on GitHub, using raw file links from the master branch. This is standard practice for VCS/git packages. The `sha256sums = SKIP` entries are required for VCS sources and are not suspicious in this context. There is no code execution, no obfuscation, no exfiltration, and no deviation from normal packaging metadata. No security issues are present.
</details>
<evidence>
</evidence>
<summary>Standard AUR metadata; no malicious content.</summary>
</security_assessment>

[1/3] Reviewing .gitignore, PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata; no malicious content.
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard `.gitignore` file used in Arch User Repository (AUR) packages. It instructs Git to ignore all files (`*`) except the three explicitly listed: `PKGBUILD`, `.SRCINFO`, and `.gitignore`. This is a normal and expected practice to keep the repository clean and only track the files necessary for the package build. There is no suspicious content, no network requests, no obfuscation, and no commands. It poses no security risk.
</details>
<evidence>
</evidence>
<summary>Standard .gitignore file, no security issues.</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore file, no security issues.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a standard AUR `-git` package for Google's Material Design Icons. It downloads font files directly from the official GitHub repository (raw.githubusercontent.com/google/material-design-icons) and installs them into standard font directories. The `_update_version` function uses the GitHub API and `git ls-remote` to determine the latest commit and tag for versioning, which is normal for VCS packages. All checksums are set to `SKIP` because the sources are fetched from a VCS repository without a pinned commit – this is standard practice for `-git` packages and not a security concern. No obfuscated code, unexpected network requests, or dangerous operations (eval, base64, curl|bash, etc.) are present. The only notable issue is a minor bug: `_date` references an undefined variable `$commit_history`, but it is unused and does not affect security. The behavior is consistent with legitimate packaging.
</details>
<evidence></evidence>
<summary>Standard AUR -git PKGBUILD, no malicious behavior.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR -git PKGBUILD, no malicious behavior.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 12,585
  Completion Tokens: 3,058
  Total Tokens: 15,643
  Total Cost: $0.001513
  Execution Time: 46.97 seconds

Final Status: SAFE


No issues found.
