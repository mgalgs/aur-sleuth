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
completion_tokens: 2595
total_tokens: 15239
cost: 0.00140317912
execution_time: 58.57
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: ok
upstream_files: 11
upstream_named_files: 0
unpinned_sources: 11
date: 2026-08-30T19:17:12Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata file, no malicious content.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR font package, no malicious code.
  - file: .gitignore
    status: safe
    summary: Standard .gitignore for AUR packaging
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
Running `makepkg --nobuild --nodeps --noprepare` and `makepkg --printsrcinfo` is safe for this PKGBUILD. The top-level code invokes `_update_version()` and `_source_main()`. `_update_version()` makes HTTPS requests to `api.github.com` and runs `git ls-remote --tags` against the package's own upstream repository (`github.com/google/material-design-icons`); it only parses version metadata and assigns `_pkgver`. It does not download and execute code, send local data anywhere, or modify system state. `_source_main()` appends font file URLs from the project's own GitHub repository to the `source` array and adds `SKIP` checksums.

`pkgver()` merely echoes `_pkgver`. The `prepare()`, `build()`, and `package()` functions—which contain font installation logic—are not executed by these two commands due to `--nobuild` and `--noprepare`. The `SHKIP`/missing checksums on the font artifacts are not grounds to fail this narrow gate: downloading and extracting sources is exactly what these commands are designed to do, and extraction alone does not execute the files. No obfuscated payloads, suspicious eval/base64, unexpected remote hosts, or exfiltration behavior is present in the scope that runs here.
</details>
<evidence>
</evidence>
<summary>
Top-level version check uses official GitHub API only; no payload execution or exfiltration. Safe.
</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Top-level version check uses official GitHub API only; no payload execution or exfiltration. Safe.
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
This .SRCINFO file is a standard AUR metadata file for the `material-symbols-git` package. All source URLs point to the official Google Material Design Icons repository on GitHub. The `sha256sums` are set to `SKIP`, which is normal and expected for VCS packages (the `-git` suffix indicates this). There are no executable commands, no obfuscated code, no references to external servers outside the project's upstream, and no signs of supply-chain injection. The file simply declares package metadata, sources, and split packages.
</details>
<evidence></evidence>
<summary>Standard AUR metadata file, no malicious content.</summary>
</security_assessment>

[1/3] Reviewing .gitignore, PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata file, no malicious content.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a standard package for Google Material Design icons. It fetches font files from the official Google repository via raw.githubusercontent.com and queries the GitHub API for version detection. All network destinations are the package's own upstream. The use of SKIP for checksums is normal for dynamically sourced VCS packages. The only potential anomaly is an undefined variable `$commit_history` in the `_date` extraction, which is a minor bug that causes that line to fail silently, not a security issue. No obfuscated code, no exfiltration, no execution of untrusted binaries, and no system modifications beyond installing font files. The file is safe.
</details>
<evidence></evidence>
<summary>Standard AUR font package, no malicious code.</summary>
</security_assessment>

[2/3] Reviewing .gitignore...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR font package, no malicious code.
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
The `.gitignore` file is a standard configuration file for Git repositories. It contains only three lines that include `PKGBUILD`, `.SRCINFO`, and `.gitignore` itself, while ignoring all other files with `*`. This is typical for AUR packages to ensure only the essential packaging files are tracked in version control. There are no commands, network requests, obfuscation, or any other potentially malicious content. The file is harmless and follows common packaging practices.
</details>
<evidence></evidence>
<summary>Standard .gitignore for AUR packaging</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore for AUR packaging
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 12,644
  Completion Tokens: 2,595
  Total Tokens: 15,239
  Total Cost: $0.001403
  Execution Time: 58.57 seconds

Final Status: SAFE


No issues found.
