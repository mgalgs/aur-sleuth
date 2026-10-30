---
package: epic-games-launcher-bin
pkgver: 0.108.0
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 9400
completion_tokens: 4258
total_tokens: 13658
cost: 0.001630356
execution_time: 32.62
files_reviewed: 2
files_skipped: 0
maintainer_files: 2
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-30T23:03:28Z
file_verdicts:
  - file: PKGBUILD
    status: safe
    summary: No security issues; standard AUR packaging.
  - file: .SRCINFO
    status: safe
    summary: Safe metadata for official binary package.
---

Materializing epic-games-launcher-bin from local mirror...
Materialized epic-games-launcher-bin
Analyzing epic-games-launcher-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
Running `makepkg --printsrcinfo` sources only the global/top-level scope of this PKGBUILD. The global scope contains only standard metadata assignments (`pkgname`, `pkgver`, `arch`, `source`, `sha256sums`, etc.) and function definitions. There are no top-level command substitutions, network fetches, encoded payloads, or data-exfiltration statements that would execute during sourcing.

The `prepare()` and `package()` functions contain file extraction, installation, and wrapper-script creation, but those functions are not executed by `makepkg --printsrcinfo`. The `source` URL points to Epic Games' official distribution host and the checksum is pinned, so there is no unexpected remote behavior at this stage. No malicious or dangerous code is present in the sourced scope.
</details>
<evidence>
</evidence>
<summary>
No malicious top-level code; printsrcinfo only sources safe metadata and function definitions.
</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious top-level code; printsrcinfo only sources safe metadata and function definitions.
Reviewing the 2 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/2] Reviewing .SRCINFO...
[0/2] Reviewing .SRCINFO, PKGBUILD...
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
Standard PKGBUILD for repackaging the official Epic Games Launcher AppImage. The source is downloaded from Epic Games' official content distribution server with a pinned SHA256 checksum. No obfuscated code, unexpected network requests, or suspicious file operations. The wrapper script disables self-updates, which is common for packaged versions. The `ln -s ..` creates a relative symlink, possibly for library path compatibility, but is not malicious. Everything aligns with normal AUR packaging practices.
</details>
<evidence></evidence>
<summary>No security issues; standard AUR packaging.</summary>
</security_assessment>

[1/2] Reviewing .SRCINFO...
+ Reviewed PKGBUILD. Status: SAFE -- No security issues; standard AUR packaging.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard AUR `.SRCINFO` metadata file. There are no signs of malicious or obfuscated code. The source is an official Epic Games CDN (`content-download-egs.distro.on.epicgames.com`) using HTTPS, and the binary is pinned with a specific SHA256 checksum, which follows good supply-chain security practice for binary packages. The declared dependencies are standard system libraries required by the Epic Games Launcher. No dangerous commands (eval, base64, curl pipe to shell), exfiltration, or unexpected behaviors are present. The file simply declares the package metadata for the AUR.
</details>
<evidence>
</evidence>
<summary>Safe metadata for official binary package.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed .SRCINFO. Status: SAFE -- Safe metadata for official binary package.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 9,400
  Completion Tokens: 4,258
  Total Tokens: 13,658
  Total Cost: $0.001630
  Execution Time: 32.62 seconds

Final Status: SAFE


No issues found.
