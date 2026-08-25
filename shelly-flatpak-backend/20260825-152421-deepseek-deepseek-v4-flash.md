---
package: shelly-flatpak-backend
pkgbase: shelly
pkgver: 3.1.0
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 34eecedf33cdb5da67bea8964402044d560850d8
prompt_tokens: 54720
completion_tokens: 10257
total_tokens: 64977
cost: 0.0062143284
execution_time: 160.42
files_reviewed: 11
files_skipped: 1
files_unauditable: 0
unpinned_sources: 0
date: 2026-08-25T15:24:20Z
file_verdicts:
  - file: shelly-3.1.0.tar.gz
    status: skipped
    summary: "Skipping binary file: shelly-3.1.0.tar.gz"
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD with no malicious behavior found.
  - file: src/Shelly-ALPM-3.1.0/Shelly.Ui.Gtk/build.sh
    status: safe
    summary: Legitimate build script, no malicious code found.
  - file: src/Shelly-ALPM-3.1.0/PKGBUILD-cli
    status: safe
    summary: Standard AUR PKGBUILD with no malicious indicators.
  - file: src/Shelly-ALPM-3.1.0/PKGBUILD-bin
    status: safe
    summary: Standard AUR PKGBUILD with no malicious indicators.
  - file: src/Shelly-ALPM-3.1.0/PKGBUILD-git
    status: safe
    summary: Standard AUR package; no malicious behavior detected.
  - file: src/Shelly-ALPM-3.1.0/Shelly.Notifications.Zig/update-translations.sh
    status: safe
    summary: Standard translation update script; no malicious code.
  - file: src/Shelly-ALPM-3.1.0/shellybuild.conf
    status: safe
    summary: Inert configuration file; no security issues.
  - file: src/Shelly-ALPM-3.1.0/Shelly.Cli.Zig/build.zig.zon
    status: safe
    summary: Standard Zig package manifest; no malicious content detected.
  - file: src/Shelly-ALPM-3.1.0/Shelly.Flatpak.Backend/src/flatpak/flatpak_include.h
    status: safe
    summary: Innocuous header wrapper for Zig binding generation.
  - file: src/Shelly-ALPM-3.1.0/scripts/bump-version.sh
    status: safe
    summary: Benign version-bump helper script; no malicious activity found.
  - file: src/Shelly-ALPM-3.1.0/Shelly.Cli.Zig/build.zig
    status: safe
    summary: Standard Zig build script, no malicious behavior.
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
The PKGBUILD is a standard Arch packaging script for an upstream project. The global/top-level scope contains only variable and array assignments (e.g., `pkgver`, `source`, `sha256sums`) with no embedded command substitutions, function calls, or code that executes during sourcing. The `source` array points to a fixed GitHub release tarball with a pinned checksum. There is no `pkgver()` function. The `build()`, `check()`, and `package_*()` functions are only invoked during later build stages and are not executed by `--nobuild --nodeps --noprepare` or `--printsrcinfo`. No obfuscated code, suspicious network requests, or data exfiltration attempts are present. Fetching the source and sourcing the PKGBUILD is safe.
</details>
<evidence></evidence>
<summary>Safe PKGBUILD with no immediate execution risks.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Safe PKGBUILD with no immediate execution risks.
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
The PKGBUILD is a standard AUR package file for the Shelly project from the official GitHub repository (Seafoam-Labs/Shelly-ALPM). It builds two packages: `shelly` (a GUI/CLI package manager) and `shelly-flatpak-backend` (an optional Flatpak backend library). The source tarball has a pinned checksum, and all build steps use the upstream Zig build system with standard optimization flags. The `shelly-flatpak-integrate` script installed as a helper modifies Flatpak desktop files under `$HOME/.local/share/applications` to add a "Manage in Shelly" action — this is upstream application functionality for integrating Flatpak applications, not a supply-chain attack. There are no suspicious network requests, obfuscated code, backdoors, or exfiltration of sensitive data. All operations are confined to the package’s own installation paths and intended use.
</details>
<evidence></evidence>
<summary>Standard AUR PKGBUILD with no malicious behavior found.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD with no malicious behavior found.
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
src/Shelly-ALPM-3.1.0/Shelly.Flatpak.Backend/src/flatpak/flatpak_include.h
Decided to review 10 additional files: src/Shelly-ALPM-3.1.0/Shelly.Notifications.Zig/update-translations.sh, src/Shelly-ALPM-3.1.0/Shelly.Ui.Gtk/build.sh, src/Shelly-ALPM-3.1.0/PKGBUILD-bin, src/Shelly-ALPM-3.1.0/PKGBUILD-cli, src/Shelly-ALPM-3.1.0/PKGBUILD-git, src/Shelly-ALPM-3.1.0/Shelly.Cli.Zig/build.zig, src/Shelly-ALPM-3.1.0/Shelly.Cli.Zig/build.zig.zon, src/Shelly-ALPM-3.1.0/shellybuild.conf, src/Shelly-ALPM-3.1.0/scripts/bump-version.sh, src/Shelly-ALPM-3.1.0/Shelly.Flatpak.Backend/src/flatpak/flatpak_include.h
Reviewing additional files...
Reviewing additional files...
[0/10] Reviewing src/Shelly-ALPM-3.1.0/Shelly.Ui.Gtk/build.sh...
[0/10] Reviewing src/Shelly-ALPM-3.1.0/Shelly.Ui.Gtk/build.sh, src/Shelly-ALPM-3.1.0/Shelly.Notifications.Zig/update-translations.sh...
[0/10] Reviewing src/Shelly-ALPM-3.1.0/Shelly.Ui.Gtk/build.sh, src/Shelly-ALPM-3.1.0/Shelly.Notifications.Zig/update-translations.sh, src/Shelly-ALPM-3.1.0/PKGBUILD-bin...
LLM auditresponse for build.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This build script coordinates the compilation of three related subprojects (Flatpak backend, CLI, and UI) using `zig build`. It is a straightforward automation script with no network requests, no encoded or obfuscated commands, and no unusual file operations beyond building and optionally running the resulting binary. The use of `grep` to extract the binary name from `build.zig` is a simple parser technique, not a threat. All operations stay within the project&#39;s own directories. There is no evidence of a supply-chain attack or malicious behavior.
</details>
<evidence></evidence>
<summary>Legitimate build script, no malicious code found.</summary>
</security_assessment>

