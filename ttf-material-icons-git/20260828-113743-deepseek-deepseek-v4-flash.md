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
completion_tokens: 2572
total_tokens: 15137
cost: 0.001569123654
execution_time: 55.34
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: ok
upstream_files: 11
upstream_named_files: 0
unpinned_sources: 11
date: 2026-08-28T11:37:42Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard .gitignore file, no security issues.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata file; no malicious content found.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD with no malicious content.
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
The PKGBUILD only executes top‑level code and the `pkgver()` function when sourced.  
- The `_source_main` function builds the `source` array using HTTPS URLs to Google’s official GitHub repository (`github.com/google/material-design-icons/raw/refs/heads/master/...`).  
- The `_update_version` function queries the GitHub API and `git ls-remote` to determine a version string; it does not download or execute any code from a remote, nor does it exfiltrate data.  
- No dangerous commands (eval, obfuscated code, `curl|bash`, unexpected file operations) appear in the top‑level scope.  

Since `makepkg --nobuild --nodeps --noprepare` only fetches the declared sources and sources the PKGBUILD, and no malicious payload is triggered during this step, the operation is safe. Any code in `package_*()` functions is not executed here and will be reviewed separately.
</details>
<evidence></evidence>
<summary>No malicious code executed during source fetch and PKGBUILD parsing.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious code executed during source fetch and PKGBUILD parsing.
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
This is a standard `.gitignore` file used in a git repository. It ignores all files (`*`) except those explicitly specified with `!` (i.e., `PKGBUILD`, `.SRCINFO`, and `.gitignore` itself). There is no executable code, no network operations, no obfuscation, and no deviation from normal packaging practices. The file is harmless and serves only to control which files are tracked by git.
</details>
<evidence>
</evidence>
<summary>Standard .gitignore file, no security issues.</summary>
</security_assessment>

[1/3] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore file, no security issues.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This .SRCINFO file defines a -git package for material-symbols from the official Google Material Design Icons repository. All source URLs point to the upstream GitHub project at `https://github.com/google/material-design-icons/raw/refs/heads/master/`. Checksums are set to SKIP, which is standard for VCS packages and not a security concern. There is no obfuscated code, no unexpected network requests, no exfiltration, and no execution of untrusted content. The file is purely metadata and follows standard AUR packaging practices.
</details>
<evidence></evidence>
<summary>Standard AUR metadata file; no malicious content found.</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata file; no malicious content found.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a standard Arch User Repository package for Google Material Design Icons. It downloads font files directly from the official GitHub repository (`https://github.com/google/material-design-icons/raw/refs/heads/master`). The `_update_version` function uses GitHub’s API (`api.github.com`) and `git ls-remote` to compute a version string, which is common for VCS/git packages. There are no attempts to exfiltrate data, download code from unexpected hosts, execute obfuscated commands, or modify system files outside the package’s intended installation path (`/usr/share/fonts/`). The use of `SKIP` checksums is normal for dynamic source packages and is not a security concern. The only potential issue is a minor coding bug (undefined variable `commit_history` in `_date` parsing), but this is not malicious—it would simply cause the automatic version detection to fail gracefully. No supply-chain attack indicators are present.
</details>
<evidence></evidence>
<summary>Standard AUR PKGBUILD with no malicious content.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD with no malicious content.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 12,565
  Completion Tokens: 2,572
  Total Tokens: 15,137
  Total Cost: $0.001569
  Execution Time: 55.34 seconds

Final Status: SAFE


No issues found.
