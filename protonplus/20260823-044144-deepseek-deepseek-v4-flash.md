---
package: protonplus
pkgver: 0.6.4
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 3aa684c47f9b6bac5667ff3cee413c3a000b1b0d
prompt_tokens: 36766
completion_tokens: 8147
total_tokens: 44913
cost: 0.00281536360
execution_time: 112.87
files_reviewed: 11
files_skipped: 1
files_unauditable: 8
unpinned_sources: 0
date: 2026-08-23T04:41:44Z
file_verdicts:
  - file: protonplus-0.6.4.tar.gz
    status: skipped
    summary: "Skipping binary file: protonplus-0.6.4.tar.gz"
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD with pinned release, no malicious behavior.
  - file: src/ProtonPlus-0.6.4/data/protonplus.service
    status: safe
    summary: A standard service unit template with a placeholder; no malicious content.
  - file: src/ProtonPlus-0.6.4/data/meson.build
    status: safe
    summary: Standard Meson build file, no malicious activity detected.
  - file: src/ProtonPlus-0.6.4/Makefile
    status: safe
    summary: Standard build Makefile, no malicious content.
  - file: src/ProtonPlus-0.6.4/scripts/build.sh
    status: safe
    summary: Standard build script; no evidence of malicious behavior.
  - file: src/ProtonPlus-0.6.4/scripts/make-appimage.sh
    status: safe
    summary: Standard AppImage build helper with no malicious indicators.
  - file: src/ProtonPlus-0.6.4/scripts/get-dependencies.sh
    status: safe
    summary: Standard dependency installation script, no malicious behavior detected.
  - file: src/ProtonPlus-0.6.4/scripts/set-version.py
    status: safe
    summary: Harmless version-bumping helper script for the ProtonPlus project.
  - file: src/ProtonPlus-0.6.4/src/models/providers/definitions/proton.vala
    status: safe
    summary: Declarative configuration data with no malicious behavior.
  - file: src/ProtonPlus-0.6.4/src/models/launchers/bottles.vala
    status: safe
    summary: Standard launcher path definitions, no malicious behavior.
  - file: src/ProtonPlus-0.6.4/src/main.vala
    status: safe
    summary: Standard application entry point, no malicious behavior detected.
---

Cloning https://aur.archlinux.org/protonplus.git...
Cloned protonplus
Analyzing protonplus AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD is a standard Arch Linux package definition for `protonplus`. The source is fetched from the official GitHub releases URL (`https://github.com/Vysp3r/ProtonPlus/archive/refs/tags/v$pkgver.tar.gz`) with a pinned version tag, and a SHA-256 checksum is provided and not set to 'SKIP'. There is no `pkgver()` function that could execute code during sourcing. The global scope contains only variable assignments and no dangerous commands like `eval`, `curl`, `wget`, or obfuscated code. Running `makepkg --nobuild --nodeps --noprepare` will safely download and extract the tarball; no malicious execution is possible from this file.
</details>
<summary>
Standard PKGBUILD, safe to fetch sources.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Standard PKGBUILD, safe to fetch sources.
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Running makepkg --printsrcinfo to get source files for agent...
makepkg --printsrcinfo successful
Reviewing required files...
[0/2] Reviewing PKGBUILD...
[0/2] Reviewing PKGBUILD, protonplus-0.6.4.tar.gz...
[1/2] Reviewing PKGBUILD...
! Reviewed protonplus-0.6.4.tar.gz. Status: SKIPPED -- Skipping binary file: protonplus-0.6.4.tar.gz
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard Arch packaging practices. The source is a pinned release tarball from the project's own GitHub repository with a fixed SHA256 checksum. The build and packaging steps use the upstream build system (meson) in a standard way. There are no obfuscated commands, suspicious network requests, or unexpected file operations. All dependencies are declared, and there is nothing indicating a supply-chain attack.
</details>
<summary>Standard PKGBUILD with pinned release, no malicious behavior.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD with pinned release, no malicious behavior.
Reviewed all required files.
Deciding which files to review next...
Note: 8 compiled/archived file(s) cannot be audited as text and were not reviewed (src/ProtonPlus-0.6.4/tests/fixtures/archives/direct-manifest-runner.zip.base64, src/ProtonPlus-0.6.4/tests/fixtures/archives/invalid.zip, src/ProtonPlus-0.6.4/tests/fixtures/archives/malformed-manifest-runner.zip.base64 and 5 more). For a package that ships prebuilt binaries, the audit covers the packaging, not the payload.
Note: 403 files available for selection; offering the 50 highest-priority to the model. 301 lower-priority file(s) were not offered.
LLM response for file selection:
src/ProtonPlus-0.6.4/Makefile
src/ProtonPlus-0.6.4/data/meson.build
src/ProtonPlus-0.6.4/data/protonplus.service
src/ProtonPlus-0.6.4/scripts/build.sh
src/ProtonPlus-0.6.4/scripts/get-dependencies.sh
src/ProtonPlus-0.6.4/scripts/make-appimage.sh
src/ProtonPlus-0.6.4/scripts/set-version.py
src/ProtonPlus-0.6.4/src/main.vala
src/ProtonPlus-0.6.4/src/models/providers/definitions/proton.vala
src/ProtonPlus-0.6.4/src/models/launchers/bottles.vala
Decided to review 10 additional files: src/ProtonPlus-0.6.4/Makefile, src/ProtonPlus-0.6.4/data/meson.build, src/ProtonPlus-0.6.4/data/protonplus.service, src/ProtonPlus-0.6.4/scripts/build.sh, src/ProtonPlus-0.6.4/scripts/get-dependencies.sh, src/ProtonPlus-0.6.4/scripts/make-appimage.sh, src/ProtonPlus-0.6.4/scripts/set-version.py, src/ProtonPlus-0.6.4/src/main.vala, src/ProtonPlus-0.6.4/src/models/providers/definitions/proton.vala, src/ProtonPlus-0.6.4/src/models/launchers/bottles.vala
Reviewing additional files...
Reviewing additional files...
[0/10] Reviewing src/ProtonPlus-0.6.4/Makefile...
[0/10] Reviewing src/ProtonPlus-0.6.4/Makefile, src/ProtonPlus-0.6.4/data/meson.build...
[0/10] Reviewing src/ProtonPlus-0.6.4/Makefile, src/ProtonPlus-0.6.4/data/meson.build, src/ProtonPlus-0.6.4/data/protonplus.service...
LLM auditresponse for protonplus.service:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `protonplus.service` is a systemd unit template containing a placeholder `{ExecStart}`. This placeholder is expected to be substituted during package build/install with the actual executable path. No commands or code are present—only metadata. There is no network access, obfuscation, or dangerous operations. The file is consistent with standard packaging practices for AUR service units.
</details>
<summary>A standard service unit template with a placeholder; no malicious content.</summary>
</security_assessment>

