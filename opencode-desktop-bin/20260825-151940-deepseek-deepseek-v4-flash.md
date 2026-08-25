---
package: opencode-desktop-bin
pkgver: 1.18.23
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 34eecedf33cdb5da67bea8964402044d560850d8
prompt_tokens: 25610
completion_tokens: 6919
total_tokens: 32529
cost: 0.0032584048
execution_time: 177.83
files_reviewed: 8
files_skipped: 0
files_unauditable: 81
unpinned_sources: 0
date: 2026-08-25T15:19:39Z
file_verdicts:
  - file: LICENSE
    status: safe
    summary: Standard license file, no security issues.
  - file: PKGBUILD
    status: safe
    summary: Standard pinned binary PKGBUILD with checksums; no malicious behavior found.
  - file: src/postinst
    status: safe
    summary: Standard post-install script, no malicious behavior detected.
  - file: src/usr/share/applications/opencode-desktop.desktop
    status: safe
    summary: Standard desktop entry, no security issues.
  - file: src/opt/OpenCode/resources/app-update.yml
    status: safe
    summary: Standard updater config, no malicious content.
  - file: src/opt/OpenCode/resources/apparmor-profile
    status: safe
    summary: Standard AppArmor profile, no malicious content.
  - file: src/usr/share/applications/ai.opencode.desktop.desktop
    status: safe
    summary: Standard desktop entry file with no malicious content.
  - file: src/postrm
    status: safe
    summary: Standard package removal script, no security issues.
---

Cloning https://aur.archlinux.org/opencode-desktop-bin.git...
Cloned opencode-desktop-bin
Analyzing opencode-desktop-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD for `opencode-desktop-bin` contains only standard variable assignments and function definitions at the top level. There is no `pkgver()` function defined; the version is set as a static variable. No `eval`, `curl | bash`, or other dangerous commands exist in the global scope. The `source` arrays use HTTPS URLs to the official GitHub releases, and all checksums are provided (not set to SKIP). The only functions defined are `latestver()` and `package()`, neither of which are called during the narrow scope of `makepkg --nobuild --nodeps --noprepare`. Sourcing the PKGBUILD and fetching the sources is safe.
</details>
<evidence></evidence>
<summary>No dangerous top-level code; safe to fetch sources.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous top-level code; safe to fetch sources.
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Running makepkg --printsrcinfo to get source files for agent...
makepkg --printsrcinfo successful
Reviewing required files...
[0/2] Reviewing PKGBUILD...
[0/2] Reviewing PKGBUILD, LICENSE...
LLM auditresponse for LICENSE:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard MIT License text with no executable content, network requests, or system modifications. It poses no security risk.
</details>
<evidence></evidence>
<summary>Standard license file, no security issues.</summary>
</security_assessment>

[1/2] Reviewing PKGBUILD...
+ Reviewed LICENSE. Status: SAFE -- Standard license file, no security issues.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
Reviewed as untrusted input. This PKGBUILD is a conventional binary repackaging of an upstream GitHub release: pinned version v1.18.23, explicit sha256 checksums for every source, and no SKIP. The package() function extracts the upstream .deb with bsdtar, relocates the Electron app payload, removes Debian-specific files, installs a small launcher script, and fixes desktop-file Exec lines. All file operations stay within $srcdir/$pkgdir and the application's own paths.

Network behavior is limited to the source URLs pointing at github.com/anomalyco/opencode releases and raw files, which is the project's own upstream. The `latestver()` helper calls `gh api` to list releases, but it is not invoked during build or package and only reads public release metadata; it does not download or execute anything. The launcher reads a user-owned `~/.config/opencode-desktop-flags.conf` and passes its contents as Electron flags; this is standard practice and does not introduce a supply-chain risk.

No eval, base64, curl-pipe-to-shell, obfuscated strings, credential access, or modification of files outside the package/application scope was found. Minor hygiene observations such as lack of signature verification are not indicators of malice.
</details>
<evidence></evidence>
<summary>Standard pinned binary PKGBUILD with checksums; no malicious behavior found.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard pinned binary PKGBUILD with checksums; no malicious behavior found.
Reviewed all required files.
Deciding which files to review next...
Note: 81 compiled/archived file(s) cannot be audited as text and were not reviewed (opencode-desktop-1.18.23-linux-amd64.deb, src/control.tar.xz, src/data.tar.xz and 78 more). For a package that ships prebuilt binaries, the audit covers the packaging, not the payload.
LLM response for file selection:
src/postinst
src/postrm
src/usr/share/applications/ai.opencode.desktop.desktop
src/usr/share/applications/opencode-desktop.desktop
src/opt/OpenCode/resources/app-update.yml
src/opt/OpenCode/resources/apparmor-profile
Decided to review 6 additional files: src/postinst, src/postrm, src/usr/share/applications/ai.opencode.desktop.desktop, src/usr/share/applications/opencode-desktop.desktop, src/opt/OpenCode/resources/app-update.yml, src/opt/OpenCode/resources/apparmor-profile
Reviewing additional files...
Reviewing additional files...
[0/6] Reviewing src/postinst...
[0/6] Reviewing src/postinst, src/postrm...
[0/6] Reviewing src/postinst, src/postrm, src/usr/share/applications/ai.opencode.desktop.desktop...
LLM auditresponse for postinst:
<security_assessment>
<decision>SAFE</decision>
<details>
The postinst script performs standard packaging operations: setting up alternative symlinks, adjusting sandbox permissions based on kernel capabilities, updating MIME and desktop databases, and conditionally installing an AppArmor profile. All operations target the application's own files under `/opt/OpenCode/` and appropriate system directories. There are no network requests, no obfuscated code, no data exfiltration, and no unexpected system modifications. The chrome-sandbox SUID bit handling is normal for Electron-based applications. The AppArmor installation logic includes compatibility checks and is well-documented.
</details>
<evidence></evidence>
<summary>Standard post-install script, no malicious behavior detected.</summary>
</security_assessment>

