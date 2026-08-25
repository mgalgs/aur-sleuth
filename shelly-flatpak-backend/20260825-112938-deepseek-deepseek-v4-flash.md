---
package: shelly-flatpak-backend
pkgbase: shelly
pkgver: 3.1.0
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 34eecedf33cdb5da67bea8964402044d560850d8
prompt_tokens: 55966
completion_tokens: 8521
total_tokens: 64487
cost: 0.0062348832
execution_time: 197.59
files_reviewed: 11
files_skipped: 1
files_unauditable: 0
unpinned_sources: 0
date: 2026-08-25T11:29:38Z
file_verdicts:
  - file: shelly-3.1.0.tar.gz
    status: skipped
    summary: "Skipping binary file: shelly-3.1.0.tar.gz"
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD with no malicious indicators.
  - file: src/Shelly-ALPM-3.1.0/scripts/bump-version.sh
    status: safe
    summary: Standard maintainer bump script, no malicious behavior.
  - file: src/Shelly-ALPM-3.1.0/Shelly.Ui.Gtk/build.sh
    status: safe
    summary: Standard build script, no malicious behavior found.
  - file: src/Shelly-ALPM-3.1.0/scripts/check-flatpak-separation.sh
    status: safe
    summary: Build-time separation enforcement script; no malicious behavior.
  - file: src/Shelly-ALPM-3.1.0/Shelly.Notifications.Zig/update-translations.sh
    status: safe
    summary: Benign gettext translation maintenance script; no malicious behavior found.
  - file: src/Shelly-ALPM-3.1.0/scripts/test-flatpak-separation.sh
    status: safe
    summary: Standard build and test script, no malicious behavior
  - file: src/Shelly-ALPM-3.1.0/PKGBUILD-cli
    status: safe
    summary: Standard PKGBUILD; no malicious content found.
  - file: src/Shelly-ALPM-3.1.0/PKGBUILD-bin
    status: safe
    summary: Safe – standard binary PKGBUILD with no malicious indicators.
  - file: src/Shelly-ALPM-3.1.0/PKGBUILD-git
    status: safe
    summary: Standard AUR PKGBUILD for Shelly package manager, no malicious code.
  - file: src/Shelly-ALPM-3.1.0/shellybuild.conf
    status: safe
    summary: Inert config file, no malicious content.
  - file: src/Shelly-ALPM-3.1.0/Shelly.Cli.Zig/build.zig
    status: safe
    summary: Standard Zig build script, no signs of malicious behavior.
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
Running `makepkg --nobuild --nodeps --noprepare` and `makepkg --printsrcinfo` only sources the PKGBUILD's global scope and fetches/extracts the `source` array, stopping before `prepare()`, `build()`, or `package_*()` are executed. The global scope contains only standard metadata and a `_source_dir` variable; there are no top-level command substitutions, no `pkgver()` function, and no code that runs during sourcing other than variable assignments. The sole source entry downloads a release tarball from the project's own upstream GitHub repository (`https://github.com/Seafoam-Labs/Shelly-ALPM/archive/v3.1.0.tar.gz`) with a pinned SHA256 checksum — a normal, expected source definition. The contents of `build()`, `package_*()`, and `check()` are irrelevant to this narrow gate because those functions are not invoked by the two commands. No malicious behavior (network exfiltration, obfuscated commands, or arbitrary code execution at source time) is present in the scoped portion of the PKGBUILD.
</details>
<evidence>
</evidence>
<summary>
Source fetch and sourcing are safe; no malicious top-level code or actions.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Source fetch and sourcing are safe; no malicious top-level code or actions.
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
The PKGBUILD follows standard Arch Linux packaging practices. The source is pulled from the official GitHub release with a pinned SHA-256 checksum, ensuring integrity. The build process uses `zig build` in expected subdirectories and generates shell completions, man pages, and translations by running the built binary itself—normal behavior. The `shelly-flatpak-integrate` script is installed as a user-facing helper to patch Flatpak desktop entries with a &quot;Manage in Shelly&quot; action; it is not executed during package build or install, only when the user runs it manually. The polkit policy is standard for privileged operations. There is no obfuscated code, no unexpected network requests, no execution of externally fetched content, and no evidence of data exfiltration or backdoors. Everything is consistent with the package's stated purpose as a package manager with Flatpak integration.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD with no malicious indicators.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD with no malicious indicators.
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
src/Shelly-ALPM-3.1.0/PKGBUILD-bin
src/Shelly-ALPM-3.1.0/PKGBUILD-cli
src/Shelly-ALPM-3.1.0/PKGBUILD-git
src/Shelly-ALPM-3.1.0/Shelly.Cli.Zig/build.zig
Decided to review 10 additional files: src/Shelly-ALPM-3.1.0/Shelly.Notifications.Zig/update-translations.sh, src/Shelly-ALPM-3.1.0/Shelly.Ui.Gtk/build.sh, src/Shelly-ALPM-3.1.0/scripts/bump-version.sh, src/Shelly-ALPM-3.1.0/scripts/check-flatpak-separation.sh, src/Shelly-ALPM-3.1.0/scripts/test-flatpak-separation.sh, src/Shelly-ALPM-3.1.0/shellybuild.conf, src/Shelly-ALPM-3.1.0/PKGBUILD-bin, src/Shelly-ALPM-3.1.0/PKGBUILD-cli, src/Shelly-ALPM-3.1.0/PKGBUILD-git, src/Shelly-ALPM-3.1.0/Shelly.Cli.Zig/build.zig
Reviewing additional files...
Reviewing additional files...
[0/10] Reviewing src/Shelly-ALPM-3.1.0/Shelly.Ui.Gtk/build.sh...
[0/10] Reviewing src/Shelly-ALPM-3.1.0/Shelly.Ui.Gtk/build.sh, src/Shelly-ALPM-3.1.0/Shelly.Notifications.Zig/update-translations.sh...
[0/10] Reviewing src/Shelly-ALPM-3.1.0/Shelly.Ui.Gtk/build.sh, src/Shelly-ALPM-3.1.0/Shelly.Notifications.Zig/update-translations.sh, src/Shelly-ALPM-3.1.0/scripts/bump-version.sh...
LLM auditresponse for bump-version.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a maintainer helper script used to automate version bumps in the project's build.zig.zon and PKGBUILD files. It performs only local file editing using `sed` and `grep`, with no network requests, no execution of external code, no obfuscation, and no access to system files outside the repository. The script is a standard AUR development tool, not a supply-chain attack vector.
</details>
<evidence></evidence>
<summary>Standard maintainer bump script, no malicious behavior.</summary>
</security_assessment>

