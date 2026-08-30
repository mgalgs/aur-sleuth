---
package: ttf-material-icons-git
pkgbase: material-symbols-git
pkgver: 4.0.0.r169.g84ccef28
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 3e318911529c43138ec6bdba0bfcb56907607021
prompt_tokens: 12565
completion_tokens: 2862
total_tokens: 15427
cost: 0.00144922036
execution_time: 97.2
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: ok
upstream_files: 11
upstream_named_files: 0
unpinned_sources: 11
date: 2026-08-30T15:14:23Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard .SRCINFO, no malicious content found.
  - file: .gitignore
    status: safe
    summary: Standard .gitignore, no security concerns.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR package; no malicious code found.
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
The global scope of this PKGBUILD performs two actions:  
1. `_update_version` is called: it fetches the latest commit hash and tag from the upstream GitHub repository (api.github.com and the repo itself) using `curl` and `git ls-remote`. The output is parsed with `grep`/`sed` to construct a version string – no code is downloaded and executed. This is standard for an auto-updating VCS package and all network destinations are the official upstream.  
2. `_source_main` is called: it builds the `source` array with URLs pointing to the official Google font files (`.ttf`, `.otf`, `.woff2`) under `raw/refs/heads/master`. The `sha256sums` are all `SKIP`, which is normal for VCS sources and does not introduce executable risk at this gate.  

No obfuscation, no unknown or suspicious hosts, no execution of fetched payloads, and no data exfiltration occur. The commands (`makepkg --nobuild --nodeps --noprepare` and `makepkg --printsrcinfo`) will only fetch and extract these font archives (no execution of extracted files) and run the above global logic, which is benign. Potential concerns in `prepare()`, `build()`, or `package()` are out of scope for this narrow gate.
</details>
<evidence>
</evidence>
<summary>Global code only fetches upstream info and font files; no malice.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Global code only fetches upstream info and font files; no malice.
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
This `.SRCINFO` file is a standard metadata file for an AUR package. It declares sources for Material Design icon fonts from the official Google GitHub repository (github.com/google/material-design-icons). The checksums are all set to `SKIP`, which is a common practice even for non-VCS sources and does not by itself indicate malice. The sources reference the `master` branch directly, which is an unpinned dependency — a supply-chain hygiene concern, but not inherently malicious. There is no evidence of obfuscated code, exfiltration, backdoors, or any suspicious operations. The file contains only declarative metadata and no executable instructions.
</details>
<evidence></evidence>
<summary>Standard .SRCINFO, no malicious content found.</summary>
</security_assessment>

[1/3] Reviewing .gitignore, PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard .SRCINFO, no malicious content found.
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard `.gitignore` used in git repositories. It ignores all files except the essential packaging files (`PKGBUILD`, `.SRCINFO`, and itself). There is no executable code, no network requests, no obfuscation, and no deviation from normal packaging practices. It poses no security risk.
</details>
<evidence></evidence>
<summary>Standard .gitignore, no security concerns.</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore, no security concerns.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a standard AUR package for Material Design icons from the official Google repository. The source files are downloaded directly from `github.com/google/material-design-icons` using raw file URLs. The `_update_version` function calls the GitHub API and `git ls-remote` to determine the latest version — both are legitimate, expected operations for a `-git` package. There is no obfuscation, no execution of untrusted fetched code, no exfiltration of local data, and no unexpected network destinations. The `SKIP` checksums are standard for version-control-based sources. The only anomalous line is `_date=$(echo "$commit_history" ...)` where `$commit_history` appears to be a copy-paste bug (undefined variable), but this does not introduce any security risk — it would simply produce an empty or erroneous date. No genuinely malicious behavior is present.
</details>
<evidence>
</evidence>
<summary>Standard AUR package; no malicious code found.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR package; no malicious code found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 12,565
  Completion Tokens: 2,862
  Total Tokens: 15,427
  Total Cost: $0.001449
  Execution Time: 97.20 seconds

Final Status: SAFE


No issues found.
