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
completion_tokens: 7462
total_tokens: 20201
cost: 0.00223848996
execution_time: 75.81
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: ok
upstream_files: 11
upstream_named_files: 0
unpinned_sources: 11
date: 2026-08-30T03:11:27Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard .gitignore for AUR package repository.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata file with no malicious content.
  - file: PKGBUILD
    status: safe
    summary: PKGBUILD fetches fonts from Google GitHub; no malicious behavior found.
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
Running `makepkg --nobuild --nodeps --noprepare` and `makepkg --printsrcinfo` sources the PKGBUILD, which executes the top-level `_update_version` and `_source_main` calls, then downloads the `source` array entries. `_update_version` performs read-only network requests to the package's own upstream (api.github.com and `git ls-remote` against the declared `url`, github.com/google/material-design-icons) and parses the responses with grep/sed/sort to compute a version string; nothing downloaded is ever executed, and no local data is exfiltrated. The `_date` computation references an undefined `$commit_history` variable, which is a harmless bug, not an attack.

The `source` entries are raw font files fetched from the package's own upstream GitHub repository, and the `pkgver()` function merely echoes the already-computed `_pkgver`. SKIP checksums and unpinned master-branch URLs are standard for a `-git` package. Fetching and extracting unverified sources is precisely what this gate is designed to do, and `--nobuild`/`--noprepare` ensure nothing in `prepare()`/`build()`/`package()` executes. The `package_*` functions only install fonts into `$pkgdir` and are out of scope for this gate in any case. No injected payload, obfuscated code, backdoor, or exfiltration is present in the code paths that run during these two commands.
</details>
<evidence>

</evidence>
<summary>
SAFE: autoupdate only reads upstream metadata; no untrusted code executes during source fetch.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- SAFE: autoupdate only reads upstream metadata; no untrusted code executes during source fetch.
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
This file is a standard `.gitignore` file used in AUR git repositories. It instructs Git to ignore all files by default, then un-ignores only the essential packaging files: `PKGBUILD`, `.SRCINFO`, and `.gitignore` itself. This is a common and expected pattern for AUR package maintenance. There is no executable code, no network activity, no file manipulation beyond standard version control behavior, and no evidence of malicious intent.
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
The .SRCINFO file is a standard metadata file for an AUR package that distributes Google Material Design icon fonts. All source URLs point to Google's official GitHub repository (github.com/google/material-design-icons) and use the standard `refs/heads/master` branch for VCS-style packaging. The use of `sha256sums = SKIP` is expected for VCS packages where the source is a mutable reference, not a fixed tarball. There are no obfuscated commands, no unusual network destinations, no attempts to download or execute arbitrary code, and no system modification instructions. The file contains only package definitions, source declarations, and metadata. No genuinely malicious behavior is present.
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
Reviewed the PKGBUILD for the ttf-material-symbols-variable-git AUR package. The package downloads font assets from Google's own GitHub repository (raw.githubusercontent.com/google/material-design-icons and api.github.com) and installs them into `$pkgdir` using standard `install -Dm644` commands. The dynamic `_update_version()` function queries the upstream GitHub API and `git ls-remote` for tags, then parses the responses with grep/sed to build a version string. The parsed data is used only for `pkgver` and source filenames; it is not piped to a shell, evaluated, or executed.

No evidence of malicious behavior was found: there are no base64/encoded payloads, no `eval`, no reverse shells, no credential or file exfiltration, no writes outside package directories, and no downloads from unrelated hosts. The use of the mutable `master` branch and `sha256sums=('SKIP')` is a reproducibility/hygiene concern typical of VCS-style AUR packages, but it is not evidence of a supply-chain attack. The undefined `$commit_history` reference in `_update_version()` is a harmless no-op. Overall, the file is consistent with ordinary AUR packaging practices.
</details>
<evidence></evidence>
<summary>
PKGBUILD fetches fonts from Google GitHub; no malicious behavior found.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- PKGBUILD fetches fonts from Google GitHub; no malicious behavior found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 12,739
  Completion Tokens: 7,462
  Total Tokens: 20,201
  Total Cost: $0.002238
  Execution Time: 75.81 seconds

Final Status: SAFE


No issues found.
