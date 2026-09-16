---
package: stably-orca-bin
pkgver: 1.4.204
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 171a316e053e9c4b28731ccb1aa63b1168550d3a
prompt_tokens: 13610
completion_tokens: 2968
total_tokens: 16578
cost: 0.00170206568
execution_time: 69.34
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-16T15:11:14Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Declarative metadata; no executable content.
  - file: stably-orca.sh
    status: safe
    summary: Benign launcher wrapper; sets APPDIR and executes packaged AppRun normally.
  - file: stably-orca.desktop
    status: safe
    summary: Standard .desktop file, no security concerns.
  - file: PKGBUILD
    status: safe
    summary: Standard AppImage PKGBUILD with pinned checksums; no malicious or suspicious behavior found.
---

Materializing stably-orca-bin from local mirror...
Materialized stably-orca-bin
Analyzing stably-orca-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD's global/top-level scope consists solely of variable assignments (pkgname, pkgver, etc.), array definitions (source, sha256sums), and function definitions (prepare, package). There are no command substitutions, backtick executions, eval statements, or any other code execution paths that would run during `makepkg --printsrcinfo`. The use of `${pkgname}` and `${pkgver}` in string definitions is safe variable expansion. No dangerous operations (network requests, file writes, data exfiltration) are present at the top level. Functions are defined but not invoked during this stage.
</details>
<evidence></evidence>
<summary>No dangerous top-level code; safe to source.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous top-level code; safe to source.
Reviewing the 4 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/4] Reviewing .SRCINFO...
[0/4] Reviewing .SRCINFO, PKGBUILD...
[0/4] Reviewing .SRCINFO, PKGBUILD, stably-orca.desktop...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The `.SRCINFO` file is a declarative metadata file for the AUR package. It contains package description, dependencies, and source URLs with SHA256 checksums. No executable code, obfuscation, or suspicious network destinations are present. All sources originate from the official GitHub repository (`https://github.com/stablyai/orca`) and have pinned checksums. This file does not introduce any supply-chain attack vector.
</details>
<evidence></evidence>
<summary>Declarative metadata; no executable content.</summary>
</security_assessment>

[0/4] Reviewing .SRCINFO, PKGBUILD, stably-orca.desktop, stably-orca.sh...
[1/4] Reviewing PKGBUILD, stably-orca.desktop, stably-orca.sh...
+ Reviewed .SRCINFO. Status: SAFE -- Declarative metadata; no executable content.
LLM auditresponse for stably-orca.sh:
 <security_assessment>
<decision>SAFE</decision>
<details>
This is a simple launcher wrapper for the Stably AI Orca application. It sets the `APPDIR` environment variable to the installed package path `/opt/stably-orca` and then executes the upstream `AppRun` binary with a disabled Vulkan feature flag and passes through any user arguments. There are no network requests, no encoded or obfuscated commands, no file writes outside the expected application path, and no execution of remotely fetched content. The script only adjusts runtime environment variables and launches the packaged application, which is consistent with normal packaging and wrapper-script behavior.
</details>
<evidence>
</evidence>
<summary>
Benign launcher wrapper; sets APPDIR and executes packaged AppRun normally.</summary>
</security_assessment>

[2/4] Reviewing PKGBUILD, stably-orca.desktop...
+ Reviewed stably-orca.sh. Status: SAFE -- Benign launcher wrapper; sets APPDIR and executes packaged AppRun normally.
LLM auditresponse for stably-orca.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard Linux desktop entry file for the application "Orca" (Agentic Coding IDE by Stably AI). It defines the application name, comment, executable command (`stably-orca`), icon, and desktop categories. There is no embedded code, no network requests, no obfuscation, and no deviation from normal packaging practices. The file contains only metadata; it does not execute anything dangerous or exfiltrate data. The `%U` argument is standard for handling URIs and does not introduce risk by itself.
</details>
<evidence></evidence>
<summary>Standard .desktop file, no security concerns.</summary>
</security_assessment>

[3/4] Reviewing PKGBUILD...
+ Reviewed stably-orca.desktop. Status: SAFE -- Standard .desktop file, no security concerns.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard Arch/AUR practices for packaging a prebuilt AppImage. The AppImage is fetched from the project&apos;s own upstream GitHub releases URL and pinned with a concrete sha256 checksum (no `SKIP`, no mutable refs), so the downloaded artifact is integrity-checked before use. The three local helper files (.sh launcher, .desktop entry, and the AppImage itself) all have pinned checksums as well.

The `prepare()` function simply runs the AppImage with `--appimage-extract`, which is the normal, documented way to unpack an AppImage so its contents can be installed directly; it does not fetch or execute remote code. The `package()` function copies the extracted tree into `$pkgdir/opt/stably-orca` and installs launcher/desktop/icon files — all writes stay inside `$pkgdir`. The recursive `chmod u+rwX,go+rX` only makes the extracted tree owner-writable and otherwise world-readable/executable; it does not grant write access to non-owners. The icon search loop is benign. There is no `eval`, no base64/hex obfuscation, no shell injection of unquoted variables, no network activity at build/install time, and no tampering with anything outside the package&apos;s own install prefix. This file is consistent with ordinary, safe AppImage packaging.
</details>
<evidence>
</evidence>
<summary>
Standard AppImage PKGBUILD with pinned checksums; no malicious or suspicious behavior found.</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AppImage PKGBUILD with pinned checksums; no malicious or suspicious behavior found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 13,610
  Completion Tokens: 2,968
  Total Tokens: 16,578
  Total Cost: $0.001702
  Execution Time: 69.34 seconds

Final Status: SAFE


No issues found.
