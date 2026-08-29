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
completion_tokens: 2451
total_tokens: 15036
cost: 0.00149828616
execution_time: 52.89
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: ok
upstream_files: 11
upstream_named_files: 0
unpinned_sources: 11
date: 2026-08-29T03:21:03Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata; all sources from official upstream.
  - file: .gitignore
    status: safe
    summary: Standard gitignore file, no security issues.
  - file: PKGBUILD
    status: safe
    summary: Standard VCS PKGBUILD; no malicious code.
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
The PKGBUILD sources files from the official Google material-design-icons GitHub repository via raw.githubusercontent.com. The top-level call to `_update_version()` performs network requests (curl to GitHub API, git ls-remote) to compute a version string, but this is standard for AUR VCS packages that auto-update. The fetched data is parsed with grep/sed and assigned to variables, not executed. No `eval`, `base64`, or other obfuscated/dangerous constructs are present. The `_source_main()` function builds source entries with `SKIP` checksums, which is normal. `makepkg --nobuild --nodeps --noprepare` will only download the source files and source the PKGBUILD; no code outside of global scope and `pkgver()` runs. The content is consistent with legitimate packaging and shows no signs of malicious behavior.
</details>
<evidence></evidence>
<summary>No malicious code in sourced scope; standard AUR VCS packaging.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious code in sourced scope; standard AUR VCS packaging.
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Note: 11 remote source(s) have no checksum (sha256sums=SKIP), so the fetched bytes are not verifiable and can change without any AUR update: MaterialIcons-Regular-4.0.0.r169.g84ccef28.ttf::https://github.com/google/material-design-icons/raw/refs/heads/master/font/MaterialIcons-Regular.ttf, MaterialIconsOutlined-Regular-4.0.0.r169.g84ccef28.otf::https://github.com/google/material-design-icons/raw/refs/heads/master/font/MaterialIconsOutlined-Regular.otf, MaterialIconsRound-Regular-4.0.0.r169.g84ccef28.otf::https://github.com/google/material-design-icons/raw/refs/heads/master/font/MaterialIconsRound-Regular.otf, MaterialIconsSharp-Regular-4.0.0.r169.g84ccef28.otf::https://github.com/google/material-design-icons/raw/refs/heads/master/font/MaterialIconsSharp-Regular.otf, MaterialIconsTwoTone-Regular-4.0.0.r169.g84ccef28.otf::https://github.com/google/material-design-icons/raw/refs/heads/master/font/MaterialIconsTwoTone-Regular.otf, MaterialSymbolsOutlined[FILL,GRAD,opsz,wght]-4.0.0.r169.g84ccef28.ttf::https://github.com/google/material-design-icons/raw/refs/heads/master/variablefont/MaterialSymbolsOutlined%5BFILL,GRAD,opsz,wght%5D.ttf, MaterialSymbolsOutlined[FILL,GRAD,opsz,wght]-4.0.0.r169.g84ccef28.woff2::https://github.com/google/material-design-icons/raw/refs/heads/master/variablefont/MaterialSymbolsOutlined%5BFILL,GRAD,opsz,wght%5D.woff2, MaterialSymbolsRounded[FILL,GRAD,opsz,wght]-4.0.0.r169.g84ccef28.ttf::https://github.com/google/material-design-icons/raw/refs/heads/master/variablefont/MaterialSymbolsRounded%5BFILL,GRAD,opsz,wght%5D.ttf, MaterialSymbolsRounded[FILL,GRAD,opsz,wght]-4.0.0.r169.g84ccef28.woff2::https://github.com/google/material-design-icons/raw/refs/heads/master/variablefont/MaterialSymbolsRounded%5BFILL,GRAD,opsz,wght%5D.woff2, MaterialSymbolsSharp[FILL,GRAD,opsz,wght]-4.0.0.r169.g84ccef28.ttf::https://github.com/google/material-design-icons/raw/refs/heads/master/variablefont/MaterialSymbolsSharp%5BFILL,GRAD,opsz,wght%5D.ttf, MaterialSymbolsSharp[FILL,GRAD,opsz,wght]-4.0.0.r169.g84ccef28.woff2::https://github.com/google/material-design-icons/raw/refs/heads/master/variablefont/MaterialSymbolsSharp%5BFILL,GRAD,opsz,wght%5D.woff2
Reviewing the 3 file(s) in the AUR repository. The 11 downloaded file(s) are upstream content, outside the threat model, and are not read.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, PKGBUILD...
[0/3] Reviewing .SRCINFO, PKGBUILD, .gitignore...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This .SRCINFO file is a standard AUR metadata file for a `-git` package that fetches official Google Material Design icon fonts. All sources point to the legitimate upstream GitHub repository (`github.com/google/material-design-icons`). The `sha256sums` are all set to `SKIP`, which is expected for VCS packages and is standard practice. No obfuscated code, dangerous commands, or suspicious network destinations are present. The file contains only declarative metadata defining package names, sources, and basic dependencies.
</details>
<evidence></evidence>
<summary>Standard AUR metadata; all sources from official upstream.</summary>
</security_assessment>

[1/3] Reviewing PKGBUILD, .gitignore...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata; all sources from official upstream.
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a simple `.gitignore` used in a Git repository. It ignores all files except for `PKGBUILD`, `.SRCINFO`, and itself. There are no commands, network operations, or any executable content. It is a standard, benign configuration file with no security implications.
</details>
<evidence></evidence>
<summary>Standard gitignore file, no security issues.</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed .gitignore. Status: SAFE -- Standard gitignore file, no security issues.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is for a VCS (`-git`) package that downloads font files from Google's official GitHub repository (`google/material-design-icons`). All network requests target the project's own upstream:
- `curl` queries `api.github.com` to get commit hashes and compare counts (standard VCS versioning).
- `git ls-remote --tags` fetches tags from the upstream repository to determine the latest release.
- Source URLs point to `raw.githubusercontent.com` (via `https://github.com/.../raw/refs/heads/master`), which is the project's own file hosting.

There is no obfuscated code, no `eval`, no unexpected network destinations, no data exfiltration, no backdoors, and no instructions outside normal packaging operations. Using `SKIP` checksums is standard for VCS sources because the files are fetched from a mutable branch. The dynamic version calculation via `_update_version` is a common pattern for `-git` packages. The package functions only install font files to standard system directories.

The only minor observation is that the source URLs track the `master` branch (unpinned), which is typical for `-git` packages and not a security concern by itself—especially since the files are downloaded as raw assets, not executed. No genuinely malicious behavior is present.
</details>
<evidence></evidence>
<summary>Standard VCS PKGBUILD; no malicious code.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard VCS PKGBUILD; no malicious code.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 12,585
  Completion Tokens: 2,451
  Total Tokens: 15,036
  Total Cost: $0.001498
  Execution Time: 52.89 seconds

Final Status: SAFE


No issues found.
