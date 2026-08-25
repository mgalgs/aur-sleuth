---
package: shelly-flatpak-backend
pkgbase: shelly
pkgver: 3.1.0
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 34eecedf33cdb5da67bea8964402044d560850d8
prompt_tokens: 47647
completion_tokens: 7972
total_tokens: 55619
cost: 0.005634544146
execution_time: 325.22
files_reviewed: 11
files_skipped: 1
files_unauditable: 0
unpinned_sources: 0
date: 2026-08-25T07:32:20Z
file_verdicts:
  - file: shelly-3.1.0.tar.gz
    status: skipped
    summary: "Skipping binary file: shelly-3.1.0.tar.gz"
  - file: PKGBUILD
    status: safe
    summary: Standard AUR package, no malicious indicators found.
  - file: src/Shelly-ALPM-3.1.0/Shelly.Ui.Gtk/build.sh
    status: safe
    summary: Standard build script, no malicious indicators.
  - file: src/Shelly-ALPM-3.1.0/scripts/bump-version.sh
    status: safe
    summary: "Safe: routine version-bump helper script with no malicious behavior"
  - file: src/Shelly-ALPM-3.1.0/scripts/check-flatpak-separation.sh
    status: safe
    summary: Standard separation verification script, no malicious behavior.
  - file: src/Shelly-ALPM-3.1.0/scripts/test-flatpak-separation.sh
    status: safe
    summary: Standard build/test script with no malicious activity.
  - file: src/Shelly-ALPM-3.1.0/shellybuild.conf
    status: safe
    summary: Inert configuration file, all lines commented out.
  - file: src/Shelly-ALPM-3.1.0/Shelly.Notifications.Zig/update-translations.sh
    status: safe
    summary: Standard translation tooling, no malicious behavior.
  - file: src/Shelly-ALPM-3.1.0/Shelly.Flatpak.Backend/src/flatpak/flatpak_include.h
    status: safe
    summary: Benign wrapper header for Zig binding generation.
  - file: src/Shelly-ALPM-3.1.0/Shelly.Cli.Zig/build.zig.zon
    status: safe
    summary: Standard Zig manifest file with no malicious content.
  - file: src/Shelly-ALPM-3.1.0/Shelly.Cli.Zig/build.zig
    status: safe
    summary: Standard Zig build script, no security concerns.
  - file: src/Shelly-ALPM-3.1.0/Shelly.PackageManager/src/alpm/alpm_include.h
    status: safe
    summary: Innocent include-only header file.
---

shelly-flatpak-backend is built from shelly
Cloning https://aur.archlinux.org/shelly.git...
Cloned shelly-flatpak-backend
Analyzing shelly-flatpak-backend AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only standard packaging constructs in its top-level scope. There is no `pkgver()` function defined. The global scope consists of variable assignments and array definitions, plus a single line setting `_source_dir` using a simple bash parameter expansion (`${pkgver//+/-}`). No commands are executed during sourcing — no `eval`, no `curl|bash`, no base64 decoding, no network requests outside the declared `source` array. The source tarball is fetched from the project's official GitHub release URL with a pinned SHA256 checksum. Nothing in this file would execute malicious code when running `makepkg --nobuild --nodeps --noprepare` or `makepkg --printsrcinfo`.
</details>
<evidence></evidence>
<summary>No dangerous code in global scope.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous code in global scope.
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Running makepkg --printsrcinfo to get source files for agent...
makepkg --printsrcinfo successful
Reviewing required files...
[0/2] Reviewing PKGBUILD...
[0/2] Reviewing PKGBUILD, shelly-3.1.0.tar.gz...
[1/2] Reviewing PKGBUILD...
! Reviewed shelly-3.1.0.tar.gz. Status: SKIPPED -- Skipping binary file: shelly-3.1.0.tar.gz
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard Arch packaging practices for a multi-component application (Shelly, a modern package manager). It downloads source from the project's official GitHub release with a pinned sha256 checksum (not SKIP). The build process invokes `zig build` across several subprojects and installs binaries, desktop files, policy kit configuration, icons, completions, man pages, and translations using standard `install` commands.  

