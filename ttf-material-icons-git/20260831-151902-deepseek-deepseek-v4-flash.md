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
completion_tokens: 3418
total_tokens: 15983
cost: 0.00165956154
execution_time: 384.06
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: ok
upstream_files: 11
upstream_named_files: 0
unpinned_sources: 11
date: 2026-08-31T15:19:02Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Purely declarative metadata; no executable or malicious content.
  - file: .gitignore
    status: safe
    summary: Standard .gitignore for AUR package.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR VCS PKGBUILD, no malicious code.
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
The PKGBUILD's global scope calls `_update_version`, which makes network requests (`curl` to GitHub API, `git ls-remote` to the upstream repo) to determine the latest version. While this is unconventional—network activity during PKGBUILD sourcing is not standard—it is not malicious. All requests target the package's own upstream repository (github.com/google/material-design-icons) and are used solely for version detection. No data is exfiltrated, no code is downloaded and executed, and no obfuscation is present. The source array fetches font files from the same upstream, with SKIP checksums (acceptable per gate rules). The commands `makepkg --nobuild --nodeps --noprepare` and `makepkg --printsrcinfo` will source this PKGBUILD and trigger these network requests, but they do not execute any genuinely dangerous behavior. The package functions (prepare/build/package) are not run by these commands and will be audited separately.
</details>
<evidence></evidence>
<summary>Sourcing triggers harmless version-detection network calls.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Sourcing triggers harmless version-detection network calls.
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
This is a standard .SRCINFO metadata file for an AUR package. It defines three font subpackages that fetch display fonts from the official Google Material Design Icons GitHub repository. All sources point to `github.com/google/material-design-icons`, which is the legitimate upstream. Checksums are set to SKIP, which is normal and expected for VCS/git-style packages that track a mutable branch. There is no executable content, no obfuscation, no unexpected network destinations, and no supply-chain attack indicators. The file is purely declarative and poses no security risk.
</details>
<evidence></evidence>
<summary>Purely declarative metadata; no executable or malicious content.</summary>
</security_assessment>

[1/3] Reviewing .gitignore, PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Purely declarative metadata; no executable or malicious content.
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.gitignore` file used in AUR git repositories. It instructs Git to ignore all files except the `PKGBUILD`, `.SRCINFO`, and itself. This is a common and safe practice to ensure only the essential packaging files are tracked. There is no obfuscated code, network requests, or unusual operations.
</details>
<evidence></evidence>
<summary>Standard .gitignore for AUR package.</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore for AUR package.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard AUR VCS packaging practices. It fetches font files directly from the official Google Material Design Icons GitHub repository using raw.githubusercontent.com URLs, which is the expected upstream source. The `sha256sums` are set to 'SKIP', which is normal for VCS packages and not a security concern. The `_update_version()` function uses `curl` and `git ls-remote` to query the GitHub API and tags, all targeting the official Google repository; this is a common pattern for auto-updating VCS packages. There is no obfuscated code, no execution of untrusted scripts, no exfiltration of local data, and no manipulation of system files outside the package scope. The only minor issue is a likely bug (undefined variable `$commit_history` in `_date` assignment), but that does not introduce any security risk. The file is safe.
</details>
<evidence></evidence>
<summary>Standard AUR VCS PKGBUILD, no malicious code.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR VCS PKGBUILD, no malicious code.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 12,565
  Completion Tokens: 3,418
  Total Tokens: 15,983
  Total Cost: $0.001660
  Execution Time: 384.06 seconds

Final Status: SAFE


No issues found.
