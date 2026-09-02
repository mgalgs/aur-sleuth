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
completion_tokens: 3489
total_tokens: 16074
cost: 0.00167341902
execution_time: 107.2
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: ok
upstream_files: 11
upstream_named_files: 0
unpinned_sources: 11
injection_attempts: 0
date: 2026-09-02T15:17:35Z
file_verdicts:
  - file: PKGBUILD
    status: safe
    summary: Standard AUR -git package, no malicious indicators found.
  - file: .gitignore
    status: safe
    summary: Standard .gitignore, no security concerns.
  - file: .SRCINFO
    status: safe
    summary: Standard package metadata with no malicious content.
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
The PKGBUILD defines a VCS-style package that auto-updates via GitHub API queries and downloads font files directly from the upstream repository. During the narrow gate (`makepkg --nobuild --nodeps --noprepare` and `makepkg --printsrcinfo`), only global‑scope code and `pkgver()` execute. The global scope calls `_update_version()` and `_source_main()`, which make HTTP requests to `api.github.com` and `git ls-remote` to the upstream repo (legitimate) and construct a `source` array of `.ttf`/`.otf`/`.woff2` files from `https://github.com/google/material-design-icons/raw/refs/heads/master/`. All connections are to the package&#39;s own upstream (Google GitHub). The `pkgver()` function simply echoes a version string. No code executes from downloaded content, no unexpected external hosts are contacted, and no dangerous commands (eval, base64 decode, etc.) appear in the scoped code. A typo (`$commit_history` instead of `$_response`) causes a benign bug but no injection. SKIP checksums on HTTP sources are permissible for this gate.
</details>
<evidence></evidence>
<summary>No malicious code executed during source fetch or version computation.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious code executed during source fetch or version computation.
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
The PKGBUILD is a standard AUR -git package for Material Design icons. It downloads font files directly from the official GitHub repository via raw.githubusercontent.com (the project's own upstream). The version auto-detection uses `curl` against api.github.com and `git ls-remote` against the official repository URL — both are expected and appropriate for a VCS package. There is no obfuscated code, no execution of downloaded content, no exfiltration of local data, and no deviation from normal packaging practices. All `sha256sums` are set to `SKIP`, which is required for VCS sources per Arch guidelines. The only minor issue is a variable name typo (`$commit_history` instead of `$_response`) that would cause a portion of the version parsing to silently fail, but this does not introduce any security risk and is not malicious.
</details>
<evidence></evidence>
<summary>Standard AUR -git package, no malicious indicators found.</summary>
</security_assessment>

[1/3] Reviewing .SRCINFO, .gitignore...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR -git package, no malicious indicators found.
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This `.gitignore` file is a standard configuration file used by Git to ignore certain files in the repository. It ignores all files (`*`) except the explicitly whitelisted ones: `PKGBUILD`, `.SRCINFO`, and the `.gitignore` itself. This is normal and expected for an AUR package repository, where only the packaging metadata needs to be versioned. There are no network requests, obfuscated code, file operations, or any other signs of malicious behavior.
</details>
<evidence/>
<summary>Standard .gitignore, no security concerns.</summary>
</security_assessment>

[2/3] Reviewing .SRCINFO...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore, no security concerns.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This `.SRCINFO` file is a standard AUR package metadata file. It defines package sources as raw font files (TTF, OTF, WOFF2) fetched directly from the official Google Material Design Icons GitHub repository (`github.com/google/material-design-icons`). All checksums are set to `SKIP`, which is typical for VCS packages and raw file sources; while not a best practice for reproducibility, it is not malicious. The file contains no executable code, no obfuscated content, no suspicious network destinations, and no file operations. It only declares package dependencies, provides/conflicts relationships, and source URLs. There is no evidence of a supply-chain attack or malicious intent.
</details>
<evidence></evidence>
<summary>Standard package metadata with no malicious content.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed .SRCINFO. Status: SAFE -- Standard package metadata with no malicious content.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 12,585
  Completion Tokens: 3,489
  Total Tokens: 16,074
  Total Cost: $0.001673
  Execution Time: 107.20 seconds

Final Status: SAFE


No issues found.
