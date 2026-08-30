---
package: ttf-material-icons-git
pkgbase: material-symbols-git
pkgver: 4.0.0.r169.g84ccef28
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 3e318911529c43138ec6bdba0bfcb56907607021
prompt_tokens: 12644
completion_tokens: 2348
total_tokens: 14992
cost: 0.00140315280
execution_time: 68.39
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: ok
upstream_files: 11
upstream_named_files: 0
unpinned_sources: 11
date: 2026-08-30T03:08:33Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard AUR .gitignore; no executable or malicious content.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata file with no malicious content.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR -git PKGBUILD, no malicious behavior.
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
The top-level code sets up variables and functions, then calls `_update_version()` and `_source_main()` when the PKGBUILD is sourced. `_update_version()` uses `curl` to fetch from the official GitHub API and `git ls-remote` to determine the latest version—this is standard for `-git` packages and does not involve malicious behavior. `_source_main()` adds sources from the official upstream repository with `sha256sums` set to `SKIP`, which is a trust/hygiene choice but not a safety issue for this gate. The `pkgver()` function simply echoes a variable. No code runs that downloads or executes untrusted payloads, exfiltrates data, or performs any other genuinely malicious actions. The `prepare()`, `build()`, and `package()` functions are not executed during this phase.
</details>
<evidence></evidence>
<summary>Safe: top-level code only fetches sources and version info from official upstream.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Safe: top-level code only fetches sources and version info from official upstream.
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
The file is a standard `.gitignore` used in an AUR git repository. It ignores all files except the packaging metadata files (`PKGBUILD`, `.SRCINFO`, and `.gitignore` itself). This is a routine and benign packaging practice that prevents generated or extraneous files from being committed to the AUR repository.

There is no executable code, no network activity, no file modification logic, no obfuscation, and no behavior outside standard AUR maintenance. Nothing in this file warrants an unsafe classification.
</details>
<evidence>
</evidence>
<summary>
Standard AUR .gitignore; no executable or malicious content.</summary>
</security_assessment>

[1/3] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed .gitignore. Status: SAFE -- Standard AUR .gitignore; no executable or malicious content.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This `.SRCINFO` file defines the metadata for the `material-symbols-git` package. It lists font file sources all obtained from the official Google Material Design Icons GitHub repository (`https://github.com/google/material-design-icons`). All checksums are set to `SKIP`, which is standard and expected for VCS (`-git`) packages in the AUR. There are no obfuscated commands, suspicious URLs, or any executable content. The file contains only packaging metadata: source URLs, license, architecture, and package splits. No supply-chain attack indicators are present.
</details>
<evidence></evidence>
<summary>Standard AUR metadata file with no malicious content.</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata file with no malicious content.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD is a standard AUR `-git` package that downloads font files (ttf, otf, woff2) from the official Google Material Design Icons repository on `raw.githubusercontent.com`. All source URLs point to `github.com/google/material-design-icons` and serve only font assets, not executable code. The `_update_version` function queries the GitHub API and `git ls-remote` to determine the latest version, which is typical for `-git` packages and does not introduce a supply-chain risk. Checksums are set to `SKIP`, which is expected for raw file sources (especially when using `::` named sources). The install functions simply copy font files into the appropriate font directory via `install -Dm644`. There is no obfuscation, no execution of downloaded scripts, no unexpected network destinations, and no data exfiltration. The only notable issue is a minor bug in `_update_version` where the variable `$commit_history` is used but never defined (likely intended to be `$_response`), but this is a packaging bug, not a security threat.
</details>
<evidence></evidence>
<summary>Standard AUR -git PKGBUILD, no malicious behavior.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR -git PKGBUILD, no malicious behavior.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 12,644
  Completion Tokens: 2,348
  Total Tokens: 14,992
  Total Cost: $0.001403
  Execution Time: 68.39 seconds

Final Status: SAFE


No issues found.
