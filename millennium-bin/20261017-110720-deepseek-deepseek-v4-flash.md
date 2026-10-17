---
package: millennium-bin
pkgver: 3.6.1
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 10953
completion_tokens: 4139
total_tokens: 15092
cost: 0.001750021
execution_time: 42.33
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 3
injection_attempts: 0
date: 2026-10-17T11:07:19Z
file_verdicts:
  - file: PKGBUILD
    status: safe
    summary: Standard binary package from official upstream source, no malicious behavior.
  - file: millennium-bin.install
    status: safe
    summary: Safe - standard Steam mod injection script.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata, no malicious indicators found.
---

Materializing millennium-bin from local mirror...
Materialized millennium-bin
Analyzing millennium-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only static variable definitions and commented-out code. There are no top-level command substitutions, function calls, or other executable statements that would run during `makepkg --printsrcinfo`. The `pkgver()` function is commented out, so it cannot execute. The `package()` and `verify()` functions are defined but never invoked during parsing. All operations within the global scope are safe variable assignments. No network requests, file modifications, or dangerous commands are present at the top level.
</details>
<evidence>
</evidence>
<summary>No dangerous top-level code in PKGBUILD.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous top-level code in PKGBUILD.
Note: 3 remote source(s) have no checksum (sha256sums=SKIP), so the bytes are not verifiable: https://github.com/SteamClientHomebrew/Millennium/releases/download/v3.6.1/millennium-v3.6.1-linux-x86_64.tar.gz, https://github.com/SteamClientHomebrew/Millennium/releases/download/v3.6.1/millennium-v3.6.1-linux-x86_64.sha256, https://raw.githubusercontent.com/SteamClientHomebrew/Millennium/refs/heads/main/LICENSE.md
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, PKGBUILD...
[0/3] Reviewing .SRCINFO, PKGBUILD, millennium-bin.install...
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD for `millennium-bin` is a standard binary package that downloads precompiled libraries and a license file from the official GitHub releases of the upstream project. There is no obfuscated code, no suspicious network requests beyond the declared upstream sources, and no execution of untrusted scripts. The `verify()` function attempts to check the tarball against a provided `.sha256` file, which is good practice. All three sources have `SKIP` checksums, but this is common for binary AUR packages and is not malicious by itself. The file contains no evidence of a supply-chain attack or any behavior that deviates from normal packaging.
</details>
<evidence></evidence>
<summary>Standard binary package from official upstream source, no malicious behavior.</summary>
</security_assessment>

[1/3] Reviewing .SRCINFO, millennium-bin.install...
+ Reviewed PKGBUILD. Status: SAFE -- Standard binary package from official upstream source, no malicious behavior.
LLM auditresponse for millennium-bin.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The script performs routine operations for the Millennium Steam modification package: it removes legacy Steam binary patches, creates a symlink to the Millennium bootstrap library in Steam's directory (a standard DLL injection technique for mods), and toggles remote debugging. All file manipulations target the package's own scope (Steam, the mod's library, and user home paths under `.steam` and `.local/share/Steam`). There are no obfuscated commands, network requests, unexpected data exfiltration, or downloads of external code. The modifications to `/usr/bin/steam` are part of the package's stated purpose of patching Steam, and the script handles cleanup on removal. No evidence of a supply-chain attack or malicious behavior is present.
</details>
<evidence></evidence>
<summary>Safe - standard Steam mod injection script.</summary>
</security_assessment>

[2/3] Reviewing .SRCINFO...
+ Reviewed millennium-bin.install. Status: SAFE -- Safe - standard Steam mod injection script.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard `.SRCINFO` metadata file for an AUR package. It declares the package sources, which point exclusively to the upstream project's official GitHub repository (SteamClientHomebrew/Millennium). All source checksums are set to `SKIP`, which is an accepted (if trust-requiring) packaging practice and not evidence of malware per the audit guidelines. The license source uses a mutable branch (`refs/heads/main`), which is common for supporting files in AUR packaging. No dangerous commands, obfuscated code, exfiltration attempts, or unexpected network destinations are present in this file. The file exhibits no genuinely malicious or dangerous behavior.
</details>
<evidence>
</evidence>
<summary>Standard AUR metadata, no malicious indicators found.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata, no malicious indicators found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 10,953
  Completion Tokens: 4,139
  Total Tokens: 15,092
  Total Cost: $0.001750
  Execution Time: 42.33 seconds

Final Status: SAFE


No issues found.
