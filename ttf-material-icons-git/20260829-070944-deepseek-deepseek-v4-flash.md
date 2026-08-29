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
completion_tokens: 2576
total_tokens: 15141
cost: 0.00150311028
execution_time: 271.82
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: ok
upstream_files: 11
upstream_named_files: 0
unpinned_sources: 11
date: 2026-08-29T07:09:44Z
file_verdicts:
  - file: PKGBUILD
    status: safe
    summary: Standard AUR VCS PKGBUILD with no malicious behavior.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR .SRCINFO file, no malicious content.
  - file: .gitignore
    status: safe
    summary: Standard AUR .gitignore, no security issues.
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
The top-level code in this PKGBUILD is limited to defining variables, helper functions, and calling `_update_version` and `_source_main`.  `_update_version` makes network requests to GitHub API (`api.github.com`) and uses `git ls-remote` on the official Google repository URL – these are standard, expected operations for a VCS package that auto‑updates its version.  `_source_main` constructs HTTP download URLs for font files from the same upstream.  No code in the global scope or in `pkgver()` downloads or executes arbitrary payloads, exfiltrates data, or performs any obfuscated commands.  Since `prepare()`, `build()`, and `package()` are not executed by `makepkg --nobuild --noprepare`, any code in those functions is out of scope for this gate.  The use of `SKIP` checksums and unpinned sources is standard for `-git` packages and does not itself constitute a security risk during source fetching.
</details>
<evidence></evidence>
<summary>No malicious code executes during source fetch and PKGBUILD sourcing.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious code executes during source fetch and PKGBUILD sourcing.
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Note: 11 remote source(s) have no checksum (sha256sums=SKIP), so the fetched bytes are not verifiable and can change without any AUR update: MaterialIcons-Regular-4.0.0.r169.g84ccef28.ttf::https://github.com/google/material-design-icons/raw/refs/heads/master/font/MaterialIcons-Regular.ttf, MaterialIconsOutlined-Regular-4.0.0.r169.g84ccef28.otf::https://github.com/google/material-design-icons/raw/refs/heads/master/font/MaterialIconsOutlined-Regular.otf, MaterialIconsRound-Regular-4.0.0.r169.g84ccef28.otf::https://github.com/google/material-design-icons/raw/refs/heads/master/font/MaterialIconsRound-Regular.otf, MaterialIconsSharp-Regular-4.0.0.r169.g84ccef28.otf::https://github.com/google/material-design-icons/raw/refs/heads/master/font/MaterialIconsSharp-Regular.otf, MaterialIconsTwoTone-Regular-4.0.0.r169.g84ccef28.otf::https://github.com/google/material-design-icons/raw/refs/heads/master/font/MaterialIconsTwoTone-Regular.otf, MaterialSymbolsOutlined[FILL,GRAD,opsz,wght]-4.0.0.r169.g84ccef28.ttf::https://github.com/google/material-design-icons/raw/refs/heads/master/variablefont/MaterialSymbolsOutlined%5BFILL,GRAD,opsz,wght%5D.ttf, MaterialSymbolsOutlined[FILL,GRAD,opsz,wght]-4.0.0.r169.g84ccef28.woff2::https://github.com/google/material-design-icons/raw/refs/heads/master/variablefont/MaterialSymbolsOutlined%5BFILL,GRAD,opsz,wght%5D.woff2, MaterialSymbolsRounded[FILL,GRAD,opsz,wght]-4.0.0.r169.g84ccef28.ttf::https://github.com/google/material-design-icons/raw/refs/heads/master/variablefont/MaterialSymbolsRounded%5BFILL,GRAD,opsz,wght%5D.ttf, MaterialSymbolsRounded[FILL,GRAD,opsz,wght]-4.0.0.r169.g84ccef28.woff2::https://github.com/google/material-design-icons/raw/refs/heads/master/variablefont/MaterialSymbolsRounded%5BFILL,GRAD,opsz,wght%5D.woff2, MaterialSymbolsSharp[FILL,GRAD,opsz,wght]-4.0.0.r169.g84ccef28.ttf::https://github.com/google/material-design-icons/raw/refs/heads/master/variablefont/MaterialSymbolsSharp%5BFILL,GRAD,opsz,wght%5D.ttf, MaterialSymbolsSharp[FILL,GRAD,opsz,wght]-4.0.0.r169.g84ccef28.woff2::https://github.com/google/material-design-icons/raw/refs/heads/master/variablefont/MaterialSymbolsSharp%5BFILL,GRAD,opsz,wght%5D.woff2
Reviewing the 3 file(s) in the AUR repository. The 11 downloaded file(s) are upstream content, outside the threat model, and are not read.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, .gitignore...
[0/3] Reviewing .SRCINFO, .gitignore, PKGBUILD...
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD is a standard AUR `-git` package that fetches font files directly from Google's official Material Design Icons repository on GitHub. The `_update_version` function uses `curl` to query the GitHub API and `git ls-remote` to determine the latest version — both expected operations for a VCS-style package that needs to compute a version string. There is no obfuscated code, no execution of downloaded scripts, no exfiltration of local data, and no network request to any host other than `github.com` (the project's own upstream). The `sha256sums` are set to `SKIP`, which is required for VCS sources and is not a security concern. All other operations are ordinary packaging steps (installing font files into `$pkgdir`). No genuinely malicious behavior is present.
</details>
<evidence></evidence>
<summary>Standard AUR VCS PKGBUILD with no malicious behavior.</summary>
</security_assessment>

[1/3] Reviewing .SRCINFO, .gitignore...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR VCS PKGBUILD with no malicious behavior.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard .SRCINFO metadata file for a VCS (git) AUR package. All sources point to the official Google Material Design Icons repository (`https://github.com/google/material-design-icons`). The checksums are all set to SKIP, which is expected for VCS packages. There is no executable code, no obfuscation, no remote hosts other than the project’s own upstream, and no unusual file operations. The file simply declares package metadata, sources, and splits. No supply-chain attack or malicious behavior is present.
</details>
<evidence></evidence>
<summary>Standard AUR .SRCINFO file, no malicious content.</summary>
</security_assessment>

[2/3] Reviewing .gitignore...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR .SRCINFO file, no malicious content.
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.gitignore` file used in AUR package repositories. It instructs Git to ignore all files except the three essential packaging files: `PKGBUILD`, `.SRCINFO`, and `.gitignore` itself. There is no executable code, no obfuscation, no network requests, and no system modifications. The file serves only to maintain a clean repository state for distribution via the AUR.
</details>
<evidence></evidence>
<summary>Standard AUR .gitignore, no security issues.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed .gitignore. Status: SAFE -- Standard AUR .gitignore, no security issues.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 12,565
  Completion Tokens: 2,576
  Total Tokens: 15,141
  Total Cost: $0.001503
  Execution Time: 271.82 seconds

Final Status: SAFE


No issues found.