The embedded script in `package_shelly()` that creates `/usr/bin/shelly-flatpak-integrate` modifies Flatpak-provided `.desktop` files under `/var/lib/flatpak` and `~/.local/share/flatpak` to add a right-click action. This is legitimate integration functionality for a package manager that supports Flatpak, not malicious behavior. There is no obfuscated code, no unexpected network requests (no `curl`, `wget`, or `git pull`), no exfiltration of system data, and no execution of externally fetched content. All file operations are confined to the package's own installation paths (`$pkgdir`) or the expected Flatpak desktop data directories.  

The only consideration is that the integration script runs at install time and modifies desktop files under the user's home directory, but this is an opt-in/on-demand script (placed at `/usr/bin/shelly-flatpak-integrate`), not automatically executed. This is standard and within the expected scope of a package manager helper. No supply-chain attack indicators are present.  
</details>
<evidence>

</evidence>
<summary>Standard AUR package, no malicious indicators found.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR package, no malicious indicators found.
Reviewed all required files.
Deciding which files to review next...
Note: 432 files available for selection; offering the 50 highest-priority to the model. 265 lower-priority file(s) were not offered.
LLM response for file selection:
src/Shelly-ALPM-3.1.0/Shelly.Notifications.Zig/update-translations.sh
src/Shelly-ALPM-3.1.0/Shelly.Ui.Gtk/build.sh
src/Shelly-ALPM-3.1.0/scripts/bump-version.sh
src/Shelly-ALPM-3.1.0/scripts/check-flatpak-separation.sh
src/Shelly-ALPM-3.1.0/scripts/test-flatpak-separation.sh
src/Shelly-ALPM-3.1.0/shellybuild.conf
src/Shelly-ALPM-3.1.0/Shelly.Cli.Zig/build.zig
src/Shelly-ALPM-3.1.0/Shelly.Cli.Zig/build.zig.zon
src/Shelly-ALPM-3.1.0/Shelly.Flatpak.Backend/src/flatpak/flatpak_include.h
src/Shelly-ALPM-3.1.0/Shelly.PackageManager/src/alpm/alpm_include.h
Decided to review 10 additional files: src/Shelly-ALPM-3.1.0/Shelly.Notifications.Zig/update-translations.sh, src/Shelly-ALPM-3.1.0/Shelly.Ui.Gtk/build.sh, src/Shelly-ALPM-3.1.0/scripts/bump-version.sh, src/Shelly-ALPM-3.1.0/scripts/check-flatpak-separation.sh, src/Shelly-ALPM-3.1.0/scripts/test-flatpak-separation.sh, src/Shelly-ALPM-3.1.0/shellybuild.conf, src/Shelly-ALPM-3.1.0/Shelly.Cli.Zig/build.zig, src/Shelly-ALPM-3.1.0/Shelly.Cli.Zig/build.zig.zon, src/Shelly-ALPM-3.1.0/Shelly.Flatpak.Backend/src/flatpak/flatpak_include.h, src/Shelly-ALPM-3.1.0/Shelly.PackageManager/src/alpm/alpm_include.h
Reviewing additional files...
Reviewing additional files...
[0/10] Reviewing src/Shelly-ALPM-3.1.0/Shelly.Notifications.Zig/update-translations.sh...
[0/10] Reviewing src/Shelly-ALPM-3.1.0/Shelly.Notifications.Zig/update-translations.sh, src/Shelly-ALPM-3.1.0/Shelly.Ui.Gtk/build.sh...
[0/10] Reviewing src/Shelly-ALPM-3.1.0/Shelly.Notifications.Zig/update-translations.sh, src/Shelly-ALPM-3.1.0/Shelly.Ui.Gtk/build.sh, src/Shelly-ALPM-3.1.0/scripts/bump-version.sh...
LLM auditresponse for build.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
The script is a standard build automation script for a Zig project. It runs `zig build` in three subdirectories (Flatpak backend, CLI, and UI) using local relative paths. There are no network requests, no obfuscated code, no dangerous command execution (like eval, curl, wget, or base64), and no unexpected file operations outside the project tree. The only external command invoked is `grep` to extract the binary name from a local `build.zig` file, which is normal for locating build artifacts. No signs of supply-chain attack or malicious intent are present.
</details>
<evidence>
</evidence>
<summary>Standard build script, no malicious indicators.</summary>
</security_assessment>

