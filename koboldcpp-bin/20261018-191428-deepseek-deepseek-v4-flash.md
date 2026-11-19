---
package: koboldcpp-bin
pkgver: 1.123.1
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 9559
completion_tokens: 1172
total_tokens: 10731
cost: 0.001083173
execution_time: 16.84
files_reviewed: 3
files_skipped: 1
maintainer_files: 4
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-18T19:14:27Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata with pinned checksums; no malicious content.
  - file: koboldcpp.png
    status: skipped
    summary: "Skipping binary file: koboldcpp.png"
  - file: koboldcpp.desktop
    status: safe
    summary: Standard .desktop file, no security concerns.
  - file: PKGBUILD
    status: safe
    summary: Standard binary PKGBUILD with pinned checksums; no malicious content.
---

Materializing koboldcpp-bin from local mirror...
Materialized koboldcpp-bin
Analyzing koboldcpp-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
Running `makepkg --printsrcinfo` sources the PKGBUILD, but this PKGBUILD contains only top-level variable assignments, a `source` array, checksum definitions, and a `package()` function definition. No top-level command substitution, external fetch-and-execute, obfuscated payload, or data-exfiltration code is present. The `package()` body is not executed during `--printsrcinfo`, and code inside it is out of scope for this narrow gate. The checksums are pinned, and the source URL points to the project's own upstream GitHub releases page, which is normal packaging practice.
</details>
<evidence>
</evidence>
<summary>
Top-level PKGBUILD is benign; printsrcinfo parsing is safe.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Top-level PKGBUILD is benign; printsrcinfo parsing is safe.
Reviewing the 4 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/4] Reviewing .SRCINFO...
[0/4] Reviewing .SRCINFO, koboldcpp.desktop...
[0/4] Reviewing .SRCINFO, koboldcpp.desktop, PKGBUILD...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The `.SRCINFO` file is a metadata summary for the AUR package `koboldcpp-bin`. It declares sources from the official GitHub release page of the upstream project `LostRuins/koboldcpp`, a desktop entry file, and an icon. All three sources have pinned SHA-256 checksums, ensuring integrity. No commands are present—only declarative metadata. There is no obfuscation, unexpected network destinations, or any executable code. The contents are standard AUR packaging practice.
</details>
<evidence></evidence>
<summary>Standard AUR metadata with pinned checksums; no malicious content.</summary>
</security_assessment>

[1/4] Reviewing koboldcpp.desktop, PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata with pinned checksums; no malicious content.
[1/4] Reviewing koboldcpp.desktop, PKGBUILD, koboldcpp.png...
[2/4] Reviewing koboldcpp.desktop, PKGBUILD...
! Reviewed koboldcpp.png. Status: SKIPPED -- Skipping binary file: koboldcpp.png
LLM auditresponse for koboldcpp.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard .desktop file for a desktop launcher. It contains only metadata fields (Comment, Exec, Icon, Name, Categories, etc.) and no executable code. The Exec line points to `/usr/bin/koboldcpp`, which is the expected binary location for the package. There are no suspicious URLs, obfuscated commands, or unusual operations. The file is entirely benign and follows standard packaging conventions for desktop entries.
</details>
<evidence></evidence>
<summary>Standard .desktop file, no security concerns.</summary>
</security_assessment>

[3/4] Reviewing PKGBUILD...
+ Reviewed koboldcpp.desktop. Status: SAFE -- Standard .desktop file, no security concerns.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard AUR packaging practices for a prebuilt binary package. It fetches the official upstream release from GitHub using a pinned version tag, verifies three sources via hardcoded SHA-256 checksums (none are SKIP), and installs the binary along with ancillary files (desktop file and PNG icon) into `$pkgdir`. No commands download or execute arbitrary code from untrusted sources, no obfuscation, no eval, no unexpected system modifications, and no exfiltration attempts. The package function only copies files and does not run any build steps or post-install hooks that would alter system state beyond installation. There is no evidence of injected malicious code or supply-chain attack patterns in this file.
</details>
<evidence></evidence>
<summary>Standard binary PKGBUILD with pinned checksums; no malicious content.</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard binary PKGBUILD with pinned checksums; no malicious content.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
(Skipped 1 file: koboldcpp.png)

API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 9,559
  Completion Tokens: 1,172
  Total Tokens: 10,731
  Total Cost: $0.001083
  Execution Time: 16.84 seconds

Final Status: SAFE


No issues found.


Audit Skips:

koboldcpp.png: [SKIPPED] Skipping binary file: koboldcpp.png
