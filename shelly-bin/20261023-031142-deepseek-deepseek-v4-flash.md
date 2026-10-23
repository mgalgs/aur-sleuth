---
package: shelly-bin
pkgver: 3.1.9
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 25233
completion_tokens: 4205
total_tokens: 29438
cost: 0.003061513
execution_time: 35.68
files_reviewed: 6
files_skipped: 0
maintainer_files: 6
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-23T03:11:42Z
file_verdicts:
  - file: com.shellyorg.shelly-notifications.desktop
    status: safe
    summary: Standard desktop entry metadata; launches own installed binary; no malicious behavior.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata with pinned upstream checksums; no malicious behavior found.
  - file: com.shellyorg.shelly.desktop
    status: safe
    summary: Standard desktop entry launching shelly-ui; no malicious or suspicious behavior found.
  - file: PKGBUILD
    status: safe
    summary: "SAFE: standard prebuilt AUR package with pinned checksums; no malicious behavior found."
  - file: shellybuild.conf
    status: safe
    summary: Inert commented config template; no malicious behavior found. SAFE.
  - file: shelly-flatpak-integrate
    status: safe
    summary: "Safe: script only adds a ShellyManage desktop action to local override files."
---

Materializing shelly-bin from local mirror...
Cloning https://aur.archlinux.org/shelly-bin.git...
Cloned shelly-bin
Analyzing shelly-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
Running `makepkg --printsrcinfo` sources only the top-level portion of this PKGBUILD. The top-level code contains standard variable definitions, source array declarations, checksums, and a `case` statement that reads the optional environment variable `SHELLY_LIBALPM` to select dependency lists. No commands in the global scope download, execute, or exfiltrate data. The `printf`/`return 1` in the `case` fallback is only a validation guard and is not malicious.

The suspicious and build-related logic — `readelf`, binary installation, polkit policy creation, translation copying, and man page generation — is contained inside `package_shelly-bin()` and `package_shelly-flatpak-backend-bin()`, which are not executed by `makepkg --printsrcinfo`. Those functions are out of scope for this narrow gate and should be reviewed in the full PKGBUILD audit.
</details>
<evidence>
</evidence>
<summary>
No top-level malicious execution; only metadata and dependency definitions run during printsrcinfo.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No top-level malicious execution; only metadata and dependency definitions run during printsrcinfo.
Reviewing the 6 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/6] Reviewing .SRCINFO...
[0/6] Reviewing .SRCINFO, com.shellyorg.shelly-notifications.desktop...
[0/6] Reviewing .SRCINFO, com.shellyorg.shelly-notifications.desktop, PKGBUILD...
LLM auditresponse for com.shellyorg.shelly-notifications.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard freedesktop.org `.desktop` entry file for a package manager notification service. It contains only localized metadata such as Name, Comment, Categories, and Keywords, along with an Exec line that launches the installed binary `/usr/bin/shelly-notifications`.

There are no network requests, no encoded or obfuscated commands, no file operations, and no execution of anything other than the package's own installed binary. `NoDisplay=true` simply prevents the application from appearing in normal application menus, which is consistent with a background notification service and is not suspicious.

The file contains no code capable of exfiltration, downloading, or system modification. It is an ordinary packaging metadata file and presents no security concerns.
</details>
<evidence>
</evidence>
<summary>
Standard desktop entry metadata; launches own installed binary; no malicious behavior.</summary>
</security_assessment>

[0/6] Reviewing .SRCINFO, com.shellyorg.shelly-notifications.desktop, PKGBUILD, com.shellyorg.shelly.desktop...
[1/6] Reviewing .SRCINFO, PKGBUILD, com.shellyorg.shelly.desktop...
+ Reviewed com.shellyorg.shelly-notifications.desktop. Status: SAFE -- Standard desktop entry metadata; launches own installed binary; no malicious behavior.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard AUR `.SRCINFO` metadata file for the `shelly-bin` package. It declares package metadata, dependencies, source URLs, and SHA-256 checksums. All six source entries have pinned checksums, and the two binary tarballs are fetched from the project's official GitHub releases page (`github.com/Seafoam-Labs/Shelly-ALPM`), which is the package's declared upstream. There is no obfuscated code, no unexpected network destination, no dangerous command, and no file operation visible in this metadata file.

The file also declares two split packages (`shelly-bin` and `shelly-flatpak-backend-bin`) with appropriate dependency relationships and conflicts. This is consistent with normal AUR packaging practice for distributing prebuilt binaries. Nothing in this file indicates a supply-chain attack or malicious behavior. The actual safety of the packaged binaries cannot be fully determined from `.SRCINFO` alone, but the metadata itself contains no red flags.
</details>
<evidence>
</evidence>
<summary>
Standard AUR metadata with pinned upstream checksums; no malicious behavior found.</summary>
</security_assessment>