[0/10] Reviewing src/ProtonPlus-0.6.4/Makefile, src/ProtonPlus-0.6.4/data/meson.build, src/ProtonPlus-0.6.4/data/protonplus.service, src/ProtonPlus-0.6.4/scripts/build.sh...
[1/10] Reviewing src/ProtonPlus-0.6.4/Makefile, src/ProtonPlus-0.6.4/data/meson.build, src/ProtonPlus-0.6.4/scripts/build.sh...
+ Reviewed src/ProtonPlus-0.6.4/data/protonplus.service. Status: SAFE -- A standard service unit template with a placeholder; no malicious content.
LLM auditresponse for meson.build:
<security_assessment>
<decision>SAFE</decision>
<details>
This `meson.build` file is a standard GNOME build configuration. It performs routine tasks such as compiling resources, installing icons, merging and validating desktop files, installing AppStream metadata, and installing a GSettings schema. All commands used (`gnome.compile_resources`, `i18n.merge_file`, `desktop-file-validate`, `appstreamcli`, `glib-compile-schemas`) are standard tools in the GNOME build ecosystem. There are no network requests, no obfuscated code, no dangerous command substitutions, and no attempts to exfiltrate data or modify system files outside the normal install prefix. The file follows expected packaging practices and contains no malicious behavior.
</details>
<summary>
Standard Meson build file, no malicious activity detected.</summary>
</security_assessment>

[2/10] Reviewing src/ProtonPlus-0.6.4/Makefile, src/ProtonPlus-0.6.4/scripts/build.sh...
+ Reviewed src/ProtonPlus-0.6.4/data/meson.build. Status: SAFE -- Standard Meson build file, no malicious activity detected.
[2/10] Reviewing src/ProtonPlus-0.6.4/Makefile, src/ProtonPlus-0.6.4/scripts/build.sh, src/ProtonPlus-0.6.4/scripts/get-dependencies.sh...
LLM auditresponse for Makefile:
<security_assessment>
<decision>SAFE</decision>
<details>
The Makefile is a standard build system orchestration file for the ProtonPlus project. It delegates all compilation, installation, and other tasks to `./scripts/build.sh`, which is a separate maintainer-written script. The file itself contains no obfuscated commands, no direct network fetching (no `curl`, `wget`, or similar), no execution of untrusted input, and no attempts to exfiltrate or tamper with system files outside the project&#x27;s own build artefacts. The use of `sudo` for installation is a normal packaging practice. The `gen-potfiles` target simply generates a list of source files for translation—this is a routine part of Vala/GTK projects. There is no evidence of injected malicious code or supply-chain attack within this Makefile.
</details>
<summary>Standard build Makefile, no malicious content.</summary>
</security_assessment>

