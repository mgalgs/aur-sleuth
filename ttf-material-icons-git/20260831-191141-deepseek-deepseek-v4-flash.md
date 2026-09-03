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
completion_tokens: 2180
total_tokens: 14824
cost: 0.00137596368
execution_time: 94.27
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: ok
upstream_files: 11
upstream_named_files: 0
unpinned_sources: 11
injection_attempts: 0
date: 2026-08-31T19:11:41Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard AUR .gitignore; no security concerns present.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR font package from official upstream; no malicious indicators.
  - file: .SRCINFO
    status: safe
    summary: Standard .SRCINFO with legitimate upstream sources; no malicious content.
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
The top-level code in this PKGBUILD calls `_update_version` and `_source_main` during sourcing. `_update_version` makes network requests via `curl` to api.github.com and `git ls-remote` to the official Google repository. These are standard operations for auto-updating the version string in a `-git` package — they do not download or execute arbitrary code, exfiltrate data, or perform any other malicious action. `_source_main` constructs the `source` array with file URLs from the project's own GitHub raw content, which is also normal. The only other top-level code is a conditional variable assignment. `pkgver()` simply echoes a variable. No obfuscation, dangerous commands (eval, base64, etc.), or unexpected network destinations are present. The calls to `makepkg --nobuild --nodeps --noprepare` and `makepkg --printsrcinfo` will therefore not execute genuinely malicious code.
</details>
<evidence></evidence>
<summary>Top-level code is benign; no malicious execution.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Top-level code is benign; no malicious execution.
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
This is a standard `.gitignore` file for an AUR package repository. It ignores all files except the packaging metadata files `PKGBUILD`, `.SRCINFO`, and the `.gitignore` itself. This is normal and expected AUR git hygiene and contains no commands, network operations, file modifications, or any other potentially malicious behavior.

There is nothing here that deviates from standard packaging practices. No obfuscation, no downloads, no exfiltration, and no execution of code.
</details>
<evidence>
</evidence>
<summary>
Standard AUR .gitignore; no security concerns present.</summary>
</security_assessment>

[1/3] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed .gitignore. Status: SAFE -- Standard AUR .gitignore; no security concerns present.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD downloads font files from the official Google material-design-icons GitHub repository using raw GitHub URLs. All checksums are set to `SKIP`, which is standard for VCS/git font packages where checksums are not practical. The `_update_version` function uses `curl` to query the GitHub API and `git ls-remote` to dynamically compute the package version – this is normal behavior for a `-git` PKGBUILD that tracks upstream commits. No code is executed from downloaded content; only font files (`.ttf`, `.otf`, `.woff2`) are collected. There are no suspicious network destinations, no obfuscated commands, no exfiltration of local data, and no execution of arbitrary scripts. The package follows standard AUR packaging practices for fonts from a well-known upstream.
</details>
<evidence>
</evidence>
<summary>Standard AUR font package from official upstream; no malicious indicators.</summary>
</security_assessment>

[2/3] Reviewing .SRCINFO...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR font package from official upstream; no malicious indicators.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The .SRCINFO file is a metadata description for an AUR package. It declares three subpackages providing font files from the official Google material-design-icons GitHub repository. All source URLs point to the legitimate upstream (`github.com/google/material-design-icons`). Checksums are set to `SKIP`, which is standard practice for VCS-style packages or when fetching prebuilt artifacts from a known source; this is not a security issue. There is no executable code, no network requests to unexpected hosts, no obfuscation, and no file operations outside standard packaging metadata. The file is purely declarative and contains nothing malicious.
</details>
<evidence></evidence>
<summary>Standard .SRCINFO with legitimate upstream sources; no malicious content.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed .SRCINFO. Status: SAFE -- Standard .SRCINFO with legitimate upstream sources; no malicious content.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 12,644
  Completion Tokens: 2,180
  Total Tokens: 14,824
  Total Cost: $0.001376
  Execution Time: 94.27 seconds

Final Status: SAFE


No issues found.
