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
completion_tokens: 1861
total_tokens: 14446
cost: 0.00131956244
execution_time: 40.44
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: ok
upstream_files: 11
upstream_named_files: 0
unpinned_sources: 11
injection_attempts: 0
date: 2026-09-01T11:15:04Z
file_verdicts:
  - file: PKGBUILD
    status: safe
    summary: Standard AUR -git package, no malicious behavior detected.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata file, no malicious content.
  - file: .gitignore
    status: safe
    summary: Standard .gitignore file, no security issues.
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
The PKGBUILD uses standard practices for a VCS (`-git`) package. The top-level code calls `_update_version()` which makes `curl` requests to the GitHub API and `git ls-remote` against the official upstream repository to determine the latest commit/tag — this is normal automatic version detection. The `_source_main()` function constructs a `source` array that downloads font files directly from the upstream GitHub repository. No unknown or untrusted hosts are contacted, no obfuscated code is present, and no commands execute fetched content. The `--nobuild --nodeps --noprepare` commands will only fetch those sources and evaluate the global/PKGBUILD scope and `pkgver()`, which contain no malicious behavior. The SKIP checksums are expected for VCS sources.
</details>
<evidence>
</evidence>
<summary>Standard VCS PKGBUILD with no malicious code.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Standard VCS PKGBUILD with no malicious code.
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
The PKGBUILD fetches font files exclusively from the official Google repository (`github.com/google/material-design-icons`) using `curl` to raw file URLs and GitHub API for version detection. The `_update_version` function is a standard pattern for VCS/git AUR packages, dynamically determining the latest commit hash and tag. All source URLs point to the project's own upstream. Package functions only install font files into the package directory. There is no obfuscated code, no unexpected network requests, no exfiltration of data, and no execution of untrusted content. The SKIP checksums and mutable branch tracking are typical for `-git` packages and constitute a trust/hygiene choice, not evidence of malice.
</details>
<evidence></evidence>
<summary>Standard AUR -git package, no malicious behavior detected.</summary>
</security_assessment>

[1/3] Reviewing .SRCINFO, .gitignore...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR -git package, no malicious behavior detected.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.SRCINFO` metadata file for an AUR package. It declares source files fetched from the official Google material-design-icons GitHub repository, which is the project's own upstream. All checksums are set to `SKIP`, which is expected for VCS packages (note the `-git` suffix) and is not a sign of malice. There are no executable commands, obfuscated content, suspicious network requests, or any other indicators of malicious behavior. The file is purely declarative and poses no security risk.
</details>
<evidence></evidence>
<summary>Standard AUR metadata file, no malicious content.</summary>
</security_assessment>

[2/3] Reviewing .gitignore...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata file, no malicious content.
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard `.gitignore` for an AUR package repository. It ignores all files (`*`) and then un-ignores only `PKGBUILD`, `.SRCINFO`, and `.gitignore` itself using negation patterns (`!`). This is a common practice to keep the repository minimal. There is no executable code, no network requests, no obfuscation, and no system modifications. It poses no security risk.
</details>
<evidence></evidence>
<summary>Standard .gitignore file, no security issues.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore file, no security issues.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 12,585
  Completion Tokens: 1,861
  Total Tokens: 14,446
  Total Cost: $0.001320
  Execution Time: 40.44 seconds

Final Status: SAFE


No issues found.
