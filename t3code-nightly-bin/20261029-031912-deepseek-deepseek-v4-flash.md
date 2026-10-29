---
package: t3code-nightly-bin
pkgver: 0.1.4_nightly.20261029.3853
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 9944
completion_tokens: 12775
total_tokens: 22719
cost: 0.003229954
execution_time: 224.22
files_reviewed: 2
files_skipped: 0
maintainer_files: 2
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-29T03:19:12Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata for upstream binary release; no malicious behavior found.
  - file: PKGBUILD
    status: safe
    summary: Standard pinned AppImage package from upstream; no malicious or suspicious behavior found.
---

Materializing t3code-nightly-bin from local mirror...
Materialized t3code-nightly-bin
Analyzing t3code-nightly-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The global/top-level scope of this PKGBUILD consists entirely of variable definitions (e.g., `pkgver`, `depends`, `source`, `sha256sums`) and function declarations (`prepare()`, `package()`). There are no command substitutions, backtick executions, `eval` calls, network commands (`curl`, `wget`), or any other executable code that would run when the file is sourced during `makepkg --printsrcinfo`. The `prepare` and `package` functions contain the package build logic (AppImage extraction, file installation), but they are safely defined and not invoked during this narrow parsing step. No evidence of malicious code execution exists in the global scope.
</details>
<evidence></evidence>
<summary>Global scope safe, only definitions.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Global scope safe, only definitions.
Reviewing the 2 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/2] Reviewing .SRCINFO...
[0/2] Reviewing .SRCINFO, PKGBUILD...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard AUR `.SRCINFO` metadata file for a prebuilt binary package. It declares the package name, version, description, upstream URL, dependencies, and two source tarballs: an AppImage and a LICENSE file, both downloaded from the project's own GitHub releases/raw URLs (`github.com/pingdotgg/t3code`). Both sources have pinned SHA-256 checksums, which is normal and good practice.

There is no build logic, shell code, network behavior, obfuscated content, or file manipulation in this file. The source URLs match the package's declared upstream project, and nothing suggests exfiltration, code execution, or supply-chain injection. The package is a typical `-bin` AUR package pulling an upstream prebuilt release.
</details>
<evidence>
</evidence>
<summary>
Standard AUR metadata for upstream binary release; no malicious behavior found.</summary>
</security_assessment>

[1/2] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata for upstream binary release; no malicious behavior found.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows a standard pattern for packaging a prebuilt Electron/Chromium AppImage. It downloads the application AppImage and its LICENSE from the project's own GitHub releases using pinned SHA-256 checksums, extracts the AppImage with `--appimage-extract`, and installs the resulting files under `/opt/t3code-nightly-bin`. It then creates wrapper scripts, a desktop entry, an icon, and a license file. No obfuscated code, suspicious network destinations, credential access, or unexpected file modifications outside the package's own directories are present.

The `chmod 4755` on `chrome-sandbox` is normal for Chromium-based applications and is required for the setuid sandbox to function; it is a known security consideration of such packages but is not evidence of malice. The `prepare()` function does execute the downloaded AppImage, but this is the standard AppImage extraction mechanism and the binary is the package's declared upstream artifact with a pinned checksum. Overall, this is an ordinary AUR binary package with no signs of injected malicious behavior.
</details>
<evidence>
</evidence>
<summary>
Standard pinned AppImage package from upstream; no malicious or suspicious behavior found.
</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard pinned AppImage package from upstream; no malicious or suspicious behavior found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 9,944
  Completion Tokens: 12,775
  Total Tokens: 22,719
  Total Cost: $0.003230
  Execution Time: 224.22 seconds

Final Status: SAFE


No issues found.
