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
completion_tokens: 2820
total_tokens: 15385
cost: 0.00146805120
execution_time: 84.94
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: ok
upstream_files: 11
upstream_named_files: 0
unpinned_sources: 11
date: 2026-08-30T07:10:59Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Package metadata only, all sources from official upstream.
  - file: PKGBUILD
    status: safe
    summary: Standard VCS PKGBUILD with no malicious content.
  - file: .gitignore
    status: safe
    summary: Standard gitignore for AUR package repo.
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
Running `makepkg --nobuild --nodeps --noprepare` and `makepkg --printsrcinfo` on this PKGBUILD is safe. The top-level code sources the file, executes `_update_version()` and `_source_main()`, then fetches the source array. `_update_version()` makes HTTPS requests to `api.github.com` and runs `git ls-remote --tags` on the official repository – these are normal version-detection operations for a VCS/git package and do not download or execute any untrusted code. `_source_main()` constructs source entries pointing to font files on `raw.githubusercontent.com` under the project's own repository; these are binary font artifacts (TTF, OTF, WOFF2) that will be downloaded and extracted, not executed. The `--noprepare` and `--nobuild` flags prevent any execution of `prepare()`, `build()`, or `package()` functions. There is no obfuscated code, base64 decoding, eval, or unexpected network destinations. Checksums are set to `SKIP`, which is normal for VCS sources and does not make the source-fetch step dangerous. Neither `pkgver()` nor any top-level command substitution executes payloads from the network – `pkgver()` simply echoes a variable. No malicious behavior is present in the scopes that execute during these commands.
</details>
<evidence></evidence>
<summary>No malicious code executed during source fetch or PKGBUILD parsing.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious code executed during source fetch or PKGBUILD parsing.
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
This .SRCINFO file declares a package that downloads font files directly from the official Google Material Design Icons GitHub repository. All sources point to `https://github.com/google/material-design-icons/raw/refs/heads/master/` which is the legitimate upstream source. The file contains only package metadata (sources, checksums, dependencies, splits) and no executable code. Although all sha256sums are set to SKIP, this is common practice for -git packages or when using raw HTTP sources without precomputed hashes; it is not inherently malicious. No suspicious network destinations, obfuscated commands, or dangerous operations are present. The content is entirely consistent with normal AUR packaging practices.
</details>
<evidence></evidence>
<summary>Package metadata only, all sources from official upstream.</summary>
</security_assessment>

[1/3] Reviewing .gitignore, PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Package metadata only, all sources from official upstream.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD is a standard VCS package for Google&#39;s Material Design Icons. It fetches font files directly from the official GitHub repository via raw URLs (branch `master`), uses SKIP checksums (normal for VCS sources), and installs them into the appropriate system font directories. The `_update_version()` function queries the GitHub API and `git ls-remote` to derive a version string from the latest commit and tag. This is ordinary AUR practice for `-git` packages and does not constitute malicious behavior.

There are no obfuscated commands, no downloads from unexpected hosts, no exfiltration of sensitive data, and no modification of files outside the package&#39;s own installation scope. The minor bug (use of unset `$commit_history` in a dead assignment) has no security impact. No genuine supply-chain attack indicators are present.
</details>
<evidence></evidence>
<summary>Standard VCS PKGBUILD with no malicious content.</summary>
</security_assessment>

[2/3] Reviewing .gitignore...
+ Reviewed PKGBUILD. Status: SAFE -- Standard VCS PKGBUILD with no malicious content.
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard `.gitignore` for an AUR package repository. It ignores all files except the PKGBUILD, .SRCINFO, and itself. There is no obfuscated code, network requests, file operations, or any system modifications. The content is purely a gitignore pattern and poses no security threat.
</details>
<evidence></evidence>
<summary>Standard gitignore for AUR package repo.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed .gitignore. Status: SAFE -- Standard gitignore for AUR package repo.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 12,565
  Completion Tokens: 2,820
  Total Tokens: 15,385
  Total Cost: $0.001468
  Execution Time: 84.94 seconds

Final Status: SAFE


No issues found.
