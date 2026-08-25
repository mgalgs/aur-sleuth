---
package: shelly
pkgver: 3.1.0
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 34eecedf33cdb5da67bea8964402044d560850d8
prompt_tokens: 56220
completion_tokens: 7874
total_tokens: 64094
cost: 0.0061460672
execution_time: 436.24
files_reviewed: 11
files_skipped: 1
files_unauditable: 0
unpinned_sources: 0
date: 2026-08-25T11:26:13Z
file_verdicts:
  - file: shelly-3.1.0.tar.gz
    status: skipped
    summary: "Skipping binary file: shelly-3.1.0.tar.gz"
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD, no malicious code detected.
  - file: src/Shelly-ALPM-3.1.0/Shelly.Ui.Gtk/build.sh
    status: safe
    summary: Standard build script, no malicious behavior found.
  - file: src/Shelly-ALPM-3.1.0/Shelly.Notifications.Zig/update-translations.sh
    status: safe
    summary: Standard gettext translation script; no security issues found.
  - file: src/Shelly-ALPM-3.1.0/PKGBUILD-cli
    status: safe
    summary: Standard PKGBUILD, no malicious indicators found.
  - file: src/Shelly-ALPM-3.1.0/Shelly.Cli.Zig/build.zig
    status: safe
    summary: Standard Zig build script, no security issues.
  - file: src/Shelly-ALPM-3.1.0/Shelly.Cli.Zig/build.zig.zon
    status: safe
    summary: Standard Zig package manifest, no security issues.
  - file: src/Shelly-ALPM-3.1.0/shellybuild.conf
    status: safe
    summary: Commented, inert config template with no active directives or security risk.
  - file: src/Shelly-ALPM-3.1.0/PKGBUILD-git
    status: safe
    summary: Standard AUR VCS PKGBUILD; no malicious code found.
  - file: src/Shelly-ALPM-3.1.0/PKGBUILD-bin
    status: safe
    summary: Standard prebuilt binary PKGBUILD with no malicious behavior.
  - file: src/Shelly-ALPM-3.1.0/scripts/bump-version.sh
    status: safe
    summary: Legitimate version bump helper script
  - file: src/Shelly-ALPM-3.1.0/scripts/check-flatpak-separation.sh
    status: safe
    summary: Build-time Flatpak separation check; no malicious behavior.
---

