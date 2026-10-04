---
package: stably-orca-bin
pkgver: 1.4.220
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 13537
completion_tokens: 2164
total_tokens: 15701
cost: 0.0030731488
execution_time: 28.55
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-04T07:04:53Z
file_verdicts:
  - file: stably-orca.desktop
    status: safe
    summary: Standard desktop entry, no security issues.
  - file: PKGBUILD
    status: safe
    summary: Standard binary AppImage package, no malicious indicators.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata file, safe.
  - file: stably-orca.sh
    status: safe
    summary: Standard wrapper script; no malicious behavior.
---

Materializing stably-orca-bin from local mirror...
Materialized stably-orca-bin
Analyzing stably-orca-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD's global/top-level scope contains only standard variable assignments (pkgname, pkgver, etc.) and function definitions (prepare(), package()). There are no command substitutions, external commands, or other executable statements at the top level. Since `makepkg --printsrcinfo` only sources the PKGBUILD and executes the global scope, no malicious code can run. The potentially dangerous operations (chmod, AppImage extraction, file copying) are confined within the prepare() and package() functions, which are not executed by this command.
</details>
<evidence></evidence>
<summary>No malicious code in global scope; safe to source.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious code in global scope; safe to source.
Reviewing the 4 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/4] Reviewing .SRCINFO...
[0/4] Reviewing .SRCINFO, stably-orca.desktop...
[0/4] Reviewing .SRCINFO, stably-orca.desktop, PKGBUILD...
LLM auditresponse for stably-orca.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.desktop` file for the `stably-orca-bin` AUR package. It defines a desktop launcher with typical fields (Name, GenericName, Comment, Exec, Icon, Categories, etc.). There are no embedded commands, no network requests, no file operations, and no obfuscated content. The `Exec` line simply runs the binary `stably-orca` with the `%U` argument (handling URLs). This is completely normal and expected for a desktop entry.
</details>
<evidence></evidence>
<summary>Standard desktop entry, no security issues.</summary>
</security_assessment>

[0/4] Reviewing .SRCINFO, stably-orca.desktop, PKGBUILD, stably-orca.sh...
[1/4] Reviewing .SRCINFO, PKGBUILD, stably-orca.sh...
+ Reviewed stably-orca.desktop. Status: SAFE -- Standard desktop entry, no security issues.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard packaging practices for a prebuilt binary (AppImage) package. The sole network download is the official upstream AppImage from the project's GitHub releases, and its integrity is verified via a pinned SHA‑256 checksum. The `prepare()` extracts the AppImage with its own `--appimage-extract` switch, a normal operation for this format, and files are installed only into the package directory. There is no obfuscated code, no unexpected network destinations, no exfiltration of local data, and no modification of system files outside the package scope. The code is transparent and consistent with the package's stated purpose.
</details>
<evidence></evidence>
<summary>Standard binary AppImage package, no malicious indicators.</summary>
</security_assessment>

[2/4] Reviewing .SRCINFO, stably-orca.sh...
+ Reviewed PKGBUILD. Status: SAFE -- Standard binary AppImage package, no malicious indicators.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.SRCINFO` metadata file for the `stably-orca-bin` AUR package. It declares the package name, version, dependencies, sources (AppImage from the official GitHub releases, a shell script, and a desktop file), along with SHA-256 checksums for each source. The sources all point to the project's own GitHub repository. The file contains no executable code, no obfuscated or encoded payloads, and no instructions to fetch or run untrusted content. There is no evidence of malicious or supply-chain attack behavior. The presence of valid checksums further supports package integrity verification.
</details>
<evidence></evidence>
<summary>Standard AUR metadata file, safe.</summary>
</security_assessment>

[3/4] Reviewing stably-orca.sh...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata file, safe.
LLM auditresponse for stably-orca.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard wrapper script for launching the Stably AI Orca application. It sets the `APPDIR` environment variable to the package's installation directory and executes the application's `AppRun` with a `--disable-features=Vulkan` flag. There are no network requests, obfuscated code, file operations outside the application scope, or any other malicious behavior. The script follows normal packaging practices for launching an extracted AppImage.
</details>
<evidence></evidence>
<summary>Standard wrapper script; no malicious behavior.</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed stably-orca.sh. Status: SAFE -- Standard wrapper script; no malicious behavior.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 13,537
  Completion Tokens: 2,164
  Total Tokens: 15,701
  Total Cost: $0.003073
  Execution Time: 28.55 seconds

Final Status: SAFE


No issues found.
