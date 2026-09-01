---
package: woff2-material-symbols-variable-git
pkgbase: material-symbols-git
pkgver: 4.0.0.r169.g84ccef28
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: b9e20f728bbe0de1871ebaca31738c802edc31f8
prompt_tokens: 12585
completion_tokens: 2574
total_tokens: 15159
cost: 0.00143495436
execution_time: 59.47
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: ok
upstream_files: 11
upstream_named_files: 0
unpinned_sources: 11
injection_attempts: 0
date: 2026-09-01T07:12:42Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata file with no malicious content.
  - file: .gitignore
    status: safe
    summary: Standard AUR gitignore, no malicious content.
  - file: PKGBUILD
    status: safe
    summary: No malicious code detected; standard AUR -git PKGBUILD.
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
Running `makepkg --nobuild --nodeps --noprepare` and `makepkg --printsrcinfo` will safely fetch sources and execute only the top-level scope and `pkgver()`. The PKGBUILD calls `_update_version` at global scope, which performs two `curl` HTTP requests to the GitHub API and one `git ls-remote` call – all targeting the official upstream repository `google/material-design-icons`. These operations retrieve commit and tag metadata to compute an automatic version string; they do **not** download or execute any code beyond setting `_pkgver`. The `_source_main` function appends official GitHub raw URLs to the `source` array – no obfuscation, no unexpected hosts, no `eval` or base64 decoding. The `pkgver()` function simply echoes the computed version. There is no executable code in `prepare()`, `build()`, or `package()` that runs at this stage. The use of SKIP checksums is expected for VCS/font sources. No evidence of malicious or dangerous behavior exists in the code executed during this narrow gate.
</details>
<evidence></evidence>
<summary>Safe; normal VCS auto-update and source fetch.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Safe; normal VCS auto-update and source fetch.
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
This .SRCINFO file defines an AUR package that fetches font files (TTF, OTF, WOFF2) from the official Google Material Design Icons GitHub repository. All sources are from the project's own upstream (`github.com/google/material-design-icons`), which is expected and legitimate. All checksums are set to `SKIP`, which is standard practice for VCS/git-based packages and for raw file downloads from mutable branches. There is no executable code, no obfuscation, no network requests to unexpected hosts, and no instructions that could exfiltrate data or install backdoors. The file is purely declarative metadata and poses no security risk.
</details>
<evidence></evidence>
<summary>Standard AUR metadata file with no malicious content.</summary>
</security_assessment>

[1/3] Reviewing .gitignore, PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata file with no malicious content.
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard `.gitignore` file for an AUR package repository. It contains only three negated patterns to whitelist the PKGBUILD, .SRCINFO, and .gitignore files themselves, ignoring all other files in the repository. This is a routine and expected configuration for AUR packaging and does not contain any executable code, network requests, obfuscation, or any other potentially malicious behavior.
</details>
<evidence></evidence>
<summary>Standard AUR gitignore, no malicious content.</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed .gitignore. Status: SAFE -- Standard AUR gitignore, no malicious content.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard practices for an AUR `-git` package. It downloads font files directly from the upstream Google repository via raw GitHub URLs. The `_update_version` function uses `curl` to query the GitHub API for commit data and `git ls-remote` to list tags, both typical for version string generation in VCS packages. Checksums are set to `SKIP`, which is expected for VCS sources. There are no obfuscated commands, no unexpected network destinations, no exfiltration of local data, and no execution of downloaded code. All operations serve the stated purpose of packaging Material Design icon fonts.
</details>
<evidence></evidence>
<summary>No malicious code detected; standard AUR -git PKGBUILD.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- No malicious code detected; standard AUR -git PKGBUILD.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 12,585
  Completion Tokens: 2,574
  Total Tokens: 15,159
  Total Cost: $0.001435
  Execution Time: 59.47 seconds

Final Status: SAFE


No issues found.