Cloning https://aur.archlinux.org/shelly.git...
Cloned shelly
Analyzing shelly AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD only defines global variables and function definitions. No commands are executed at top-level or in `pkgver()` that could be dangerous. The `source` array downloads a pinned-release tarball from the project's own GitHub repository over HTTPS, with an explicit SHA256 checksum. Running `makepkg --nobuild --nodeps --noprepare` will safely fetch and verify this source without executing any malicious code. The contents of `build()`, `package()`, and `check()` are out of scope for this gate as they are not executed by the requested commands.
</details>
<evidence>
</evidence>
<summary>
No malicious code executes during source fetch or PKGBUILD sourcing.
</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious code executes during source fetch or PKGBUILD sourcing.
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Running makepkg --printsrcinfo to get source files for agent...
makepkg --printsrcinfo successful
Reviewing required files...
[0/2] Reviewing shelly-3.1.0.tar.gz...
[0/2] Reviewing shelly-3.1.0.tar.gz, PKGBUILD...
[1/2] Reviewing PKGBUILD...
! Reviewed shelly-3.1.0.tar.gz. Status: SKIPPED -- Skipping binary file: shelly-3.1.0.tar.gz
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard AUR packaging conventions. It sources a pinned release tarball from the project&#39;s official GitHub repository with a valid SHA-256 checksum. The build process uses the upstream build system (zig build) for multiple subcomponents, which is expected. Installed files include binaries, desktop entries, icons, shell completions, a man page, translations, and a Polkit policy file — all consistent with a system package manager.  
The embedded script `shelly-flatpak-integrate` patches local Flatpak `.desktop` files to add a &quot;Manage in Shelly&quot; action. This operation is performed on files under the user&#39;s home directory and `/var/lib/flatpak/exports/share/applications` (the standard Flatpak integration path) and is part of the application&#39;s intended functionality. It is not executed during package installation and does not exfiltrate data or fetch code from external hosts.  
No obfuscated code, unexpected network requests, or dangerous command combinations (eval, base64, curl|bash) are present. The package does not bypass its own source array via `git pull` or similar during build. All actions are standard for an AUR package that provides a graphical package manager with Flatpak support.
</details>
<evidence>
</evidence>
<summary>Standard AUR PKGBUILD, no malicious code detected.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD, no malicious code detected.
Reviewed all required files.
Deciding which files to review next...
Note: 432 files available for selection; offering the 50 highest-priority to the model. 265 lower-priority file(s) were not offered.
LLM response for file selection:
src/Shelly-ALPM-3.1.0/Shelly.Notifications.Zig/update-translations.sh
src/Shelly-ALPM-3.1.0/Shelly.Ui.Gtk/build.sh
src/Shelly-ALPM-3.1.0/PKGBUILD-bin
src/Shelly-ALPM-3.1.0/PKGBUILD-cli
src/Shelly-ALPM-3.1.0/PKGBUILD-git
src/Shelly-ALPM-3.1.0/Shelly.Cli.Zig/build.zig
src/Shelly-ALPM-3.1.0/Shelly.Cli.Zig/build.zig.zon
src/Shelly-ALPM-3.1.0/shellybuild.conf
src/Shelly-ALPM-3.1.0/scripts/bump-version.sh
src/Shelly-ALPM-3.1.0/scripts/check-flatpak-separation.sh
Decided to review 10 additional files: src/Shelly-ALPM-3.1.0/Shelly.Notifications.Zig/update-translations.sh, src/Shelly-ALPM-3.1.0/Shelly.Ui.Gtk/build.sh, src/Shelly-ALPM-3.1.0/PKGBUILD-bin, src/Shelly-ALPM-3.1.0/PKGBUILD-cli, src/Shelly-ALPM-3.1.0/PKGBUILD-git, src/Shelly-ALPM-3.1.0/Shelly.Cli.Zig/build.zig, src/Shelly-ALPM-3.1.0/Shelly.Cli.Zig/build.zig.zon, src/Shelly-ALPM-3.1.0/shellybuild.conf, src/Shelly-ALPM-3.1.0/scripts/bump-version.sh, src/Shelly-ALPM-3.1.0/scripts/check-flatpak-separation.sh
Reviewing additional files...
Reviewing additional files...
[0/10] Reviewing src/Shelly-ALPM-3.1.0/Shelly.Notifications.Zig/update-translations.sh...
[0/10] Reviewing src/Shelly-ALPM-3.1.0/Shelly.Notifications.Zig/update-translations.sh, src/Shelly-ALPM-3.1.0/Shelly.Ui.Gtk/build.sh...
[0/10] Reviewing src/Shelly-ALPM-3.1.0/Shelly.Notifications.Zig/update-translations.sh, src/Shelly-ALPM-3.1.0/Shelly.Ui.Gtk/build.sh, src/Shelly-ALPM-3.1.0/PKGBUILD-bin...
LLM auditresponse for build.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This build script is a straightforward, multi-stage build process for the Shelly application. It builds a Flatpak backend, a CLI component, and then the UI itself using `zig build`. After building, it optionally runs the generated binary. All commands are standard development tools (cd, zig, grep, pwd, exec) and operate on paths relative to the project directories within the same source tree. There is no network activity, no download of external code, no obfuscation, no encoded commands, and no exfiltration of data. The script does not even call `git pull` or fetch any remote content. It is entirely consistent with normal AUR packaging practices for a multi-component Zig project.
</details>
<evidence></evidence>
<summary>Standard build script, no malicious behavior found.</summary>
</security_assessment>

