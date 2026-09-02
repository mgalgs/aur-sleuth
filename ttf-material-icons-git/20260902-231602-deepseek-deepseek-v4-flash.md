---
package: ttf-material-icons-git
pkgbase: material-symbols-git
pkgver: 4.0.0.r169.g84ccef28
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: c6a5a9f6b0e70545bff9fff8802c361e476b0a86
prompt_tokens: 12723
completion_tokens: 7287
total_tokens: 20010
cost: 0.00212479848
execution_time: 69.85
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: ok
upstream_files: 11
upstream_named_files: 0
unpinned_sources: 11
injection_attempts: 0
date: 2026-09-02T23:16:02Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Benign gitignore with no security issues.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata file, no malicious content.
  - file: PKGBUILD
    status: safe
    summary: Unpinned mutable upstream and SKIP checksums are hygiene issues; no malicious behavior found.
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
Only the PKGBUILD top-level scope, `pkgver()`, and source fetching execute during this gate (`--nobuild --nodeps --noprepare`); `prepare()`/`build()`/`package()` are out of scope for this check.

Top-level code calls `_update_version`, which runs `curl -Ssf` against `https://api.github.com/repos/google/material-design-icons/...` and `git ls-remote --tags https://github.com/google/material-design-icons`, then parses the responses with grep/sed to build a version string. All network destinations are the package's own upstream (Google's material-design-icons repo and its official GitHub API); no fetched content is executed, no local data is sent anywhere, and nothing is written to disk outside normal source fetching. This is a routine (though unpinned) auto-versioning pattern for -git packages — a hygiene note, not a threat.

`_source_main` populates the `source` array with font files (TTF/OTF/WOFF2) from `https://github.com/google/material-design-icons/raw/refs/heads/master/...`. Downloading these unverified upstream artifacts is precisely what this gate is designed to do; all `sha256sums` are `SKIP`, which is never grounds to fail this gate. The files are data, not executables, and nothing runs them here. `pkgver()` merely echoes `$_pkgver`. No obfuscation, no eval/base64 payloads, no unexpected hosts, no exfiltration, and no execution of downloaded payloads appear in the code paths exercised by the two commands.
</details>
<evidence>
</evidence>
<summary>
Safe: only GitHub API queries and upstream font downloads run; nothing malicious.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Safe: only GitHub API queries and upstream font downloads run; nothing malicious.
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
This is a standard `.gitignore` file used in AUR git repositories. It ignores all files except the explicitly whitelisted ones (`PKGBUILD`, `.SRCINFO`, and itself). There are no commands, network requests, file operations, or any executable content. No security concerns.
</details>
<evidence></evidence>
<summary>Benign gitignore with no security issues.</summary>
</security_assessment>

[1/3] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed .gitignore. Status: SAFE -- Benign gitignore with no security issues.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This .SRCINFO file is a standard metadata file for the AUR package "material-symbols-git". All sources point to the official Google Material Design Icons repository on GitHub, which is the expected upstream. The checksums are set to SKIP, which is normal for VCS-style packages and is not a security issue. There are no scripts, no obfuscated content, no unexpected network requests, and no commands that could execute malicious code. The file only defines package metadata, dependencies, and splitted packages. No evidence of a supply-chain attack or malicious behavior.
</details>
<evidence>
</evidence>
<summary>Standard AUR metadata file, no malicious content.</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata file, no malicious content.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD packages Google Material Design icon fonts from the project's own official upstream (`github.com/google/material-design-icons`). All downloads come from that repository (raw files and the GitHub API for version detection), and the only installed artifacts are font files placed under `$pkgdir/usr/share/fonts`. There is no obfuscated code, no `eval`/`base64`, no execution of downloaded content, no exfiltration of local data, and no modification of files outside the package directory. The `curl` calls to `api.github.com` serve the legitimate purpose of computing a dynamic `pkgver` for this `-git` package.

There are hygiene concerns worth noting, but none rise to malice:
- Sources are fetched from the mutable `master` branch with all `sha256sums` set to `SKIP`, making builds non-reproducible and widening the supply-chain window. This is normal-but-unpinned behavior for `-git` packages, not evidence of an attack.
- `_update_version` makes live network requests at build time to determine the version, and the actual fonts are fetched via the `source` array from a branch ref rather than a pinned commit — again, a reproducibility concern only.
- There are benign bugs: `$commit_history` is referenced but never assigned (so `_date` is empty), and `$_pkgname` is unset in `package_ttf-material-icons-git`, likely yielding an empty directory component in the install path. These would cause incorrect packaging, not security harm.

Nothing in the file indicates injected malicious code or a supply-chain attack; it is consistent with ordinary (if imperfect) AUR packaging practice.
</details>
<evidence>
</evidence>
<summary>
Unpinned mutable upstream and SKIP checksums are hygiene issues; no malicious behavior found.
</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Unpinned mutable upstream and SKIP checksums are hygiene issues; no malicious behavior found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 12,723
  Completion Tokens: 7,287
  Total Tokens: 20,010
  Total Cost: $0.002125
  Execution Time: 69.85 seconds

Final Status: SAFE


No issues found.
