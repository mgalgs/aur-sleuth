---
package: ttf-material-icons-git
pkgbase: material-symbols-git
pkgver: 4.0.0.r169.g84ccef28
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 3e318911529c43138ec6bdba0bfcb56907607021
prompt_tokens: 12565
completion_tokens: 3414
total_tokens: 15979
cost: 0.00158557168
execution_time: 91.09
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: ok
upstream_files: 11
upstream_named_files: 0
unpinned_sources: 11
date: 2026-08-29T23:11:55Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard .gitignore, no malicious content.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata, no malicious content.
  - file: PKGBUILD
    status: safe
    summary: Safe PKGBUILD for Google Material Icons fonts.
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
The PKGBUILD source is safe to source and fetch for the purpose of running `makepkg --nobuild --nodeps --noprepare` and `makepkg --printsrcinfo`. The top-level code executes `_update_version()`, which makes HTTPS requests to GitHub's official API (api.github.com) and `git ls-remote` to the official Google Material Design Icons repository. These requests are for version detection only; they do not download or execute untrusted code. The `_source_main()` function defines standard source URLs for font files from the upstream repository's `master` branch, which is typical for a VCS package. No obfuscation, backdoors, or data exfiltration is present. The use of `SKIP` checksums and mutable branch sources is a trust/hygiene concern, not malicious behavior, and is out of scope for this narrow gate.
</details>
<evidence>
</evidence>
<summary>Top-level curl/git to upstream are benign version checks.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Top-level curl/git to upstream are benign version checks.
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
The `.gitignore` file is a standard configuration file for git repositories. Its content ignores all files except the package build files (`PKGBUILD`, `.SRCINFO`, and `.gitignore` itself). This is a common practice in AUR packages to ensure only the essential files are tracked in version control. There is no executable code, no network requests, no obfuscation, and no indication of malicious behavior.
</details>
<evidence></evidence>
<summary>Standard .gitignore, no malicious content.</summary>
</security_assessment>

[1/3] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore, no malicious content.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard `.SRCINFO` metadata file for an AUR package. All source URLs point to the official Google Material Design Icons GitHub repository under `github.com/google/material-design-icons`, which is the expected upstream. All checksums are set to `SKIP`, which is normal for VCS/git-based packages in the AUR. There are no embedded commands, obfuscated code, network requests to unexpected hosts, or any other indicators of malicious behavior. The file is purely declarative and does not perform any actions during the build process.
</details>
<evidence>
</evidence>
<summary>Standard AUR metadata, no malicious content.</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata, no malicious content.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD downloads font files from the official Google Material Design Icons GitHub repository (`https://github.com/google/material-design-icons`). All network requests (`curl`, `git ls-remote`) target this same legitimate upstream repository. The `sha256sums` are set to `SKIP`, which is standard for VCS/git-based sources and is not a security concern. There is no obfuscated code, no execution of downloaded scripts or binaries, no data exfiltration, and no modifications to system files outside the expected font installation directories. The only questionable element is the use of an undefined variable `$commit_history` in the `_update_version` function, which results in an empty `_date` variable; however, this value is never used in the final version string and appears to be a minor bug rather than malicious intent. No supply-chain attack indicators are present.
</details>
<evidence>
</evidence>
<summary>Safe PKGBUILD for Google Material Icons fonts.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Safe PKGBUILD for Google Material Icons fonts.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 12,565
  Completion Tokens: 3,414
  Total Tokens: 15,979
  Total Cost: $0.001586
  Execution Time: 91.09 seconds

Final Status: SAFE


No issues found.
