---
package: ttf-material-icons-git
pkgbase: material-symbols-git
pkgver: 4.0.0.r169.g84ccef28
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 3e318911529c43138ec6bdba0bfcb56907607021
prompt_tokens: 12802
completion_tokens: 2928
total_tokens: 15730
cost: 0.001653210748
execution_time: 52.98
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: ok
upstream_files: 11
upstream_named_files: 0
unpinned_sources: 11
date: 2026-08-31T07:11:39Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard AUR .gitignore restricting tracked files to packaging metadata; no security concerns.
  - file: .SRCINFO
    status: safe
    summary: Metadata-only file, no malicious content.
  - file: PKGBUILD
    status: safe
    summary: Font packaging PKGBUILD only fetches upstream Google fonts; no malicious behavior found.
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
Running the requested commands only fetches sources and sources the PKGBUILD. The top-level code calls `_update_version`, which uses `curl` against `api.github.com` and `git ls-remote --tags` against the package's own upstream GitHub repository to determine the latest commit/tag. This performs network reads of commit metadata only; it does not download executable payloads, does not pipe fetched data into a shell, and does not exfiltrate local data. It is consistent with a normal AUR version auto-update helper.

`_source_main` builds the `source` array from `https://github.com/google/material-design-icons/raw/refs/heads/master` for the package's own font files. The `sha256sums` are `SKIP`, but this is explicitly acceptable for this gate: fetching and extracting unverified archives is exactly what these commands are designed to do, and `--nobuild --noprepare` prevent anything in the package code from executing after extraction. `pkgver()` only echoes `_pkgver`. No genuinely malicious top-level behavior is present.
</details>
<evidence>
</evidence>
<summary>Top-level code only fetches upstream metadata and font sources; no malicious execution.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Top-level code only fetches upstream metadata and font sources; no malicious execution.
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Note: 11 remote source(s) have no checksum (sha256sums=SKIP), so the fetched bytes are not verifiable and can change without any AUR update: MaterialIcons-Regular-4.0.0.r169.g84ccef28.ttf::https://github.com/google/material-design-icons/raw/refs/heads/master/font/MaterialIcons-Regular.ttf, MaterialIconsOutlined-Regular-4.0.0.r169.g84ccef28.otf::https://github.com/google/material-design-icons/raw/refs/heads/master/font/MaterialIconsOutlined-Regular.otf, MaterialIconsRound-Regular-4.0.0.r169.g84ccef28.otf::https://github.com/google/material-design-icons/raw/refs/heads/master/font/MaterialIconsRound-Regular.otf, MaterialIconsSharp-Regular-4.0.0.r169.g84ccef28.otf::https://github.com/google/material-design-icons/raw/refs/heads/master/font/MaterialIconsSharp-Regular.otf, MaterialIconsTwoTone-Regular-4.0.0.r169.g84ccef28.otf::https://github.com/google/material-design-icons/raw/refs/heads/master/font/MaterialIconsTwoTone-Regular.otf, MaterialSymbolsOutlined[FILL,GRAD,opsz,wght]-4.0.0.r169.g84ccef28.ttf::https://github.com/google/material-design-icons/raw/refs/heads/master/variablefont/MaterialSymbolsOutlined%5BFILL,GRAD,opsz,wght%5D.ttf, MaterialSymbolsOutlined[FILL,GRAD,opsz,wght]-4.0.0.r169.g84ccef28.woff2::https://github.com/google/material-design-icons/raw/refs/heads/master/variablefont/MaterialSymbolsOutlined%5BFILL,GRAD,opsz,wght%5D.woff2, MaterialSymbolsRounded[FILL,GRAD,opsz,wght]-4.0.0.r169.g84ccef28.ttf::https://github.com/google/material-design-icons/raw/refs/heads/master/variablefont/MaterialSymbolsRounded%5BFILL,GRAD,opsz,wght%5D.ttf, MaterialSymbolsRounded[FILL,GRAD,opsz,wght]-4.0.0.r169.g84ccef28.woff2::https://github.com/google/material-design-icons/raw/refs/heads/master/variablefont/MaterialSymbolsRounded%5BFILL,GRAD,opsz,wght%5D.woff2, MaterialSymbolsSharp[FILL,GRAD,opsz,wght]-4.0.0.r169.g84ccef28.ttf::https://github.com/google/material-design-icons/raw/refs/heads/master/variablefont/MaterialSymbolsSharp%5BFILL,GRAD,opsz,wght%5D.ttf, MaterialSymbolsSharp[FILL,GRAD,opsz,wght]-4.0.0.r169.g84ccef28.woff2::https://github.com/google/material-design-icons/raw/refs/heads/master/variablefont/MaterialSymbolsSharp%5BFILL,GRAD,opsz,wght%5D.woff2
Reviewing the 3 file(s) in the AUR repository. The 11 downloaded file(s) are upstream content, outside the threat model, and are not read.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, .gitignore...
[0/3] Reviewing .SRCINFO, .gitignore, PKGBUILD...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard `.gitignore` used in AUR git repositories. It ignores all files except the packaging metadata (`PKGBUILD`, `.SRCINFO`) and the `.gitignore` itself. This is routine practice to keep the AUR repository clean and only track the files required for package submission. There is no executable code, no network access, no file modification outside the repository, and no obfuscation. No security issues are present.
</details>
<evidence>
</evidence>
<summary>
Standard AUR .gitignore restricting tracked files to packaging metadata; no security concerns.</summary>
</security_assessment>

[1/3] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed .gitignore. Status: SAFE -- Standard AUR .gitignore restricting tracked files to packaging metadata; no security concerns.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This `.SRCINFO` file is a standard AUR package metadata file for the `material-symbols-git` package. It declares sources that are fetched directly from the official Google Material Design Icons repository on GitHub (`github.com/google/material-design-icons`). The file contains no executable code, no obfuscated content, and no unexpected network destinations. All sources are font files (TTF, OTF, WOFF2) from the upstream project. The `sha256sums` are set to `SKIP`, which is normal and expected for VCS packages (as indicated by the `-git` suffix). No system modifications, backdoors, or data exfiltration mechanisms are present. The file is purely declarative and follows standard AUR packaging practices.
</details>
<evidence></evidence>
<summary>Metadata-only file, no malicious content.</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Metadata-only file, no malicious content.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD packages Google Material Design icon fonts. It downloads font files from the project's own upstream GitHub repository and installs them under `/usr/share/fonts`. The `_update_version` function queries `api.github.com` and uses `git ls-remote` only to compute a version string; the responses are parsed with `grep`/`sed` and never executed. There is no `eval`, `base64`, obfuscated code, unexpected network host, credential access, or destructive file operation.

The `sha256sums` are `SKIP` and the raw `master` branch is used as the source. These are unverified/mutable upstream sources, but that is a normal -git packaging hygiene consideration rather than evidence of malice. A minor bug appears in `_date` referencing an undefined `$commit_history`, but it does not affect the security assessment.
</details>
<evidence>
</evidence>
<summary>
Font packaging PKGBUILD only fetches upstream Google fonts; no malicious behavior found.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Font packaging PKGBUILD only fetches upstream Google fonts; no malicious behavior found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 12,802
  Completion Tokens: 2,928
  Total Tokens: 15,730
  Total Cost: $0.001653
  Execution Time: 52.98 seconds

Final Status: SAFE


No issues found.
