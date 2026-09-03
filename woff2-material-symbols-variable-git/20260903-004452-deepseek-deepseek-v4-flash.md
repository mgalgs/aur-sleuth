---
package: woff2-material-symbols-variable-git
pkgbase: material-symbols-git
pkgver: 4.0.0.r119.gc51274e9
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 1d6b5f000e2ff2cbdfdf4e324a3e5ac914955c8a
prompt_tokens: 12484
completion_tokens: 4876
total_tokens: 17360
cost: 0.001970243016
execution_time: 66.21
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 11
injection_attempts: 0
date: 2026-09-03T00:44:51Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard .gitignore for AUR packaging; no security concerns.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata file with no signs of malicious content.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR VCS font package; no malicious behavior detected.
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
The top-level scope defines standard variables, functions, and calls `_update_version` then `_source_main`.  
- `_update_version` makes HTTPS requests to `api.github.com` and runs `git ls-remote` on the package's own upstream repository (`google/material-design-icons`).  This is **not** malicious – it fetches public version‑tag and commit metadata to dynamically set `_pkgver`, a common pattern for AUR `-git` packages that auto‑update their version string.  
- The fetched data is parsed with `grep`/`sed` and stored in shell variables; it is **not** executed (no `eval`, no `curl | bash`).  
- `_source_main` only appends strings to the `source` and `sha256sums` arrays – no dangerous operations.  

No top‑level code exfiltrates local data, downloads executable code from an unexpected host, or performs obfuscated/encoded commands.  The network requests, while possibly unexpected during `--printsrcinfo`, are to the project’s own upstream and are typical for a VCS‑style package.  The file is safe to source for `makepkg --printsrcinfo`.
</details>
<evidence></evidence>
<summary>Top-level code fetches version info from upstream GitHub – not malicious.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Top-level code fetches version info from upstream GitHub – not malicious.
Note: 11 remote source(s) have no checksum (sha256sums=SKIP), so the bytes are not verifiable: MaterialIcons-Regular-4.0.0.r169.g84ccef28.ttf::https://github.com/google/material-design-icons/raw/refs/heads/master/font/MaterialIcons-Regular.ttf, MaterialIconsOutlined-Regular-4.0.0.r169.g84ccef28.otf::https://github.com/google/material-design-icons/raw/refs/heads/master/font/MaterialIconsOutlined-Regular.otf, MaterialIconsRound-Regular-4.0.0.r169.g84ccef28.otf::https://github.com/google/material-design-icons/raw/refs/heads/master/font/MaterialIconsRound-Regular.otf, MaterialIconsSharp-Regular-4.0.0.r169.g84ccef28.otf::https://github.com/google/material-design-icons/raw/refs/heads/master/font/MaterialIconsSharp-Regular.otf, MaterialIconsTwoTone-Regular-4.0.0.r169.g84ccef28.otf::https://github.com/google/material-design-icons/raw/refs/heads/master/font/MaterialIconsTwoTone-Regular.otf, MaterialSymbolsOutlined[FILL,GRAD,opsz,wght]-4.0.0.r169.g84ccef28.ttf::https://github.com/google/material-design-icons/raw/refs/heads/master/variablefont/MaterialSymbolsOutlined%5BFILL,GRAD,opsz,wght%5D.ttf, MaterialSymbolsOutlined[FILL,GRAD,opsz,wght]-4.0.0.r169.g84ccef28.woff2::https://github.com/google/material-design-icons/raw/refs/heads/master/variablefont/MaterialSymbolsOutlined%5BFILL,GRAD,opsz,wght%5D.woff2, MaterialSymbolsRounded[FILL,GRAD,opsz,wght]-4.0.0.r169.g84ccef28.ttf::https://github.com/google/material-design-icons/raw/refs/heads/master/variablefont/MaterialSymbolsRounded%5BFILL,GRAD,opsz,wght%5D.ttf, MaterialSymbolsRounded[FILL,GRAD,opsz,wght]-4.0.0.r169.g84ccef28.woff2::https://github.com/google/material-design-icons/raw/refs/heads/master/variablefont/MaterialSymbolsRounded%5BFILL,GRAD,opsz,wght%5D.woff2, MaterialSymbolsSharp[FILL,GRAD,opsz,wght]-4.0.0.r169.g84ccef28.ttf::https://github.com/google/material-design-icons/raw/refs/heads/master/variablefont/MaterialSymbolsSharp%5BFILL,GRAD,opsz,wght%5D.ttf, MaterialSymbolsSharp[FILL,GRAD,opsz,wght]-4.0.0.r169.g84ccef28.woff2::https://github.com/google/material-design-icons/raw/refs/heads/master/variablefont/MaterialSymbolsSharp%5BFILL,GRAD,opsz,wght%5D.woff2
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, .gitignore...
[0/3] Reviewing .SRCINFO, .gitignore, PKGBUILD...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard `.gitignore` file for an AUR git repository. It instructs Git to ignore all files except `PKGBUILD`, `.SRCINFO`, and `.gitignore` itself. This is a common and expected pattern in AUR package maintenance—it ensures that only the essential packaging files are tracked in version control. There is no executable code, no network requests, no file operations, and no obfuscated content. The file poses no security threat.
</details>
<evidence></evidence>
<summary>Standard .gitignore for AUR packaging; no security concerns.</summary>
</security_assessment>

[1/3] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore for AUR packaging; no security concerns.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The `.SRCINFO` file is a package metadata file for an AUR package that installs Google Material Design icon fonts. All source files are fetched from the official Google repository on GitHub (`github.com/google/material-design-icons`). The `sha256sums` are set to `SKIP`, which is standard and required for VCS sources in AUR `-git` packages. No executable code, obfuscation, suspicious network requests, or file operations are present. The file only declares package metadata and source locations, all of which point to the legitimate upstream project.
</details>
<evidence>
</evidence>
<summary>
Standard AUR metadata file with no signs of malicious content.
</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata file with no signs of malicious content.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a VCS-style AUR package for Google Material Design icon fonts. At build time it queries the GitHub API and `git ls-remote` to compute a version string, then downloads font files from the project's own upstream repository (`github.com/google/material-design-icons`) and installs them under `/usr/share/fonts`. There is no evidence of obfuscation, encoded payloads, `eval`, base64, reverse shells, credential theft, or exfiltration of local data. The downloaded files are font assets, not executable code.

The `sha256sums` are `SKIP` and the source URLs track a mutable `master` branch, which weakens reproducibility, but that is normal for a `-git` package and is not malicious. There are minor packaging bugs, such as `_date` referencing an undefined `$commit_history` and `package_ttf-material-icons-git` using an undefined `$_pkgname` variable, but these are not security concerns. Overall, the file is consistent with ordinary AUR packaging practices.
</details>
<evidence>
</evidence>
<summary>
Standard AUR VCS font package; no malicious behavior detected.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR VCS font package; no malicious behavior detected.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 12,484
  Completion Tokens: 4,876
  Total Tokens: 17,360
  Total Cost: $0.001970
  Execution Time: 66.21 seconds

Final Status: SAFE


No issues found.
