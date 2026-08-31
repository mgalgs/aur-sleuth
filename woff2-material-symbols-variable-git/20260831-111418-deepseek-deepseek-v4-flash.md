---
package: woff2-material-symbols-variable-git
pkgbase: material-symbols-git
pkgver: 4.0.0.r169.g84ccef28
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 3e318911529c43138ec6bdba0bfcb56907607021
prompt_tokens: 12585
completion_tokens: 3299
total_tokens: 15884
cost: 0.001699728898
execution_time: 79.13
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: ok
upstream_files: 11
upstream_named_files: 0
unpinned_sources: 11
date: 2026-08-31T11:14:18Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard .gitignore for AUR package, no security issues.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR font package from official upstream source.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR -git font package, no malicious behavior.
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
**Scope assessment**: Only global/top-level code and `pkgver()` execute during `makepkg --nobuild --nodeps --noprepare`. The PKGBUILD calls `_update_version` and `_source_main` in global scope.  
- `_update_version` runs `curl` to the official GitHub API (`api.github.com/repos/google/material-design-icons/…`) and `git ls-remote –tags` to the official repo to determine the latest tag/commit. This is standard version-detection logic for a `-git` package; it fetches metadata, **not** executable content. No code from the response is executed.  
- `_source_main` appends raw.githubusercontent.com URLs to the `source` array – these point to the official upstream. All checksums are `SKIP` (normal for dynamic sources, not a red flag by itself). No downloads happen until makepkg processes the source array after sourcing the file.  
- No obfuscated code, no encoded commands, no dangerous functions like `eval`, no hidden file operations, and no manipulation of data outside the package's scope.  
- Suspicious content that may be in `prepare()`, `build()`, or `package()` functions is **not** executed by the two commands under review, and will be audited separately.

