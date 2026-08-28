---
package: ttf-material-symbols-variable-git
pkgbase: material-symbols-git
pkgver: 4.0.0.r169.g84ccef28
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 3e318911529c43138ec6bdba0bfcb56907607021
prompt_tokens: 12581
completion_tokens: 3788
total_tokens: 16369
cost: 0.0017496276
execution_time: 82.28
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: ok
upstream_files: 11
upstream_named_files: 0
unpinned_sources: 11
date: 2026-08-28T19:16:16Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard AUR gitignore file; no security issues.
  - file: .SRCINFO
    status: safe
    summary: Declarative metadata, all sources from official upstream, no threats.
  - file: PKGBUILD
    status: safe
    summary: Standard -git package with no malicious behavior.
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
The PKGBUILD fetches version information and source files from Google's official Material Design Icons GitHub repository. The top-level code that executes during `makepkg --nobuild --nodeps --noprepare` and `makepkg --printsrcinfo` consists of:

- An `_update_version` function that calls `curl` and `git ls-remote` to GitHub's API and repository to compute an updated `pkgver` string. All network destinations are the project's own upstream (`github.com/google/material-design-icons`). This is standard practice for VCS/git packages that auto‑update their version.
- A `_source_main` function that populates the `source` array with direct HTTPS downloads of font files from `raw.githubusercontent.com/google/material-design-icons/...`. These are legitimate upstream assets. Checksums are marked `SKIP`, which is normal for VCS sources and not a security concern at this stage.
- The `pkgver()` function simply echoes a variable; no dangerous operations.
- There is a minor bug (`$commit_history` instead of `$_response`) that would cause an error but not a security issue.

No evidence of obfuscation, exfiltration, execution of downloaded code, or connections to unrelated hosts. The code is consistent with ordinary AUR packaging practices.
</details>
<evidence></evidence>
<summary>Standard VCS PKGBUILD, no malicious code during source fetch.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Standard VCS PKGBUILD, no malicious code during source fetch.
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Note: 11 remote source(s) have no checksum (sha256sums=SKIP), so the fetched bytes are not verifiable and can change without any AUR update: MaterialIcons-Regular-4.0.0.r169.g84ccef28.ttf::https://github.com/google/material-design-icons/raw/refs/heads/master/font/MaterialIcons-Regular.ttf, MaterialIconsOutlined-Regular-4.0.0.r169.g84ccef28.otf::https://github.com/google/material-design-icons/raw/refs/heads/master/font/MaterialIconsOutlined-Regular.otf, MaterialIconsRound-Regular-4.0.0.r169.g84ccef28.otf::https://github.com/google/material-design-icons/raw/refs/heads/master/font/MaterialIconsRound-Regular.otf, MaterialIconsSharp-Regular-4.0.0.r169.g84ccef28.otf::https://github.com/google/material-design-icons/raw/refs/heads/master/font/MaterialIconsSharp-Regular.otf, MaterialIconsTwoTone-Regular-4.0.0.r169.g84ccef28.otf::https://github.com/google/material-design-icons/raw/refs/heads/master/font/MaterialIconsTwoTone-Regular.otf, MaterialSymbolsOutlined[FILL,GRAD,opsz,wght]-4.0.0.r169.g84ccef28.ttf::https://github.com/google/material-design-icons/raw/refs/heads/master/variablefont/MaterialSymbolsOutlined%5BFILL,GRAD,opsz,wght%5D.ttf, MaterialSymbolsOutlined[FILL,GRAD,opsz,wght]-4.0.0.r169.g84ccef28.woff2::https://github.com/google/material-design-icons/raw/refs/heads/master/variablefont/MaterialSymbolsOutlined%5BFILL,GRAD,opsz,wght%5D.woff2, MaterialSymbolsRounded[FILL,GRAD,opsz,wght]-4.0.0.r169.g84ccef28.ttf::https://github.com/google/material-design-icons/raw/refs/heads/master/variablefont/MaterialSymbolsRounded%5BFILL,GRAD,opsz,wght%5D.ttf, MaterialSymbolsRounded[FILL,GRAD,opsz,wght]-4.0.0.r169.g84ccef28.woff2::https://github.com/google/material-design-icons/raw/refs/heads/master/variablefont/MaterialSymbolsRounded%5BFILL,GRAD,opsz,wght%5D.woff2, MaterialSymbolsSharp[FILL,GRAD,opsz,wght]-4.0.0.r169.g84ccef28.ttf::https://github.com/google/material-design-icons/raw/refs/heads/master/variablefont/MaterialSymbolsSharp%5BFILL,GRAD,opsz,wght%5D.ttf, MaterialSymbolsSharp[FILL,GRAD,opsz,wght]-4.0.0.r169.g84ccef28.woff2::https://github.com/google/material-design-icons/raw/refs/heads/master/variablefont/MaterialSymbolsSharp%5BFILL,GRAD,opsz,wght%5D.woff2
Reviewing the 3 file(s) in the AUR repository. The 11 downloaded file(s) are upstream content, outside the threat model, and are not read.
Reviewing the AUR repository's files...
[0/3] Reviewing .gitignore...
[0/3] Reviewing .gitignore, PKGBUILD...
[0/3] Reviewing .gitignore, PKGBUILD, .SRCINFO...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard `.gitignore` for an AUR package repository. It ignores all files except the three that should be tracked: `PKGBUILD`, `.SRCINFO`, and `.gitignore` itself. This is normal and expected behavior for an AUR git repository; there is no executable code, network access, or any suspicious content. No supply-chain attack indicators.
</details>
<evidence></evidence>
<summary>Standard AUR gitignore file; no security issues.</summary>
</security_assessment>

[1/3] Reviewing PKGBUILD, .SRCINFO...
+ Reviewed .gitignore. Status: SAFE -- Standard AUR gitignore file; no security issues.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The .SRCINFO file is a metadata-only description of the package sources and splits. All source URLs point to the official Google Material Design Icons repository on GitHub (`github.com/google/material-design-icons`), using HTTPS. The sources are font files (TTF, OTF, WOFF2). Checksums are set to `SKIP`, which is standard practice for packages that track a mutable upstream branch (the `master` branch in this case) and is not a sign of malice. There are no executable commands, obfuscated code, or unusual network destinations. The file contains no logic that could exfiltrate data, download untrusted binaries, or modify the system beyond normal packaging. This is a typical AUR package metadata file.
</details>
<evidence>
</evidence>
<summary>Declarative metadata, all sources from official upstream, no threats.</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Declarative metadata, all sources from official upstream, no threats.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD implements a typical autoupdate mechanism for a VCS-style font package. It queries the GitHub API to determine the latest commit and tag, then constructs source URLs pointing to that commit on the upstream repository. The network calls (curl, git ls-remote) all target `github.com` – the package&#39;s own upstream – and only produce a version string and download URLs for font files from the same source. There is no obfuscation, no execution of fetched code, no exfiltration of local data, and no unexpected system modification. The `SKIP` checksums are standard for dynamically-tracked sources. The unresolved variable `$commit_history` is a harmless bug that does not affect security. No genuinely malicious behavior was found.
</details>
<evidence></evidence>
<summary>Standard -git package with no malicious behavior.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard -git package with no malicious behavior.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 12,581
  Completion Tokens: 3,788
  Total Tokens: 16,369
  Total Cost: $0.001750
  Execution Time: 82.28 seconds

Final Status: SAFE


No issues found.