[1/10] Reviewing src/Shelly-ALPM-3.1.0/Shelly.Ui.Gtk/build.sh, src/Shelly-ALPM-3.1.0/Shelly.Notifications.Zig/update-translations.sh...
+ Reviewed src/Shelly-ALPM-3.1.0/scripts/bump-version.sh. Status: SAFE -- Standard maintainer bump script, no malicious behavior.
[1/10] Reviewing src/Shelly-ALPM-3.1.0/Shelly.Ui.Gtk/build.sh, src/Shelly-ALPM-3.1.0/Shelly.Notifications.Zig/update-translations.sh, src/Shelly-ALPM-3.1.0/scripts/check-flatpak-separation.sh...
LLM auditresponse for build.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
The script is a standard build helper for a Zig project. It builds a Flatpak backend library, a CLI, and a UI by running `zig build` in respective directories. It locates the resulting binary by parsing `build.zig` and optionally runs it. There are no network requests, no obfuscated code, no dangerous commands like `eval`, `curl`, or `wget`. All operations are confined to the project's source tree and are consistent with normal packaging/build practices.
</details>
<evidence>
</evidence>
<summary>Standard build script, no malicious behavior found.</summary>
</security_assessment>

[2/10] Reviewing src/Shelly-ALPM-3.1.0/Shelly.Notifications.Zig/update-translations.sh, src/Shelly-ALPM-3.1.0/scripts/check-flatpak-separation.sh...
+ Reviewed src/Shelly-ALPM-3.1.0/Shelly.Ui.Gtk/build.sh. Status: SAFE -- Standard build script, no malicious behavior found.
[2/10] Reviewing src/Shelly-ALPM-3.1.0/Shelly.Notifications.Zig/update-translations.sh, src/Shelly-ALPM-3.1.0/scripts/check-flatpak-separation.sh, src/Shelly-ALPM-3.1.0/scripts/test-flatpak-separation.sh...
LLM auditresponse for check-flatpak-separation.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
The script `check-flatpak-separation.sh` is a build-time validation tool that enforces architectural boundaries between the Shelly CLI and its Flatpak backend. It verifies that the CLI binary does not link against Flatpak or GLib libraries, confirms the backend exports the expected entry point and SONAME, scans Zig source files for prohibited imports, and checks PKGBUILD correctness. All operations are local file reads and standard tool invocations (`readelf`, `nm`, `rg`, `bash -n`). There is no network access, no fetching or execution of external code, no obfuscation, and no data exfiltration. The script performs no modifications to system files or user data. Its behavior is consistent with a project-internal integration test or CI check—not a supply-chain attack.
</details>
<evidence></evidence>
<summary>Build-time separation enforcement script; no malicious behavior.</summary>
</security_assessment>