[2/10] Reviewing src/ProtonPlus-0.6.4/Makefile, src/ProtonPlus-0.6.4/scripts/build.sh, src/ProtonPlus-0.6.4/scripts/get-dependencies.sh, src/ProtonPlus-0.6.4/scripts/make-appimage.sh...
[3/10] Reviewing src/ProtonPlus-0.6.4/scripts/build.sh, src/ProtonPlus-0.6.4/scripts/get-dependencies.sh, src/ProtonPlus-0.6.4/scripts/make-appimage.sh...
+ Reviewed src/ProtonPlus-0.6.4/Makefile. Status: SAFE -- Standard build Makefile, no malicious content.
LLM auditresponse for build.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard build helper script for the ProtonPlus project. It orchestrates native, Flatpak, and AppImage builds using expected tools (meson, ninja, flatpak, rsvg-convert, glib-compile-schemas). All network operations target the official Flathub repository (flatpak install) or the project's own upstream (meson wrap). No obfuscated code, unexpected downloads, file exfiltration, or system tampering is present. The only external script call (`make-appimage.sh`) is in the same repository and is not suspect. The `clean()` function removes `/tmp/protonplus-build-debug`, which is a temporary directory created by the same build script — this is acceptable cleanup, not malicious.
</details>
<summary>
Standard build script; no evidence of malicious behavior.</summary>
</security_assessment>

[4/10] Reviewing src/ProtonPlus-0.6.4/scripts/get-dependencies.sh, src/ProtonPlus-0.6.4/scripts/make-appimage.sh...
+ Reviewed src/ProtonPlus-0.6.4/scripts/build.sh. Status: SAFE -- Standard build script; no evidence of malicious behavior.
[4/10] Reviewing src/ProtonPlus-0.6.4/scripts/get-dependencies.sh, src/ProtonPlus-0.6.4/scripts/make-appimage.sh, src/ProtonPlus-0.6.4/scripts/set-version.py...
LLM auditresponse for make-appimage.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This script is a standard developer/maintainer helper for building an AppImage release of the ProtonPlus project. It performs:
- Meson build and install into a local prefix (expected build workflow).
- Sets AppImage update information (`UPINFO`) using the repository variable, which is normal for enabling delta updates via AppImageUpdate.
- Uses `quick-sharun` to deploy dependencies and create the AppImage—this is a standard AppImage bundling tool.
- Selectively copies only ProtonPlus’s own locale files (`com.vysp3r.ProtonPlus.mo`) to the AppDir, which is an optimization, not suspicious file access.

There are no network requests, no obfuscated commands, no exfiltration of sensitive data, and no operations on files outside the project’s scope (other than reading system locale files for bundling). The script is consistent with legitimate packaging workflows and presents no supply‑chain attack vectors.
</details>
<summary>Standard AppImage build helper with no malicious indicators.</summary>
</security_assessment>

[4/10] Reviewing src/ProtonPlus-0.6.4/scripts/get-dependencies.sh, src/ProtonPlus-0.6.4/scripts/make-appimage.sh, src/ProtonPlus-0.6.4/scripts/set-version.py, src/ProtonPlus-0.6.4/src/main.vala...
[5/10] Reviewing src/ProtonPlus-0.6.4/scripts/get-dependencies.sh, src/ProtonPlus-0.6.4/scripts/set-version.py, src/ProtonPlus-0.6.4/src/main.vala...
+ Reviewed src/ProtonPlus-0.6.4/scripts/make-appimage.sh. Status: SAFE -- Standard AppImage build helper with no malicious indicators.
LLM auditresponse for get-dependencies.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This script is a standard dependency installation helper. It runs `pacman -Syu` with a list of common development libraries and tools, which is normal for an AUR build dependency script. The conditional call to `get-debloated-pkgs` invokes an external tool (likely provided by the package itself or as a dependency); this is a routine operation, not evidence of a supply-chain attack. There are no obfuscated commands, no network requests to unrelated hosts, no exfiltration of local data, and no execution of untrusted downloaded code. The script adheres to typical packaging workflow practices.
</details>
<summary>
Standard dependency installation script, no malicious behavior detected.</summary>
</security_assessment>

