---
package: paseo-desktop-bin
pkgver: 0.1.97
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: openrouter.ai
base_url: https://openrouter.ai/api/v1
aur_sleuth_rev: 5790943c1b39200ecdf449522971aa7db90ade4a
prompt_tokens: 28429
completion_tokens: 8281
total_tokens: 36710
cost: 0.00404919
execution_time: 109.65
files_reviewed: 11
files_skipped: 1
date: 2026-06-19T06:33:26Z
file_verdicts:
  - file: Paseo-0.1.97-amd64.deb
    status: skipped
    summary: "Skipping binary file: Paseo-0.1.97-amd64.deb"
  - file: PKGBUILD
    status: safe
    summary: Standard AUR binary package, no malicious code found.
  - file: src/postrm
    status: safe
    summary: Clean postrm script with no suspicious activity.
  - file: src/opt/Paseo/resources/bin/paseo
    status: safe
    summary: Standard Electron launcher script, no malicious content.
  - file: src/opt/Paseo/resources/app-update.yml
    status: safe
    summary: Standard app updater config, no malware.
  - file: src/opt/Paseo/resources/app-dist/manifest.json
    status: safe
    summary: Standard PWA manifest with no security concerns.
  - file: "src/opt/Paseo/resources/app.asar.unpacked/node_modules/@getpaseo/server/dist/server/terminal/shell-integration/zsh/paseo-integration.zsh"
    status: safe
    summary: Clean terminal integration script, no security issues.
  - file: src/opt/Paseo/resources/apparmor-profile
    status: safe
    summary: Standard AppArmor profile, no malicious content.
  - file: src/usr/share/applications/Paseo.desktop
    status: safe
    summary: Standard desktop entry file; no malicious content.
  - file: src/opt/Paseo/resources/app.asar.unpacked/dist/daemon/node-entrypoint-runner.js
    status: safe
    summary: Standard Node.js entrypoint runner; no malicious patterns detected.
  - file: src/postinst
    status: safe
    summary: Standard post-install operations; no malicious content.
  - file: "src/opt/Paseo/resources/app.asar.unpacked/node_modules/@getpaseo/server/dist/server/terminal/shell-integration/zsh/.zshenv"
    status: safe
    summary: Standard shell integration file, no malicious indicators.
---

Cloning https://aur.archlinux.org/paseo-desktop-bin.git to /tmp/aur-sleuth/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-exkow2xa...
Cloned repository to /tmp/aur-sleuth/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-exkow2xa
Analyzing paseo-desktop-bin AUR package (working in /tmp/aur-sleuth/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-exkow2xa) with deepseek/deepseek-v4-flash from https://openrouter.ai/api/v1
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD only defines variables and a `source` array pointing to a `.deb` file from the project's official GitHub releases. The checksum is pinned. There is no `pkgver()` function or top-level command substitution that could execute code during sourcing. The `prepare()`, `build()`, and `package()` functions are not executed by `makepkg --nobuild --nodeps --noprepare` or `makepkg --printsrcinfo`. No malicious or suspicious behavior is present in the scope that would be triggered by these commands.
</details>
<summary>Source fetch and PKGBUILD sourcing are safe.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete [grey50]-- Source fetch and PKGBUILD sourcing are safe.[/]
Running makepkg --nobuild --nodeps --noprepare to download sources for agent...
makepkg --nobuild --nodeps --noprepare successful
Running makepkg --printsrcinfo to get source files for agent...
makepkg --printsrcinfo successful
Reviewing required files...
[0/2] Reviewing PKGBUILD...
[0/2] Reviewing PKGBUILD, Paseo-0.1.97-amd64.deb...
[1/2] Reviewing PKGBUILD...
! Reviewed Paseo-0.1.97-amd64.deb. Status: SKIPPED -- Skipping binary file: Paseo-0.1.97-amd64.deb
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
## Analysis