[3/10] Reviewing src/Shelly-ALPM-3.1.0/Shelly.Notifications.Zig/update-translations.sh, src/Shelly-ALPM-3.1.0/scripts/test-flatpak-separation.sh...
+ Reviewed src/Shelly-ALPM-3.1.0/scripts/check-flatpak-separation.sh. Status: SAFE -- Build-time separation enforcement script; no malicious behavior.
[3/10] Reviewing src/Shelly-ALPM-3.1.0/Shelly.Notifications.Zig/update-translations.sh, src/Shelly-ALPM-3.1.0/scripts/test-flatpak-separation.sh, src/Shelly-ALPM-3.1.0/shellybuild.conf...
LLM auditresponse for update-translations.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This script is a standard gettext translation maintenance helper. It extracts strings from local Zig source files using xgettext, merges PO catalogs with msgmerge, and optionally compiles/installs MO files with msgfmt. All operations are confined to the repository tree (po/, build/locale/) except the explicit `--install` flag, which writes compiled translations under a user-specified PREFIX (default /usr/share/locale) — a normal and expected behavior for a translation install helper. There are no network requests, no encoding/obfuscation, no eval or dynamic code execution, no access to sensitive files outside its stated scope, and no dependency on mutable remote content. Temporary files are created via mktemp and cleaned up with a trap. The script is consistent with ordinary packaging/development tooling and contains no evidence of injected malicious behavior.
</details>
<evidence></evidence>
<summary>Benign gettext translation maintenance script; no malicious behavior found.</summary>
</security_assessment>

[4/10] Reviewing src/Shelly-ALPM-3.1.0/scripts/test-flatpak-separation.sh, src/Shelly-ALPM-3.1.0/shellybuild.conf...
+ Reviewed src/Shelly-ALPM-3.1.0/Shelly.Notifications.Zig/update-translations.sh. Status: SAFE -- Benign gettext translation maintenance script; no malicious behavior found.
[4/10] Reviewing src/Shelly-ALPM-3.1.0/scripts/test-flatpak-separation.sh, src/Shelly-ALPM-3.1.0/shellybuild.conf, src/Shelly-ALPM-3.1.0/PKGBUILD-bin...
LLM auditresponse for test-flatpak-separation.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This script is a standard build and test automation script for a Flatpak backend component. It creates a temporary build root, runs multiple Zig build commands (build, test, ABI test, integration test, flatpak test) and then performs basic smoke tests (--help, --version, shell completions). There is no obfuscated code, no unexpected network requests, no execution of downloaded content, and no attempts to access or exfiltrate sensitive system data. The only file operations are creating directories and removing the temporary build root, with a safety check ensuring the removal path matches the expected pattern. All operations are within the package's own source tree or the build root. No evidence of malicious or dangerous behavior.
</details>
<evidence></evidence>
<summary>Standard build and test script, no malicious behavior</summary>
</security_assessment>

[5/10] Reviewing src/Shelly-ALPM-3.1.0/shellybuild.conf, src/Shelly-ALPM-3.1.0/PKGBUILD-bin...
+ Reviewed src/Shelly-ALPM-3.1.0/scripts/test-flatpak-separation.sh. Status: SAFE -- Standard build and test script, no malicious behavior
[5/10] Reviewing src/Shelly-ALPM-3.1.0/shellybuild.conf, src/Shelly-ALPM-3.1.0/PKGBUILD-bin, src/Shelly-ALPM-3.1.0/PKGBUILD-cli...
LLM auditresponse for PKGBUILD-cli:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD-cli file is a standard packaging script for the `shelly-cli` and `shelly-cli-flatpak-backend` packages from the AUR. It clones the upstream Git repository from the project's official GitHub page, builds the software using Zig, generates shell completions and manual pages, and installs binaries and configuration files into the package directory. There are no suspicious network requests, obfuscated code, or unexpected system modifications. The use of `SKIP` for the checksum on the VCS source is normal and expected for AUR packages tracking a branch. No evidence of a supply-chain attack or malicious behavior.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD; no malicious content found.</summary>
</security_assessment>