[6/10] Reviewing src/ProtonPlus-0.6.4/scripts/set-version.py, src/ProtonPlus-0.6.4/src/main.vala...
+ Reviewed src/ProtonPlus-0.6.4/scripts/get-dependencies.sh. Status: SAFE -- Standard dependency installation script, no malicious behavior detected.
[6/10] Reviewing src/ProtonPlus-0.6.4/scripts/set-version.py, src/ProtonPlus-0.6.4/src/main.vala, src/ProtonPlus-0.6.4/src/models/providers/definitions/proton.vala...
LLM auditresponse for set-version.py:
<security_assessment>
<decision>SAFE</decision>
<details>
This script is a standard maintainer helper: it updates version strings in two project files (`meson.build` and a Flatpak manifest YAML) using regex substitution. It accepts a version argument, validates it, performs the replacement, and optionally writes the result. No network requests, obfuscation, or dangerous operations (eval, curl, wget, base64) are present. The script only modifies files within the project root. It is a routine packaging tool with no evidence of malicious intent.
</details>
<summary>
Harmless version-bumping helper script for the ProtonPlus project.</summary>
</security_assessment>

[7/10] Reviewing src/ProtonPlus-0.6.4/src/main.vala, src/ProtonPlus-0.6.4/src/models/providers/definitions/proton.vala...
+ Reviewed src/ProtonPlus-0.6.4/scripts/set-version.py. Status: SAFE -- Harmless version-bumping helper script for the ProtonPlus project.
[7/10] Reviewing src/ProtonPlus-0.6.4/src/main.vala, src/ProtonPlus-0.6.4/src/models/providers/definitions/proton.vala, src/ProtonPlus-0.6.4/src/models/launchers/bottles.vala...
LLM auditresponse for proton.vala:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a Vala source file that defines data structures for the ProtonPlus application. It contains a list of provider definitions (Proton-GE, Proton-CachyOS, DW-Proton, etc.) with metadata such as names, descriptions, source URLs, and install layouts. All URLs point to well-known, legitimate upstream repositories (GitHub, Codeberg, or the project's own domain). There is no executable code, obfuscation, network requests, file operations, or system modifications. The file is purely declarative and does not implement any behavior that could be considered malicious. It is a standard part of the application's configuration.
</details>
<summary>Declarative configuration data with no malicious behavior.</summary>
</security_assessment>

[8/10] Reviewing src/ProtonPlus-0.6.4/src/main.vala, src/ProtonPlus-0.6.4/src/models/launchers/bottles.vala...
+ Reviewed src/ProtonPlus-0.6.4/src/models/providers/definitions/proton.vala. Status: SAFE -- Declarative configuration data with no malicious behavior.
LLM auditresponse for bottles.vala:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `bottles.vala` defines a launcher class for the Bottles compatibility layer. It only constructs filesystem paths for different installation types (system, flatpak, snap) using standard environment variables (`Environment.get_user_data_dir()`, `Environment.get_home_dir()`). There are no network requests, no obfuscated code, no dangerous command execution, and no file operations beyond defining paths. The code is consistent with normal upstream application functionality and poses no supply-chain risk.
</details>
<summary>Standard launcher path definitions, no malicious behavior.</summary>
</security_assessment>

[9/10] Reviewing src/ProtonPlus-0.6.4/src/main.vala...
+ Reviewed src/ProtonPlus-0.6.4/src/models/launchers/bottles.vala. Status: SAFE -- Standard launcher path definitions, no malicious behavior.
LLM auditresponse for main.vala:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `main.vala` is the primary entry point for the ProtonPlus application. It performs standard initialization tasks (loading global state, setting locale, initializing notifications, running database migrations, and configuring Steam-related services for installing/uninstalling/updating compatibility tools). All actions are directly related to the application’s stated purpose of managing Proton and compatibility layers for Steam games. There are no network requests, obfuscated commands, suspicious file operations, or attempts to execute untrusted code from external sources. The code uses well-known Vala/Gtk patterns and does not contain any signs of supply-chain tampering or injected malicious logic.
</details>
<summary>Standard application entry point, no malicious behavior detected.</summary>
</security_assessment>

[10/10] Reviewing ...
+ Reviewed src/ProtonPlus-0.6.4/src/main.vala. Status: SAFE -- Standard application entry point, no malicious behavior detected.
Reviewed all additional files.
Reviewed additional files.
Audit complete! Result: No issues found
(Skipped 1 file: protonplus-0.6.4.tar.gz)

API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 36,766
  Completion Tokens: 8,147
  Total Tokens: 44,913
  Total Cost: $0.002815
  Execution Time: 112.87 seconds

Final Status: SAFE


No issues found.


Audit Skips:

/data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-mt0hg1y3/protonplus-0.6.4.tar.gz: [SKIPPED] Skipping binary file: protonplus-0.6.4.tar.gz