[0/10] Reviewing src/Shelly-ALPM-3.1.0/Shelly.Ui.Gtk/build.sh, src/Shelly-ALPM-3.1.0/Shelly.Notifications.Zig/update-translations.sh, src/Shelly-ALPM-3.1.0/PKGBUILD-bin, src/Shelly-ALPM-3.1.0/PKGBUILD-cli...
[1/10] Reviewing src/Shelly-ALPM-3.1.0/Shelly.Notifications.Zig/update-translations.sh, src/Shelly-ALPM-3.1.0/PKGBUILD-bin, src/Shelly-ALPM-3.1.0/PKGBUILD-cli...
+ Reviewed src/Shelly-ALPM-3.1.0/Shelly.Ui.Gtk/build.sh. Status: SAFE -- Legitimate build script, no malicious code found.
LLM auditresponse for PKGBUILD-cli:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard AUR packaging practices for a Zig-based CLI tool. It fetches the upstream source from the official GitHub repository (development branch), builds with Zig, generates shell completions and a man page by running the built binary, and installs files into standard locations. No obfuscated code, dangerous commands (eval, curl, wget base64, etc.), or unexpected network requests are present. The SKIP checksum on the git source is normal for VCS packages. All operations are confined to the package build and install scope.
</details>
<evidence></evidence>
<summary>Standard AUR PKGBUILD with no malicious indicators.</summary>
</security_assessment>

