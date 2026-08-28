---
package: ttf-material-icons-git
pkgbase: material-symbols-git
pkgver: 4.0.0.r169.g84ccef28
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 3e318911529c43138ec6bdba0bfcb56907607021
prompt_tokens: 12644
completion_tokens: 6097
total_tokens: 18741
cost: 0.0021559384
execution_time: 101.53
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: ok
upstream_files: 11
upstream_named_files: 0
unpinned_sources: 11
date: 2026-08-28T19:14:29Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard .gitignore for AUR repo, no security concerns.
  - file: .SRCINFO
    status: safe
    summary: Standard .SRCINFO with upstream sources, no malicious content.
  - file: PKGBUILD
    status: safe
    summary: No malicious behavior; official upstream font fetches and routine package installation only.
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
The PKGBUILD sources and executes `_update_version` and `_source_main` at top level during `makepkg --nobuild --nodeps --noprepare`. `_update_version` uses `curl` to query GitHub's API and `git ls-remote` to fetch commit/tag information from the package's own upstream repository (`google/material-design-icons`). It computes a version string from the responses but never executes fetched content. `_source_main` constructs source URLs pointing to raw font files on the same upstream repository and downloads them. No code is fetched from untrusted sources; all network destinations are the official upstream. No obfuscation, hidden exfiltration, or execution of downloaded payloads occurs during either function. The buggy use of an undefined variable (`$commit_history`) is a packaging mistake, not a security issue. Therefore, running the requested commands is safe.
</details>
<evidence>
</evidence>
<summary>Top-level code fetches version info and sources from upstream only; no malicious behavior.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Top-level code fetches version info and sources from upstream only; no malicious behavior.
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
This file is a standard `.gitignore` used in AUR Git repositories. It ignores all files (`*`) and then un-ignores (`!`) the essential packaging files: `PKGBUILD`, `.SRCINFO`, and the `.gitignore` itself. There is no code execution, network requests, or any suspicious operations. It is purely a configuration file for version control and poses no security risk.
</details>
<evidence></evidence>
<summary>Standard .gitignore for AUR repo, no security concerns.</summary>
</security_assessment>

[1/3] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore for AUR repo, no security concerns.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard .SRCINFO file for an AUR package that downloads Google Material Design icon fonts directly from the official GitHub repository. All sources point to the upstream project's own raw files (github.com/google/material-design-icons). The checksums are set to SKIP, which is normal and expected for raw file sources tracked from a live branch — this is a trust/hygiene consideration, not evidence of malware. The file contains no executable code, no obfuscation, no external URLs beyond the official upstream, and no operations that could exfiltrate data or install backdoors. It is purely metadata describing the package structure.
</details>
<evidence>

</evidence>
<summary>Standard .SRCINFO with upstream sources, no malicious content.</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard .SRCINFO with upstream sources, no malicious content.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD downloads font assets from the official google/material-design-icons GitHub repository and installs them into `$pkgdir/usr/share/fonts`. All network operations — GitHub raw file downloads, GitHub API queries, and `git ls-remote` — target the package&#39;s declared upstream. The API responses are parsed only to compute a version string; no downloaded content is executed. There is no use of `eval`, base64, obfuscation, writes outside `$pkgdir`, credential access, or data exfiltration. The undefined `$commit_history` variable is a harmless bug and does not introduce malicious behavior.

The only caveats are hygiene concerns: `sha256sums` are `SKIP` and font binaries are fetched from a mutable `master` branch. For a `-git` style AUR package this is not evidence of malice and is consistent with ordinary, if imperfect, packaging practice.
</details>
<evidence></evidence>
<summary>
No malicious behavior; official upstream font fetches and routine package installation only.
</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- No malicious behavior; official upstream font fetches and routine package installation only.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 12,644
  Completion Tokens: 6,097
  Total Tokens: 18,741
  Total Cost: $0.002156
  Execution Time: 101.53 seconds

Final Status: SAFE


No issues found.
