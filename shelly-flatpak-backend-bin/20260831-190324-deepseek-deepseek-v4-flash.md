---
package: shelly-flatpak-backend-bin
pkgbase: shelly-bin
pkgver: 3.1.2
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: b9e20f728bbe0de1871ebaca31738c802edc31f8
prompt_tokens: 22218
completion_tokens: 3603
total_tokens: 25821
cost: 0.00242630304
execution_time: 48.49
files_reviewed: 6
files_skipped: 0
maintainer_files: 6
source_fetch: ok
upstream_files: 46
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-08-31T19:03:23Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard .SRCINFO metadata; no malicious or suspicious content present.
  - file: com.shellyorg.shelly-notifications.desktop
    status: safe
    summary: Standard .desktop file, no security issues.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR prebuilt package; pinned checksums, official sources, no malicious behavior found.
  - file: shellybuild.conf
    status: safe
    summary: Inert configuration file, no malicious content.
  - file: com.shellyorg.shelly.desktop
    status: safe
    summary: Benign desktop entry for a package manager.
  - file: shelly-flatpak-integrate
    status: safe
    summary: Benign Flatpak desktop integration script.
---

shelly-flatpak-backend-bin is built from shelly-bin
Cloning https://aur.archlinux.org/shelly-bin.git...
Cloned shelly-flatpak-backend-bin
Analyzing shelly-flatpak-backend-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only standard variable assignments (pkgbase, pkgname, pkgver, etc.) and two package functions (`package_shelly-bin` and `package_shelly-flatpak-backend-bin`). The global scope has no executable statements beyond variable definitions. There is no `pkgver()` function — the version is a static string. All source URLs point to the official GitHub releases of the project. The `sha256sums` are provided and not set to SKIP, but even if they were, that would not be grounds to fail this gate. No code in the global scope or `pkgver()` performs any network requests, downloads/executes payloads, exfiltrates data, or uses dangerous constructs like `eval`, `base64`, `curl|bash`, etc. The `prepare()`, `build()`, and `package()` functions are not executed during the `makepkg --nobuild --nodeps --noprepare` or `makepkg --printsrcinfo` commands, so their content is out of scope for this gate. Running these commands is safe.
</details>
<evidence></evidence>
<summary>No malicious code in global scope or pkgver().</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious code in global scope or pkgver().
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Reviewing the 6 file(s) in the AUR repository. The 46 downloaded file(s) are upstream content, outside the threat model, and are not read.
Reviewing the AUR repository's files...
[0/6] Reviewing .SRCINFO...
[0/6] Reviewing .SRCINFO, com.shellyorg.shelly-notifications.desktop...
[0/6] Reviewing .SRCINFO, com.shellyorg.shelly-notifications.desktop, PKGBUILD...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard AUR `.SRCINFO` metadata descriptor. It declares package metadata, sources, checksums, dependencies, and conflicts. All sources are fetched from the project's official GitHub releases page over HTTPS, and all six sources have pinned SHA-256 checksums. There are no scripts, no commands, no network exfiltration, no obfuscation, no suspicious hooks, and no deviation from normal packaging practices. The presence of two `pkgname` entries is normal for a split package. The content is entirely declarative and contains no executable or dangerous behavior.
</details>
<evidence>
</evidence>
<summary>Standard .SRCINFO metadata; no malicious or suspicious content present.</summary>
</security_assessment>

[1/6] Reviewing com.shellyorg.shelly-notifications.desktop, PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard .SRCINFO metadata; no malicious or suspicious content present.
[1/6] Reviewing com.shellyorg.shelly-notifications.desktop, PKGBUILD, com.shellyorg.shelly.desktop...
LLM auditresponse for com.shellyorg.shelly-notifications.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard desktop entry file for a notification service. It defines metadata and the path to an executable (`/usr/bin/shelly-notifications`). There are no network operations, encoded commands, file manipulations, or any other suspicious behavior. The file conforms to normal packaging practices and presents no security concern.
</details>
<evidence></evidence>
<summary>Standard .desktop file, no security issues.</summary>
</security_assessment>

