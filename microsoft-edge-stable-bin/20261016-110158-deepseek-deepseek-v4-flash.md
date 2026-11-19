---
package: microsoft-edge-stable-bin
pkgver: 155.0.4283.60
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 17854
completion_tokens: 3865
total_tokens: 21719
cost: 0.002328144
execution_time: 48.03
files_reviewed: 6
files_skipped: 1
maintainer_files: 7
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-16T11:01:58Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard .gitignore for build artifacts; no security concerns found.
  - file: Microsoft Standard Application License Terms - Standalone (free) Use Terms.pdf
    status: skipped
    summary: "Skipping binary file: Microsoft Standard Application License Terms - Standalone (free) Use Terms.pdf"
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata with official Microsoft sources and checksums; no security issues.
  - file: .nvchecker.toml
    status: safe
    summary: Standard nvchecker version-check configuration; no security concerns found.
  - file: microsoft-edge-stable.install
    status: safe
    summary: Routine install script printing notes only; no malicious behavior found.
  - file: PKGBUILD
    status: safe
    summary: Standard repackaging of official Microsoft Edge; no malicious or suspicious behavior found.
  - file: microsoft-edge-stable.sh
    status: safe
    summary: "Safe: standard user-configurable flags wrapper launching Microsoft Edge, no malicious behavior."
---

Materializing microsoft-edge-stable-bin from local mirror...
Materialized microsoft-edge-stable-bin
Analyzing microsoft-edge-stable-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD's global/top-level scope contains only variable definitions and array assignments. There are no command substitutions, backticks, eval, or other executable code in the global scope. The `package()` function is defined but will not be executed during `makepkg --printsrcinfo`. Therefore, sourcing this PKGBUILD is not dangerous.
</details>
<evidence></evidence>
<summary>No malicious code in global scope.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious code in global scope.
Reviewing the 7 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/7] Reviewing .SRCINFO...
[0/7] Reviewing .SRCINFO, .gitignore...
[0/7] Reviewing .SRCINFO, .gitignore, .nvchecker.toml...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard `.gitignore` for an Arch packaging repository. It only excludes common build artifacts and package files (`*.log`, `*.zst`, `*.deb`, `*.rpm`), which are normal outputs during AUR package builds. There is no executable logic, no network access, no obfuscation, and no system modification. Nothing in this file deviates from standard packaging workflow.
</details>
<evidence>
</evidence>
<summary>
Standard .gitignore for build artifacts; no security concerns found.</summary>
</security_assessment>

[1/7] Reviewing .SRCINFO, .nvchecker.toml...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore for build artifacts; no security concerns found.
[1/7] Reviewing .SRCINFO, .nvchecker.toml, Microsoft Standard Application License Terms - Standalone (free) Use Terms.pdf...
[1/7] Reviewing .SRCINFO, .nvchecker.toml, Microsoft Standard Application License Terms - Standalone (free) Use Terms.pdf, PKGBUILD...
[2/7] Reviewing .SRCINFO, .nvchecker.toml, PKGBUILD...
! Reviewed Microsoft Standard Application License Terms - Standalone (free) Use Terms.pdf. Status: SKIPPED -- Skipping binary file: Microsoft Standard Application License Terms - Standalone (free) Use Terms.pdf
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard AUR `.SRCINFO` metadata file for `microsoft-edge-stable-bin`. It declares package metadata, dependencies, and three sources: the official Microsoft Edge `.deb` package from `packages.microsoft.com`, a shell wrapper script, and a Microsoft license PDF. All three sources have explicit SHA-256 checksums. No malicious commands, network exfiltration, obfuscated code, or unexpected file operations are present. The source URLs and checksums are consistent with normal packaging practice for a prebuilt binary package. No security issues found.
</details>
<evidence>
</evidence>
<summary>
Standard AUR metadata with official Microsoft sources and checksums; no security issues.</summary>
</security_assessment>