[0/10] Reviewing src/Shelly-ALPM-3.1.0/Shelly.Notifications.Zig/update-translations.sh, src/Shelly-ALPM-3.1.0/Shelly.Ui.Gtk/build.sh, src/Shelly-ALPM-3.1.0/scripts/bump-version.sh, src/Shelly-ALPM-3.1.0/scripts/check-flatpak-separation.sh...
[1/10] Reviewing src/Shelly-ALPM-3.1.0/Shelly.Notifications.Zig/update-translations.sh, src/Shelly-ALPM-3.1.0/scripts/bump-version.sh, src/Shelly-ALPM-3.1.0/scripts/check-flatpak-separation.sh...
+ Reviewed src/Shelly-ALPM-3.1.0/Shelly.Ui.Gtk/build.sh. Status: SAFE -- Standard build script, no malicious indicators.
LLM auditresponse for bump-version.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a version bump helper script for the Shelly project. It performs standard file-editing operations (using `sed`, `grep`, `find`) on version strings in `build.zig.zon` and `PKGBUILD*` files within the repository root. No network requests, downloads, or execution of external code occur. The script does not modify files outside the project scope, and there is no obfuscated or encoded content. All operations are consistent with a routine maintainer automation tool. No supply-chain attack indicators are present.
</details>
<evidence></evidence>
<summary>Safe: routine version-bump helper script with no malicious behavior</summary>
</security_assessment>

[2/10] Reviewing src/Shelly-ALPM-3.1.0/Shelly.Notifications.Zig/update-translations.sh, src/Shelly-ALPM-3.1.0/scripts/check-flatpak-separation.sh...
+ Reviewed src/Shelly-ALPM-3.1.0/scripts/bump-version.sh. Status: SAFE -- Safe: routine version-bump helper script with no malicious behavior
[2/10] Reviewing src/Shelly-ALPM-3.1.0/Shelly.Notifications.Zig/update-translations.sh, src/Shelly-ALPM-3.1.0/scripts/check-flatpak-separation.sh, src/Shelly-ALPM-3.1.0/scripts/test-flatpak-separation.sh...
LLM auditresponse for check-flatpak-separation.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This script is a development-time validation tool for the shelly-flatpak-backend project. It checks that the Flatpak backend is properly separated from the CLI code (no native flatpak dependencies in the CLI, proper library linking, and no accidental imports in UI code). It also verifies PKGBUILD content and performs static analysis on binaries. All operations are local; no network requests, no obfuscation, no data exfiltration, and no dangerous commands beyond standard build-time checks. The script uses `readelf`, `nm`, `rg`, `bash -n`, and `grep` – all normal for this kind of verification. There is no evidence of malicious or supply-chain attack behavior.</details>
<evidence></evidence>
<summary>Standard separation verification script, no malicious behavior.</summary>
</security_assessment>

[3/10] Reviewing src/Shelly-ALPM-3.1.0/Shelly.Notifications.Zig/update-translations.sh, src/Shelly-ALPM-3.1.0/scripts/test-flatpak-separation.sh...
+ Reviewed src/Shelly-ALPM-3.1.0/scripts/check-flatpak-separation.sh. Status: SAFE -- Standard separation verification script, no malicious behavior.
[3/10] Reviewing src/Shelly-ALPM-3.1.0/Shelly.Notifications.Zig/update-translations.sh, src/Shelly-ALPM-3.1.0/scripts/test-flatpak-separation.sh, src/Shelly-ALPM-3.1.0/shellybuild.conf...
LLM auditresponse for test-flatpak-separation.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This script is a test harness for the Flatpak separation feature of the shelly project. It creates temporary build directories, runs `zig build` for several subprojects (`Shelly.Flatpak.Backend`, `Shelly.PackageManager`, `Shelly.Cli.Zig`), executes unit tests, and runs a separation check script. All operations are confined to the repository root and the temporary build root. There are no network requests, no downloads, no obfuscated code, and no operations that would exfiltrate data or modify system files outside the build environment. The script follows standard CI/testing practices and poses no security threat.
</details>
<evidence></evidence>
<summary>Standard build/test script with no malicious activity.</summary>
</security_assessment>

