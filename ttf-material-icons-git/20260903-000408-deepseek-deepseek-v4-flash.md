---
package: ttf-material-icons-git
pkgbase: material-symbols-git
pkgver: 4.0.0.r119.gc51274e9
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e1aa01f19251c0ab5d086ae2b4a1ce353c3f844d
prompt_tokens: 12610
completion_tokens: 6108
total_tokens: 18718
cost: 0.002199732556
execution_time: 80.63
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: ok
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 11
injection_attempts: 0
date: 2026-09-03T00:04:08Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard .gitignore, no security concerns.
  - file: .SRCINFO
    status: safe
    summary: No evidence of malicious code in .SRCINFO metadata file.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD for material-icons fonts.
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
During `makepkg --verifysource --nodeps` and `--printsrcinfo`, only the PKGBUILD's global scope and `pkgver()` execute. The global scope sets defaults, builds the `source` array, and calls `_update_version()`, which performs two read-only HTTPS requests to `api.github.com` (commits and compare endpoints) and one `git ls-remote --tags` against the package's own upstream repo (github.com/google/material-design-icons). The responses are parsed with grep/sed into a version string (`_pkgver`); none of the fetched content is executed, piped to a shell, or written to disk. `pkgver()` merely echoes `$_pkgver`. The `source` array points at raw font files in the project's own upstream repo; they are downloaded but not extracted or run, and the SKIP checksums are expected here — fetching unverified artifacts for later audit is exactly what this step does.

No obfuscation, no eval/base64, no curl-piped-to-shell, no data exfiltration, and no executable payload is pulled at this stage. The only notable observations are hygiene items that do not affect this gate: checksums are all SKIP, the raw GitHub URLs track the mutable `master` branch, and there is an apparent bug where `_date` references the unset variable `$commit_history` (a correctness issue, not a security issue). The automatic upstream version lookup runs at source time, which is mildly unusual, but it targets the project's own upstream and is consistent with a VCS-style auto-versioning package.
</details>
<evidence>
</evidence>
<summary>
No malicious code executes during source fetch; only upstream version lookups.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious code executes during source fetch; only upstream version lookups.
Downloading sources...
makepkg --verifysource --nodeps successful
Note: 11 remote source(s) have no checksum (sha256sums=SKIP), so the fetched bytes are not verifiable and can change without any AUR update: MaterialIcons-Regular-4.0.0.r169.g84ccef28.ttf::https://github.com/google/material-design-icons/raw/refs/heads/master/font/MaterialIcons-Regular.ttf, MaterialIconsOutlined-Regular-4.0.0.r169.g84ccef28.otf::https://github.com/google/material-design-icons/raw/refs/heads/master/font/MaterialIconsOutlined-Regular.otf, MaterialIconsRound-Regular-4.0.0.r169.g84ccef28.otf::https://github.com/google/material-design-icons/raw/refs/heads/master/font/MaterialIconsRound-Regular.otf, MaterialIconsSharp-Regular-4.0.0.r169.g84ccef28.otf::https://github.com/google/material-design-icons/raw/refs/heads/master/font/MaterialIconsSharp-Regular.otf, MaterialIconsTwoTone-Regular-4.0.0.r169.g84ccef28.otf::https://github.com/google/material-design-icons/raw/refs/heads/master/font/MaterialIconsTwoTone-Regular.otf, MaterialSymbolsOutlined[FILL,GRAD,opsz,wght]-4.0.0.r169.g84ccef28.ttf::https://github.com/google/material-design-icons/raw/refs/heads/master/variablefont/MaterialSymbolsOutlined%5BFILL,GRAD,opsz,wght%5D.ttf, MaterialSymbolsOutlined[FILL,GRAD,opsz,wght]-4.0.0.r169.g84ccef28.woff2::https://github.com/google/material-design-icons/raw/refs/heads/master/variablefont/MaterialSymbolsOutlined%5BFILL,GRAD,opsz,wght%5D.woff2, MaterialSymbolsRounded[FILL,GRAD,opsz,wght]-4.0.0.r169.g84ccef28.ttf::https://github.com/google/material-design-icons/raw/refs/heads/master/variablefont/MaterialSymbolsRounded%5BFILL,GRAD,opsz,wght%5D.ttf, MaterialSymbolsRounded[FILL,GRAD,opsz,wght]-4.0.0.r169.g84ccef28.woff2::https://github.com/google/material-design-icons/raw/refs/heads/master/variablefont/MaterialSymbolsRounded%5BFILL,GRAD,opsz,wght%5D.woff2, MaterialSymbolsSharp[FILL,GRAD,opsz,wght]-4.0.0.r169.g84ccef28.ttf::https://github.com/google/material-design-icons/raw/refs/heads/master/variablefont/MaterialSymbolsSharp%5BFILL,GRAD,opsz,wght%5D.ttf, MaterialSymbolsSharp[FILL,GRAD,opsz,wght]-4.0.0.r169.g84ccef28.woff2::https://github.com/google/material-design-icons/raw/refs/heads/master/variablefont/MaterialSymbolsSharp%5BFILL,GRAD,opsz,wght%5D.woff2
Reviewing the 3 file(s) in the AUR repository. The 0 downloaded file(s) are upstream content, outside the threat model, and are not read.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, .gitignore...
[0/3] Reviewing .SRCINFO, .gitignore, PKGBUILD...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard `.gitignore` used in AUR git repositories to ignore all files except the essential package files (`PKGBUILD`, `.SRCINFO`, and the `.gitignore` itself). There is no executable code, network access, or any operation that could be malicious. It is a routine configuration file with no security implications.
</details>
<evidence></evidence>
<summary>Standard .gitignore, no security concerns.</summary>
</security_assessment>

[1/3] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore, no security concerns.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The `.SRCINFO` file is a metadata-only file used to describe package sources and definitions. All source URLs point to the official Google Material Design Icons repository on GitHub (`github.com/google/material-design-icons`), which is the package's declared upstream. The checksums are all set to `SKIP`, which is standard practice for packages tracking a mutable branch (as indicated by the `-git` suffix). There are no executable commands, no obfuscated code, no network requests to unexpected hosts, and no operations that could exfiltrate data or install backdoors. The file contains only package metadata and is consistent with legitimate AUR packaging.
</details>
<evidence></evidence>
<summary>No evidence of malicious code in .SRCINFO metadata file.</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- No evidence of malicious code in .SRCINFO metadata file.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD is a standard AUR package for the official Google Material Design Icons. It downloads font files (TTF, OTF, WOFF2) directly from the upstream GitHub repository via `raw.githubusercontent.com` URLs, which is expected and safe. The `sha256sums` are set to `SKIP`, which is normal for VCS/git packages. The `_update_version` function uses `curl` to query the GitHub API and `git ls-remote` to determine the latest commit and tag for automatic versioning—this is typical for -git packages and does not involve any untrusted destinations. No obfuscated code, unexpected downloads, execution of downloaded scripts, or data exfiltration is present. The only minor issue is a likely bug (`$commit_history` instead of `$_response` on one line), which could cause an empty date variable but is not a security concern.
</details>
<evidence></evidence>
<summary>Standard AUR PKGBUILD for material-icons fonts.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD for material-icons fonts.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 12,610
  Completion Tokens: 6,108
  Total Tokens: 18,718
  Total Cost: $0.002200
  Execution Time: 80.63 seconds

Final Status: SAFE


No issues found.
