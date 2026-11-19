---
package: shelly
pkgver: 3.2.1
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 29523
completion_tokens: 5610
total_tokens: 35133
cost: 0.003707613
execution_time: 45.64
files_reviewed: 6
files_skipped: 0
maintainer_files: 6
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-11-10T00:15:16Z
file_verdicts:
  - file: com.shellyorg.shelly-notifications.desktop
    status: safe
    summary: Standard desktop entry file, no security issues.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata; no security concerns.
  - file: com.shellyorg.shelly.desktop
    status: safe
    summary: Standard .desktop file; no security concerns.
  - file: shelly-flatpak-integrate
    status: safe
    summary: Script performs safe Flatpak desktop integration for Shelly.
  - file: shellybuild.conf
    status: safe
    summary: Inert configuration file with no executable code.
  - file: PKGBUILD
    status: safe
    summary: No malicious content found; standard PKGBUILD for a package manager.
---

Materializing shelly from local mirror...
Cloning https://aur.archlinux.org/shelly.git...
Cloned shelly
Analyzing shelly AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The global/top-level scope of this PKGBUILD contains only standard variable definitions, a case statement for the `SHELLY_LIBALPM` environment variable, and function definitions for `build()`, `check()`, and `package_*()`. The case statement is the only code that executes during sourcing; it prints an error and returns a non-zero exit code if an invalid value is provided, which is harmless. There are no commands in the global scope that download or execute arbitrary code, exfiltrate data, or perform any other malicious actions. All dangerous operations are confined to the function bodies which are not executed by `makepkg --printsrcinfo`. Therefore, it is safe to run this command for metadata parsing.
</details>
<evidence>
</evidence>
<summary>No malicious code executes at global scope.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious code executes at global scope.
Reviewing the 6 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/6] Reviewing PKGBUILD...
[0/6] Reviewing PKGBUILD, .SRCINFO...
[0/6] Reviewing PKGBUILD, .SRCINFO, com.shellyorg.shelly-notifications.desktop...
LLM auditresponse for com.shellyorg.shelly-notifications.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.desktop` entry file for the Shelly package manager notification service. It declares the application name, translations, execution path (`/usr/bin/shelly-notifications`), icon, categories, and keywords. The `NoDisplay=true` flag indicates it runs as a background service. There are no embedded commands, network requests, encoded content, or other potentially dangerous operations. The file contains only static metadata and translations, consistent with normal packaging practices.
</details>
<evidence></evidence>
<summary>Standard desktop entry file, no security issues.</summary>
</security_assessment>

[0/6] Reviewing PKGBUILD, .SRCINFO, com.shellyorg.shelly-notifications.desktop, com.shellyorg.shelly.desktop...
[1/6] Reviewing PKGBUILD, .SRCINFO, com.shellyorg.shelly.desktop...
+ Reviewed com.shellyorg.shelly-notifications.desktop. Status: SAFE -- Standard desktop entry file, no security issues.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard `.SRCINFO` metadata file for an Arch User Repository (AUR) package. It contains only declarative fields such as package name, version, dependencies, source URLs, and checksums. There is no executable code, no obfuscated strings, and no suspicious network requests or file operations. The source tarball is fetched from the official GitHub repository of the project (`https://github.com/Seafoam-Labs/Shelly-ALPM`) over HTTPS, and all checksums are provided (no `SKIP` entries). The file deviates in no way from legitimate packaging practices and contains no evidence of a supply-chain attack.
</details>
<evidence></evidence>
<summary>Standard AUR metadata; no security concerns.</summary>
</security_assessment>

[1/6] Reviewing PKGBUILD, .SRCINFO, com.shellyorg.shelly.desktop, shelly-flatpak-integrate...
[2/6] Reviewing PKGBUILD, com.shellyorg.shelly.desktop, shelly-flatpak-integrate...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata; no security concerns.
LLM auditresponse for com.shellyorg.shelly.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.desktop` file for an Arch Linux package manager called "Shelly". It contains no executable code, no network requests, no obfuscation, and no system modifications. The file only defines metadata for the desktop environment: application name, comments (with translations), the executable path (`/usr/bin/shelly-ui`), categories, keywords, MIME types, and desktop actions (Flatpak Install/Update/Remove). All paths are standard (`/usr/bin/`) and the actions simply launch the same binary with different arguments. There is no evidence of malicious behavior. This is a benign packaging file.
</details>
<evidence></evidence>
<summary>Standard .desktop file; no security concerns.</summary>
</security_assessment>

[2/6] Reviewing PKGBUILD, com.shellyorg.shelly.desktop, shelly-flatpak-integrate, shellybuild.conf...
[3/6] Reviewing PKGBUILD, shelly-flatpak-integrate, shellybuild.conf...
+ Reviewed com.shellyorg.shelly.desktop. Status: SAFE -- Standard .desktop file; no security concerns.
LLM auditresponse for shelly-flatpak-integrate:
<security_assessment>
<decision>SAFE</decision>
<details>
This script integrates Shelly with Flatpak desktop entries by adding a &quot;Manage in Shelly&quot; action to existing .desktop files. It operates solely on the user&#x27;s local applications directory (`~/.local/share/applications`) and Flatpak export directories. The operations are standard file manipulation (cp, sed, mv, chmod, mkdir) with proper error handling and atomic writes via mktemp. No network requests, obfuscated code, or dangerous commands (curl, wget, eval) are present. The only external binary invoked is `/usr/bin/shelly-ui`, which is the package&#x27;s own application. This is a legitimate runtime integration script, not a supply-chain attack.
</details>
<evidence></evidence>
<summary>Script performs safe Flatpak desktop integration for Shelly.</summary>
</security_assessment>

[4/6] Reviewing PKGBUILD, shellybuild.conf...
+ Reviewed shelly-flatpak-integrate. Status: SAFE -- Script performs safe Flatpak desktop integration for Shelly.
LLM auditresponse for shellybuild.conf:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a configuration file (TOML/INI-style) for Shelly, an AUR build tool. It contains commented-out settings and explanatory comments about compiler flags, package options, and sandbox features. There is no executable code, no obfuscation, no network requests, no file manipulations, and no commands that could perform any action. The file is inert and serves only as a reference for system administrators. All content is standard for such a configuration file. No supply-chain attack or malicious behavior is present.
</details>
<evidence></evidence>
<summary>Inert configuration file with no executable code.</summary>
</security_assessment>

[5/6] Reviewing PKGBUILD...
+ Reviewed shellybuild.conf. Status: SAFE -- Inert configuration file with no executable code.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a straightforward build script for the Shelly package manager. All source archives are pinned via sha256sums, no network requests are made beyond the declared upstream release tarball (no `curl|bash`, `git pull`, or retrieval from unexpected hosts).  The build process compiles from source using Zig and standard tools, then runs the resulting binary only to generate shell completions and a man page—a common pattern for CLI tools.  There are no encoded or obfuscated commands, no data exfiltration, no backdoors, and no operations that modify system files outside the packaging staging directory.  The polkit policy and other configuration files are installed normally.  Every operation is consistent with trusted packaging practices for an AUR package.
</details>
<evidence></evidence>
<summary>No malicious content found; standard PKGBUILD for a package manager.</summary>
</security_assessment>

[6/6] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- No malicious content found; standard PKGBUILD for a package manager.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 29,523
  Completion Tokens: 5,610
  Total Tokens: 35,133
  Total Cost: $0.003708
  Execution Time: 45.64 seconds

Final Status: SAFE


No issues found.
