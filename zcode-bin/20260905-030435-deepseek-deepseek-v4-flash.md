---
package: zcode-bin
pkgver: 3.11.2
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 171a316e053e9c4b28731ccb1aa63b1168550d3a
prompt_tokens: 15812
completion_tokens: 2665
total_tokens: 18477
cost: 0.00183808548
execution_time: 130.83
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-05T03:04:34Z
file_verdicts:
  - file: LICENSE
    status: safe
    summary: Standard license file, no security concerns.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD with no malicious code.
  - file: zcode.sh
    status: safe
    summary: Standard Electron launcher, no malicious behavior.
  - file: .SRCINFO
    status: safe
    summary: AUR metadata file; no executable or malicious content.
---

Materializing zcode-bin from local mirror...
Materialized zcode-bin
Analyzing zcode-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD's top-level scope (the part executed when `makepkg --printsrcinfo` sources it) consists solely of variable definitions, array definitions, and four function definitions (`_get_app_dir`, `_check_electron_version`, `prepare`, `package`). None of these functions are called at global scope; they are only invoked later during `prepare()` and `package()`, which are not executed by `makepkg --printsrcinfo`. There are no top-level command substitutions, function calls, or other executable statements that could perform network requests, run obfuscated code, or otherwise execute malicious operations during the sourcing step. Therefore, running `makepkg --printsrcinfo` on this PKGBUILD is safe.
</details>
<evidence></evidence>
<summary>No top-level execution during sourcing.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No top-level execution during sourcing.
Reviewing the 4 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/4] Reviewing .SRCINFO...
[0/4] Reviewing .SRCINFO, LICENSE...
[0/4] Reviewing .SRCINFO, LICENSE, PKGBUILD...
LLM auditresponse for LICENSE:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard MIT License with a clarifying note about its scope. It contains no executable code, no network requests, no obfuscation, or any other suspicious behavior. It is simply a license file.
</details>
<evidence></evidence>
<summary>Standard license file, no security concerns.</summary>
</security_assessment>

[0/4] Reviewing .SRCINFO, LICENSE, PKGBUILD, zcode.sh...
[1/4] Reviewing .SRCINFO, PKGBUILD, zcode.sh...
+ Reviewed LICENSE. Status: SAFE -- Standard license file, no security concerns.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard AUR packaging practices for a prebuilt Electron application. It downloads the upstream .deb from the project's official CDN with a pinned SHA-256 checksum. The `prepare()` function performs typical post-extraction modifications: patching the launcher script, fixing the .desktop file, unpacking and repacking the app.asar to adjust `process.resourcesPath`, and replacing the bundled ripgrep with the system one. No obfuscated code, unexpected network requests, or data exfiltration is present. The `SKIP` checksums for the locally tracked files (`LICENSE` and `zcode.sh`) are normal for AUR packages. The `_check_electron_version()` helper is informational only. There is no evidence of malicious or injection-based behavior.
</details>
<evidence></evidence>
<summary>Standard AUR PKGBUILD with no malicious code.</summary>
</security_assessment>

[2/4] Reviewing .SRCINFO, zcode.sh...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD with no malicious code.
LLM auditresponse for zcode.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard Electron application launcher script used in AUR packaging. It sets environment variables for Electron runtime behavior, loads user-defined flags from configuration files under `$XDG_CONFIG_HOME`, and launches the application with memory optimizations. No obfuscation, network requests, command execution from untrusted sources, file exfiltration, or system tampering is present. The script reads configuration files safely using `read` with array splitting, and all operations are consistent with normal packaging practices. There is no evidence of malicious supply-chain injection.
</details>
<evidence></evidence>
<summary>Standard Electron launcher, no malicious behavior.</summary>
</security_assessment>

[3/4] Reviewing .SRCINFO...
+ Reviewed zcode.sh. Status: SAFE -- Standard Electron launcher, no malicious behavior.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard `.SRCINFO` metadata file for an Arch User Repository package. It declares package name, version, dependencies, and source URLs. The main source is a Debian package fetched from the official vendor domain `cdn-zcode.z.ai`. The SHA256 checksum for that source is provided and pinned, which is good practice. The other two sources (LICENSE and `zcode.sh`) have `SKIP` checksums, which is common for files distributed locally or for which the maintainer chooses not to verify checksums. No malicious code, obfuscation, or unexpected behaviour is present. The file contains only declarative keys and values.
</details>
<evidence></evidence>
<summary>AUR metadata file; no executable or malicious content.</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed .SRCINFO. Status: SAFE -- AUR metadata file; no executable or malicious content.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 15,812
  Completion Tokens: 2,665
  Total Tokens: 18,477
  Total Cost: $0.001838
  Execution Time: 130.83 seconds

Final Status: SAFE


No issues found.