This PKGBUILD follows standard AUR binary packaging patterns. It downloads a `.deb` release from the project's own GitHub repository (`github.com/getpaseo/paseo`), checks the hash with a pinned SHA256 checksum (not `SKIP`), and extracts its contents into the package directory.

### What the code does
- **source**: downloads a `.deb` from the upstream GitHub releases page — this is the project's own official distribution channel, not an unexpected or suspicious host.
- **prepare()**: uses `ar p` (the standard `.deb` archiver) to extract the `data.tar.xz` member from the `.deb`, then `tar --zstd -x` to decompress it. This is standard for binary `.deb`-based AUR packages.
- **package()**: copies the extracted `usr` and `opt` directories into `$pkgdir`, which is normal packaging behavior.

### No red flags
- No `curl|bash`, `eval`, `base64` decode, or other obfuscated/encoded commands.
- No network requests to unrelated hosts.
- No exfiltration of local data (no files read from `/etc/shadow`, SSH keys, browser data, etc.).
- No `git pull`, `git fetch`, or `git reset --hard` of mutable content — the source is a pinned release tarball (`.deb`) with a checksum.
- No modification of system files outside the package's own scope.

The only minor note is the use of `--zstd` with a `.xz`-named member, which is a decompression mismatch in the extract line (`tar --zstd -x` expects zstd compression, not xz). This could be a packaging error or the upstream `.deb` might actually use zstd compression despite the `.xz` filename. It is not malicious — it is simply a flag that may fail or work as intended. No evidence of injected malicious code.

