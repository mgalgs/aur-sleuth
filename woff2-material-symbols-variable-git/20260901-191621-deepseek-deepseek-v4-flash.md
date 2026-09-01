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
completion_tokens: 2898
total_tokens: 15562
cost: 0.00135164120
execution_time: 66.2
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: ok
upstream_files: 11
upstream_named_files: 0
unpinned_sources: 11
injection_attempts: 0
date: 2026-09-01T19:16:12Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata; no security issues found.
  - file: .gitignore
    status: safe
    summary: Standard .gitignore with no security issues.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR font package, no malicious behavior.
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
Running `makepkg --nobuild --nodeps --noprepare` and `makepkg --printsrcinfo` only sources the PKGBUILD, executes the top-level code and `pkgver()`, and fetches/extracts the `source` array. The top-level `_update_version` function performs network requests to GitHub (`api.github.com` and `git ls-remote` against the package's own upstream repository), parses the responses into `_pkgver`, and does not download or execute any code. The `pkgver()` function only echoes the computed version string. `_source_main` builds a `source` array pointing to raw font files from the official `google/material-design-icons` GitHub repository; these are fetched as package sources and extracted, but are not executed during this stage due to `--nobuild --noprepare`.

All network destinations are the package's declared upstream project. The use of SKIP checksums and an unpinned `refs/heads/master` source branch are supply-chain/reproducibility concerns, but they are explicitly not grounds to fail this narrow gate; fetching unverified sources for later audit is the intended behavior of the commands. There is no obfuscated code, no `eval`/`base64`/remote-payload execution, and no exfiltration of local data. The potentially surprising top-level network activity is benign version-check logic.
</details>
<evidence>
</evidence>
<summary>
Safe: top-level version lookup and upstream font downloads are benign for this gate.
</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Safe: top-level version lookup and upstream font downloads are benign for this gate.
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
The file is a standard `.SRCINFO` metadata file for an AUR package. It declares sources from the official upstream GitHub repository (`github.com/google/material-design-icons`) and lists all checksums as `SKIP`, which is expected for VCS packages. There is no executable content, no obfuscated code, no network requests beyond the declared upstream sources, and no indication of malicious behavior. The file simply describes the package name, version, license, and sources.
</details>
<evidence>
</evidence>
<summary>Standard AUR metadata; no security issues found.</summary>
</security_assessment>

[1/3] Reviewing .gitignore, PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata; no security issues found.
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a simple `.gitignore` file that ignores all files except `PKGBUILD`, `.SRCINFO`, and itself. This is a standard pattern for AUR package repositories and contains no executable code, network requests, or any other potentially malicious behavior. There are no security concerns.
</details>
<evidence>
</evidence>
<summary>Standard .gitignore with no security issues.</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore with no security issues.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a standard AUR package for fetching Google Material Design icon fonts. It downloads font files from the official GitHub repository (`raw.githubusercontent.com/google/material-design-icons/...`) and installs them into the package directory. The `_update_version` function queries the GitHub API and `git ls-remote` to determine the latest version, which is typical for a `-git` package. All network requests are to the upstream project's own infrastructure (github.com). There is no obfuscated code, no execution of downloaded scripts, no exfiltration of sensitive data, and no unexpected system modifications. The `sha256sums` are set to `SKIP` as required for VCS sources. No supply-chain attack indicators are present.
</details>
<evidence></evidence>
<summary>Standard AUR font package, no malicious behavior.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR font package, no malicious behavior.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 12,664
  Completion Tokens: 2,898
  Total Tokens: 15,562
  Total Cost: $0.001352
  Execution Time: 66.20 seconds

Final Status: SAFE


No issues found.
