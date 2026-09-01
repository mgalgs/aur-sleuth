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
completion_tokens: 3632
total_tokens: 16217
cost: 0.0015144787
execution_time: 172.83
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: ok
upstream_files: 11
upstream_named_files: 0
unpinned_sources: 11
injection_attempts: 0
date: 2026-09-01T15:27:07Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard .gitignore file, no security issues.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD for Google Material Icons.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata, no malicious content.
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
The PKGBUILD defines a font package from Google&#39;s material-design-icons repository. The global/top-level scope calls `_update_version()` and `_source_main()`.  
`_update_version()` makes network requests to GitHub (API calls and `git ls-remote`) to determine the latest commit and version information. These requests go to the package&#39;s own upstream repository and are not obfuscated or exfiltrating data. While the auto-update mechanism is unusual for a global scope, it does not execute any downloaded payloads or perform dangerous operations beyond fetching version metadata.  
`_source_main()` only appends entries to the `source` array (pointing to raw GitHub URLs) and sets `sha256sums` to `SKIP`. No actual downloads or code execution occurs during sourcing; the fetch will happen later when `makepkg` processes the `source` array, which is standard behavior.  
The `pkgver()` function simply echoes a variable. All package functions are scoped and not executed during the commands in question. There is no suspicious encoding, eval, base64, or unexpected remote hosts. The only typo/bug is an undefined variable (`$commit_history`) which does not introduce a security risk.  
The file does not contain genuinely malicious code that would execute during `makepkg --nobuild --nodeps --noprepare` or `makepkg --printsrcinfo`.
</details>
<evidence>
</evidence>
<summary>Safe: no malicious code executes during sourcing or source fetching.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Safe: no malicious code executes during sourcing or source fetching.
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
The file is a standard `.gitignore` for an AUR repository. It simply ignores all files except the essential packaging files (`PKGBUILD`, `.SRCINFO`, and itself). There is no executable code, no network requests, no obfuscation, and no deviation from normal packaging practices. No supply-chain attack or malicious behavior is present.</details>
<evidence></evidence>
<summary>Standard .gitignore file, no security issues.</summary>
</security_assessment>

[1/3] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore file, no security issues.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD for the `material-symbols-git` package is a standard AUR build file. It downloads the latest font files from the official Google Material Design Icons repository on GitHub using plain HTTPS URLs. The `_update_version` function queries the GitHub API and git tags to construct a version string, which is normal for a VCS-based package. All checksums are `SKIP`, which is expected for VCS sources (the `-git` suffix indicates this). There is no obfuscated code, no unexpected network requests, no execution of downloaded scripts, and no manipulation of sensitive system files. The package functions only install font files into `/usr/share/fonts/`. The file is consistent with standard packaging practices and contains no indicators of a supply-chain attack.
</details>
<evidence></evidence>
<summary>Standard AUR PKGBUILD for Google Material Icons.</summary>
</security_assessment>

[2/3] Reviewing .SRCINFO...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD for Google Material Icons.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This `.SRCINFO` file is a standard AUR metadata file for a `-git` package. It declares font sources from the official Google Material Design Icons repository on GitHub. All checksums are set to `SKIP`, which is normal and expected for VCS/git sources where the content is not pinned to a specific commit hash—this is a common packaging convention, not a security concern. All source URLs point to `github.com/google/material-design-icons`, the project’s own upstream, which is the expected and legitimate origin. There are no suspicious elements such as obfuscated commands, unexpected network hosts, file manipulation, or any executable code. The file is purely declarative (listing package names, sources, and metadata) and contains no malicious or anomalous behavior.
</details>
<evidence></evidence>
<summary>Standard AUR metadata, no malicious content.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata, no malicious content.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 12,585
  Completion Tokens: 3,632
  Total Tokens: 16,217
  Total Cost: $0.001514
  Execution Time: 172.83 seconds

Final Status: SAFE


No issues found.
