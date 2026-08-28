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
completion_tokens: 3329
total_tokens: 15914
cost: 0.0016702924
execution_time: 59.28
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: ok
upstream_files: 11
upstream_named_files: 0
unpinned_sources: 11
date: 2026-08-28T19:18:28Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard .SRCINFO for a VCS package; no malicious content.
  - file: .gitignore
    status: safe
    summary: Standard .gitignore file with no malicious content.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD with no malicious code.
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
The PKGBUILD's top-level scope calls `_update_version()` and `_source_main()` which fetch commit info and font file URLs from the package's own upstream (github.com/google/material-design-icons). This is standard AUR version detection and source definition. `pkgver()` only echoes a variable. No obfuscated code, no remote code execution, and no exfiltration of sensitive data. The `--nobuild --noprepare` flags prevent any build/package functions from running. The network requests are to the project's own GitHub API and git repository, which is expected and not malicious.
</details>
<evidence></evidence>
<summary>Safe: only upstream API calls and source definitions.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Safe: only upstream API calls and source definitions.
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
This is a standard `.SRCINFO` file for an AUR VCS (`-git`) package. It declares metadata and source URLs for the `material-design-icons` project from Google's official GitHub repository. All source URLs point to `github.com/google/material-design-icons`, which is the legitimate upstream. The `sha256sums` are set to `SKIP` — this is normal and expected for VCS packages (where the source is fetched via git and not a static tarball). There are no commands, scripts, or any executable content in this file; it is purely declarative metadata. No suspicious or malicious indicators are present.
</details>
<evidence></evidence>
<summary>Standard .SRCINFO for a VCS package; no malicious content.</summary>
</security_assessment>

[1/3] Reviewing .gitignore, PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard .SRCINFO for a VCS package; no malicious content.
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.gitignore` file used to ensure that only the essential packaging files (PKGBUILD, .SRCINFO, and the `.gitignore` itself) are tracked in version control. There is no executable or interpreted code, no network requests, no obfuscation, and no deviation from typical AUR repository practices. The file poses no security risk.</details>
<evidence></evidence>
<summary>Standard .gitignore file with no malicious content.</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore file with no malicious content.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD from the AUR is a standard packaging script for downloading and installing variable font files from the official Google Material Design Icons repository. The file contains:

- A `_update_version` function that queries the GitHub API and `git ls-remote` to determine the latest version. All network requests go to `github.com/google/material-design-icons`, the project's own upstream. No code is downloaded and executed; only version metadata is fetched.
- A `_source_main` function that adds font download URLs from the same upstream source to the `source` array. While this function is never actually called in the current file (making the source array empty), that is a packaging bug, not a supply-chain attack.
- Standard package functions that install font files into `$pkgdir`.
- Checksums set to `SKIP`, which is normal for VCS/git packages.

There is no obfuscated code, no execution of downloaded scripts, no exfiltration of data, no backdoors, and no modifications to system files outside the package's scope. The dynamic version detection and network calls are expected for an AUR `-git` package and do not constitute malicious behavior.
</details>
<evidence></evidence>
<summary>Standard AUR PKGBUILD with no malicious code.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD with no malicious code.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 12,585
  Completion Tokens: 3,329
  Total Tokens: 15,914
  Total Cost: $0.001670
  Execution Time: 59.28 seconds

Final Status: SAFE


No issues found.
