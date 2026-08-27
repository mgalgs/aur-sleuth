---
package: ttf-ms-win11-auto-japanese
pkgbase: ttf-ms-win11-auto
pkgver: 10.0.26100.1742
pkgrel: 4
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: f47e5ed5e9b50f484d29402229454e7d1b1d7cdb
prompt_tokens: 36172
completion_tokens: 2447
total_tokens: 38619
cost: 0.00326556832
execution_time: 174.34
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 1
date: 2026-08-27T07:30:51Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard gitignore file, no security issues.
  - file: .SRCINFO
    status: safe
    summary: Static metadata file; no executable content.
  - file: PKGBUILD
    status: safe
    summary: Legitimate font extraction from Microsoft ISO.
---

ttf-ms-win11-auto-japanese is built from ttf-ms-win11-auto
Cloning https://aur.archlinux.org/ttf-ms-win11-auto.git...
Cloned ttf-ms-win11-auto-japanese
Analyzing ttf-ms-win11-auto-japanese AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD was analyzed for code that executes during source fetching, PKGBUILD sourcing/parsing, and `pkgver()`. No dangerous operations occur at top-level or during these phases. The `sha256sums` array is populated via a benign `awk` command that outputs only "SKIP" entries -- no hidden payloads or system modifications. The `source` array includes an HTTPS URL to a Microsoft domain and many `file://` URIs, but the `DLAGENTS` overrides (set to `/usr/bin/true`) prevent actual downloads by makepkg; any file:// URIs will simply fail silently if missing, which is not a security threat. No `pkgver()` function exists, so no execution there. Suspicious operations (mounting, downloading, extracting) are confined to `prepare()`, `build()`, and `package()` functions which are **not** run during the two specified commands (`--nobuild --nodeps --noprepare`). Therefore, the source fetch and PKGBUILD parsing step is safe.
</details>
<evidence>
</evidence>
<summary>No top-level/pkgver malicious code; source fetch is benign.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No top-level/pkgver malicious code; source fetch is benign.
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
The .gitignore file contains standard patterns for ignoring build artifacts (src, pkg, *.pkg.tar*), backup files (*~), and specific file types (license.rtf, desktop.ini, *.ttf, *.ttc, *.fon) that are common in AUR package repositories. None of these patterns execute code, make network requests, or modify system state. The file is purely configuration for Git version control and poses no security risk.
</details>
<evidence></evidence>
<summary>Standard gitignore file, no security issues.</summary>
</security_assessment>

[1/3] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed .gitignore. Status: SAFE -- Standard gitignore file, no security issues.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard AUR `.SRCINFO` metadata descriptor. It contains only declarative package metadata: version, sources, dependencies, provides, and conflicts. No executable code, scripts, network requests, or system modifications are present. The sources reference a Microsoft official download URL and local font files; all checksums are set to `SKIP`, which is a common practice for pre-built binary packages and is explicitly not considered malicious by the analysis guidelines. No evidence of supply-chain attack or malicious behavior is found.
</details>
<evidence></evidence>
<summary>Static metadata file; no executable content.</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Static metadata file; no executable content.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD retrieves Windows 11 font files from Microsoft's official evaluation ISO, either via HTTPDirFS streaming or full download. All network operations target `software-static.download.prss.microsoft.com`, which is the legitimate Microsoft distribution endpoint for Windows evaluation media. The code is thoroughly documented, contains no obfuscation, and performs post-download integrity verification against a hardcoded hash array in `prepare()`. Standard tools (`httpdirfs`, `udisksctl`, `7z`, `curl`) are used as expected for the stated purpose. There is no evidence of data exfiltration, backdoors, untrusted code execution, or deviation from the package's declared function of extracting Microsoft TrueType fonts.
</details>
<evidence></evidence>
<summary>Legitimate font extraction from Microsoft ISO.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Legitimate font extraction from Microsoft ISO.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 36,172
  Completion Tokens: 2,447
  Total Tokens: 38,619
  Total Cost: $0.003266
  Execution Time: 174.34 seconds

Final Status: SAFE


No issues found.
