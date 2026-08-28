---
package: ttf-material-symbols-variable-git
pkgbase: material-symbols-git
pkgver: 4.0.0.r169.g84ccef28
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 3e318911529c43138ec6bdba0bfcb56907607021
prompt_tokens: 12739
completion_tokens: 2873
total_tokens: 15612
cost: 0.0016044980
execution_time: 51.09
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: ok
upstream_files: 11
upstream_named_files: 0
unpinned_sources: 11
date: 2026-08-28T15:12:34Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard .gitignore; no malicious content.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR font package metadata; upstream GitHub sources, SKIP checksums, no malicious behavior.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR -git PKGBUILD, no malicious behavior found.
---

ttf-material-symbols-variable-git is built from material-symbols-git
Cloning https://aur.archlinux.org/material-symbols-git.git...
Cloned ttf-material-symbols-variable-git
Analyzing ttf-material-symbols-variable-git AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
During the narrow fetch/source phase, the PKGBUILD executes its global scope: `_update_version` and `_source_main` run. `_update_version` uses `curl` against `api.github.com` for the package's own upstream repository and `git ls-remote --tags` against `https://github.com/google/material-design-icons`, then parses text output to derive `_pkgver`. `_source_main` builds the `source` array from the same upstream GitHub repository's raw `master` branch. These are normal upstream source/version queries; the downloaded data is only parsed for version/URL strings, not piped to a shell or executed.

There is no top-level `eval`, no obfuscated/encoded payloads, no exfiltration to unrelated hosts, and no download-and-execute behavior during `makepkg --nobuild --nodeps --noprepare` or `makepkg --printsrcinfo`. The `package_*()` functions contain only normal font installation commands and are not executed at this stage. The SKIP checksums are a trust/hygiene concern, not a reason to fail this fetch gate, since fetching and extracting sources for audit is exactly what these commands are designed to do.
</details>
<evidence></evidence>
<summary>Safe: only upstream GitHub fetches and version parsing occur during source phase.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Safe: only upstream GitHub fetches and version parsing occur during source phase.
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Note: 11 remote source(s) have no checksum (sha256sums=SKIP), so the fetched bytes are not verifiable and can change without any AUR update: MaterialIcons-Regular-4.0.0.r169.g84ccef28.ttf::https://github.com/google/material-design-icons/raw/refs/heads/master/font/MaterialIcons-Regular.ttf, MaterialIconsOutlined-Regular-4.0.0.r169.g84ccef28.otf::https://github.com/google/material-design-icons/raw/refs/heads/master/font/MaterialIconsOutlined-Regular.otf, MaterialIconsRound-Regular-4.0.0.r169.g84ccef28.otf::https://github.com/google/material-design-icons/raw/refs/heads/master/font/MaterialIconsRound-Regular.otf, MaterialIconsSharp-Regular-4.0.0.r169.g84ccef28.otf::https://github.com/google/material-design-icons/raw/refs/heads/master/font/MaterialIconsSharp-Regular.otf, MaterialIconsTwoTone-Regular-4.0.0.r169.g84ccef28.otf::https://github.com/google/material-design-icons/raw/refs/heads/master/font/MaterialIconsTwoTone-Regular.otf, MaterialSymbolsOutlined[FILL,GRAD,opsz,wght]-4.0.0.r169.g84ccef28.ttf::https://github.com/google/material-design-icons/raw/refs/heads/master/variablefont/MaterialSymbolsOutlined%5BFILL,GRAD,opsz,wght%5D.ttf, MaterialSymbolsOutlined[FILL,GRAD,opsz,wght]-4.0.0.r169.g84ccef28.woff2::https://github.com/google/material-design-icons/raw/refs/heads/master/variablefont/MaterialSymbolsOutlined%5BFILL,GRAD,opsz,wght%5D.woff2, MaterialSymbolsRounded[FILL,GRAD,opsz,wght]-4.0.0.r169.g84ccef28.ttf::https://github.com/google/material-design-icons/raw/refs/heads/master/variablefont/MaterialSymbolsRounded%5BFILL,GRAD,opsz,wght%5D.ttf, MaterialSymbolsRounded[FILL,GRAD,opsz,wght]-4.0.0.r169.g84ccef28.woff2::https://github.com/google/material-design-icons/raw/refs/heads/master/variablefont/MaterialSymbolsRounded%5BFILL,GRAD,opsz,wght%5D.woff2, MaterialSymbolsSharp[FILL,GRAD,opsz,wght]-4.0.0.r169.g84ccef28.ttf::https://github.com/google/material-design-icons/raw/refs/heads/master/variablefont/MaterialSymbolsSharp%5BFILL,GRAD,opsz,wght%5D.ttf, MaterialSymbolsSharp[FILL,GRAD,opsz,wght]-4.0.0.r169.g84ccef28.woff2::https://github.com/google/material-design-icons/raw/refs/heads/master/variablefont/MaterialSymbolsSharp%5BFILL,GRAD,opsz,wght%5D.woff2
Reviewing the 3 file(s) in the AUR repository. The 11 downloaded file(s) are upstream content, outside the threat model, and are not read.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, PKGBUILD...
[0/3] Reviewing .SRCINFO, PKGBUILD, .gitignore...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard `.gitignore` used to track only the essential AUR package files (PKGBUILD, .SRCINFO, and itself). It contains no code, no network requests, no obfuscation, and no dangerous commands. This is a normal and expected file for an AUR Git repository.
</details>
<evidence></evidence>
<summary>Standard .gitignore; no malicious content.</summary>
</security_assessment>

[1/3] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore; no malicious content.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard AUR `.SRCINFO` metadata file for a font package. It declares sources for Material Design icon fonts (TTF, OTF, WOFF2) fetched directly from the upstream Google `material-design-icons` GitHub repository, and then declares three subpackages that install the classic and variable font files. There is no code to execute, no network endpoint other than the project's own upstream GitHub, no obfuscation, and no file manipulation beyond normal font packaging.

The `sha256sums = SKIP` entries are expected for `-git`/mutable-source packages and are not indicators of malice. The use of the `master` branch (`refs/heads/master`) is an unpinned, mutable source, which is a reproducibility/hygiene concern rather than evidence of a supply-chain attack; the files are still fetched from the package's declared upstream project. No genuinely malicious or dangerous behavior is present.
</details>
<evidence>
</evidence>
<summary>
Standard AUR font package metadata; upstream GitHub sources, SKIP checksums, no malicious behavior.</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR font package metadata; upstream GitHub sources, SKIP checksums, no malicious behavior.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a standard AUR `-git` package that downloads variable font files from the official Google Material Design Icons repository. The `_update_version()` function uses `curl` to query the GitHub API and `git ls-remote` to determine the latest version — this is typical auto-updating behavior for VCS packages and does not execute untrusted code. All font sources are fetched from `github.com/google/material-design-icons/raw/`, which is the project's own upstream. There is no obfuscation, no use of `eval`, no unexpected file operations, and no exfiltration of local data. The SKIP checksums are expected for dynamically sourced VCS packages and are not a security concern.
</details>
<evidence></evidence>
<summary>Standard AUR -git PKGBUILD, no malicious behavior found.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR -git PKGBUILD, no malicious behavior found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 12,739
  Completion Tokens: 2,873
  Total Tokens: 15,612
  Total Cost: $0.001604
  Execution Time: 51.09 seconds

Final Status: SAFE


No issues found.
