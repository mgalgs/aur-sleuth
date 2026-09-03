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
completion_tokens: 2512
total_tokens: 15097
cost: 0.00142492028
execution_time: 96.75
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: ok
upstream_files: 11
upstream_named_files: 0
unpinned_sources: 11
injection_attempts: 0
date: 2026-09-01T03:18:59Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard .gitignore for AUR package, no malicious content.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD, no malicious behavior found.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR .SRCINFO for font package; no malice found.
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
The PKGBUILD&#39;s global-scope code and `pkgver()` function perform only standard operations: setting default variables, constructing `source` array entries from the official GitHub repository (google/material-design-icons), and fetching version metadata from the GitHub API to set `$_pkgver`. No code is downloaded and executed, no data is exfiltrated, and no obfuscated or suspicious commands are present. The `curl` calls in `_update_version()` query public APIs for version detection, which is normal for VCS packages. The `sha256sums` entries are SKIP, which is standard for VCS sources and not a threat during source fetching. There is no malicious content that would execute during `makepkg --nobuild --nodeps --noprepare` or `makepkg --printsrcinfo`.
</details>
<evidence></evidence>
<summary>PKGBUILD source fetch and parse are safe.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- PKGBUILD source fetch and parse are safe.
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
The file is a standard `.gitignore` for an AUR package. It ignores all files except the essential packaging files (`PKGBUILD`, `.SRCINFO`, and itself). No commands, obfuscation, network requests, or unusual operations are present. This is a routine configuration file with no security concerns.
</details>
<evidence></evidence>
<summary>Standard .gitignore for AUR package, no malicious content.</summary>
</security_assessment>

[1/3] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore for AUR package, no malicious content.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD is a standard AUR package for Material Design Icons. It fetches font files directly from the official Google GitHub repository (`github.com/google/material-design-icons`) using `curl` to download raw files. Checksums are set to `SKIP`, which is normal for VCS-based packages that track mutable upstream content. The `_update_version` function uses GitHub API calls and `git ls-remote` to compute a version string from the latest commit and tag — this is typical for `-git` packages and is not malicious. There is no obfuscation, no exfiltration of data, no execution of downloaded code, and no manipulation outside the package's expected scope. The only minor issue is a bug in `_update_version` where an undefined variable `$commit_history` is referenced, but this is a logic error, not a supply-chain attack. The default auto-update behavior (`_autoupdate=true`) triggers API calls on sourcing the PKGBUILD, which is unconventional but not dangerous.
</details>
<evidence></evidence>
<summary>Standard AUR PKGBUILD, no malicious behavior found.</summary>
</security_assessment>

[2/3] Reviewing .SRCINFO...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD, no malicious behavior found.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard `.SRCINFO` metadata file for an AUR package. It declares font sources from the official Google Material Design Icons repository on GitHub, which is the expected upstream. All sources use the `master` branch (mutable) and checksums are set to `SKIP` — both normal practices for VCS-based `-git` packages in the AUR. There is no executable code, no obfuscation, no network requests beyond downloading the declared upstream fonts, and no indications of exfiltration, backdoors, or other malicious behavior. The file is purely declarative and safe.
</details>
<evidence></evidence>
<summary>Standard AUR .SRCINFO for font package; no malice found.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR .SRCINFO for font package; no malice found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 12,585
  Completion Tokens: 2,512
  Total Tokens: 15,097
  Total Cost: $0.001425
  Execution Time: 96.75 seconds

Final Status: SAFE


No issues found.