[2/10] Reviewing src/Shelly-ALPM-3.1.0/Shelly.Notifications.Zig/update-translations.sh, src/Shelly-ALPM-3.1.0/PKGBUILD-bin...
+ Reviewed src/Shelly-ALPM-3.1.0/PKGBUILD-cli. Status: SAFE -- Standard AUR PKGBUILD with no malicious indicators.
[2/10] Reviewing src/Shelly-ALPM-3.1.0/Shelly.Notifications.Zig/update-translations.sh, src/Shelly-ALPM-3.1.0/PKGBUILD-bin, src/Shelly-ALPM-3.1.0/PKGBUILD-git...
LLM auditresponse for PKGBUILD-bin:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard AUR packaging practices for distributing prebuilt binaries. All source downloads come from the project's own official GitHub releases (`github.com/Seafoam-Labs/Shelly-ALPM`) with explicit SHA256 checksums provided for verification. The package functions install binaries, desktop entries, icons, shell completions, a man page (generated from the bundled binary), and a polkit policy file – all expected operations for an application package.  

The flatpak integration script (`shelly-flatpak-integrate`) modifies desktop files under `~/.local/share/applications` to add a “Manage in Shelly” action, which is legitimate upstream functionality. There are no unexpected network requests, obfuscated code, dangerous commands (eval, base64, curl|bash), or attempts to exfiltrate data. The file behaves exactly as a well-maintained binary package should.  

No evidence of supply-chain attack or malicious behavior was found.
</details>
<evidence></evidence>
<summary>Standard AUR PKGBUILD with no malicious indicators.</summary>
</security_assessment>

[2/10] Reviewing src/Shelly-ALPM-3.1.0/Shelly.Notifications.Zig/update-translations.sh, src/Shelly-ALPM-3.1.0/PKGBUILD-bin, src/Shelly-ALPM-3.1.0/PKGBUILD-git, src/Shelly-ALPM-3.1.0/Shelly.Cli.Zig/build.zig...
[3/10] Reviewing src/Shelly-ALPM-3.1.0/Shelly.Notifications.Zig/update-translations.sh, src/Shelly-ALPM-3.1.0/PKGBUILD-git, src/Shelly-ALPM-3.1.0/Shelly.Cli.Zig/build.zig...
+ Reviewed src/Shelly-ALPM-3.1.0/PKGBUILD-bin. Status: SAFE -- Standard AUR PKGBUILD with no malicious indicators.
LLM auditresponse for PKGBUILD-git:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD-git is a standard AUR package building the `shelly` package manager from the official upstream repository (Seafoam-Labs/Shelly-ALPM). The source is a VCS clone from the project's own GitHub (branch `development`), with `SKIP` checksum as expected for VCS packages. The build process uses `zig build` and standard packaging steps (installing binaries, desktop entries, completions, man pages, translations, and a polkit policy). The `shelly-flatpak-integrate` script modifies Flatpak desktop files under the user's home directory to add a "Manage in Shelly" action; this is a legitimate application feature, not a supply-chain attack. There are no obfuscated commands, no unexpected network requests, no exfiltration of data, no execution of downloaded code from untrusted sources. The package follows standard packaging practices for a system utility that integrates with Flatpak.
</details>
<evidence></evidence>
<summary>Standard AUR package; no malicious behavior detected.</summary>
</security_assessment>

