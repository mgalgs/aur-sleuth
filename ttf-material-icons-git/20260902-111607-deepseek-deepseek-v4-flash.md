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
completion_tokens: 3064
total_tokens: 15629
cost: 0.001656311958
execution_time: 204.3
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: ok
upstream_files: 11
upstream_named_files: 0
unpinned_sources: 11
injection_attempts: 0
date: 2026-09-02T11:16:04Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard .gitignore for AUR package repository.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR .SRCINFO with legitimate upstream sources.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR git PKGBUILD, no malicious indicators.
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
The PKGBUILD sources the upstream repository's font files from the official GitHub raw content URL (`https://github.com/google/material-design-icons/raw/refs/heads/master`). The global-scope code calls `_update_version()`, which makes HTTP requests to the GitHub API and `git ls-remote` to determine the latest version; these fetch only version metadata from the official upstream repository and do not exfiltrate data or execute downloaded code. The source array is constructed from this metadata, and all checksums are `SKIP` (standard for VCS/git packages). No obfuscation, dangerous commands, or unexpected network destinations are present. The `pkgver()` function simply echoes the version string. Therefore, running `makepkg --nobuild --nodeps --noprepare` and `makepkg --printsrcinfo` will only fetch the declared upstream sources and parse the PKGBUILD safely; no malicious code executes during these steps.
</details>
<evidence></evidence>
<summary>Safe – standard AUR -git package fetching official upstream fonts.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Safe – standard AUR -git package fetching official upstream fonts.
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
This is a standard `.gitignore` file for an AUR package repository. It ignores all files except `PKGBUILD`, `.SRCINFO`, and the `.gitignore` itself. There is no executable code, no network requests, no obfuscation, and no deviation from normal packaging practices. No security concerns.
</details>
<evidence></evidence>
<summary>Standard .gitignore for AUR package repository.</summary>
</security_assessment>

[1/3] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore for AUR package repository.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This .SRCINFO file is a standard Arch Linux package metadata file for the material-symbols-git package. It defines source files (font files) downloaded from the official Google material-design-icons GitHub repository at https://github.com/google/material-design-icons. All checksums are set to SKIP, which is normal for VCS or raw file sources and is not itself malicious. There are no commands to execute, no network requests to unexpected hosts, no obfuscation, and no evidence of supply-chain attack. The only network destinations are the upstream project's own repository, which is expected and legitimate. The file does not contain any code that would exfiltrate data, download and execute untrusted binaries, or modify system files outside the normal packaging workflow.
</details>
<evidence></evidence>
<summary>Standard AUR .SRCINFO with legitimate upstream sources.</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR .SRCINFO with legitimate upstream sources.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard AUR packaging conventions for a -git package. It fetches font files directly from the official Google material-design-icons GitHub repository over HTTPS. The `_update_version()` function queries the official GitHub API to determine the latest commit and tag for versioning, which is common and expected for VCS packages. All downloaded content is font files (TTF, OTF, WOFF2) that are installed into the package directory without any execution. No dangerous commands (eval, base64, curl|bash) are present, and there is no obfuscated or encoded code. The SKIP checksums are standard for VCS sources. No evidence of any supply-chain attack, exfiltration, backdoor, or unusual network destinations exists.
</details>
<evidence>
</evidence>
<summary>Standard AUR git PKGBUILD, no malicious indicators.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR git PKGBUILD, no malicious indicators.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 12,565
  Completion Tokens: 3,064
  Total Tokens: 15,629
  Total Cost: $0.001656
  Execution Time: 204.30 seconds

Final Status: SAFE


No issues found.
