---
package: shelly-bin
pkgver: 3.1.2
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: b9e20f728bbe0de1871ebaca31738c802edc31f8
prompt_tokens: 22025
completion_tokens: 2878
total_tokens: 24903
cost: 0.00229082126
execution_time: 29.99
files_reviewed: 6
files_skipped: 0
maintainer_files: 6
source_fetch: ok
upstream_files: 46
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-08-31T19:00:54Z
file_verdicts:
  - file: com.shellyorg.shelly-notifications.desktop
    status: safe
    summary: Standard desktop entry file, no security issues.
  - file: .SRCINFO
    status: safe
    summary: Standard .SRCINFO file with no malicious content.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD with no signs of malicious code.
  - file: shelly-flatpak-integrate
    status: safe
    summary: Legitimate Flatpak integration script; no malicious behavior.
  - file: com.shellyorg.shelly.desktop
    status: safe
    summary: Standard .desktop file with no malicious content.
  - file: shellybuild.conf
    status: safe
    summary: Standard configuration file; no executable or suspicious content.
---

Cloning https://aur.archlinux.org/shelly-bin.git...
Cloned shelly-bin
Analyzing shelly-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only variable/array definitions at global scope and two `package_*()` functions. There is no `pkgver()` function, no top-level command substitution, and no `eval` or similar dangerous constructs that would execute during `makepkg --nobuild --nodeps --noprepare`. The `source` array points to official GitHub release tarballs for the Shelly-ALPM project, which is the expected upstream for this AUR package. All six source entries have SHA-256 checksums (none are `SKIP`). Extracting these archives writes files to `$srcdir` but does not execute any code from them, and the `--noprepare` flag ensures `prepare()` is skipped. The `package_*()` functions are only invoked during the packaging phase (`--nobuild` stops before `build()`/`package()`), so their content (which includes `install`, `cp`, `sed`, `go-md2man`, etc.) is out of scope for this gate. No malicious code (exfiltration, backdoors, obfuscated commands, or unexpected network requests) is present in the globally-executed portions of this PKGBUILD.
</details>
<evidence></evidence>
<summary>No dangerous code in global scope or pkgver().</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous code in global scope or pkgver().
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Reviewing the 6 file(s) in the AUR repository. The 46 downloaded file(s) are upstream content, outside the threat model, and are not read.
Reviewing the AUR repository's files...
[0/6] Reviewing .SRCINFO...
[0/6] Reviewing .SRCINFO, PKGBUILD...
[0/6] Reviewing .SRCINFO, PKGBUILD, com.shellyorg.shelly-notifications.desktop...
LLM auditresponse for com.shellyorg.shelly-notifications.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard freedesktop.org `.desktop` file. It defines an application entry for a notification service called "Shelly Notifications" that executes `/usr/bin/shelly-notifications`. The file contains no executable logic, no network requests, no file operations, and no obfuscated or encoded content. There is nothing indicative of a supply-chain attack or malicious behavior.
</details>
<evidence></evidence>
<summary>Standard desktop entry file, no security issues.</summary>
</security_assessment>

[0/6] Reviewing .SRCINFO, PKGBUILD, com.shellyorg.shelly-notifications.desktop, com.shellyorg.shelly.desktop...
[1/6] Reviewing .SRCINFO, PKGBUILD, com.shellyorg.shelly.desktop...
+ Reviewed com.shellyorg.shelly-notifications.desktop. Status: SAFE -- Standard desktop entry file, no security issues.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This .SRCINFO file is standard Arch User Repository metadata. It defines two packages (shelly-bin and shelly-flatpak-backend-bin) with sources pointing to official GitHub releases from the upstream project (Seafoam-Labs/Shelly-ALPM). All source archives have SHA256 checksums provided (none are set to SKIP), and no suspicious URLs or commands appear. The file contains only package metadata such as dependencies, descriptions, and source declarations. There is no code to execute, no obfuscation, and no evidence of supply-chain compromise.
</details>
<evidence>
</evidence>
<summary>Standard .SRCINFO file with no malicious content.</summary>
</security_assessment>

