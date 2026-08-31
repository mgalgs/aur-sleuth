---
package: shelly-bin
pkgver: 3.1.2
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 3e318911529c43138ec6bdba0bfcb56907607021
prompt_tokens: 22025
completion_tokens: 2848
total_tokens: 24873
cost: 0.002456246926
execution_time: 101.65
files_reviewed: 6
files_skipped: 0
maintainer_files: 6
source_fetch: ok
upstream_files: 46
upstream_named_files: 0
unpinned_sources: 0
date: 2026-08-31T03:02:02Z
file_verdicts:
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD with no signs of malicious code.
  - file: com.shellyorg.shelly-notifications.desktop
    status: safe
    summary: Standard .desktop entry, no malicious content.
  - file: .SRCINFO
    status: safe
    summary: Declarative metadata only; no malicious content found.
  - file: com.shellyorg.shelly.desktop
    status: safe
    summary: Standard desktop entry, no malicious content.
  - file: shelly-flatpak-integrate
    status: safe
    summary: Safe – standard Flatpak desktop integration script, no malice.
  - file: shellybuild.conf
    status: safe
    summary: Inert configuration template, no executable or dangerous content.
---

Cloning https://aur.archlinux.org/shelly-bin.git...
Cloned shelly-bin
Analyzing shelly-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only standard variable assignments, array definitions, and function definitions. No code executes in the global/top-level scope or in `pkgver()` (which is not defined). The `source` array fetches binaries from the project's own GitHub releases, with specific SHA-256 checksums provided. There is no obfuscated code, no command substitutions, and no unexpected network requests. Running `makepkg --nobuild --nodeps --noprepare` and `makepkg --printsrcinfo` will safely fetch and extract the sources without executing any potentially malicious code from the PKGBUILD itself.
</details>
<evidence></evidence>
<summary>No dangerous top-level code; standard PKGBUILD.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous top-level code; standard PKGBUILD.
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Reviewing the 6 file(s) in the AUR repository. The 46 downloaded file(s) are upstream content, outside the threat model, and are not read.
Reviewing the AUR repository's files...
[0/6] Reviewing .SRCINFO...
[0/6] Reviewing .SRCINFO, PKGBUILD...
[0/6] Reviewing .SRCINFO, PKGBUILD, com.shellyorg.shelly-notifications.desktop...
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard AUR packaging practices for a prebuilt binary package. The sources are fetched from the upstream GitHub repository with pinned checksums. All operations are routine: installing binaries, configuration files, desktop entries, icons, shell completions, a polkit policy, and a man page generated from the upstream binary. There is no obfuscated code, no unexpected network requests, no execution of attacker-controlled content, and no deviation from the application's stated purpose as a package manager. The only dynamic command is `&quot;$srcdir/shelly&quot; utility --docs | go-md2man` to generate the man page, which runs the upstream binary on its own documentation feature — this is a normal build-time operation and not a security concern.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD with no signs of malicious code.</summary>
</security_assessment>

[1/6] Reviewing .SRCINFO, com.shellyorg.shelly-notifications.desktop...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD with no signs of malicious code.
[1/6] Reviewing .SRCINFO, com.shellyorg.shelly-notifications.desktop, com.shellyorg.shelly.desktop...
LLM auditresponse for com.shellyorg.shelly-notifications.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard Linux .desktop file for the Shelly Notifications application. It defines metadata such as the application name, description, executable path, icon, categories, and keywords in multiple languages. There is no obfuscation, no network requests, no file operations, and no execution of arbitrary code. The file simply registers a desktop entry for a notification service that is part of the shelly-bin package. No security issues are present.
</details>
<evidence></evidence>
<summary>Standard .desktop entry, no malicious content.</summary>
</security_assessment>

[2/6] Reviewing .SRCINFO, com.shellyorg.shelly.desktop...
+ Reviewed com.shellyorg.shelly-notifications.desktop. Status: SAFE -- Standard .desktop entry, no malicious content.
[2/6] Reviewing .SRCINFO, com.shellyorg.shelly.desktop, shelly-flatpak-integrate...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The `.SRCINFO` file contains only declarative metadata for the Arch User Repository package `shelly-bin`. It defines package names, version, dependencies, sources (tarballs from the official GitHub releases repository of the project), and SHA256 checksums for each source file. All checksums are provided (none are set to `SKIP`). There is no executable code, script, or logic present – the file is purely a machine-readable packaging definition. No suspicious URLs, obfuscation, or unexpected operations are present. The sources point to the project's own GitHub releases, which is standard practice. The file raises no security concerns.
</details>
<evidence>

</evidence>
<summary>Declarative metadata only; no malicious content found.</summary>
</security_assessment>

[3/6] Reviewing com.shellyorg.shelly.desktop, shelly-flatpak-integrate...
+ Reviewed .SRCINFO. Status: SAFE -- Declarative metadata only; no malicious content found.
[3/6] Reviewing com.shellyorg.shelly.desktop, shelly-flatpak-integrate, shellybuild.conf...
LLM auditresponse for com.shellyorg.shelly.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard freedesktop.org `.desktop` file for the *Shelly* Arch package manager. It defines the application name, icon, desktop actions (launching the GUI with various flags for Flatpak operations), and localized metadata. No network requests, obfuscated code, dangerous commands, or unexpected system modifications are present. The `Exec` lines invoke `/usr/bin/shelly-ui`, which is the expected binary for this package. The file contains no evidence of a supply-chain attack.
</details>
<evidence></evidence>
<summary>Standard desktop entry, no malicious content.</summary>
</security_assessment>

[4/6] Reviewing shelly-flatpak-integrate, shellybuild.conf...
+ Reviewed com.shellyorg.shelly.desktop. Status: SAFE -- Standard desktop entry, no malicious content.
LLM auditresponse for shelly-flatpak-integrate:
<security_assessment>
<decision>SAFE</decision>
<details>
This script adds a "Manage in Shelly" right‑click action to Flatpak `.desktop` files by copying them to the user&#39;s local applications directory and appending a Desktop Action that runs `/usr/bin/shelly-ui --page flatpak-install`. All operations are confined to desktop entry files and the desktop database; there are no network requests, no downloads, no obfuscated code, and no execution of untrusted or unexpected commands. The modifications serve the package&#39;s stated purpose of integrating with Flatpak, and the script follows standard packaging practices for adding desktop actions. No evidence of supply‑chain attack or malicious behavior is present.
</details>
<evidence>
</evidence>
<summary>
Safe – standard Flatpak desktop integration script, no malice.</summary>
</security_assessment>

[5/6] Reviewing shellybuild.conf...
+ Reviewed shelly-flatpak-integrate. Status: SAFE -- Safe – standard Flatpak desktop integration script, no malice.
LLM auditresponse for shellybuild.conf:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a configuration template for the shelly AUR builder. All options are commented out, making it inert. The file contains no executable code, no network operations, no obfuscation, and no system modification commands. The escaped HTML entities (&amp;apos; and &amp;quot;) are simply literal text in a configuration file and have no functional effect. This is a standard, harmless configuration file with no evidence of malicious intent.
</details>
<evidence>

</evidence>
<summary>Inert configuration template, no executable or dangerous content.</summary>
</security_assessment>

[6/6] Reviewing ...
+ Reviewed shellybuild.conf. Status: SAFE -- Inert configuration template, no executable or dangerous content.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 22,025
  Completion Tokens: 2,848
  Total Tokens: 24,873
  Total Cost: $0.002456
  Execution Time: 101.65 seconds

Final Status: SAFE


No issues found.
