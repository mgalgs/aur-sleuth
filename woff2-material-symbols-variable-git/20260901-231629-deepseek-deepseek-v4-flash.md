---
package: woff2-material-symbols-variable-git
pkgbase: material-symbols-git
pkgver: 4.0.0.r169.g84ccef28
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: b9e20f728bbe0de1871ebaca31738c802edc31f8
prompt_tokens: 12743
completion_tokens: 4803
total_tokens: 17546
cost: 0.00156755886
execution_time: 132.0
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: ok
upstream_files: 11
upstream_named_files: 0
unpinned_sources: 11
injection_attempts: 0
date: 2026-09-01T23:16:28Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard .gitignore with no security issues.
  - file: .SRCINFO
    status: safe
    summary: Innocent package metadata, no malicious code.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR font package; only upstream GitHub fetches; no malicious behavior.
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
For the narrow gate of running `makepkg --nobuild --nodeps --noprepare` and `makepkg --printsrcinfo`, this PKGBUILD does not execute genuinely malicious code. The top-level code calls `_update_version`, which uses `curl` against GitHub's API and `git ls-remote` against the package's own upstream repository to compute a version string. This is a network fetch of metadata from the project's official upstream, not a download-and-execute payload, and it does not exfiltrate local data.

`_source_main` only appends source URLs and `SKIP` checksums for font files from the official Google `material-design-icons` repository. Downloading unverified archives is the intended purpose of the source-fetch step and is not by itself unsafe for this gate. `pkgver()` merely echoes the computed version. Code inside `prepare()`, `build()`, or `package()` is not executed by these commands due to `--nobuild`/`--noprepare`, so any issues there are out of scope for this assessment.
</details>
<evidence>
</evidence>
<summary>Top-level fetches upstream metadata only; no malicious code executes during source fetch.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Top-level fetches upstream metadata only; no malicious code executes during source fetch.
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Note: 11 remote source(s) have no checksum (sha256sums=SKIP), so the fetched bytes are not verifiable and can change without any AUR update: MaterialIcons-Regular-4.0.0.r169.g84ccef28.ttf::https://github.com/google/material-design-icons/raw/refs/heads/master/font/MaterialIcons-Regular.ttf, MaterialIconsOutlined-Regular-4.0.0.r169.g84ccef28.otf::https://github.com/google/material-design-icons/raw/refs/heads/master/font/MaterialIconsOutlined-Regular.otf, MaterialIconsRound-Regular-4.0.0.r169.g84ccef28.otf::https://github.com/google/material-design-icons/raw/refs/heads/master/font/MaterialIconsRound-Regular.otf, MaterialIconsSharp-Regular-4.0.0.r169.g84ccef28.otf::https://github.com/google/material-design-icons/raw/refs/heads/master/font/MaterialIconsSharp-Regular.otf, MaterialIconsTwoTone-Regular-4.0.0.r169.g84ccef28.otf::https://github.com/google/material-design-icons/raw/refs/heads/master/font/MaterialIconsTwoTone-Regular.otf, MaterialSymbolsOutlined[FILL,GRAD,opsz,wght]-4.0.0.r169.g84ccef28.ttf::https://github.com/google/material-design-icons/raw/refs/heads/master/variablefont/MaterialSymbolsOutlined%5BFILL,GRAD,opsz,wght%5D.ttf, MaterialSymbolsOutlined[FILL,GRAD,opsz,wght]-4.0.0.r169.g84ccef28.woff2::https://github.com/google/material-design-icons/raw/refs/heads/master/variablefont/MaterialSymbolsOutlined%5BFILL,GRAD,opsz,wght%5D.woff2, MaterialSymbolsRounded[FILL,GRAD,opsz,wght]-4.0.0.r169.g84ccef28.ttf::https://github.com/google/material-design-icons/raw/refs/heads/master/variablefont/MaterialSymbolsRounded%5BFILL,GRAD,opsz,wght%5D.ttf, MaterialSymbolsRounded[FILL,GRAD,opsz,wght]-4.0.0.r169.g84ccef28.woff2::https://github.com/google/material-design-icons/raw/refs/heads/master/variablefont/MaterialSymbolsRounded%5BFILL,GRAD,opsz,wght%5D.woff2, MaterialSymbolsSharp[FILL,GRAD,opsz,wght]-4.0.0.r169.g84ccef28.ttf::https://github.com/google/material-design-icons/raw/refs/heads/master/variablefont/MaterialSymbolsSharp%5BFILL,GRAD,opsz,wght%5D.ttf, MaterialSymbolsSharp[FILL,GRAD,opsz,wght]-4.0.0.r169.g84ccef28.woff2::https://github.com/google/material-design-icons/raw/refs/heads/master/variablefont/MaterialSymbolsSharp%5BFILL,GRAD,opsz,wght%5D.woff2
Reviewing the 3 file(s) in the AUR repository. The 11 downloaded file(s) are upstream content, outside the threat model, and are not read.
Reviewing the AUR repository's files...
[0/3] Reviewing .gitignore...
[0/3] Reviewing .gitignore, PKGBUILD...
[0/3] Reviewing .gitignore, PKGBUILD, .SRCINFO...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard `.gitignore` used to track only essential AUR packaging files (`PKGBUILD`, `.SRCINFO`, `.gitignore`). It contains no executable code, no network requests, no obfuscation, and no unusual operations. This is benign.</details>
<evidence></evidence>
<summary>Standard .gitignore with no security issues.</summary>
</security_assessment>

[1/3] Reviewing PKGBUILD, .SRCINFO...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore with no security issues.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard AUR `.SRCINFO` metadata file. It defines package metadata (pkgbase, pkgname, pkgdesc, sources, etc.) and lists source URIs from the official Google Material Design Icons GitHub repository (`https://github.com/google/material-design-icons`). All SHA-256 checksums are set to `SKIP`, which is standard practice for VCS (git) packages because the source is checked out directly from a repository rather than from a static tarball. There is no obfuscated or encoded content, no network destinations unrelated to the package's upstream, no dangerous commands (curl, eval, base64, etc.), and no file or system manipulation operations. The content is purely declarative metadata and is consistent with legitimate AUR packaging practices.
</details>
<evidence>

</evidence>
<summary>Innocent package metadata, no malicious code.</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Innocent package metadata, no malicious code.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD packages Google's Material Design icon fonts. All downloads come from `github.com/google/material-design-icons` (the project's own upstream repository), and the build simply installs the downloaded `.ttf`, `.otf`, and `.woff2` files into `$pkgdir/usr/share/fonts` with `install -Dm644`.

The `sha256sums` entries are set to `SKIP`, which is normal for raw-URL/VCS-style sources and is a hygiene concern, not evidence of malice. The `_update_version()` function queries `api.github.com` and runs `git ls-remote` against the package's own upstream to derive a `pkgver`; the fetched JSON is parsed only into version strings and is never executed. This is a standard AUR auto-version pattern.

There is no obfuscated code, no `eval`, no `base64`, no unexpected network hosts, and no file operations outside the packaging workflow. Two minor maintainability bugs exist (`_date` reads an unset variable, and `$_pkgname` is unset in one package function), but they cause only incorrect version/install-path values and are not security issues. No injected or malicious behavior was found.
</details>
<evidence>
</evidence>
<summary>Standard AUR font package; only upstream GitHub fetches; no malicious behavior.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR font package; only upstream GitHub fetches; no malicious behavior.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 12,743
  Completion Tokens: 4,803
  Total Tokens: 17,546
  Total Cost: $0.001568
  Execution Time: 132.00 seconds

Final Status: SAFE


No issues found.
