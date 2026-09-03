---
package: woff2-material-symbols-variable-git
pkgbase: material-symbols-git
pkgver: 4.0.0.r169.g84ccef28
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: b9e20f728bbe0de1871ebaca31738c802edc31f8
prompt_tokens: 12664
completion_tokens: 3971
total_tokens: 16635
cost: 0.00166743752
execution_time: 81.05
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: ok
upstream_files: 11
upstream_named_files: 0
unpinned_sources: 11
injection_attempts: 0
date: 2026-08-31T19:15:05Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard .gitignore file; no malicious or dangerous behavior detected.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata; no malicious behavior found.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD for font package, no malicious content.
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
The PKGBUILD's global scope calls `_update_version()` and `_source_main()`.  
`_source_main()` constructs the source array from GitHub raw URLs (the project's own upstream) with `sha256sums=(SKIP)` – standard for VCS packages.  
`_update_version()` runs `curl` and `git ls-remote` to fetch the latest commit hash and tag from the official GitHub API and repository. This is part of the package's version‑detection logic for a `-git` package. The fetched data is parsed to build a version string (`_pkgver`) but is never executed as code; no eval, pipe to shell, or download of executable content occurs.  
Neither command executes genuine malicious code (exfiltration, backdoors, obfuscated payloads). The network activity is expected when sourcing the PKGBUILD for a VCS package, and `--nobuild`/`--noprepare` prevents any later function (`prepare`, `build`, `package`) from running.  
SKIP checksums on VCS sources are normal and do not make this gate unsafe.
</details>
<evidence>
</evidence>
<summary>No malicious code execution during source fetch</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious code execution during source fetch
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
This is a standard `.gitignore` file used in an AUR git repository. It ignores all files except the PKGBUILD, .SRCINFO, and the .gitignore itself. There is no code execution, no network activity, no file system manipulation outside of standard git ignore behavior, and nothing that deviates from normal packaging practices. No security issues found.
</details>
<evidence></evidence>
<summary>Standard .gitignore file; no malicious or dangerous behavior detected.</summary>
</security_assessment>

[1/3] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore file; no malicious or dangerous behavior detected.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard AUR `.SRCINFO` file for a `-git` package that fetches material design icon fonts directly from the official Google GitHub repository. All source URLs point to `https://github.com/google/material-design-icons/raw/refs/heads/master/...`, which is the expected upstream.  
The `sha256sums = SKIP` entries are normal and required for VCS sources; they do not indicate malice.  
No commands, network destinations beyond the package's own upstream, obfuscated content, or suspicious manipulations are present. The file is purely a metadata descriptor for the build system and contains no executable or dangerous logic.
</details>
<evidence>
</evidence>
<summary>Standard AUR metadata; no malicious behavior found.</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata; no malicious behavior found.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a standard AUR VCS package for Google&#39;s Material Design icon fonts. All network requests (curl to api.github.com, git ls-remote, and direct raw.githubusercontent.com downloads) target the package&#39;s own upstream GitHub repository, which is expected behavior. Sources are downloaded directly from the official repo and installed as font files—no code execution from downloaded content occurs. Sha256sums are &#39;SKIP&#39;, which is required for VCS sources and not a security concern. The `_update_version()` function automates version string generation from GitHub API data; while it contains a minor bug (undefined variable `$commit_history` in the `_date` assignment), that variable is never used and does not affect functionality or security. There is no obfuscation, exfiltration, backdoor, or unexpected network destination. The file follows normal AUR packaging practices for a font package.
</details>
<evidence></evidence>
<summary>Standard AUR PKGBUILD for font package, no malicious content.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD for font package, no malicious content.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 12,664
  Completion Tokens: 3,971
  Total Tokens: 16,635
  Total Cost: $0.001667
  Execution Time: 81.05 seconds

Final Status: SAFE


No issues found.
