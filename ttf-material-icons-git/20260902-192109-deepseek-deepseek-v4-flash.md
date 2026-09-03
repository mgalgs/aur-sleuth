---
package: ttf-material-icons-git
pkgbase: material-symbols-git
pkgver: 4.0.0.r169.g84ccef28
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: c6a5a9f6b0e70545bff9fff8802c361e476b0a86
prompt_tokens: 12565
completion_tokens: 3177
total_tokens: 15742
cost: 0.00156006074
execution_time: 138.83
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: ok
upstream_files: 11
upstream_named_files: 0
unpinned_sources: 11
injection_attempts: 0
date: 2026-09-02T19:21:09Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: A clean, standard AUR metadata file.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR -git PKGBUILD; no malicious behavior detected.
  - file: .gitignore
    status: safe
    summary: Standard .gitignore file, no security issues.
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
The top-level code in this PKGBUILD calls `_update_version()` which performs network requests (curl to GitHub API, git ls-remote to the official repository) to determine the latest commit and tag. These requests are to the package's own upstream (`https://github.com/google/material-design-icons`) and are standard practice for VCS packages that auto‑detect versions. The fetched data is only used to construct a version string (`_pkgver`), not to download or execute any payload. No obfuscation, base64 decoding, eval, or suspicious file operations are present. The `source` array entries point to the same upstream GitHub raw content with SKIP checksums, which is expected for VCS‑style packages. There is no code that would exfiltrate data, install backdoors, or execute untrusted payloads during the sourcing phase.
</details>
<evidence></evidence>
<summary>Top-level network requests are to official upstream; no malicious code executes.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Top-level network requests are to official upstream; no malicious code executes.
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
The `.SRCINFO` file is a standard AUR metadata definition for the `material-symbols-git` package. It declares three subpackages (`ttf-material-icons-git`, `ttf-material-symbols-variable-git`, `woff2-material-symbols-variable-git`) and lists sources exclusively from the official Google Material Design Icons repository on GitHub (`github.com/google/material-design-icons`). All SHA-256 checksums are set to `SKIP`, which is normal for VCS-style packages (indicated by the `-git` suffix) and does not constitute a security issue. There is no executable code, no obfuscation, no unexpected network requests, and no file operations beyond what is typical for font packages. The file is purely declarative and contains no malicious content.
</details>
<evidence>
</evidence>
<summary>A clean, standard AUR metadata file.</summary>
</security_assessment>

[1/3] Reviewing .gitignore, PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- A clean, standard AUR metadata file.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard AUR packaging practices for a `-git` package that automatically tracks the latest upstream commits. It fetches font files from the official Google Material Design Icons repository via raw.githubusercontent.com and GitHub API calls—both expected for this type of package.  

- Source URLs point to the project&#x27;s own upstream repository.  
- Checksums are set to `SKIP`, which is normal for VCS/git packages.  
- The `_update_version` function uses `curl` to query GitHub API and `git ls-remote` to determine the latest version—common auto-update behavior.  
- There is no obfuscated code, no `eval`, no base64 decoding, no unexpected network destinations, and no execution of downloaded code (only font files are installed).  

One minor bug exists: `$commit_history` in the `_date` extraction is undefined, making that line a no-op, but it has no security impact.  

No signs of supply-chain injection, exfiltration, or backdoors were found.
</details>
<evidence>
</evidence>
<summary>Standard AUR -git PKGBUILD; no malicious behavior detected.</summary>
</security_assessment>

[2/3] Reviewing .gitignore...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR -git PKGBUILD; no malicious behavior detected.
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard `.gitignore` configuration for an AUR Git repository. It ignores all files except `PKGBUILD`, `.SRCINFO`, and itself. There is no executable code, no network requests, no obfuscation, and no deviation from expected packaging practices. This file poses no security risk.
</details>
<evidence></evidence>
<summary>Standard .gitignore file, no security issues.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore file, no security issues.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 12,565
  Completion Tokens: 3,177
  Total Tokens: 15,742
  Total Cost: $0.001560
  Execution Time: 138.83 seconds

Final Status: SAFE


No issues found.
