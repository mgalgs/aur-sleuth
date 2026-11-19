---
package: t3code-nightly-bin
pkgver: 0.0.46_nightly.20261015.3158
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 9883
completion_tokens: 1394
total_tokens: 11277
cost: 0.001153061
execution_time: 26.76
files_reviewed: 2
files_skipped: 0
maintainer_files: 2
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-15T15:11:30Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata with pinned checksums; no malicious behavior found.
  - file: PKGBUILD
    status: safe
    summary: Standard AppImage PKGBUILD with pinned checksums; no malicious behavior found.
---

Materializing t3code-nightly-bin from local mirror...
Materialized t3code-nightly-bin
Analyzing t3code-nightly-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD's global/top-level scope contains only standard variable assignments (package metadata, dependencies, source URLs, checksums) and function definitions for `prepare()` and `package()`. No command substitutions, `eval`, `curl`, `wget`, or obfuscated code execute when the file is sourced. The `_upstream_version` and `_appimage` variables are constructed via safe parameter expansion. The source URLs point to the package's own upstream GitHub repository. Running `makepkg --printsrcinfo` would only source this top-level code, which poses no risk.</details>
<evidence></evidence>
<summary>No dangerous code at top level.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous code at top level.
Reviewing the 2 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/2] Reviewing .SRCINFO...
[0/2] Reviewing .SRCINFO, PKGBUILD...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This `.SRCINFO` file is standard AUR package metadata. It declares a prebuilt AppImage from the project's own GitHub releases page (`github.com/pingdotgg/t3code`) and a LICENSE file from the same upstream repository. Both sources have pinned SHA-256 checksums rather than `SKIP`, which is good supply-chain hygiene. The dependency list consists of ordinary runtime libraries for a GTK-based desktop application, and no suspicious commands, network endpoints, or file operations appear anywhere in the file.

Although the package tracks a nightly release tag rather than a stable version, that is consistent with the package's stated purpose as a nightly build. There is no evidence of exfiltration, obfuscated code, unexpected downloads, or tampering. The file is purely declarative metadata and contains no executable code.
</details>
<evidence>
</evidence>
<summary>
Standard AUR metadata with pinned checksums; no malicious behavior found.</summary>
</security_assessment>

[1/2] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata with pinned checksums; no malicious behavior found.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard AUR packaging practice for a prebuilt Electron-style AppImage. It downloads the signed-for AppImage and LICENSE from the project's own GitHub releases page, with pinned sha256 checksums for both files. The prepare() function only makes the AppImage executable and extracts it locally; no unexpected network requests, encoded payloads, or dangerous shell constructs are present.

The package() function installs files into the package directory, creates a simple wrapper script, desktop entry, icons, and license. The `chmod 4755` on `chrome-sandbox` is normal and expected for Chromium/Electron applications that use the setuid sandbox; it is not evidence of tampering. No data exfiltration, backdoor, obfuscation, or execution of attacker-controlled content was found.
</details>
<evidence></evidence>
<summary>
Standard AppImage PKGBUILD with pinned checksums; no malicious behavior found.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AppImage PKGBUILD with pinned checksums; no malicious behavior found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 9,883
  Completion Tokens: 1,394
  Total Tokens: 11,277
  Total Cost: $0.001153
  Execution Time: 26.76 seconds

Final Status: SAFE


No issues found.