This file is **SAFE**.
</details>
<summary>Standard AUR binary package, no malicious code found.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR binary package, no malicious code found.
Reviewed all required files.
Deciding which files to review next...
LLM response for file selection:
src/postinst
src/postrm
src/usr/share/applications/Paseo.desktop
src/opt/Paseo/resources/app-update.yml
src/opt/Paseo/resources/app.asar.unpacked/dist/daemon/node-entrypoint-runner.js
src/opt/Paseo/resources/app.asar.unpacked/node_modules/@getpaseo/server/dist/server/terminal/shell-integration/zsh/paseo-integration.zsh
src/opt/Paseo/resources/app.asar.unpacked/node_modules/@getpaseo/server/dist/server/terminal/shell-integration/zsh/.zshenv
src/opt/Paseo/resources/apparmor-profile
src/opt/Paseo/resources/bin/paseo
src/opt/Paseo/resources/app-dist/manifest.json
Decided to review 10 additional files: src/postinst, src/postrm, src/usr/share/applications/Paseo.desktop, src/opt/Paseo/resources/app-update.yml, src/opt/Paseo/resources/app.asar.unpacked/dist/daemon/node-entrypoint-runner.js, src/opt/Paseo/resources/app.asar.unpacked/node_modules/@getpaseo/server/dist/server/terminal/shell-integration/zsh/paseo-integration.zsh, src/opt/Paseo/resources/app.asar.unpacked/node_modules/@getpaseo/server/dist/server/terminal/shell-integration/zsh/.zshenv, src/opt/Paseo/resources/apparmor-profile, src/opt/Paseo/resources/bin/paseo, src/opt/Paseo/resources/app-dist/manifest.json
Reviewing additional files...
Reviewing additional files...
[0/10] Reviewing src/postinst...
[0/10] Reviewing src/postinst, src/postrm...
[0/10] Reviewing src/postinst, src/postrm, src/usr/share/applications/Paseo.desktop...
[0/10] Reviewing src/postinst, src/postrm, src/usr/share/applications/Paseo.desktop, src/opt/Paseo/resources/app-update.yml...
[0/10] Reviewing src/postinst, src/postrm, src/usr/share/applications/Paseo.desktop, src/opt/Paseo/resources/app-update.yml, src/opt/Paseo/resources/app.asar.unpacked/dist/daemon/node-entrypoint-runner.js...
[0/10] Reviewing src/postinst, src/postrm, src/usr/share/applications/Paseo.desktop, src/opt/Paseo/resources/app-update.yml, src/opt/Paseo/resources/app.asar.unpacked/dist/daemon/node-entrypoint-runner.js, src/opt/Paseo/resources/app.asar.unpacked/node_modules/@getpaseo/server/dist/server/terminal/shell-integration/zsh/.zshenv...
[0/10] Reviewing src/postinst, src/postrm, src/usr/share/applications/Paseo.desktop, src/opt/Paseo/resources/app-update.yml, src/opt/Paseo/resources/app.asar.unpacked/dist/daemon/node-entrypoint-runner.js, src/opt/Paseo/resources/app.asar.unpacked/node_modules/@getpaseo/server/dist/server/terminal/shell-integration/zsh/.zshenv, src/opt/Paseo/resources/app.asar.unpacked/node_modules/@getpaseo/server/dist/server/terminal/shell-integration/zsh/paseo-integration.zsh...
[0/10] Reviewing src/postinst, src/postrm, src/usr/share/applications/Paseo.desktop, src/opt/Paseo/resources/app-update.yml, src/opt/Paseo/resources/app.asar.unpacked/dist/daemon/node-entrypoint-runner.js, src/opt/Paseo/resources/app.asar.unpacked/node_modules/@getpaseo/server/dist/server/terminal/shell-integration/zsh/.zshenv, src/opt/Paseo/resources/app.asar.unpacked/node_modules/@getpaseo/server/dist/server/terminal/shell-integration/zsh/paseo-integration.zsh, src/opt/Paseo/resources/apparmor-profile...
[0/10] Reviewing src/postinst, src/postrm, src/usr/share/applications/Paseo.desktop, src/opt/Paseo/resources/app-update.yml, src/opt/Paseo/resources/app.asar.unpacked/dist/daemon/node-entrypoint-runner.js, src/opt/Paseo/resources/app.asar.unpacked/node_modules/@getpaseo/server/dist/server/terminal/shell-integration/zsh/.zshenv, src/opt/Paseo/resources/app.asar.unpacked/node_modules/@getpaseo/server/dist/server/terminal/shell-integration/zsh/paseo-integration.zsh, src/opt/Paseo/resources/apparmor-profile, src/opt/Paseo/resources/bin/paseo...
[0/10] Reviewing src/postinst, src/postrm, src/usr/share/applications/Paseo.desktop, src/opt/Paseo/resources/app-update.yml, src/opt/Paseo/resources/app.asar.unpacked/dist/daemon/node-entrypoint-runner.js, src/opt/Paseo/resources/app.asar.unpacked/node_modules/@getpaseo/server/dist/server/terminal/shell-integration/zsh/.zshenv, src/opt/Paseo/resources/app.asar.unpacked/node_modules/@getpaseo/server/dist/server/terminal/shell-integration/zsh/paseo-integration.zsh, src/opt/Paseo/resources/apparmor-profile, src/opt/Paseo/resources/bin/paseo, src/opt/Paseo/resources/app-dist/manifest.json...
LLM auditresponse for postrm:
<security_assessment>
<decision>SAFE</decision>
<details>
The `postrm` script is a standard package removal script. It performs only two operations:
- Removing a symlink to the binary (`/usr/bin/Paseo`) using `update-alternatives` or a direct `rm -f` as a fallback.
- Removing an AppArmor profile from `/etc/apparmor.d/` if it exists.

No network requests, obfuscation, encoded commands, or unexpected file operations are present. The HTML entities (`&gt;`, `&amp;`, `&apos;`) are simply escaped representations of the original shell script characters (`>`, `&`, `'`) and do not indicate any malicious encoding. The script behaves exactly as expected for a cleanup action after package removal. There is no evidence of a supply-chain attack or any genuinely malicious behavior.
</details>
<summary>Clean postrm script with no suspicious activity.</summary>
</security_assessment>

