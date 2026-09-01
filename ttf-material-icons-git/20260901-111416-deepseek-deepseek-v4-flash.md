---
package: ttf-material-icons-git
pkgbase: material-symbols-git
pkgver: 4.0.0.r169.g84ccef28
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: b9e20f728bbe0de1871ebaca31738c802edc31f8
prompt_tokens: 12644
completion_tokens: 5015
total_tokens: 17659
cost: 0.00183478008
execution_time: 148.87
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: ok
upstream_files: 11
upstream_named_files: 0
unpinned_sources: 11
injection_attempts: 0
date: 2026-09-01T11:14:16Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard AUR VCS font package metadata, no security issues.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD for Material Design icons, safe.
  - file: .gitignore
    status: safe
    summary: Standard .gitignore for AUR package repository, no issues.
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
For the narrow scope of this gate (sourcing the PKGBUILD, running `pkgver()`, and fetching the `source` array), I find no genuinely malicious behavior.

When makepkg sources this PKGBUILD, the top-level `_update_version` function runs first. It performs three read-only remote operations, all against the package's own upstream on GitHub: two `curl` calls to `https://api.github.com/repos/google/material-design-icons/...` and a `git ls-remote --tags` against `https://github.com/google/material-design-icons`. The responses are captured in variables and parsed with `grep`/`sed` to build a version string (`_pkgver`). None of the fetched data is piped to a shell, `eval`ed, `source`d, or executed in any way — the worst a tampered or surprising response could do is influence the generated version string. `pkgver()` merely echoes `${_pkgver}`.

`_source_main` then populates the `source` array with font files (`.ttf`, `.otf`, `.woff2`) from the upstream project's `raw.githubusercontent.com`-style GitHub `raw/refs/heads/master` URLs; this is the expected source download this gate is designed to perform. The `SKIP` checksums and the mutable `master` ref mean the downloaded font artifacts are unverified until the later full audit — that is a trust/hygiene note, not a reason to fail this gate. There is no obfuscation, no `curl|bash`, no `eval`, no base64/hex encoding, and no exfiltration of local data. The only minor quirks are a harmless bug (`$commit_history` is undefined when computing `_date`) and the fact that the auto-update logic performs network queries at source time, which is a reproducibility consideration rather than a supply-chain indicator.
</details>
<evidence>
</evidence>
<summary>
Top-level code queries upstream GitHub metadata only; nothing fetched is executed. Safe for this gate.
</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Top-level code queries upstream GitHub metadata only; nothing fetched is executed. Safe for this gate.
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
This .SRCINFO file describes a VCS (git) package tracking the upstream Google Material Design Icons repository. All source files are downloaded directly from the official GitHub repository of the project (`github.com/google/material-design-icons`) via HTTPS. The `sha256sums` are all set to `SKIP`, which is standard practice for VCS packages where the source changes with each commit and is not a security concern. There is no evidence of obfuscated code, network requests to suspicious hosts, or any other malicious behavior. The file is a standard metadata descriptor for an AUR package.
</details>
<evidence>
</evidence>
<summary>Standard AUR VCS font package metadata, no security issues.</summary>
</security_assessment>

[1/3] Reviewing .gitignore, PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR VCS font package metadata, no security issues.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD fetches Material Design icon fonts from the official Google GitHub repository (github.com/google/material-design-icons). The `_source_main` function constructs source URLs using the raw GitHub master branch path, which is a standard and expected download location for this upstream project. All checksums are set to `SKIP`, which is normal for a VCS/git package where the exact hash cannot be predetermined.

The `_update_version` function calls `curl` and `git ls-remote` to query GitHub API and tag information solely for the purpose of computing a dynamic version string (`pkgver`). It does not download, execute, or install any external code—only metadata. This is a routine pattern for AUR `-git` packages and does not introduce supply-chain risk.

All file operations in the `package_*` functions are limited to installing font files into the system font directory (`/usr/share/fonts/`), which is the intended behavior. There are no obfuscated commands, no attempts to exfiltrate data, and no execution of untrusted scripts. The file is consistent with standard AUR packaging practices and presents no signs of malicious injection.
</details>
<evidence></evidence>
<summary>Standard AUR PKGBUILD for Material Design icons, safe.</summary>
</security_assessment>

[2/3] Reviewing .gitignore...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD for Material Design icons, safe.
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard `.gitignore` for an AUR package repository. It ignores all files except the critical packaging files: `PKGBUILD`, `.SRCINFO`, and itself. There is no executable code, no network requests, no obfuscation, and no file operations beyond what git normally uses to determine which files to track. This pattern is completely normal and expected for maintaining an AUR package in a git repository. No security issues are present.
</details>
<evidence></evidence>
<summary>Standard .gitignore for AUR package repository, no issues.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore for AUR package repository, no issues.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 12,644
  Completion Tokens: 5,015
  Total Tokens: 17,659
  Total Cost: $0.001835
  Execution Time: 148.87 seconds

Final Status: SAFE


No issues found.