[3/10] Reviewing src/Shelly-ALPM-3.1.0/Shelly.Notifications.Zig/update-translations.sh, src/Shelly-ALPM-3.1.0/scripts/test-flatpak-separation.sh, src/Shelly-ALPM-3.1.0/shellybuild.conf, src/Shelly-ALPM-3.1.0/Shelly.Cli.Zig/build.zig...
[4/10] Reviewing src/Shelly-ALPM-3.1.0/Shelly.Notifications.Zig/update-translations.sh, src/Shelly-ALPM-3.1.0/shellybuild.conf, src/Shelly-ALPM-3.1.0/Shelly.Cli.Zig/build.zig...
+ Reviewed src/Shelly-ALPM-3.1.0/scripts/test-flatpak-separation.sh. Status: SAFE -- Standard build/test script with no malicious activity.
LLM auditresponse for shellybuild.conf:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a configuration file for Shelly's in-process AUR builder. All lines are commented out, meaning no active settings are applied. The file contains only default values and explanatory comments. There are no executable commands, network requests, obfuscated code, or any other signs of malicious activity. It is a standard, inert configuration template.
</details>
<evidence></evidence>
<summary>Inert configuration file, all lines commented out.</summary>
</security_assessment>

[5/10] Reviewing src/Shelly-ALPM-3.1.0/Shelly.Notifications.Zig/update-translations.sh, src/Shelly-ALPM-3.1.0/Shelly.Cli.Zig/build.zig...
+ Reviewed src/Shelly-ALPM-3.1.0/shellybuild.conf. Status: SAFE -- Inert configuration file, all lines commented out.
[5/10] Reviewing src/Shelly-ALPM-3.1.0/Shelly.Notifications.Zig/update-translations.sh, src/Shelly-ALPM-3.1.0/Shelly.Cli.Zig/build.zig, src/Shelly-ALPM-3.1.0/Shelly.Cli.Zig/build.zig.zon...
LLM auditresponse for update-translations.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard gettext translation maintenance script for a Zig application. It extracts translatable strings using `xgettext`, merges them into existing `.po` files with `msgmerge`, optionally creates new language files via `msginit`, and compiles `.mo` binaries with `msgfmt`. Every operation is confined to local source directories (`src/`, `po/`, `build/`, or a configurable `PREFIX`). The script checks for required tools, uses a temporary directory cleaned on exit, and does **not** make any network requests, download or execute remote code, or perform any obfuscated/encoded commands. No data exfiltration, backdoors, or suspicious system manipulation is present. The content is consistent with a normal upstream developer helper script.
</details>
<evidence></evidence>
<summary>Standard translation tooling, no malicious behavior.</summary>
</security_assessment>

[6/10] Reviewing src/Shelly-ALPM-3.1.0/Shelly.Cli.Zig/build.zig, src/Shelly-ALPM-3.1.0/Shelly.Cli.Zig/build.zig.zon...
+ Reviewed src/Shelly-ALPM-3.1.0/Shelly.Notifications.Zig/update-translations.sh. Status: SAFE -- Standard translation tooling, no malicious behavior.
[6/10] Reviewing src/Shelly-ALPM-3.1.0/Shelly.Cli.Zig/build.zig, src/Shelly-ALPM-3.1.0/Shelly.Cli.Zig/build.zig.zon, src/Shelly-ALPM-3.1.0/Shelly.Flatpak.Backend/src/flatpak/flatpak_include.h...
LLM auditresponse for flatpak_include.h:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a C header wrapper used exclusively to generate Zig bindings via `zig translate-c`. It contains only a harmless macro definition (`_Pragma(x)`) to work around a compiler limitation and a single include of the upstream Flatpak library header. There is no network activity, no file manipulation, no encoded or obfuscated content, and no deviation from standard packaging or build tooling purposes. The content is benign and serves only to facilitate binding generation.
</details>
<evidence></evidence>
<summary>Benign wrapper header for Zig binding generation.</summary>
</security_assessment>