[2/7] Reviewing .SRCINFO, .nvchecker.toml, PKGBUILD, microsoft-edge-stable.install...
[3/7] Reviewing .nvchecker.toml, PKGBUILD, microsoft-edge-stable.install...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata with official Microsoft sources and checksums; no security issues.
LLM auditresponse for .nvchecker.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard nvchecker configuration used to check for upstream version updates. It defines a `regex` source that retrieves the Microsoft Edge repository's package metadata over HTTPS and extracts a semantic version from the `microsoft-edge-stable` package entry. It performs only a plain HTTP fetch of the package's official upstream repository and a regex match; there is no code execution, no obfuscation, no unexpected network destination, and no file modification. This is normal packaging automation and contains no malicious behavior.
</details>
<evidence>
</evidence>
<summary>
Standard nvchecker version-check configuration; no security concerns found.
</summary>
</security_assessment>

[4/7] Reviewing PKGBUILD, microsoft-edge-stable.install...
+ Reviewed .nvchecker.toml. Status: SAFE -- Standard nvchecker version-check configuration; no security concerns found.
[4/7] Reviewing PKGBUILD, microsoft-edge-stable.install, microsoft-edge-stable.sh...
LLM auditresponse for microsoft-edge-stable.install:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard Arch Linux package install script for microsoft-edge-stable-bin. It defines simple shell functions for colored output and prints informational notes during post_install and post_upgrade. No network operations, no downloads, no code execution from external sources, no file modifications, and no obfuscated content are present.

The script only writes user-facing messages to the terminal. The launcher and flags file references are normal packaging documentation for this application. There is no evidence of injected malicious code or supply-chain attack behavior.
</details>
<evidence>
</evidence>
<summary>
Routine install script printing notes only; no malicious behavior found.
</summary>
</security_assessment>

[5/7] Reviewing PKGBUILD, microsoft-edge-stable.sh...
+ Reviewed microsoft-edge-stable.install. Status: SAFE -- Routine install script printing notes only; no malicious behavior found.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a standard binary repackaging of the official Microsoft Edge stable `.deb` package. The only download is from Microsoft&apos;s own package repository (`packages.microsoft.com`), and all three sources have fixed `sha256sums`. No suspicious network requests, obfuscated code, `eval`, `curl|bash`, or unexpected file operations are present.

The `chmod 4755` on `msedge-sandbox` is the conventional Chromium/Edge SUID sandbox helper and is expected for this application. Icon generation with `magick`, installation of files into `$pkgdir`, and cleanup of temporary PNG files are all normal packaging steps. The launcher script is declared as a source with a checksum and installed into `/usr/bin`; no malicious behavior is visible within the PKGBUILD itself.
</details>
<evidence>
</evidence>
<summary>
Standard repackaging of official Microsoft Edge; no malicious or suspicious behavior found.</summary>
</security_assessment>

[6/7] Reviewing microsoft-edge-stable.sh...
+ Reviewed PKGBUILD. Status: SAFE -- Standard repackaging of official Microsoft Edge; no malicious or suspicious behavior found.
LLM auditresponse for microsoft-edge-stable.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard launcher wrapper for Microsoft Edge. It reads an optional user flags file from `$XDG_CONFIG_HOME/microsoft-edge-stable-flags.conf` and passes the contents along with the user's arguments to the Edge binary with `exec`. There are no network requests, no downloads, no encoded or obfuscated data, no writes outside the user's config scope, and no attempt to elevate privileges.

The unquoted `$EDGE_USER_FLAGS` expansion is a common pattern in flags-file wrappers; it intentionally allows word splitting so multiple flags in the config file are passed as separate arguments. It does not evaluate shell commands, so a malicious flags file cannot execute arbitrary code by itself. The comment mentioning `microsoft-edge-beta-flags.conf` is only a cosmetic copy-paste mismatch and does not affect behavior or safety.
</details>
<evidence></evidence>
<summary>Safe: standard user-configurable flags wrapper launching Microsoft Edge, no malicious behavior.</summary>
</security_assessment>

[7/7] Reviewing ...
+ Reviewed microsoft-edge-stable.sh. Status: SAFE -- Safe: standard user-configurable flags wrapper launching Microsoft Edge, no malicious behavior.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
(Skipped 1 file: Microsoft Standard Application License Terms - Standalone (free) Use Terms.pdf)

API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 17,854
  Completion Tokens: 3,865
  Total Tokens: 21,719
  Total Cost: $0.002328
  Execution Time: 48.03 seconds

Final Status: SAFE


No issues found.


Audit Skips:

Microsoft Standard Application License Terms - Standalone (free) Use Terms.pdf: [SKIPPED] Skipping binary file: Microsoft Standard Application License Terms - Standalone (free) Use Terms.pdf