[4/10] Reviewing src/Shelly-ALPM-3.1.0/Shelly.Notifications.Zig/update-translations.sh, src/Shelly-ALPM-3.1.0/Shelly.Cli.Zig/build.zig...
+ Reviewed src/Shelly-ALPM-3.1.0/PKGBUILD-git. Status: SAFE -- Standard AUR package; no malicious behavior detected.
[4/10] Reviewing src/Shelly-ALPM-3.1.0/Shelly.Notifications.Zig/update-translations.sh, src/Shelly-ALPM-3.1.0/Shelly.Cli.Zig/build.zig, src/Shelly-ALPM-3.1.0/Shelly.Cli.Zig/build.zig.zon...
LLM auditresponse for update-translations.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This script is a standard gettext translation maintenance helper that extracts strings from Zig source files, merges them into .pot and .po templates, and optionally compiles .mo files for installation. All operations are confined to the project's own directories (`po/`, `build/locale`, or a configurable `PREFIX/share/locale`). It uses only well-known tools from the `gettext` suite (`xgettext`, `msgmerge`, `msgfmt`, `msginit`, `msgattrib`) and performs no network requests, no execution of downloaded code, no obfuscation, and no manipulation of system files outside its packaging scope. The script is part of the upstream source distribution (under `Shelly.Notifications.Zig/`) and its behavior aligns with the project's stated purpose of managing translations.
</details>
<evidence>
</evidence>
<summary>Standard translation update script; no malicious code.</summary>
</security_assessment>

[4/10] Reviewing src/Shelly-ALPM-3.1.0/Shelly.Notifications.Zig/update-translations.sh, src/Shelly-ALPM-3.1.0/Shelly.Cli.Zig/build.zig, src/Shelly-ALPM-3.1.0/Shelly.Cli.Zig/build.zig.zon, src/Shelly-ALPM-3.1.0/shellybuild.conf...
[5/10] Reviewing src/Shelly-ALPM-3.1.0/Shelly.Cli.Zig/build.zig, src/Shelly-ALPM-3.1.0/Shelly.Cli.Zig/build.zig.zon, src/Shelly-ALPM-3.1.0/shellybuild.conf...
+ Reviewed src/Shelly-ALPM-3.1.0/Shelly.Notifications.Zig/update-translations.sh. Status: SAFE -- Standard translation update script; no malicious code.
LLM auditresponse for shellybuild.conf:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a configuration file for Shelly's AUR builder (`shellybuild.conf`). Every line is commented out, providing only commented defaults. There is no executable code, no network requests, no file operations, no obfuscation, and no signs of malicious behavior. It is a standard, inert configuration file.
</details>
<evidence/>
<summary>Inert configuration file; no security issues.</summary>
</security_assessment>

[5/10] Reviewing src/Shelly-ALPM-3.1.0/Shelly.Cli.Zig/build.zig, src/Shelly-ALPM-3.1.0/Shelly.Cli.Zig/build.zig.zon, src/Shelly-ALPM-3.1.0/shellybuild.conf, src/Shelly-ALPM-3.1.0/scripts/bump-version.sh...
[6/10] Reviewing src/Shelly-ALPM-3.1.0/Shelly.Cli.Zig/build.zig, src/Shelly-ALPM-3.1.0/Shelly.Cli.Zig/build.zig.zon, src/Shelly-ALPM-3.1.0/scripts/bump-version.sh...
+ Reviewed src/Shelly-ALPM-3.1.0/shellybuild.conf. Status: SAFE -- Inert configuration file; no security issues.
LLM auditresponse for build.zig.zon:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard Zig package manifest (`build.zig.zon`) for the `Shelly.Cli.Zig` component within the shelly package. It defines metadata (name, version, fingerprint), a local path dependency (`zigalpm` at `../Shelly.PackageManager`), and the list of included files. There are no network requests, no obfuscated or encoded strings, no dangerous commands (curl, eval, etc.), and no operations that exfiltrate data or modify system files outside the package scope. The dependency path is relative and local, which is normal for a multi‑component project. The fingerprint and comment about security are standard Zig package identity practices. No supply‑chain attack indicators are present.
</details>
<evidence>
</evidence>
<summary>Standard Zig package manifest; no malicious content detected.</summary>
</security_assessment>

