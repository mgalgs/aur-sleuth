---
package: curseforge
pkgver: 1.319.0_38738
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 171a316e053e9c4b28731ccb1aa63b1168550d3a
prompt_tokens: 19147
completion_tokens: 2019
total_tokens: 21166
cost: 0.00190534330
execution_time: 27.67
files_reviewed: 5
files_skipped: 0
maintainer_files: 5
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-06T03:12:52Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata; no security issues found.
  - file: .gitignore
    status: safe
    summary: Harmless gitignore file for AUR packaging.
  - file: LICENSE
    status: safe
    summary: Static legal document, no executable content.
  - file: .nvchecker.toml
    status: safe
    summary: Standard nvchecker config for CurseForge version tracking.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD with pinned checksum, no malicious behavior.
---

Materializing curseforge from local mirror...
Materialized curseforge
Analyzing curseforge AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only standard variable declarations and a function definition (`package()`) in the global scope. No command substitutions, backticks, calls to `eval`, `curl`, `wget`, or any other executable code exist at the top level. The `package()` function is not executed during `makepkg --printsrcinfo` since it only runs during the packaging phase. Therefore, sourcing this PKGBUILD poses no risk of executing malicious code.
</details>
<evidence></evidence>
<summary>No dangerous code in global scope.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous code in global scope.
Reviewing the 5 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/5] Reviewing .SRCINFO...
[0/5] Reviewing .SRCINFO, .gitignore...
[0/5] Reviewing .SRCINFO, .gitignore, .nvchecker.toml...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The `.SRCINFO` file is standard AUR metadata. It declares the package name, version, dependencies, and two sources: a Debian package from the official CurseForge/Overwolf domain and a LICENSE file. Checksums are provided and pinned. There are no executable commands, no obfuscation, no unexpected network destinations, and no deviations from normal packaging practices. No supply-chain attack indicators are present.
</details>
<evidence></evidence>
<summary>Standard AUR metadata; no security issues found.</summary>
</security_assessment>

[1/5] Reviewing .gitignore, .nvchecker.toml...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata; no security issues found.
[1/5] Reviewing .gitignore, .nvchecker.toml, LICENSE...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard `.gitignore` configuration for a Git repository. It ignores all files by default (`*`) and then explicitly allows tracking of essential AUR packaging files (`PKGBUILD`, `.SRCINFO`, `.gitignore`, `.nvchecker.toml`, and `LICENSE`). There are no commands, network requests, encoded or obfuscated content, or any other potentially dangerous operations. This is a normal and harmless file for version controlling an AUR package.</details>
<evidence></evidence>
<summary>Harmless gitignore file for AUR packaging.</summary>
</security_assessment>

[1/5] Reviewing .gitignore, .nvchecker.toml, LICENSE, PKGBUILD...
[2/5] Reviewing .nvchecker.toml, LICENSE, PKGBUILD...
+ Reviewed .gitignore. Status: SAFE -- Harmless gitignore file for AUR packaging.
LLM auditresponse for LICENSE:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a plain-text license agreement (Overwolf terms of use) containing no executable instructions, code, network requests, or system operations. It is a static legal document with no potential for malicious behavior.
</details>
<evidence>
</evidence>
<summary>Static legal document, no executable content.</summary>
</security_assessment>

[3/5] Reviewing .nvchecker.toml, PKGBUILD...
+ Reviewed LICENSE. Status: SAFE -- Static legal document, no executable content.
LLM auditresponse for .nvchecker.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard configuration file for `nvchecker`, a tool used to track upstream software versions. It defines a regex-based version check against the official CurseForge/Overwolf update metadata URL (`https://curseforge.overwolf.com/electron/linux/latest-linux.yml`). The `from_pattern` and `to_pattern` simply reformat the version string from `1.2.3-4` to `1.2.3_4`. No executable code, dangerous commands, or suspicious network destinations are present. The configuration is entirely benign and follows normal packaging practices for version checking.
</details>
<evidence></evidence>
<summary>Standard nvchecker config for CurseForge version tracking.</summary>
</security_assessment>

[4/5] Reviewing PKGBUILD...
+ Reviewed .nvchecker.toml. Status: SAFE -- Standard nvchecker config for CurseForge version tracking.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard Arch packaging practices. It downloads a prebuilt .deb from the official CurseForge/Overwolf domain (`curseforge.overwolf.com`) with a pinned SHA-256 checksum, so the source is verified. The `package()` function extracts the archive, renames the install directory, fixes the desktop file path, creates a symlink, and installs license files — all routine operations that stay within the package's own directories (`/opt/CurseForge`, `/usr/share/applications`, `/usr/bin`, `/usr/share/licenses`). There are no network requests at build time (besides the pinned source download), no encoded or obfuscated commands, no use of `eval`, `curl`, `wget`, or any dangerous commands. No evidence of exfiltration, backdoors, or tampering with unrelated system files.
</details>
<evidence>
</evidence>
<summary>Standard AUR PKGBUILD with pinned checksum, no malicious behavior.</summary>
</security_assessment>

[5/5] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD with pinned checksum, no malicious behavior.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 19,147
  Completion Tokens: 2,019
  Total Tokens: 21,166
  Total Cost: $0.001905
  Execution Time: 27.67 seconds

Final Status: SAFE


No issues found.
