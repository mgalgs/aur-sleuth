---
package: ttf-ms-win11-auto-zh_cn
pkgbase: ttf-ms-win11-auto
pkgver: 10.0.26100.1742
pkgrel: 4
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: f47e5ed5e9b50f484d29402229454e7d1b1d7cdb
prompt_tokens: 36180
completion_tokens: 2398
total_tokens: 38578
cost: 0.00325841152
execution_time: 64.39
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 1
date: 2026-08-27T07:48:55Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard .gitignore file, no security concerns.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata file, no security issues.
  - file: PKGBUILD
    status: safe
    summary: Standard font extraction from official Microsoft source. Safe.
---

ttf-ms-win11-auto-zh_cn is built from ttf-ms-win11-auto
Cloning https://aur.archlinux.org/ttf-ms-win11-auto.git...
Cloned ttf-ms-win11-auto-zh_cn
Analyzing ttf-ms-win11-auto-zh_cn AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD's global scope (which is executed during `makepkg --nobuild --nodeps --noprepare` and `makepkg --printsrcinfo`) contains only benign operations: variable assignments, array definitions, and a single command substitution using `awk` to generate `sha256sums` entries of "SKIP". The `awk` command is harmless and does not fetch external data. The `DLAGENTS` setting (using `/usr/bin/true`) prevents actual downloading of the ISO via the default download agent, but this is intentional because the real download occurs in `prepare()`, which is **not** executed during this gate. The `source` array includes an HTTPS URL to the official Microsoft domain and multiple `file://` references to font filenames — these will not execute any code. No `pkgver()` function exists. The `prepare()`, `build()`, and `package()` functions are all out of scope for this narrow gate. No malicious behavior is triggered by sourcing the PKGBUILD or fetching the source array.
</details>
<evidence></evidence>
<summary>Safe: only benign global scope operations.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Safe: only benign global scope operations.
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
This file is a standard `.gitignore` file used to exclude build artifacts, font files, and temporary files from version control. It contains no executable code, network requests, system modifications, or any other potentially malicious behavior. The patterns listed are typical for AUR packages that deal with font files and build artifacts (e.g., `src`, `pkg`, `*.pkg.tar*`, `*.ttf`, `*.ttc`). There is no evidence of any supply-chain attack or injection of malicious code.
</details>
<evidence></evidence>
<summary>Standard .gitignore file, no security concerns.</summary>
</security_assessment>

[1/3] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore file, no security concerns.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard `.SRCINFO` metadata file for an AUR package. It contains package metadata, sources (including a Microsoft ISO and local font files), and SKIP sha256sums. There is no executable code, no network requests beyond the declared upstream source, no obfuscation, and no manipulation of system files. The SKIP checksums are a packaging choice, not evidence of malice. The file is purely declarative and poses no security risk.
</details>
<evidence></evidence>
<summary>Standard AUR metadata file, no security issues.</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata file, no security issues.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD downloads Windows 11 Enterprise evaluation ISO from Microsoft&#39;s official software download server (`software-static.download.prss.microsoft.com`), which is the legitimate source for evaluation media. Fonts are extracted from the ISO using standard tools (udisks2, httpdirfs, p7zip, fuse3). File integrity is verified in `prepare()` against a list of SHA256 checksums (`_sha256sums`). No network requests are made to unexpected or untrusted hosts. No obfuscated code, encoded commands, backdoors, or data exfiltration mechanisms are present. The package installs only font files and a license into the standard font directory. While `sha256sums` in the PKGBUILD are set to `SKIP`, the custom verification in `prepare()` provides integrity checking. This is a standard AUR packaging practice for this class of font package.
</details>
<evidence>

</evidence>
<summary>Standard font extraction from official Microsoft source. Safe.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard font extraction from official Microsoft source. Safe.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 36,180
  Completion Tokens: 2,398
  Total Tokens: 38,578
  Total Cost: $0.003258
  Execution Time: 64.39 seconds

Final Status: SAFE


No issues found.