[2/6] Reviewing PKGBUILD, com.shellyorg.shelly.desktop...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata with pinned upstream checksums; no malicious behavior found.
[2/6] Reviewing PKGBUILD, com.shellyorg.shelly.desktop, shelly-flatpak-integrate...
LLM auditresponse for com.shellyorg.shelly.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard freedesktop.org desktop entry for the Shelly application. It defines a launcher for `/usr/bin/shelly-ui`, sets display metadata such as name, icon, categories, keywords, and registered MIME types, and declares several optional desktop actions that invoke the same binary with different page arguments (e.g. `--page flatpak-install`). There is no embedded scripting, no network access, no encoded or obfuscated content, and no attempt to execute anything other than the package's own installed UI binary. The file is consistent with ordinary packaging practice and does not introduce any supply-chain or security risk.
</details>
<evidence>
</evidence>
<summary>
Standard desktop entry launching shelly-ui; no malicious or suspicious behavior found.</summary>
</security_assessment>

[2/6] Reviewing PKGBUILD, com.shellyorg.shelly.desktop, shelly-flatpak-integrate, shellybuild.conf...
[3/6] Reviewing PKGBUILD, shelly-flatpak-integrate, shellybuild.conf...
+ Reviewed com.shellyorg.shelly.desktop. Status: SAFE -- Standard desktop entry launching shelly-ui; no malicious or suspicious behavior found.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD packages prebuilt Shelly binaries downloaded from the project's official GitHub releases. All six sources have pinned SHA-256 checksums, and the package functions only install files into the package directory, create a polkit policy for pkexec, install desktop entries/icons/completions, and generate a man page by running the downloaded `shelly` binary and piping its output to go-md2man. No network exfiltration, obfuscation, unexpected downloads, or modifications outside the package's own scope were found.

The `SHELLY_LIBALPM` environment variable selects declared dependencies and is validated against the binary's dynamic library usage with readelf; this is a consistency check, not malicious behavior. The polkit policy restricts privileged execution to /usr/bin/shelly, which is expected for an AUR package manager that needs administrative operations. Any risk is the normal supply-chain consideration of shipping prebuilt binaries, and it is mitigated by pinned checksums. No evidence of injected malicious code was found.
</details>
<evidence></evidence>
<summary>SAFE: standard prebuilt AUR package with pinned checksums; no malicious behavior found.</summary>
</security_assessment>

[4/6] Reviewing shelly-flatpak-integrate, shellybuild.conf...
+ Reviewed PKGBUILD. Status: SAFE -- SAFE: standard prebuilt AUR package with pinned checksums; no malicious behavior found.
LLM auditresponse for shellybuild.conf:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a commented configuration template for Shelly&apos;s in-process AUR builder. Every meaningful setting is commented out, so the file is inert when installed as-is. The options described (build flags, compression levels, sandbox paths, destination directories) are standard for a packaging/build tool and match the application&apos;s stated purpose.

There are no network fetches, no execution of downloaded content, no obfuscated or encoded commands, no file exfiltration, and no system modifications beyond what a package builder would normally perform. The `extra_path` and `env` examples are illustrative user-editable overrides and are commented out. The sandbox section only lists optional read/write paths, consistent with a build isolation feature. This is a benign configuration template with no evidence of injected malicious code.
</details>
<evidence>
</evidence>
<summary>
Inert commented config template; no malicious behavior found. SAFE.</summary>
</security_assessment>

[5/6] Reviewing shelly-flatpak-integrate...
+ Reviewed shellybuild.conf. Status: SAFE -- Inert commented config template; no malicious behavior found. SAFE.
LLM auditresponse for shelly-flatpak-integrate:
<security_assessment>
<decision>SAFE</decision>
<details>
This script is a desktop-integration helper for the Shelly application. It scans Flatpak desktop export directories, creates per-user override files under ~/.local/share/applications, adds a ShellyManage desktop action, and refreshes the desktop database. All file operations are confined to application desktop entries and the user's local applications directory. There is no network access, no download-and-execute behavior, no eval, no obfuscation, and no access to sensitive system files.

The modifications target only .desktop files that are part of Flatpak integration, and the added Exec line points to the package's own /usr/bin/shelly-ui binary. The use of mktemp, cp, sed, chmod --reference, mv, and update-desktop-database is consistent with ordinary packaging and post-install integration practice. No evidence of injected malicious behavior was found.
</details>
<evidence>
</evidence>
<summary>
Safe: script only adds a ShellyManage desktop action to local override files.
</summary>
</security_assessment>

[6/6] Reviewing ...
+ Reviewed shelly-flatpak-integrate. Status: SAFE -- Safe: script only adds a ShellyManage desktop action to local override files.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 25,233
  Completion Tokens: 4,205
  Total Tokens: 29,438
  Total Cost: $0.003062
  Execution Time: 35.68 seconds

Final Status: SAFE


No issues found.
