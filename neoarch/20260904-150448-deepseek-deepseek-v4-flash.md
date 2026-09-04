---
package: neoarch
pkgver: 3.1.1
pkgrel: 2
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 171a316e053e9c4b28731ccb1aa63b1168550d3a
prompt_tokens: 9973
completion_tokens: 1585
total_tokens: 11558
cost: 0.00116105262
execution_time: 43.73
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 1
injection_attempts: 0
date: 2026-09-04T15:04:48Z
file_verdicts:
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD installing upstream files; no malicious behavior found. SKIP checksum noted as hygiene only.
  - file: neoarch.install
    status: safe
    summary: Standard Flatpak remote addition; no malicious behavior.
  - file: .SRCINFO
    status: safe
    summary: Standard .SRCINFO metadata, no security issues.
---

Materializing neoarch from local mirror...
Materialized neoarch
Analyzing neoarch AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD's global scope contains only standard variable definitions (pkgname, pkgver, source, sha256sums, etc.) and a function definition for `package()`. There are no command substitutions ($(...) or backticks) in any top-level variable, no calls to dangerous commands (eval, curl, wget, base64) outside of functions, and no obfuscated or encoded payloads. The `package()` function is defined but will not be executed during `makepkg --printsrcinfo` (only the global scope is sourced). Therefore, running this command is safe.
</details>
<evidence></evidence>
<summary>No dangerous top-level code found.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous top-level code found.
Note: 1 remote source(s) have no checksum (sha256sums=SKIP), so the bytes are not verifiable: https://github.com/Sanjaya-Danushka/Neoarch/archive/refs/tags/v3.1.1.tar.gz
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, PKGBUILD...
[0/3] Reviewing .SRCINFO, PKGBUILD, neoarch.install...
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard Arch packaging practices. It fetches the project’s own upstream source tarball from GitHub, installs files into `/opt/neoarch/Neoarch`, makes helper scripts executable, adjusts an entry-point reference with `sed`, and installs desktop file, icon, and license metadata. There are no suspicious network requests, no encoded or obfuscated commands, no use of `eval`, `curl`, `wget`, or `base64`, and no writes outside the package’s own installation directories or standard packaging locations.

The `sha256sums=('SKIP')` is a supply-chain hygiene concern because the tarball is not checksum-verified, but SKIP checksums are explicitly treated as a trust/hygiene choice rather than evidence of malice. The `sed` commands modify only the package’s own installed files and desktop entry, which is normal packaging behavior. No evidence of injected malicious code, exfiltration, backdoors, or tampering with unrelated system files was found.
</details>
<evidence>
</evidence>
<summary>
Standard AUR PKGBUILD installing upstream files; no malicious behavior found. SKIP checksum noted as hygiene only.
</summary>
</security_assessment>

[1/3] Reviewing .SRCINFO, neoarch.install...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD installing upstream files; no malicious behavior found. SKIP checksum noted as hygiene only.
LLM auditresponse for neoarch.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The `neoarch.install` file contains a single `post_install()` function that conditionally adds the official Flathub Flatpak remote for the user if Flatpak is installed. This is a standard convenience operation for packages that intend to use Flatpak, and the URL `https://flathub.org/repo/flathub.flatpakrepo` is the official, well-known repository. There is no obfuscated code, no dangerous command invocations, no exfiltration, and no deviation from expected packaging practices. The use of `|| true` to suppress errors is harmless. The file does not exhibit any signs of malicious activity.</details>
<evidence></evidence>
<summary>Standard Flatpak remote addition; no malicious behavior.</summary>
</security_assessment>

[2/3] Reviewing .SRCINFO...
+ Reviewed neoarch.install. Status: SAFE -- Standard Flatpak remote addition; no malicious behavior.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard AUR `.SRCINFO` metadata file. It contains only package metadata such as version, dependencies, source URL, and checksum policy. The `sha256sums` value is set to `SKIP`, which is a common practice in AUR packages (especially for VCS sources or when the maintainer chooses not to pin checksums). No executable code, obfuscated content, suspicious network requests, or unexpected system operations are present. The source URL points to the official GitHub repository of the project, which is expected. All dependencies are standard Arch Linux packages. There is no evidence of malicious behavior.
</details>
<evidence></evidence>
<summary>Standard .SRCINFO metadata, no security issues.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed .SRCINFO. Status: SAFE -- Standard .SRCINFO metadata, no security issues.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 9,973
  Completion Tokens: 1,585
  Total Tokens: 11,558
  Total Cost: $0.001161
  Execution Time: 43.73 seconds

Final Status: SAFE


No issues found.