[0/10] Reviewing src/Shelly-ALPM-3.1.0/Shelly.Notifications.Zig/update-translations.sh, src/Shelly-ALPM-3.1.0/Shelly.Ui.Gtk/build.sh, src/Shelly-ALPM-3.1.0/PKGBUILD-bin, src/Shelly-ALPM-3.1.0/PKGBUILD-cli...
[1/10] Reviewing src/Shelly-ALPM-3.1.0/Shelly.Notifications.Zig/update-translations.sh, src/Shelly-ALPM-3.1.0/PKGBUILD-bin, src/Shelly-ALPM-3.1.0/PKGBUILD-cli...
+ Reviewed src/Shelly-ALPM-3.1.0/Shelly.Ui.Gtk/build.sh. Status: SAFE -- Standard build script, no malicious behavior found.
LLM auditresponse for update-translations.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
The script is a standard gettext translation maintenance tool for the Shelly Notifications package. It extracts translatable strings from Zig source files, merges template changes into existing .po files, and optionally compiles/installs .mo files. All commands are from the expected `gettext` toolchain (`xgettext`, `msgmerge`, `msgfmt`, `msginit`, `msgattrib`). The script only operates on files within the package's own source and build directories (`src/`, `po/`, `build/`). No network requests, no exfiltration, no obfuscated code, no unexpected file operations outside the package's scope. The `PREFIX` variable defaults to `/usr` with an override via environment variable, which is normal packaging practice.

The script is well-documented, uses safe shell practices (`set -euo pipefail`, traps for cleanup), and requires all dependencies upfront. There is no evidence of malicious behavior or supply chain attack indicators.
</details>
<evidence></evidence>
<summary>Standard gettext translation script; no security issues found.</summary>
</security_assessment>

[1/10] Reviewing src/Shelly-ALPM-3.1.0/Shelly.Notifications.Zig/update-translations.sh, src/Shelly-ALPM-3.1.0/PKGBUILD-bin, src/Shelly-ALPM-3.1.0/PKGBUILD-cli, src/Shelly-ALPM-3.1.0/PKGBUILD-git...
[2/10] Reviewing src/Shelly-ALPM-3.1.0/PKGBUILD-bin, src/Shelly-ALPM-3.1.0/PKGBUILD-cli, src/Shelly-ALPM-3.1.0/PKGBUILD-git...
+ Reviewed src/Shelly-ALPM-3.1.0/Shelly.Notifications.Zig/update-translations.sh. Status: SAFE -- Standard gettext translation script; no security issues found.
LLM auditresponse for PKGBUILD-cli:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard Arch Linux packaging practices for a VCS-based package. It clones the upstream repository from the project's own GitHub account, builds the binaries using Zig, generates shell completions and a man page from the built executable, and installs the outputs into the standard system paths. There are no suspicious network requests to unexpected hosts, no obfuscated or encoded commands, no attempts to exfiltrate data, and no other indicators of malicious supply-chain injection. The use of a mutable branch and SKIP checksum for the git source are normal for VCS packages and do not by themselves constitute evidence of malicious intent.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD, no malicious indicators found.</summary>
</security_assessment>

[2/10] Reviewing src/Shelly-ALPM-3.1.0/PKGBUILD-bin, src/Shelly-ALPM-3.1.0/PKGBUILD-cli, src/Shelly-ALPM-3.1.0/PKGBUILD-git, src/Shelly-ALPM-3.1.0/Shelly.Cli.Zig/build.zig...
[3/10] Reviewing src/Shelly-ALPM-3.1.0/PKGBUILD-bin, src/Shelly-ALPM-3.1.0/PKGBUILD-git, src/Shelly-ALPM-3.1.0/Shelly.Cli.Zig/build.zig...
+ Reviewed src/Shelly-ALPM-3.1.0/PKGBUILD-cli. Status: SAFE -- Standard PKGBUILD, no malicious indicators found.
LLM auditresponse for build.zig:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard Zig build script for the shelly CLI. It defines build targets, options, dependencies, modules, executable, and test steps using the official Zig build API. There is no obfuscation, encoded commands, network requests, file exfiltration, or any behavior outside of ordinary packaging/build automation. The only configurable option is a path to a Flatpak backend library, which is a legitimate upstream dependency path.
</details>
<evidence></evidence>
<summary>Standard Zig build script, no security issues.</summary>
</security_assessment>

