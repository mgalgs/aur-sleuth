---
package: warp-terminal-bin
pkgver: 0.2026.09.23.14.34.stable_01
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 12630
completion_tokens: 3370
total_tokens: 16000
cost: 0.00271180
execution_time: 87.16
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-30T03:05:55Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard package metadata; no security issues.
  - file: LICENSE.txt
    status: safe
    summary: Plain text license notice, no executable content.
  - file: .gitignore
    status: safe
    summary: Standard .gitignore with no security issues.
  - file: PKGBUILD
    status: safe
    summary: PKGBUILD is a standard checksum-verified binary package; no malicious behavior found.
---

Materializing warp-terminal-bin from local mirror...
Materialized warp-terminal-bin
Analyzing warp-terminal-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
Running `makepkg --printsrcinfo` only sources the PKGBUILD top-level scope. This PKGBUILD contains only variable assignments, source array definitions, checksum arrays, and the definition of the `package()` function. No commands at global scope download, execute, or exfiltrate data. The `package()` function is not executed during `--printsrcinfo` and is out of scope for this gate. The source URLs point to the official Warp release domain (`releases.warp.dev`), which is consistent with the package's stated upstream.
</details>
<evidence>
</evidence>
<summary>
Top-level PKGBUILD scope is safe for makepkg --printsrcinfo; no malicious code executes.
</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Top-level PKGBUILD scope is safe for makepkg --printsrcinfo; no malicious code executes.
Reviewing the 4 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/4] Reviewing .SRCINFO...
[0/4] Reviewing .SRCINFO, LICENSE.txt...
[0/4] Reviewing .SRCINFO, LICENSE.txt, .gitignore...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The .SRCINFO file is purely metadata describing the package sources, dependencies, and checksums. It contains no executable code, no network requests, no file operations, and no obfuscation. The source URLs point to the official Warp releases server (`releases.warp.dev`) over HTTPS with proper SHA256 checksums provided for each binary. No supply-chain attack indicators are present. This file is safe.
</details>
<evidence></evidence>
<summary>Standard package metadata; no security issues.</summary>
</security_assessment>

[0/4] Reviewing .SRCINFO, LICENSE.txt, .gitignore, PKGBUILD...
[1/4] Reviewing LICENSE.txt, .gitignore, PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard package metadata; no security issues.
LLM auditresponse for LICENSE.txt:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a plain text notice regarding the closed-source status of Warp and a link to a GitHub discussion. It contains no executable code, obfuscated content, network requests, or system operations of any kind. There is no evidence of malicious intent or supply-chain attack.</details>
<evidence></evidence>
<summary>Plain text license notice, no executable content.</summary>
</security_assessment>

[2/4] Reviewing .gitignore, PKGBUILD...
+ Reviewed LICENSE.txt. Status: SAFE -- Plain text license notice, no executable content.
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard `.gitignore` used in AUR package repositories to exclude build artifacts (`pkg/`, `src/`), package files (`*.zst`), and other generated files (`*.AppImage`) from version control. It contains no executable code, no network requests, no obfuscation, and no system modifications. It follows normal packaging practices and poses no security risk.
</details>
<evidence>
</evidence>
<summary>Standard .gitignore with no security issues.</summary>
</security_assessment>

[3/4] Reviewing PKGBUILD...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore with no security issues.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD downloads a prebuilt Arch package from the official Warp releases domain over HTTPS and verifies it with pinned sha256 checksums. The package() function extracts the downloaded archive with bsdtar, copies the contents into the package directory, installs the license, and creates a symlink for the warp-terminal binary. No eval, base64, curl, wget, network calls, environment variable exfiltration, or obfuscated commands are present. The operations are consistent with normal AUR binary packaging.

The use of bsdtar and cp -a on a checksum-verified archive from the project's own release host is standard for a -bin package. The symlink creation is routine. There are no suspicious remote hosts or unexpected system modifications outside the package directory.
</details>
<evidence>
</evidence>
<summary>
PKGBUILD is a standard checksum-verified binary package; no malicious behavior found.
</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- PKGBUILD is a standard checksum-verified binary package; no malicious behavior found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 12,630
  Completion Tokens: 3,370
  Total Tokens: 16,000
  Total Cost: $0.002712
  Execution Time: 87.16 seconds

Final Status: SAFE


No issues found.
