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
completion_tokens: 2547
total_tokens: 15112
cost: 0.0013473817
execution_time: 142.37
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: ok
upstream_files: 11
upstream_named_files: 0
unpinned_sources: 11
injection_attempts: 0
date: 2026-09-01T15:23:09Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: No security issues; standard gitignore file.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata, no security issues.
  - file: PKGBUILD
    status: safe
    summary: Standard VCS PKGBUILD; no malicious content.
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
The PKGBUILD contains no malicious code that would execute during `makepkg --nobuild --nodeps --noprepare` or `makepkg --printsrcinfo`. The top-level code calls `_update_version()` which makes network requests to GitHub API and `git ls-remote` for version detection, which is standard AUR auto-update behavior for VCS packages and targets the official project repository. `_source_main()` adds source entries for font files downloaded from the official Google GitHub repository. No code in the global scope or `pkgver()` attempts to exfiltrate data, download and execute untrusted payloads, or modify system files. The SKIP checksums on sources are not relevant for this gate (fetching unverified archives is the intended purpose of the download step). The `prepare()`, `build()`, and `package()` functions are out of scope for this gate.
</details>
<evidence>
</evidence>
<summary>No malicious top-level code; standard upstream fetches.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious top-level code; standard upstream fetches.
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
The file is a standard `.gitignore` used to track only the PKGBUILD, .SRCINFO, and the .gitignore itself in the AUR repository. It contains no executable code, no network operations, and no system modifications. This is a normal practice for AUR package maintenance and does not introduce any security risk.
</details>
<evidence></evidence>
<summary>No security issues; standard gitignore file.</summary>
</security_assessment>

[1/3] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed .gitignore. Status: SAFE -- No security issues; standard gitignore file.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This .SRCINFO file is standard metadata for an AUR package providing Material Design icons. All source URLs point to the official Google GitHub repository (github.com/google/material-design-icons), which is the legitimate upstream. The checksums are set to &quot;SKIP&quot; for every source; this is normal practice for VCS packages (the package name ends with &quot;-git&quot;) and is not a security issue—it simply means the integrity of downloaded files is not verified by checksum, but that is expected and permitted by AUR packaging guidelines. The file contains only declarative fields (pkgbase, pkgdesc, source, sha256sums, etc.) and no executable code, obfuscated strings, dangerous commands, or any indicators of a supply-chain attack. There is no evidence of malicious behavior such as data exfiltration, backdoors, or execution of untrusted code.
</details>
<evidence>
</evidence>
<summary>Standard AUR metadata, no security issues.</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata, no security issues.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD downloads font files exclusively from the official Google Material Design Icons repository on GitHub (`github.com/google/material-design-icons`). The `_update_version` function uses `curl` to query the GitHub API for commit and tag information to compute a dynamic version string, which is a standard practice for VCS-based AUR packages. No obfuscation, encoded commands, suspicious network destinations, or unexpected file operations are present. Checksums are set to `SKIP`, which is normal for VCS sources. There is a minor bug (undefined variable `$commit_history` in `_date` computation), but it does not affect security. The file exhibits no supply-chain attack indicators.
</details>
<evidence></evidence>
<summary>Standard VCS PKGBUILD; no malicious content.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard VCS PKGBUILD; no malicious content.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 12,565
  Completion Tokens: 2,547
  Total Tokens: 15,112
  Total Cost: $0.001347
  Execution Time: 142.37 seconds

Final Status: SAFE


No issues found.
