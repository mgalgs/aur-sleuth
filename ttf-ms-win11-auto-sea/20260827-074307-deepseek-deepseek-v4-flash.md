---
package: ttf-ms-win11-auto-sea
pkgbase: ttf-ms-win11-auto
pkgver: 10.0.26100.1742
pkgrel: 4
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: f47e5ed5e9b50f484d29402229454e7d1b1d7cdb
prompt_tokens: 36247
completion_tokens: 3249
total_tokens: 39496
cost: 0.00339908240
execution_time: 399.62
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 1
date: 2026-08-27T07:43:07Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Benign .gitignore with standard packaging exclusions; no security issues found.
  - file: .SRCINFO
    status: safe
    summary: AUR metadata file with no malicious content.
  - file: PKGBUILD
    status: safe
    summary: Legitimate font extraction from Microsoft ISO; no malicious behavior.
---

ttf-ms-win11-auto-sea is built from ttf-ms-win11-auto
Cloning https://aur.archlinux.org/ttf-ms-win11-auto.git...
Cloned ttf-ms-win11-auto-sea
Analyzing ttf-ms-win11-auto-sea AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD is a standard AUR package that extracts fonts from a Windows 11 Enterprise evaluation ISO. During the scope of `makepkg --nobuild --nodeps --noprepare` and `makepkg --printsrcinfo`, only top-level variable assignments and array initializations are executed, plus a few benign command substitutions.  

- The `_totalSource` variable is computed via `expr` with simple arithmetic – no injection risk.  
- The `sha256sums` array is populated using an `awk` one-liner that prints `"SKIP"` for each source – this is normal and does not execute any untrusted content.  
- The `DLAGENTS` assignments (`http::/usr/bin/true` etc.) merely disable makepkg’s built-in download agents; they do not trigger any downloads during sourcing.  
- No `pkgver()` function exists, so no additional code runs during source fetching.  
- The `source` array contains one real HTTPS URL (the official Microsoft evaluation ISO) and many `file://` URIs for the font filenames – these are just placeholders; the actual font extraction happens inside `prepare()` and is out of scope for this gate.  
- No obfuscated commands, data exfiltration, unexpected network requests, or any other genuinely malicious behavior is present in the code that executes during these two commands.  

The only potential concern is that the `sha256sums` array is fully set to `"SKIP"` and the DLAGENTS override means the ISO will not be downloaded by makepkg (it is instead fetched in `prepare()` via `httpdirfs`). However, missing or SKIPped checksums are explicitly allowed by this gate’s guidelines, and the custom download agent setup is a documented packaging pattern for this package family, not a security threat.  
</details>
<evidence></evidence>
<summary>File is safe for the specified commands.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- File is safe for the specified commands.
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
This file is a standard `.gitignore` used in an AUR package repository. It excludes common build artifacts (`src`, `pkg`, `*.pkg.tar*`), editor backup files (`*~`), and files that are expected to be generated or bundled during packaging such as `license.rtf`, `desktop.ini`, `*.ttf`, `*.ttc`, and `*.fon`. These entries are consistent with normal packaging practice for a font package and contain no commands, network operations, obfuscation, or system modifications. No malicious behavior is present.
</details>
<evidence>
</evidence>
<summary>
Benign .gitignore with standard packaging exclusions; no security issues found.
</summary>
</security_assessment>

[1/3] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed .gitignore. Status: SAFE -- Benign .gitignore with standard packaging exclusions; no security issues found.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The .SRCINFO file is a metadata descriptor for the Arch Linux package. It contains no executable code, no obfuscated strings, and no commands. The only network source is an ISO image from Microsoft's official download server, which is the intended upstream for Windows fonts. All checksums are set to SKIP, which is common for large ISOs and local file sources; this is a trust/hygiene choice rather than a malicious indicator. The package installs fonts from the ISO, which is a standard AUR pattern. There is no evidence of data exfiltration, backdoors, or any supply-chain attack. The file is safe.
</details>
<evidence></evidence>
<summary>AUR metadata file with no malicious content.</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- AUR metadata file with no malicious content.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD extracts Microsoft Windows 11 TrueType fonts from an official Microsoft evaluation ISO. The ISO URL points to a `prss.microsoft.com` subdomain (Microsoft's software download service). The `prepare()` function either mounts the ISO remotely via `httpdirfs` (if the user has Polkit privileges for udisks2) or downloads the full ISO via `curl` and extracts fonts locally. Integrity verification is performed in `prepare()` using a hardcoded list of SHA-256 checksums for each font file; `sha256sums` in the PKGBUILD itself are set to `SKIP` because the files do not exist at source-download time. This is an accepted pattern for packages that generate or extract sources during `prepare()` or `build()`. There is no obfuscated code, no unexpected network destinations, no execution of untrusted downloaded code (the Windows ISO is parsed with `7z` and only font/license files are retained), and no exfiltration of local data. All operations are scoped to the package build directory and standard font installation paths. No malicious supply-chain injection is present.
</details>
<evidence>
</evidence>
<summary>Legitimate font extraction from Microsoft ISO; no malicious behavior.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Legitimate font extraction from Microsoft ISO; no malicious behavior.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 36,247
  Completion Tokens: 3,249
  Total Tokens: 39,496
  Total Cost: $0.003399
  Execution Time: 399.62 seconds

Final Status: SAFE


No issues found.