[3/10] Reviewing src/Shelly-ALPM-3.1.0/PKGBUILD-bin, src/Shelly-ALPM-3.1.0/PKGBUILD-git, src/Shelly-ALPM-3.1.0/Shelly.Cli.Zig/build.zig, src/Shelly-ALPM-3.1.0/Shelly.Cli.Zig/build.zig.zon...
[4/10] Reviewing src/Shelly-ALPM-3.1.0/PKGBUILD-bin, src/Shelly-ALPM-3.1.0/PKGBUILD-git, src/Shelly-ALPM-3.1.0/Shelly.Cli.Zig/build.zig.zon...
+ Reviewed src/Shelly-ALPM-3.1.0/Shelly.Cli.Zig/build.zig. Status: SAFE -- Standard Zig build script, no security issues.
LLM auditresponse for build.zig.zon:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard Zig package manifest (`build.zig.zon`) for the Shelly project. It declares metadata (name, version, fingerprint), a minimum Zig version, a dependency on a local subproject (`../Shelly.PackageManager`), and a list of paths to include. There are no network URLs, no encoded or obfuscated code, no dangerous commands, and no unexpected file operations. The content is entirely conventional for a Zig package and does not exhibit any signs of supply-chain malice.
</details>
<evidence></evidence>
<summary>Standard Zig package manifest, no security issues.</summary>
</security_assessment>

[4/10] Reviewing src/Shelly-ALPM-3.1.0/PKGBUILD-bin, src/Shelly-ALPM-3.1.0/PKGBUILD-git, src/Shelly-ALPM-3.1.0/Shelly.Cli.Zig/build.zig.zon, src/Shelly-ALPM-3.1.0/shellybuild.conf...
[5/10] Reviewing src/Shelly-ALPM-3.1.0/PKGBUILD-bin, src/Shelly-ALPM-3.1.0/PKGBUILD-git, src/Shelly-ALPM-3.1.0/shellybuild.conf...
+ Reviewed src/Shelly-ALPM-3.1.0/Shelly.Cli.Zig/build.zig.zon. Status: SAFE -- Standard Zig package manifest, no security issues.
LLM auditresponse for shellybuild.conf:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a commented configuration template for Shelly's AUR builder. Every setting is prefixed with `#`, so the file contains no active directives and performs no actions at install or build time.

There are no commands, network requests, file operations, obfuscated content, or references to external executables. The file is inert documentation of optional overrides, and therefore presents no supply-chain or security risk.
</details>
<evidence>
</evidence>
<summary>
Commented, inert config template with no active directives or security risk.</summary>
</security_assessment>

[5/10] Reviewing src/Shelly-ALPM-3.1.0/PKGBUILD-bin, src/Shelly-ALPM-3.1.0/PKGBUILD-git, src/Shelly-ALPM-3.1.0/shellybuild.conf, src/Shelly-ALPM-3.1.0/scripts/bump-version.sh...
[6/10] Reviewing src/Shelly-ALPM-3.1.0/PKGBUILD-bin, src/Shelly-ALPM-3.1.0/PKGBUILD-git, src/Shelly-ALPM-3.1.0/scripts/bump-version.sh...
+ Reviewed src/Shelly-ALPM-3.1.0/shellybuild.conf. Status: SAFE -- Commented, inert config template with no active directives or security risk.
LLM auditresponse for PKGBUILD-git:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a standard AUR VCS package file for the Shelly package manager. It fetches source from the project's official GitHub repository, builds with the upstream `zig build` system, and installs binaries, desktop entries, icons, completions, man pages, translations, and a polkit policy.

The `shelly-flatpak-integrate` helper script modifies Flatpak `.desktop` files in `$HOME/.local/share/applications` to add a "Manage in Shelly" action — this is intentional upstream functionality, not injected malware. SHA256 sums use SKIP for the git source, which is normal and required for VCS packages. There are no obfuscated commands, unexpected network requests, data exfiltration, or backdoors. The build and install steps are confined to the package's own directories and standard system locations. The file follows standard AUR packaging practices and presents no supply-chain risk.
</details>
<evidence></evidence>
<summary>Standard AUR VCS PKGBUILD; no malicious code found.</summary>
</security_assessment>