[6/10] Reviewing src/Shelly-ALPM-3.1.0/Shelly.Cli.Zig/build.zig, src/Shelly-ALPM-3.1.0/Shelly.Cli.Zig/build.zig.zon, src/Shelly-ALPM-3.1.0/scripts/bump-version.sh, src/Shelly-ALPM-3.1.0/Shelly.Flatpak.Backend/src/flatpak/flatpak_include.h...
[7/10] Reviewing src/Shelly-ALPM-3.1.0/Shelly.Cli.Zig/build.zig, src/Shelly-ALPM-3.1.0/scripts/bump-version.sh, src/Shelly-ALPM-3.1.0/Shelly.Flatpak.Backend/src/flatpak/flatpak_include.h...
+ Reviewed src/Shelly-ALPM-3.1.0/Shelly.Cli.Zig/build.zig.zon. Status: SAFE -- Standard Zig package manifest; no malicious content detected.
LLM auditresponse for flatpak_include.h:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a straightforward C header wrapper used to generate Zig bindings for the Flatpak C library. It defines `_Pragma(x)` to suppress GCC diagnostic pragmas that the Zig translator (arocc) cannot handle, which is a known workaround and not malicious. The only included header is the official Flatpak header (`&lt;flatpak/flatpak.h&gt;`). No network requests, file operations, or system modifications are present. The content is consistent with standard packaging and binding-generation practices.
</details>
<evidence></evidence>
<summary>Innocuous header wrapper for Zig binding generation.</summary>
</security_assessment>

[8/10] Reviewing src/Shelly-ALPM-3.1.0/Shelly.Cli.Zig/build.zig, src/Shelly-ALPM-3.1.0/scripts/bump-version.sh...
+ Reviewed src/Shelly-ALPM-3.1.0/Shelly.Flatpak.Backend/src/flatpak/flatpak_include.h. Status: SAFE -- Innocuous header wrapper for Zig binding generation.
LLM auditresponse for bump-version.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
The script is a maintainer helper that automates version bumps across the repository's `build.zig.zon` and `PKGBUILD` files. It operates entirely within the repository root, uses `find`/`grep`/`sed` for text manipulation, and performs no network operations, no downloads, and no execution of external code. The new version is strictly validated against a safe pattern, preventing injection into the `sed` substitution. The `--skip` and `--only` glob options are user-supplied and only affect which local files are edited; they cannot cause external actions. There is no evidence of data exfiltration, backdoors, or anything deviating from standard packaging workflow. The script's purpose and behavior are consistent with a typical AUR maintainer helper.
</details>
<evidence>
</evidence>
<summary>
Benign version-bump helper script; no malicious activity found.</summary>
</security_assessment>

[9/10] Reviewing src/Shelly-ALPM-3.1.0/Shelly.Cli.Zig/build.zig...
+ Reviewed src/Shelly-ALPM-3.1.0/scripts/bump-version.sh. Status: SAFE -- Benign version-bump helper script; no malicious activity found.
LLM auditresponse for build.zig:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard Zig build script (build.zig) for the Shelly CLI component. It defines build targets, dependencies, options, an executable, and test steps using the Zig build system API. There is no obfuscated code, no network requests to unexpected hosts, no execution of externally downloaded binaries, no file exfiltration, and no backdoors. The code only constructs build artifacts and tests as expected for a packaging project. The optional `flatpak-backend-path` with a default library path is a normal configuration pattern and not malicious. No supply-chain attack indicators are present.</details>
<evidence></evidence>
<summary>Standard Zig build script, no malicious behavior.</summary>
</security_assessment>

[10/10] Reviewing ...
+ Reviewed src/Shelly-ALPM-3.1.0/Shelly.Cli.Zig/build.zig. Status: SAFE -- Standard Zig build script, no malicious behavior.
Reviewed all additional files.
Reviewed additional files.
Audit complete! Result: No issues found
(Skipped 1 file: shelly-3.1.0.tar.gz)

API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 54,720
  Completion Tokens: 10,257
  Total Tokens: 64,977
  Total Cost: $0.006214
  Execution Time: 160.42 seconds

Final Status: SAFE


No issues found.


Audit Skips:

shelly-3.1.0.tar.gz: [SKIPPED] Skipping binary file: shelly-3.1.0.tar.gz
