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
completion_tokens: 2138
total_tokens: 14703
cost: 0.0013439118
execution_time: 90.48
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: ok
upstream_files: 11
upstream_named_files: 0
unpinned_sources: 11
date: 2026-08-30T11:13:01Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard .SRCINFO for a VCS font package, no malicious content.
  - file: PKGBUILD
    status: safe
    summary: Clean VCS package with no malicious code.
  - file: .gitignore
    status: safe
    summary: Standard .gitignore for AUR package repo.
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
The PKGBUILD's global scope calls `_update_version` and `_source_main` when sourced.  
`_update_version` uses `curl` and `git ls-remote` to query GitHub API and determine a version string — this is an auto-update mechanism for the package.  
`_source_main` builds the `source` array using `raw.githubusercontent.com` URLs pointing to the package's own upstream repository.  
No code attempts to exfiltrate data, download and execute binaries, or perform obfuscated commands.  
The network destinations are all `github.com` (api and raw), which is the project's own upstream.  
No malicious payload is present; the operations are consistent with automated version revision and source fetching.  

The narrow gate (`makepkg --nobuild --nodeps --noprepare` and `--printsrcinfo`) will safely fetch these sources and parse the PKGBUILD.  
Checksums are set to `SKIP`, which is expected for VCS sources and does not affect this gate.  
</details>
<evidence></evidence>
<summary>Standard version auto-update; no malicious code execution.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Standard version auto-update; no malicious code execution.
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
The `.SRCINFO` file defines a VCS-style package (`material-symbols-git`) that fetches Google&#39;s Material Design icon font files directly from the official upstream repository (`github.com/google/material-design-icons`). All sources are font assets (TTF, OTF, WOFF2) — no executables, scripts, or other code. SHA256 checksums are set to `SKIP`, which is standard for VCS packages and not a security concern. The file contains no obfuscation, network requests beyond declared sources, or any commands. The package splits into subpackages for different font formats, all consistent with the stated purpose of distributing icon fonts. No malicious or suspicious behavior is present.
</details>
<evidence></evidence>
<summary>Standard .SRCINFO for a VCS font package, no malicious content.</summary>
</security_assessment>

[1/3] Reviewing .gitignore, PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard .SRCINFO for a VCS font package, no malicious content.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a standard VCS package (`-git`) that downloads font files directly from the official Google Material Design Icons GitHub repository. The `_source_main` function constructs source URLs from the upstream master branch, which is standard practice for `-git` packages. The `_update_version` function uses GitHub API and `git ls-remote` to determine the latest commit and tag, which is normal auto-versioning behavior. All network requests target the package’s own upstream (`github.com/google/material-design-icons`). There are no obfuscated commands, no unexpected downloads, no exfiltration, and no operations outside the package’s own scope. Checksums are set to `SKIP`, which is expected for VCS sources and is not a security issue per the instructions. The file follows typical AUR packaging practices and contains no evidence of malicious or supply-chain attack behavior.
</details>
<evidence></evidence>
<summary>Clean VCS package with no malicious code.</summary>
</security_assessment>

[2/3] Reviewing .gitignore...
+ Reviewed PKGBUILD. Status: SAFE -- Clean VCS package with no malicious code.
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard `.gitignore` intended for an AUR package repository. It ignores all files except the essential `PKGBUILD`, `.SRCINFO`, and itself. This is a common and benign practice to keep the git repository clean. No malicious operations, network activity, or code execution is present.
</details>
<evidence>
</evidence>
<summary>Standard .gitignore for AUR package repo.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore for AUR package repo.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 12,565
  Completion Tokens: 2,138
  Total Tokens: 14,703
  Total Cost: $0.001344
  Execution Time: 90.48 seconds

Final Status: SAFE


No issues found.