[7/10] Reviewing src/Shelly-ALPM-3.1.0/Shelly.Cli.Zig/build.zig, src/Shelly-ALPM-3.1.0/Shelly.Cli.Zig/build.zig.zon...
+ Reviewed src/Shelly-ALPM-3.1.0/Shelly.Flatpak.Backend/src/flatpak/flatpak_include.h. Status: SAFE -- Benign wrapper header for Zig binding generation.
[7/10] Reviewing src/Shelly-ALPM-3.1.0/Shelly.Cli.Zig/build.zig, src/Shelly-ALPM-3.1.0/Shelly.Cli.Zig/build.zig.zon, src/Shelly-ALPM-3.1.0/Shelly.PackageManager/src/alpm/alpm_include.h...
LLM auditresponse for build.zig.zon:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard Zig package manifest (`build.zig.zon`) that defines metadata and dependencies for the Shelly project. It contains no executable code, no network requests, no obfuscated content, and no system modifications. The only dependency is a local path reference (`../Shelly.PackageManager`), which is a normal monorepo pattern. The fingerprint comment about security implications is standard Zig tooling guidance. There is no evidence of any supply-chain attack or malicious behavior.
</details>
<evidence>
</evidence>
<summary>Standard Zig manifest file with no malicious content.</summary>
</security_assessment>

[8/10] Reviewing src/Shelly-ALPM-3.1.0/Shelly.Cli.Zig/build.zig, src/Shelly-ALPM-3.1.0/Shelly.PackageManager/src/alpm/alpm_include.h...
+ Reviewed src/Shelly-ALPM-3.1.0/Shelly.Cli.Zig/build.zig.zon. Status: SAFE -- Standard Zig manifest file with no malicious content.
LLM auditresponse for build.zig:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard Zig build script (`build.zig`) for the Shelly CLI component. It defines a build target, optimization options, a dependency on `zigalpm`, and sets up modules, an executable, test steps, and a run step. There are no network requests, obfuscated code, dangerous system modifications, or exfiltration attempts. The script only performs routine build operations (dependency resolution, module creation, executable compilation, test execution) which are expected and harmless. No evidence of supply-chain attack or malicious code injection.
</details>
<evidence></evidence>
<summary>Standard Zig build script, no security concerns.</summary>
</security_assessment>

[9/10] Reviewing src/Shelly-ALPM-3.1.0/Shelly.PackageManager/src/alpm/alpm_include.h...
+ Reviewed src/Shelly-ALPM-3.1.0/Shelly.Cli.Zig/build.zig. Status: SAFE -- Standard Zig build script, no security concerns.
LLM auditresponse for alpm_include.h:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a minimal C header include guard (though no guard present) that simply includes two standard headers: `alpm.h` (Arch Linux Package Manager library) and `stdio.h`. There is no executable code, no network operations, no obfuscation, no system modifications, and no deviations from standard packaging or development practices. The file is benign.
</details>
<evidence>
</evidence>
<summary>Innocent include-only header file.</summary>
</security_assessment>

[10/10] Reviewing ...
+ Reviewed src/Shelly-ALPM-3.1.0/Shelly.PackageManager/src/alpm/alpm_include.h. Status: SAFE -- Innocent include-only header file.
Reviewed all additional files.
Reviewed additional files.
Audit complete! Result: No issues found
(Skipped 1 file: shelly-3.1.0.tar.gz)

API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 47,647
  Completion Tokens: 7,972
  Total Tokens: 55,619
  Total Cost: $0.005635
  Execution Time: 325.22 seconds

Final Status: SAFE


No issues found.


Audit Skips:

shelly-3.1.0.tar.gz: [SKIPPED] Skipping binary file: shelly-3.1.0.tar.gz