[1/10] Reviewing src/postinst, src/usr/share/applications/Paseo.desktop, src/opt/Paseo/resources/app-update.yml, src/opt/Paseo/resources/app.asar.unpacked/dist/daemon/node-entrypoint-runner.js, src/opt/Paseo/resources/app.asar.unpacked/node_modules/@getpaseo/server/dist/server/terminal/shell-integration/zsh/.zshenv, src/opt/Paseo/resources/app.asar.unpacked/node_modules/@getpaseo/server/dist/server/terminal/shell-integration/zsh/paseo-integration.zsh, src/opt/Paseo/resources/apparmor-profile, src/opt/Paseo/resources/bin/paseo, src/opt/Paseo/resources/app-dist/manifest.json...
+ Reviewed src/postrm. Status: SAFE -- Clean postrm script with no suspicious activity.
LLM auditresponse for paseo:
<security_assessment>
<decision>SAFE</decision>
<details>
The script is a standard launcher for an Electron-based application (Paseo). It resolves its own path, follows symlinks, and locates the bundled executable and resources. It then sets `ELECTRON_RUN_AS_NODE=1` and runs a Node.js entrypoint with the application executable. There are no network requests, no obfuscated code, no dangerous command substitutions (other than normal path resolution), and no exfiltration or system modification beyond launching the intended application. All operations are confined to the app bundle and expected upstream behavior.
</details>
<summary>Standard Electron launcher script, no malicious content.</summary>
</security_assessment>

[2/10] Reviewing src/postinst, src/usr/share/applications/Paseo.desktop, src/opt/Paseo/resources/app-update.yml, src/opt/Paseo/resources/app.asar.unpacked/dist/daemon/node-entrypoint-runner.js, src/opt/Paseo/resources/app.asar.unpacked/node_modules/@getpaseo/server/dist/server/terminal/shell-integration/zsh/.zshenv, src/opt/Paseo/resources/app.asar.unpacked/node_modules/@getpaseo/server/dist/server/terminal/shell-integration/zsh/paseo-integration.zsh, src/opt/Paseo/resources/apparmor-profile, src/opt/Paseo/resources/app-dist/manifest.json...
+ Reviewed src/opt/Paseo/resources/bin/paseo. Status: SAFE -- Standard Electron launcher script, no malicious content.
LLM auditresponse for app-update.yml:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a configuration file for an application auto-updater. It declares metadata such as the owner (getpaseo), repo (paseo), provider (github), release type (release), channel (latest), and a cache directory name. There are no commands, scripts, obfuscated strings, or network calls. The contents are purely declarative and consistent with standard update mechanisms like electron-updater. No evidence of malicious behavior.
</details>
<summary>Standard app updater config, no malware.</summary>
</security_assessment>

[3/10] Reviewing src/postinst, src/usr/share/applications/Paseo.desktop, src/opt/Paseo/resources/app.asar.unpacked/dist/daemon/node-entrypoint-runner.js, src/opt/Paseo/resources/app.asar.unpacked/node_modules/@getpaseo/server/dist/server/terminal/shell-integration/zsh/.zshenv, src/opt/Paseo/resources/app.asar.unpacked/node_modules/@getpaseo/server/dist/server/terminal/shell-integration/zsh/paseo-integration.zsh, src/opt/Paseo/resources/apparmor-profile, src/opt/Paseo/resources/app-dist/manifest.json...
+ Reviewed src/opt/Paseo/resources/app-update.yml. Status: SAFE -- Standard app updater config, no malware.
LLM auditresponse for manifest.json:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard PWA manifest file containing only declarative metadata for the Paseo application (name, icons, display settings, etc.). No executable code, network requests, file operations, or obfuscated content is present. It poses no security risk.
</details>
<summary>Standard PWA manifest with no security concerns.</summary>
</security_assessment>