[1/6] Reviewing .SRCINFO, PKGBUILD, com.shellyorg.shelly.desktop, shelly-flatpak-integrate...
[2/6] Reviewing PKGBUILD, com.shellyorg.shelly.desktop, shelly-flatpak-integrate...
+ Reviewed .SRCINFO. Status: SAFE -- Standard .SRCINFO file with no malicious content.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard Arch packaging practices for a prebuilt binary package. It fetches upstream releases from the official GitHub repository (`github.com/Seafoam-Labs/Shelly-ALPM`) with pinned checksums for all sources. The build and install functions use only common commands (`install`, `cp`, `ln`, `cat`, `sed`, `printf`) to place binaries, configuration files, desktop entries, a polkit policy, icons, shell completions, and a man page into the package directory. The man page is generated by running the upstream binary with `--docs` and piping to `go-md2man` — this is legitimate upstream functionality used during packaging, not a supply-chain attack. There is no obfuscated code, no unexpected network requests, no exfiltration of data, and no execution of attacker-controlled content.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD with no signs of malicious code.</summary>
</security_assessment>

[2/6] Reviewing PKGBUILD, com.shellyorg.shelly.desktop, shelly-flatpak-integrate, shellybuild.conf...
[3/6] Reviewing com.shellyorg.shelly.desktop, shelly-flatpak-integrate, shellybuild.conf...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD with no signs of malicious code.
LLM auditresponse for shelly-flatpak-integrate:
<security_assessment>
<decision>SAFE</decision>
<details>
The script `shelly-flatpak-integrate` adds a desktop action for Flatpak applications to launch `shelly-ui --page flatpak-install`. It operates only on `.desktop` files in standard Flatpak exports directories and the user&#x27;s local applications directory. All operations (copying, sed patching, appending actions) are limited to these files and are consistent with the stated integration purpose. No network requests, obfuscation, system modification outside of desktop entries, or execution of untrusted code occur. The script is a legitimate package integration helper.
</details>
<evidence>
</evidence>
<summary>Legitimate Flatpak integration script; no malicious behavior.</summary>
</security_assessment>

[4/6] Reviewing com.shellyorg.shelly.desktop, shellybuild.conf...
+ Reviewed shelly-flatpak-integrate. Status: SAFE -- Legitimate Flatpak integration script; no malicious behavior.
LLM auditresponse for com.shellyorg.shelly.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard freedesktop.org .desktop file for the "Shelly" application, described as an Arch Linux package manager. It defines the application entry, MIME type associations, and desktop actions (Flatpak Install/Update/Remove). All Exec lines invoke `/usr/bin/shelly-ui` with expected arguments. There is no obfuscation, no network requests, no suspicious commands, and no deviation from normal desktop file conventions. The file contains no executable code or malicious behavior.
</details>
<evidence></evidence>
<summary>Standard .desktop file with no malicious content.</summary>
</security_assessment>

[5/6] Reviewing shellybuild.conf...
+ Reviewed com.shellyorg.shelly.desktop. Status: SAFE -- Standard .desktop file with no malicious content.
LLM auditresponse for shellybuild.conf:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a plain configuration file for shelly's in-process AUR builder. It contains only commented-out default settings in standard INI format, with no executable code, no network requests, no obfuscation, and no system-modifying operations. The content is entirely passive and poses no security threat. There are no signs of malicious injection or supply-chain attack.
</details>
<evidence></evidence>
<summary>Standard configuration file; no executable or suspicious content.</summary>
</security_assessment>

[6/6] Reviewing ...
+ Reviewed shellybuild.conf. Status: SAFE -- Standard configuration file; no executable or suspicious content.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 22,025
  Completion Tokens: 2,878
  Total Tokens: 24,903
  Total Cost: $0.002291
  Execution Time: 29.99 seconds

Final Status: SAFE


No issues found.
