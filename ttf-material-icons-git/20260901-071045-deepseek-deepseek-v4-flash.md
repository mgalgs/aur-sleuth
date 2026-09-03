---
package: ttf-material-icons-git
pkgbase: material-symbols-git
pkgver: 4.0.0.r169.g84ccef28
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: b9e20f728bbe0de1871ebaca31738c802edc31f8
prompt_tokens: 12565
completion_tokens: 2385
total_tokens: 14950
cost: 0.00140274820
execution_time: 77.14
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: ok
upstream_files: 11
upstream_named_files: 0
unpinned_sources: 11
injection_attempts: 0
date: 2026-09-01T07:10:45Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard .SRCINFO metadata, no malicious content.
  - file: .gitignore
    status: safe
    summary: Standard .gitignore file, no security issues.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR git package fetching upstream fonts safely.
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
The PKGBUILD's top-level code and `pkgver()` function only perform safe operations: defining variables, constructing source URLs, and running an automatic version‑update routine.  
- The `_update_version()` function makes HTTPS requests to GitHub’s official API and runs `git ls-remote` against the package’s own upstream repository (`google/material-design-icons`). These fetch only commit metadata and tags; the responses are parsed into a version string. No code is downloaded or executed from the network. This is standard behavior for a `-git` package that dynamically determines its version.  
- The `source` array is populated with HTTP(S) links to the same official GitHub repository, fetching font files directly. No checksums are provided (`SKIP`), but that is normal for VCS-style packages and does not make the *fetching* itself dangerous.  
- No obfuscated code, dangerous commands (`eval`, `base64`, `curl|bash`), calls that exfiltrate data, or other supply‑chain indicators are present in the executed scope.  
- Because `--noprepare` and `--nobuild` are used, the `prepare()`, `build()`, and `package()` functions (which contain `install` commands) are never invoked. Any code inside those functions is out of scope for this gate.

Thus, running `makepkg --nobuild --nodeps --noprepare` and `makepkg --printsrcinfo` is safe.
</details>
<evidence></evidence>
<summary>Safe: no malicious code in top-level or pkgver() scope.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Safe: no malicious code in top-level or pkgver() scope.
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
This is a standard `.SRCINFO` metadata file for an AUR package (material-symbols-git). It declares sources for various Material Design icon font files (TTF, OTF, WOFF2) all fetched from the official upstream GitHub repository (google/material-design-icons). All SHA-256 checksums are set to `SKIP`, which is normal and expected for VCS/git packages and does not indicate malice. No commands, scripts, or operations are present to evaluate; the file only contains metadata. There is no evidence of exfiltration, backdoors, obfuscated code, or any supply-chain attack.
</details>
<evidence></evidence>
<summary>Standard .SRCINFO metadata, no malicious content.</summary>
</security_assessment>

[1/3] Reviewing .gitignore, PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard .SRCINFO metadata, no malicious content.
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.gitignore` file for an AUR package repository. It ignores all files (`*`) except for the essential packaging files: `PKGBUILD`, `.SRCINFO`, and itself. There is no executable code, no network requests, no obfuscation, and no deviation from normal packaging practices. The file is purely a configuration file for git to exclude unnecessary files from version control.
</details>
<evidence></evidence>
<summary>Standard .gitignore file, no security issues.</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore file, no security issues.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a standard Arch User Repository (AUR) VCS package that fetches font files directly from Google's official material-design-icons GitHub repository. All network requests target `github.com` (GitHub API and raw content), which is the project's legitimate upstream source. The `sha256sums` are set to `SKIP`, which is expected for VCS sources because the content is not a static tarball. The `_update_version()` function uses `curl` and `git ls-remote` to determine the latest version relative to the most recent tag — this is normal and not suspicious. There is no obfuscated code, no hidden downloads, no execution of fetched content beyond unpacking font files into the package directory. The package functions correctly install font files into the system font directory. No malicious behavior is present.
</details>
<evidence></evidence>
<summary>Standard AUR git package fetching upstream fonts safely.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR git package fetching upstream fonts safely.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 12,565
  Completion Tokens: 2,385
  Total Tokens: 14,950
  Total Cost: $0.001403
  Execution Time: 77.14 seconds

Final Status: SAFE


No issues found.