[4/10] Reviewing src/postinst, src/usr/share/applications/Paseo.desktop, src/opt/Paseo/resources/app.asar.unpacked/dist/daemon/node-entrypoint-runner.js, src/opt/Paseo/resources/app.asar.unpacked/node_modules/@getpaseo/server/dist/server/terminal/shell-integration/zsh/.zshenv, src/opt/Paseo/resources/app.asar.unpacked/node_modules/@getpaseo/server/dist/server/terminal/shell-integration/zsh/paseo-integration.zsh, src/opt/Paseo/resources/apparmor-profile...
+ Reviewed src/opt/Paseo/resources/app-dist/manifest.json. Status: SAFE -- Standard PWA manifest with no security concerns.
LLM auditresponse for paseo-integration.zsh:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard Zsh integration script that sets up terminal escape sequence hooks (OSC 633) to track command execution and update the terminal title. It only uses `printf`, status variables, and Zsh hook functions. There are no network requests, file downloads, obfuscated code, dangerous commands (eval, base64, curl, wget), or any operations outside of terminal shell integration. The script is consistent with normal packaging conventions for terminal-aware shells and does not exhibit any supply-chain attack indicators.
</details>
<summary>Clean terminal integration script, no security issues.</summary>
</security_assessment>

[5/10] Reviewing src/postinst, src/usr/share/applications/Paseo.desktop, src/opt/Paseo/resources/app.asar.unpacked/dist/daemon/node-entrypoint-runner.js, src/opt/Paseo/resources/app.asar.unpacked/node_modules/@getpaseo/server/dist/server/terminal/shell-integration/zsh/.zshenv, src/opt/Paseo/resources/apparmor-profile...
+ Reviewed src/opt/Paseo/resources/app.asar.unpacked/node_modules/@getpaseo/server/dist/server/terminal/shell-integration/zsh/paseo-integration.zsh. Status: SAFE -- Clean terminal integration script, no security issues.
LLM auditresponse for apparmor-profile:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard AppArmor profile for the Paseo application. It uses the `flags=(unconfined)` directive, which means the application runs without AppArmor restrictions. While this may be a loose security configuration, it is a packaging choice and not evidence of a supply-chain attack. The profile does not contain any obfuscated code, network requests, file operations, or other malicious behavior. It is a static configuration file with only an include directive for site-specific local overrides, which is normal for AppArmor profiles.
</details>
<summary>Standard AppArmor profile, no malicious content.</summary>
</security_assessment>

[6/10] Reviewing src/postinst, src/usr/share/applications/Paseo.desktop, src/opt/Paseo/resources/app.asar.unpacked/dist/daemon/node-entrypoint-runner.js, src/opt/Paseo/resources/app.asar.unpacked/node_modules/@getpaseo/server/dist/server/terminal/shell-integration/zsh/.zshenv...
+ Reviewed src/opt/Paseo/resources/apparmor-profile. Status: SAFE -- Standard AppArmor profile, no malicious content.
LLM auditresponse for Paseo.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard Linux `.desktop` entry for the Paseo application. It defines the application name, icon, and a typical execution path (`/opt/Paseo/Paseo`). There is no obfuscated code, no network requests, no dangerous commands, and no manipulation of system files outside the application's own installation. The content is consistent with ordinary packaging practices for a desktop application distributed via the Arch User Repository.
</details>
<summary>Standard desktop entry file; no malicious content.</summary>
</security_assessment>