[1/6] Reviewing src/postrm, src/usr/share/applications/ai.opencode.desktop.desktop...
+ Reviewed src/postinst. Status: SAFE -- Standard post-install script, no malicious behavior detected.
[1/6] Reviewing src/postrm, src/usr/share/applications/ai.opencode.desktop.desktop, src/usr/share/applications/opencode-desktop.desktop...
LLM auditresponse for opencode-desktop.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard Freedesktop.org `.desktop` file for the OpenCode application. It defines the application name, executable path (`/opt/OpenCode/ai.opencode.desktop`), icon, categories, and type. No malicious commands, network requests, obfuscation, or unexpected operations are present. The file is consistent with normal packaging practices.
</details>
<evidence></evidence>
<summary>Standard desktop entry, no security issues.</summary>
</security_assessment>

[2/6] Reviewing src/postrm, src/usr/share/applications/ai.opencode.desktop.desktop...
+ Reviewed src/usr/share/applications/opencode-desktop.desktop. Status: SAFE -- Standard desktop entry, no security issues.
[2/6] Reviewing src/postrm, src/usr/share/applications/ai.opencode.desktop.desktop, src/opt/OpenCode/resources/app-update.yml...
LLM auditresponse for app-update.yml:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard YAML configuration file for an application's auto-updater (commonly used with `electron-updater` or similar). It simply defines the GitHub owner (`anomalyco`), repository name (`opencode`), update provider (`github`), release channel (`latest`), and a local cache directory name. There are no hidden commands, obfuscated strings, or suspicious network destinations. The content is purely declarative and poses no security risk.
</details>
<evidence>
</evidence>
<summary>Standard updater config, no malicious content.</summary>
</security_assessment>

[3/6] Reviewing src/postrm, src/usr/share/applications/ai.opencode.desktop.desktop...
+ Reviewed src/opt/OpenCode/resources/app-update.yml. Status: SAFE -- Standard updater config, no malicious content.
[3/6] Reviewing src/postrm, src/usr/share/applications/ai.opencode.desktop.desktop, src/opt/OpenCode/resources/apparmor-profile...
LLM auditresponse for apparmor-profile:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is an AppArmor profile for the application `ai.opencode.desktop`. It uses standard AppArmor syntax (`abi`, `include`, profile definition) and sets the profile to `flags=(unconfined)`, which effectively disables AppArmor restrictions for this binary. The `userns` capability is also permitted. There is no evidence of malicious behavior: no network requests, no code execution, no obfuscation, no data exfiltration. The profile is a normal configuration file shipped by the upstream project to define its own security policy. While an unconfined profile may be considered a weak security stance, it is not a supply-chain attack indicator.
</details>
<evidence></evidence>
<summary>Standard AppArmor profile, no malicious content.</summary>
</security_assessment>

[4/6] Reviewing src/postrm, src/usr/share/applications/ai.opencode.desktop.desktop...
+ Reviewed src/opt/OpenCode/resources/apparmor-profile. Status: SAFE -- Standard AppArmor profile, no malicious content.
LLM auditresponse for ai.opencode.desktop.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard `.desktop` entry for a Linux application. It contains only metadata such as the application name, executable path, icon, MIME type, and category. There is no embedded code, network requests, obfuscation, or file manipulation. The executable path `/opt/OpenCode/ai.opencode.desktop` and the MIME type `x-scheme-handler/opencode` are typical for registering a custom URL scheme. No security concerns are present.
</details>
<evidence></evidence>
<summary>Standard desktop entry file with no malicious content.</summary>
</security_assessment>

[5/6] Reviewing src/postrm...
+ Reviewed src/usr/share/applications/ai.opencode.desktop.desktop. Status: SAFE -- Standard desktop entry file with no malicious content.
LLM auditresponse for postrm:
<security_assessment>
<decision>SAFE</decision>
<details>
The script is a standard post-removal script for a package that installs a desktop binary and an AppArmor profile. It removes the symlink via `update-alternatives` (or a direct file removal as fallback), and removes and unloads the AppArmor profile. All commands are normal legitimate system administration operations. No network requests, obfuscated code, data exfiltration, or unexpected file modifications are present. The script only cleans up its own package artifacts.
</details>
<evidence></evidence>
<summary>Standard package removal script, no security issues.</summary>
</security_assessment>

[6/6] Reviewing ...
+ Reviewed src/postrm. Status: SAFE -- Standard package removal script, no security issues.
Reviewed all additional files.
Reviewed additional files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 25,610
  Completion Tokens: 6,919
  Total Tokens: 32,529
  Total Cost: $0.003258
  Execution Time: 177.83 seconds

Final Status: SAFE


No issues found.
