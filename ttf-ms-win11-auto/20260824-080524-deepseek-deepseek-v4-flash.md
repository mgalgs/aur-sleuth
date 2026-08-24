---
package: ttf-ms-win11-auto
pkgver: 10.0.26100.1742
pkgrel: 4
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 56580919ea5cd225cb34031d0932798021e4a0d8
prompt_tokens: 28725
completion_tokens: 2071
total_tokens: 30796
cost: 0.0018865658
execution_time: 86.26
files_reviewed: 1
files_skipped: 1
files_unauditable: 0
unpinned_sources: 1
date: 2026-08-24T08:05:23Z
file_verdicts:
  - file: "file:/license.rtf"
    status: skipped
    summary: "Skipping binary file: license.rtf"
  - file: PKGBUILD
    status: safe
    summary: Legitimate font extraction from official Microsoft ISO.
---

Cloning https://aur.archlinux.org/ttf-ms-win11-auto.git...
Cloned ttf-ms-win11-auto
Analyzing ttf-ms-win11-auto AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD's global scope contains only variable definitions and one `awk` invocation that generates SKIP checksums—neither of which downloads, executes, or exfiltrates data. The `DLAGENTS` array overrides the download agent for http, https, and file sources to `/usr/bin/true`, effectively preventing any actual file fetching during the source step. No `pkgver()` function exists. All potentially dangerous operations reside inside `prepare()`, `build()`, and `package()`, which are not executed by `makepkg --nobuild --nodeps --noprepare` or `makepkg --printsrcinfo`. Therefore, running these two commands poses no security risk.
</details>
<evidence></evidence>
<summary>No malicious code executes at source/parse step.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious code executes at source/parse step.
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Running makepkg --printsrcinfo to get source files for agent...
makepkg --printsrcinfo successful
Note: 1 remote source(s) have no checksum (sha256sums=SKIP), so the fetched bytes are not verifiable and can change without any AUR update: https://software-static.download.prss.microsoft.com/dbazure/888969d5-f34g-4e03-ac9d-1f9786c66749/26100.1742.240906-0331.ge_release_svc_refresh_CLIENTENTERPRISEEVAL_OEMRET_x64FRE_en-us.iso
Reviewing required files...
[0/2] Reviewing PKGBUILD...
[0/2] Reviewing PKGBUILD, file:/license.rtf...
[1/2] Reviewing PKGBUILD...
! Reviewed file:/license.rtf. Status: SKIPPED -- Skipping binary file: license.rtf
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD downloads the official Windows 11 Enterprise evaluation ISO from Microsoft's domain (`software-static.download.prss.microsoft.com`) and extracts TrueType fonts and a license file. The extraction uses `httpdirfs` to mount the ISO remotely, or falls back to a full ISO download if unprivileged mounting is not permitted. Integrity verification is performed in `prepare()` using a separate `_sha256sums` array with hardcoded SHA-256 hashes for each font file. No obfuscated code, eval, base64, or suspicious network destinations are present. All operations serve the package's stated purpose of installing Microsoft fonts from the legitimate upstream source. The `sha256sums` array is set to all "SKIP" to bypass makepkg's built-in checksum verification, but the actual verification in `prepare()` provides equivalent assurance. This is a standard pattern for AUR packages that handle downloads manually.
</details>
<evidence></evidence>
<summary>Legitimate font extraction from official Microsoft ISO.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Legitimate font extraction from official Microsoft ISO.
Reviewed all required files.
Deciding which files to review next...
Decided to review 0 additional files: 
Reviewing additional files...
Reviewing additional files...
Reviewed all additional files.
Reviewed additional files.
Audit complete! Result: No issues found
(Skipped 1 file: license.rtf)

API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 28,725
  Completion Tokens: 2,071
  Total Tokens: 30,796
  Total Cost: $0.001887
  Execution Time: 86.26 seconds

Final Status: SAFE


No issues found.


Audit Skips:

file:/license.rtf: [SKIPPED] Skipping binary file: license.rtf