[1/6] Reviewing com.shellyorg.shelly-notifications.desktop, PKGBUILD, com.shellyorg.shelly.desktop, shelly-flatpak-integrate...
[2/6] Reviewing PKGBUILD, com.shellyorg.shelly.desktop, shelly-flatpak-integrate...
+ Reviewed com.shellyorg.shelly-notifications.desktop. Status: SAFE -- Standard .desktop file, no security issues.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows normal AUR packaging practice for a prebuilt binary package. It downloads two tarballs from the project's official GitHub releases URL, all six source files have pinned SHA-256 checksums, and the functions only install binaries, desktop files, icons, completions, a man page, a Flatpak backend library, and a standard polkit policy. There are no suspicious network requests, no obfuscated code, no use of `eval`, `base64`, `curl`, or `wget`, and no modifications to unrelated system files.

The only notable behavior is that `package_shelly-bin()` runs the downloaded `$srcdir/shelly` binary with `utility --docs` to generate the man page during packaging. This executes upstream code at build time, but it is the package's own declared, checksum-verified upstream binary and is consistent with generating documentation from a CLI tool. It does not indicate an injected supply-chain attack. The polkit policy grants `auth_admin_keep` for `/usr/bin/shelly`, which is expected functionality for a package manager needing administrator privileges. No genuinely malicious behavior is present.
</details>
<evidence>
</evidence>
<summary>
Standard AUR prebuilt package; pinned checksums, official sources, no malicious behavior found.
</summary>
</security_assessment>

[2/6] Reviewing PKGBUILD, com.shellyorg.shelly.desktop, shelly-flatpak-integrate, shellybuild.conf...
[3/6] Reviewing com.shellyorg.shelly.desktop, shelly-flatpak-integrate, shellybuild.conf...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR prebuilt package; pinned checksums, official sources, no malicious behavior found.
LLM auditresponse for shellybuild.conf:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a configuration template for shellybuild, an in-process AUR builder. It contains only commented-out options grouped under `[build]`, `[package]`, and `[destinations]` sections. There is no executable code, no network requests, no obfuscation, and no dangerous operations. The use of escaped XML entities (`&apos;`, `&quot;`) is standard for this configuration format and not indicative of any threat. The file is inert by design, as stated in its own header comment.
</details>
<evidence></evidence>
<summary>Inert configuration file, no malicious content.</summary>
</security_assessment>

[4/6] Reviewing com.shellyorg.shelly.desktop, shelly-flatpak-integrate...
+ Reviewed shellybuild.conf. Status: SAFE -- Inert configuration file, no malicious content.
LLM auditresponse for com.shellyorg.shelly.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard Freedesktop desktop entry for the Shelly package manager application. It defines the application metadata, MIME type associations, and desktop actions for Flatpak operations (install/update/remove). All `Exec` lines invoke `/usr/bin/shelly-ui` with expected arguments, which is the application's own binary. There is no embedded code, no obfuscation, no network operations, and no file manipulation outside the application's scope. No indicators of supply-chain attack or malicious intent are present.
</details>
<evidence>
</evidence>
<summary>Benign desktop entry for a package manager.</summary>
</security_assessment>

[5/6] Reviewing shelly-flatpak-integrate...
+ Reviewed com.shellyorg.shelly.desktop. Status: SAFE -- Benign desktop entry for a package manager.
LLM auditresponse for shelly-flatpak-integrate:
<security_assessment>
<decision>SAFE</decision>
<details>
The script is a straightforward integration helper for the shelly-flatpak-backend package. It copies Flatpak `.desktop` files to the user's local applications directory and appends a custom "Manage in Shelly" desktop action. All operations are limited to the user's `~/.local/share/applications` directory. The script uses standard shell commands (`cp`, `grep`, `sed`, `cat`, `update-desktop-database`) and contains no network requests, obfuscated code, or attempts to exfiltrate data or execute arbitrary payloads. The referenced executable `/usr/bin/shelly-ui` is assumed to be part of the same package and is not downloaded or fetched. There are no signs of supply-chain attack or malicious intent.
</details>
<evidence>
</evidence>
<summary>Benign Flatpak desktop integration script.</summary>
</security_assessment>

[6/6] Reviewing ...
+ Reviewed shelly-flatpak-integrate. Status: SAFE -- Benign Flatpak desktop integration script.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 22,218
  Completion Tokens: 3,603
  Total Tokens: 25,821
  Total Cost: $0.002426
  Execution Time: 48.49 seconds

Final Status: SAFE


No issues found.