[6/10] Reviewing src/Shelly-ALPM-3.1.0/PKGBUILD-bin, src/Shelly-ALPM-3.1.0/PKGBUILD-git, src/Shelly-ALPM-3.1.0/scripts/bump-version.sh, src/Shelly-ALPM-3.1.0/scripts/check-flatpak-separation.sh...
[7/10] Reviewing src/Shelly-ALPM-3.1.0/PKGBUILD-bin, src/Shelly-ALPM-3.1.0/scripts/bump-version.sh, src/Shelly-ALPM-3.1.0/scripts/check-flatpak-separation.sh...
+ Reviewed src/Shelly-ALPM-3.1.0/PKGBUILD-git. Status: SAFE -- Standard AUR VCS PKGBUILD; no malicious code found.
LLM auditresponse for PKGBUILD-bin:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD-bin file is a standard AUR package file for the prebuilt binary distribution of the Shelly package manager. It downloads verified tarballs from the official GitHub releases with correct SHA256 checksums. The file installs binaries, desktop entries, polkit policy, shell completions, and a man page. The embedded `shelly-flatpak-integrate` script patches Flatpak `.desktop` files to add a "Manage in Shelly" action — this is legitimate upstream integration functionality, not malicious. No obfuscated code, unexpected network requests, or data exfiltration is present. All operations are within the expected scope of packaging and application integration.
</details>
<evidence></evidence>
<summary>Standard prebuilt binary PKGBUILD with no malicious behavior.</summary>
</security_assessment>

[8/10] Reviewing src/Shelly-ALPM-3.1.0/scripts/bump-version.sh, src/Shelly-ALPM-3.1.0/scripts/check-flatpak-separation.sh...
+ Reviewed src/Shelly-ALPM-3.1.0/PKGBUILD-bin. Status: SAFE -- Standard prebuilt binary PKGBUILD with no malicious behavior.
LLM auditresponse for bump-version.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This script is a standard, well-documented version bumping helper for the Shelly package. It only edits version strings in `build.zig.zon` and `PKGBUILD*` files within the repository tree using `sed -i`. The version argument is validated against a strict regex (`^[0-9]+\.[0-9]+\.[0-9]+(\+[0-9A-Za-z.]+)?$`), preventing injection. No network requests, obfuscation, or system modifications outside the package scope occur. The script follows ordinary AUR packaging workflow practices and contains no malicious behavior.
</details>
<evidence></evidence>
<summary>Legitimate version bump helper script</summary>
</security_assessment>

[9/10] Reviewing src/Shelly-ALPM-3.1.0/scripts/check-flatpak-separation.sh...
+ Reviewed src/Shelly-ALPM-3.1.0/scripts/bump-version.sh. Status: SAFE -- Legitimate version bump helper script
LLM auditresponse for check-flatpak-separation.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This script is a build-time integrity checker that ensures the Shelly CLI does **not** link directly against the Flatpak library (`libflatpak.so.0`), and that the separate flatpak backend library does link against it. It also validates that source files in certain modules do not import flatpak bindings and that the PKGBUILD correctly defines the split between the base package and the backend subpackage.  

All operations are local file analysis (`readelf`, `nm`, `rg`, `grep`, `sed`). No network access, no downloads, no execution of fetched code, no obfuscation. The script runs during the development/CI workflow to enforce architectural separation. It poses no supply-chain risk to end users.
</details>
<evidence>

</evidence>
<summary>Build-time Flatpak separation check; no malicious behavior.</summary>
</security_assessment>

[10/10] Reviewing ...
+ Reviewed src/Shelly-ALPM-3.1.0/scripts/check-flatpak-separation.sh. Status: SAFE -- Build-time Flatpak separation check; no malicious behavior.
Reviewed all additional files.
Reviewed additional files.
Audit complete! Result: No issues found
(Skipped 1 file: shelly-3.1.0.tar.gz)

API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 56,220
  Completion Tokens: 7,874
  Total Tokens: 64,094
  Total Cost: $0.006146
  Execution Time: 436.24 seconds

Final Status: SAFE


No issues found.


Audit Skips:

shelly-3.1.0.tar.gz: [SKIPPED] Skipping binary file: shelly-3.1.0.tar.gz
