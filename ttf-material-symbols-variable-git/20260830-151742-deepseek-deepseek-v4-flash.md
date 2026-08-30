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
completion_tokens: 2646
total_tokens: 15227
cost: 0.00141625652
execution_time: 171.28
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: ok
upstream_files: 11
upstream_named_files: 0
unpinned_sources: 11
date: 2026-08-30T15:17:41Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard .gitignore; no security issues.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR -git PKGBUILD with no malicious behavior found.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR .SRCINFO with no malicious indicators.
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
The PKGBUILD's top-level code and `pkgver()` only perform benign operations:  
- `_source_main()` appends source URLs from the official Google repository to the `source` array (with SKIP checksums). No file execution occurs at this stage; downloads are triggered later by makepkg, and the sources are from the project's own GitHub.  
- `_update_version()` queries the GitHub API (`curl`) and `git ls-remote` to determine the latest commit and tag, then constructs a version string. The HTTP and git requests go to github.com and are read-only; no code is fetched or executed from the response.  
- All other code is inside function definitions (`package_*`, `pkgver`) that are not invoked during `--nobuild --noprepare` sourcing.  

No obfuscated commands, data exfiltration, or execution of untrusted payloads occurs at the global scope. Running `makepkg --nobuild --nodeps --noprepare` and `makepkg --printsrcinfo` is safe.
</details>
<evidence></evidence>
<summary>Top-level code only queries GitHub API and adds official sources.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Top-level code only queries GitHub API and adds official sources.
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
The file is a standard `.gitignore` for an AUR git repository. It ignores all files except the package definition files (`PKGBUILD`, `.SRCINFO`, and itself). There is no executable code, no network requests, no obfuscation, and no deviation from normal packaging practices.
</details>
<evidence></evidence>
<summary>Standard .gitignore; no security issues.</summary>
</security_assessment>

[1/3] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore; no security issues.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard practices for an AUR `-git` package. Sources are fetched directly from the official Google material-design-icons GitHub repository via raw.githubusercontent.com and `git ls-remote`. All network requests target `github.com` (API, raw content, git) — no unexpected or unrelated hosts. The `_update_version()` function uses `curl` and `git` to compute `pkgver` dynamically; this is a common convenience for VCS packages and does not execute any fetched code. There is no obfuscation, no `eval`, no pipe-to-shell, no exfiltration, and no backdoor. The `sha256sums` are `SKIP`, which is standard for VCS sources and not indicative of malice. The only notable issue is an apparent variable typo (`$commit_history` instead of `$_response`) in the date extraction, which would cause the date to be empty but does not introduce a security vulnerability.
</details>
<evidence></evidence>
<summary>Standard AUR -git PKGBUILD with no malicious behavior found.</summary>
</security_assessment>

[2/3] Reviewing .SRCINFO...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR -git PKGBUILD with no malicious behavior found.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The .SRCINFO file is a standard metadata file for an Arch User Repository package. It defines sources that are all fetched from the official Google Material Design Icons repository on GitHub. While the checksums are set to SKIP and the sources track the master branch (unpinned), these are normal practices for VCS-style (-git) packages and do not constitute malicious behavior. There are no suspicious network destinations, no obfuscated code, no dangerous commands, and no evidence of exfiltration or backdoors. The file contains only package metadata and source URLs, all pointing to the expected upstream project.
</details>
<evidence></evidence>
<summary>Standard AUR .SRCINFO with no malicious indicators.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR .SRCINFO with no malicious indicators.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 12,581
  Completion Tokens: 2,646
  Total Tokens: 15,227
  Total Cost: $0.001416
  Execution Time: 171.28 seconds

Final Status: SAFE


No issues found.