[6/10] Reviewing src/Shelly-ALPM-3.1.0/shellybuild.conf, src/Shelly-ALPM-3.1.0/PKGBUILD-bin...
+ Reviewed src/Shelly-ALPM-3.1.0/PKGBUILD-cli. Status: SAFE -- Standard PKGBUILD; no malicious content found.
[6/10] Reviewing src/Shelly-ALPM-3.1.0/shellybuild.conf, src/Shelly-ALPM-3.1.0/PKGBUILD-bin, src/Shelly-ALPM-3.1.0/PKGBUILD-git...
LLM auditresponse for PKGBUILD-bin:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard AUR practices for pre-built binary packages. The sources are from the project's own GitHub releases with checksums provided. The `package_shelly-bin()` function installs binaries, desktop entries, a polkit policy, icons, completions, and a man page (generated by running the extracted binary). The `shelly-flatpak-integrate` script is installed as a user-invokable convenience tool to add “Manage in Shelly” actions to existing Flatpak desktop files; it does not run automatically during package installation and does not download or exfiltrate data. No obfuscated code, eval, unexpected network requests, or backdoors are present. The only minor note is that the man page generation runs the pre-built binary during packaging, but this is a common practice and not evidence of malice.
</details>
<evidence></evidence>
<summary>Safe – standard binary PKGBUILD with no malicious indicators.</summary>
</security_assessment>

[7/10] Reviewing src/Shelly-ALPM-3.1.0/shellybuild.conf, src/Shelly-ALPM-3.1.0/PKGBUILD-git...
+ Reviewed src/Shelly-ALPM-3.1.0/PKGBUILD-bin. Status: SAFE -- Safe – standard binary PKGBUILD with no malicious indicators.
[7/10] Reviewing src/Shelly-ALPM-3.1.0/shellybuild.conf, src/Shelly-ALPM-3.1.0/PKGBUILD-git, src/Shelly-ALPM-3.1.0/Shelly.Cli.Zig/build.zig...
LLM auditresponse for PKGBUILD-git:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD-git file is a standard VCS PKGBUILD for the Shelly Arch Linux package manager project. It sources the upstream repository from the official GitHub organization (Seafoam-Labs) using a git branch, which is normal for AUR `-git` packages. The build process invokes `zig build` for multiple subprojects, and the packaging functions install binaries, desktop entries, icons, shell completions, man pages, translations, and a polkit policy – all standard packaging operations.

The only notable script is `shelly-flatpak-integrate`, which modifies Flatpak `.desktop` files to add a "Manage in Shelly" right-click action. It copies files from standard Flatpak export directories to `$HOME/.local/share/applications` and patches them with `sed` and `cat`. This is legitimate application functionality to integrate Flatpak management, not a supply-chain attack. The script does not exfiltrate data, download executables, or perform any other malicious behavior.

No obfuscation, dangerous commands, unexpected network requests, or tampering with unrelated system files are present. The file follows standard AUR practices and does not contain any evidence of malicious intent.
</details>
<evidence></evidence>
<summary>Standard AUR PKGBUILD for Shelly package manager, no malicious code.</summary>
</security_assessment>

[8/10] Reviewing src/Shelly-ALPM-3.1.0/shellybuild.conf, src/Shelly-ALPM-3.1.0/Shelly.Cli.Zig/build.zig...
+ Reviewed src/Shelly-ALPM-3.1.0/PKGBUILD-git. Status: SAFE -- Standard AUR PKGBUILD for Shelly package manager, no malicious code.
LLM auditresponse for shellybuild.conf:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a configuration template for Shelly's AUR builder. All settings are commented out, making the file completely inert. No executable code, network requests, or obfuscated content is present. The file contains only default values for build flags, package options, and directory paths, which are standard for such configuration files. There is no evidence of malicious behavior.
</details>
<evidence></evidence>
<summary>Inert config file, no malicious content.</summary>
</security_assessment>

[9/10] Reviewing src/Shelly-ALPM-3.1.0/Shelly.Cli.Zig/build.zig...
+ Reviewed src/Shelly-ALPM-3.1.0/shellybuild.conf. Status: SAFE -- Inert config file, no malicious content.
LLM auditresponse for build.zig:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard Zig build script for the Shelly CLI project. It uses the Zig build system to define compilation targets, dependencies, test steps, and installation. There is no evidence of malicious behavior: no network requests, no obfuscated commands, no file operations outside the expected build directory, and no execution of untrusted code. The script only configures and invokes the Zig compiler and linker in a routine manner.
</details>
<evidence></evidence>
<summary>Standard Zig build script, no signs of malicious behavior.</summary>
</security_assessment>

[10/10] Reviewing ...
+ Reviewed src/Shelly-ALPM-3.1.0/Shelly.Cli.Zig/build.zig. Status: SAFE -- Standard Zig build script, no signs of malicious behavior.
Reviewed all additional files.
Reviewed additional files.
Audit complete! Result: No issues found
(Skipped 1 file: shelly-3.1.0.tar.gz)

API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 55,966
  Completion Tokens: 8,521
  Total Tokens: 64,487
  Total Cost: $0.006235
  Execution Time: 197.59 seconds

Final Status: SAFE


No issues found.


Audit Skips:

shelly-3.1.0.tar.gz: [SKIPPED] Skipping binary file: shelly-3.1.0.tar.gz
