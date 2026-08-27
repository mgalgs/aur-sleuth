---
package: ttf-ms-win11-auto-thai
pkgbase: ttf-ms-win11-auto
pkgver: 10.0.26100.1742
pkgrel: 4
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: f47e5ed5e9b50f484d29402229454e7d1b1d7cdb
prompt_tokens: 36172
completion_tokens: 2753
total_tokens: 38925
cost: 0.00331423456
execution_time: 269.39
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 1
date: 2026-08-27T07:47:44Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard .gitignore file, no malicious content.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata file, no malicious content.
  - file: PKGBUILD
    status: safe
    summary: Legitimate font extraction package with integrity verification.
---

ttf-ms-win11-auto-thai is built from ttf-ms-win11-auto
Cloning https://aur.archlinux.org/ttf-ms-win11-auto.git...
Cloned ttf-ms-win11-auto-thai
Analyzing ttf-ms-win11-auto-thai AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The top-level code of this PKGBUILD consists only of variable assignments and one command substitution to generate SKIP checksums via `awk`. No network requests are executed outside the source array definition, and the source entries themselves (an HTTPS ISO URL and many file:// URIs) are standard source declarations. The `pkgver()` function is not defined, so no code runs there. The `DLAGENTS` override to `/usr/bin/true` is unusual but harmless. The `prepare()`, `build()`, and `package()` functions are not executed by `makepkg --nobuild --nodeps --noprepare` or `makepkg --printsrcinfo`. Therefore, running these two commands poses no risk of executing malicious code.
</details>
<evidence></evidence>
<summary>No dangerous top-level execution; sources are standard.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous top-level execution; sources are standard.
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Note: 1 remote source(s) have no checksum (sha256sums=SKIP), so the fetched bytes are not verifiable and can change without any AUR update: https://software-static.download.prss.microsoft.com/dbazure/888969d5-f34g-4e03-ac9d-1f9786c66749/26100.1742.240906-0331.ge_release_svc_refresh_CLIENTENTERPRISEEVAL_OEMRET_x64FRE_en-us.iso
Reviewing the 3 file(s) in the AUR repository. The 0 downloaded file(s) are upstream content, outside the threat model, and are not read.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, .gitignore...
[0/3] Reviewing .SRCINFO, .gitignore, PKGBUILD...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard `.gitignore` file used to exclude build artifacts and temporary files from version control. It contains only benign ignore patterns for common packaging directories (`src`, `pkg`), built package archives (`*.pkg.tar*`), backup files (`*~`), and font-related files (`*.ttf`, `*.ttc`, `*.fon`, `license.rtf`, `desktop.ini`). There is no executable code, no network requests, no obfuscation, and no deviation from normal AUR packaging practices. The file poses no security risk.
</details>
<evidence></evidence>
<summary>Standard .gitignore file, no malicious content.</summary>
</security_assessment>

[1/3] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore file, no malicious content.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The .SRCINFO file is a metadata descriptor for an AUR package. It defines the package name, version, sources, and checksums. The sources include a legitimate Microsoft ISO download URL and a large number of `file://` references to font files that are provided alongside the PKGBUILD. All checksums are set to `SKIP`, which is a common practice in AUR packages, especially for VCS sources or when the maintainer chooses not to pin checksums. While `SKIP` reduces verification, it is not inherently malicious and is explicitly noted as a standard practice in the instructions. There is no obfuscated code, no exfiltration, no unexpected network requests, and no backdoors. The file is purely declarative and contains no executable instructions.
</details>
<evidence></evidence>
<summary>Standard AUR metadata file, no malicious content.</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata file, no malicious content.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD downloads Microsoft fonts from an official Windows 11 evaluation ISO hosted on Microsoft's software download server. The `prepare()` function handles the download and extraction, either via HTTPDirFS (streaming the ISO) or by downloading the full ISO with `curl`. All extracted font files are validated against hardcoded SHA-256 checksums stored in `_sha256sums`, which provides integrity verification.

There is no obfuscated code, no unexpected network connections (the only remote source is the official Microsoft URL), no execution of downloaded scripts, and no operations outside the scope of extracting font files from a legitimate source. The use of `udisksctl`, `httpdirfs`, `7z`, and `curl` is consistent with the package's stated purpose. The `sha256sums` array is overridden with `SKIP` entries, but that is a standard AUR technique for custom download workflows; the actual verification happens separately in `prepare()`. No malicious behavior is present.
</details>
<evidence></evidence>
<summary>Legitimate font extraction package with integrity verification.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Legitimate font extraction package with integrity verification.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 36,172
  Completion Tokens: 2,753
  Total Tokens: 38,925
  Total Cost: $0.003314
  Execution Time: 269.39 seconds

Final Status: SAFE


No issues found.