Thus, running `makepkg --nobuild --nodeps --noprepare` and `makepkg --printsrcinfo` on this PKGBUILD is safe.
</details>
<evidence>
</evidence>
<summary>Safe: only metadata fetch from official upstream, no code execution.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Safe: only metadata fetch from official upstream, no code execution.
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Note: 11 remote source(s) have no checksum (sha256sums=SKIP), so the fetched bytes are not verifiable and can change without any AUR update: MaterialIcons-Regular-4.0.0.r169.g84ccef28.ttf::https://github.com/google/material-design-icons/raw/refs/heads/master/font/MaterialIcons-Regular.ttf, MaterialIconsOutlined-Regular-4.0.0.r169.g84ccef28.otf::https://github.com/google/material-design-icons/raw/refs/heads/master/font/MaterialIconsOutlined-Regular.otf, MaterialIconsRound-Regular-4.0.0.r169.g84ccef28.otf::https://github.com/google/material-design-icons/raw/refs/heads/master/font/MaterialIconsRound-Regular.otf, MaterialIconsSharp-Regular-4.0.0.r169.g84ccef28.otf::https://github.com/google/material-design-icons/raw/refs/heads/master/font/MaterialIconsSharp-Regular.otf, MaterialIconsTwoTone-Regular-4.0.0.r169.g84ccef28.otf::https://github.com/google/material-design-icons/raw/refs/heads/master/font/MaterialIconsTwoTone-Regular.otf, MaterialSymbolsOutlined[FILL,GRAD,opsz,wght]-4.0.0.r169.g84ccef28.ttf::https://github.com/google/material-design-icons/raw/refs/heads/master/variablefont/MaterialSymbolsOutlined%5BFILL,GRAD,opsz,wght%5D.ttf, MaterialSymbolsOutlined[FILL,GRAD,opsz,wght]-4.0.0.r169.g84ccef28.woff2::https://github.com/google/material-design-icons/raw/refs/heads/master/variablefont/MaterialSymbolsOutlined%5BFILL,GRAD,opsz,wght%5D.woff2, MaterialSymbolsRounded[FILL,GRAD,opsz,wght]-4.0.0.r169.g84ccef28.ttf::https://github.com/google/material-design-icons/raw/refs/heads/master/variablefont/MaterialSymbolsRounded%5BFILL,GRAD,opsz,wght%5D.ttf, MaterialSymbolsRounded[FILL,GRAD,opsz,wght]-4.0.0.r169.g84ccef28.woff2::https://github.com/google/material-design-icons/raw/refs/heads/master/variablefont/MaterialSymbolsRounded%5BFILL,GRAD,opsz,wght%5D.woff2, MaterialSymbolsSharp[FILL,GRAD,opsz,wght]-4.0.0.r169.g84ccef28.ttf::https://github.com/google/material-design-icons/raw/refs/heads/master/variablefont/MaterialSymbolsSharp%5BFILL,GRAD,opsz,wght%5D.ttf, MaterialSymbolsSharp[FILL,GRAD,opsz,wght]-4.0.0.r169.g84ccef28.woff2::https://github.com/google/material-design-icons/raw/refs/heads/master/variablefont/MaterialSymbolsSharp%5BFILL,GRAD,opsz,wght%5D.woff2
Reviewing the 3 file(s) in the AUR repository. The 11 downloaded file(s) are upstream content, outside the threat model, and are not read.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, PKGBUILD...
[0/3] Reviewing .SRCINFO, PKGBUILD, .gitignore...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.gitignore` file for an AUR package. It ignores all files except `PKGBUILD`, `.SRCINFO`, and `.gitignore` itself. This is a common and expected practice to prevent committing generated or extraneous files into the repository. There is no executable code, no network requests, no obfuscation, and no system modifications. The file is benign and follows normal packaging conventions.
</details>
<evidence></evidence>
<summary>Standard .gitignore for AUR package, no security issues.</summary>
</security_assessment>

[1/3] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore for AUR package, no security issues.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This `.SRCINFO` file defines an AUR package that provides font files (TTF, OTF, WOFF2) from the official Google Material Design Icons repository on GitHub. All sources are fetched from the upstream project's GitHub master branch using HTTPS. The `sha256sums = SKIP` entries are standard for VCS (`-git`) packages because the exact content of a mutable branch cannot be pinned with a checksum. No commands are present in this metadata file, and no network destinations outside the official upstream project are referenced. There is no evidence of obfuscation, backdoors, data exfiltration, or any other malicious behavior. The file represents a routine, non‑threatening AUR package definition.
</details>
<evidence>
</evidence>
<summary>Standard AUR font package from official upstream source.</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR font package from official upstream source.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD defines three font packages that download official font files directly from Google&#39;s GitHub repository (`github.com/google/material-design-icons`). The `_source_main()` function constructs source URLs pointing to Google&#39;s raw content on the `master` branch, which is the standard upstream location for these fonts. All sources are downloaded as raw TTF/WOFF2 files and installed into the font directory without any unexpected transformation or code execution.  

The `_update_version()` function uses `curl` against the GitHub API and `git ls-remote` to determine the latest commit and tag for versioning. This is a standard pattern for `-git` packages that auto‑detect upstream revisions. It does not fetch or execute any untrusted code; it only computes a version string.  

There is no obfuscated code, no execution of downloaded scripts, no data exfiltration, no modification of system files outside the package&#39;s scope, and no backdoor or reverse shell. The only network operations are to Google&#39;s official GitHub endpoints, which are the project&#39;s own upstream. The `SKIP` checksums are required for VCS sources and are not a security issue here.  

The file is consistent with normal AUR packaging practices for a VCS font package and contains no malicious or dangerous behavior.
</details>
<evidence>
</evidence>
<summary>Standard AUR -git font package, no malicious behavior.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR -git font package, no malicious behavior.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 12,585
  Completion Tokens: 3,299
  Total Tokens: 15,884
  Total Cost: $0.001700
  Execution Time: 79.13 seconds

Final Status: SAFE


No issues found.