[7/10] Reviewing src/postinst, src/opt/Paseo/resources/app.asar.unpacked/dist/daemon/node-entrypoint-runner.js, src/opt/Paseo/resources/app.asar.unpacked/node_modules/@getpaseo/server/dist/server/terminal/shell-integration/zsh/.zshenv...
+ Reviewed src/usr/share/applications/Paseo.desktop. Status: SAFE -- Standard desktop entry file; no malicious content.
LLM auditresponse for node-entrypoint-runner.js:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard Node.js entrypoint runner. It reads `argvMode` and `entryPath` from command-line arguments, then dynamically imports the specified file using `pathToFileURL`. There are no obfuscated commands, network requests, file system modifications outside the application scope, or any other indicators of malicious behavior. The dynamic import is by design, and no unusual patterns (curl, wget, eval, base64) are present. The code performs exactly as expected for its purpose: executing a given node script in a controlled environment.
</details>
<summary>Standard Node.js entrypoint runner; no malicious patterns detected.</summary>
</security_assessment>

[8/10] Reviewing src/postinst, src/opt/Paseo/resources/app.asar.unpacked/node_modules/@getpaseo/server/dist/server/terminal/shell-integration/zsh/.zshenv...
+ Reviewed src/opt/Paseo/resources/app.asar.unpacked/dist/daemon/node-entrypoint-runner.js. Status: SAFE -- Standard Node.js entrypoint runner; no malicious patterns detected.
LLM auditresponse for postinst:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard post-installation script for a packaged desktop application (Paseo, likely an Electron/Chromium-based app). It performs expected routine operations:

- Creates/updates a symlink via `update-alternatives` for the main executable.
- Adjusts permissions on `chrome-sandbox` (SUID if user namespaces are unavailable, otherwise 0755) — this is normal Chromium sandbox setup, not malicious.
- Refreshes MIME and desktop‑database caches.
- Installs an AppArmor profile (checking compatibility first).

There are no network requests, obfuscated code, data exfiltration, or unexpected system modifications. All actions are confined to standard system locations and serve only the application’s intended functionality.
</details>
<summary>Standard post-install operations; no malicious content.</summary>
</security_assessment>

[9/10] Reviewing src/opt/Paseo/resources/app.asar.unpacked/node_modules/@getpaseo/server/dist/server/terminal/shell-integration/zsh/.zshenv...
+ Reviewed src/postinst. Status: SAFE -- Standard post-install operations; no malicious content.
LLM auditresponse for .zshenv:
<security_assessment>
<decision>SAFE</decision>
<details>
The `.zshenv` file is a standard Zsh shell integration configuration for the paseo-desktop application. It performs the following routine operations:

- Sets `PASEO_SHELL_INTEGRATION_DIR` to the directory containing the script.
- Conditionally exports `ZDOTDIR` from an environment variable (expected usage within the package's ecosystem).
- Sources the user's own `.zshenv` from either the custom `ZDOTDIR` or `HOME`, which is normal Zsh behavior.
- Sources the package's own integration script `paseo-integration.zsh`.

There are no network requests, obfuscated code, unusual file operations, or attempts to exfiltrate data. The sourcing of user configuration files is legitimate and does not introduce a supply-chain vector beyond what the user already controls. The file does not contain any malicious or suspicious behavior; it is a benign helper script that follows standard packaging conventions.
</details>
<summary>Standard shell integration file, no malicious indicators.</summary>
</security_assessment>

[10/10] Reviewing ...
+ Reviewed src/opt/Paseo/resources/app.asar.unpacked/node_modules/@getpaseo/server/dist/server/terminal/shell-integration/zsh/.zshenv. Status: SAFE -- Standard shell integration file, no malicious indicators.
Reviewed all additional files.
Reviewed additional files.
Audit complete! Result: No issues found
(Skipped 1 file: Paseo-0.1.97-amd64.deb)

API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 28,429
  Completion Tokens: 8,281
  Total Tokens: 36,710
  Total Cost: $0.004049
  Execution Time: 109.65 seconds
Full audit report can be found in /tmp/aur-sleuth/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-report-paseo-desktop-bin.txt
Final Status: SAFE


No issues found.


Audit Skips:

/tmp/aur-sleuth/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-exkow2xa/Paseo-0.1.97-amd64.deb: [SKIPPED] Skipping binary file: Paseo-0.1.97-amd64.deb
