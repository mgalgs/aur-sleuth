---
package: shelly
pkgver: 3.1.0
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 34eecedf33cdb5da67bea8964402044d560850d8
prompt_tokens: 57255
completion_tokens: 9057
total_tokens: 66312
cost: 0.0062254794
execution_time: 134.89
files_reviewed: 11
files_skipped: 1
files_unauditable: 0
unpinned_sources: 0
date: 2026-08-25T15:18:56Z
file_verdicts:
  - file: shelly-3.1.0.tar.gz
    status: skipped
    summary: "Skipping binary file: shelly-3.1.0.tar.gz"
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD with no malicious indicators.
  - file: src/Shelly-ALPM-3.1.0/PKGBUILD-cli
    status: safe
    summary: Standard AUR PKGBUILD with no malicious indicators.
  - file: src/Shelly-ALPM-3.1.0/PKGBUILD-git
    status: safe
    summary: Benign AUR build script; no malicious behavior found.
  - file: src/Shelly-ALPM-3.1.0/PKGBUILD-bin
    status: safe
    summary: Clean prebuilt binary PKGBUILD from official source.
  - file: src/Shelly-ALPM-3.1.0/Shelly.Ui.Gtk/build.sh
    status: safe
    summary: Standard build script, no malicious code.
  - file: src/Shelly-ALPM-3.1.0/scripts/check-flatpak-separation.sh
    status: safe
    summary: Development QA script, no malicious behavior.
  - file: src/Shelly-ALPM-3.1.0/Shelly.Notifications.Zig/update-translations.sh
    status: safe
    summary: Standard translation maintenance script, no security issues.
  - file: src/Shelly-ALPM-3.1.0/Shelly.Cli.Zig/build.zig
    status: safe
    summary: Standard Zig build script; no malicious content.
  - file: src/Shelly-ALPM-3.1.0/.github/workflows/build-and-publish.yml
    status: safe
    summary: Standard CI workflow, no security issues.
  - file: src/Shelly-ALPM-3.1.0/scripts/bump-version.sh
    status: safe
    summary: Legitimate version-bumping script, no malicious code.
  - file: src/Shelly-ALPM-3.1.0/shellybuild.conf
    status: safe
    summary: Inert configuration file with no security issues.
---

Cloning https://aur.archlinux.org/shelly.git...
Cloned shelly
Analyzing shelly AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The global/top-level scope of this PKGBUILD contains only static variable assignments and a simple parameter expansion for `_source_dir`. No command substitutions, `eval`, `exec`, or any code that executes during sourcing. There is no `pkgver()` function. The `source` array points to a standard GitHub release tarball with a provided SHA-256 checksum (not SKIP). Running `makepkg --nobuild --nodeps --noprepare` will only download and extract this tarball, performing no further execution. The `makepkg --printsrcinfo` command only sources the PKGBUILD to generate `.SRCINFO`, which again only runs the harmless top-level code. No malicious behavior is possible during these steps.
</details>
<evidence></evidence>
<summary>Global scope is benign; no code execution risk.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Global scope is benign; no code execution risk.
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
This PKGBUILD for the AUR package `shelly` is a standard Arch packaging script. It fetches a pinned tarball from the project&#39;s official GitHub release with a valid SHA-256 checksum, builds several Zig components using the upstream build system, and installs binaries, desktop entries, a Polkit policy, icons, shell completions, a man page, and translations. The included helper script `/usr/bin/shelly-flatpak-integrate` adds a right-click action to Flatpak application desktop entries by copying and patching them in the user&#39;s local applications directory—this is legitimate upstream functionality for integrating Flatpak apps with the package manager. There are no obfuscated commands, no network requests beyond the pinned source, no exfiltration of data, no backdoors, and no unexpected system modifications. The file follows standard AUR packaging conventions and does not exhibit any genuinely malicious behavior.
</details>
<evidence></evidence>
<summary>Standard AUR PKGBUILD with no malicious indicators.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD with no malicious indicators.
Reviewed all required files.
Deciding which files to review next...
Note: 432 files available for selection; offering the 50 highest-priority to the model. 265 lower-priority file(s) were not offered.
LLM response for file selection:
src/Shelly-ALPM-3.1.0/PKGBUILD-bin
src/Shelly-ALPM-3.1.0/PKGBUILD-cli
src/Shelly-ALPM-3.1.0/PKGBUILD-git
src/Shelly-ALPM-3.1.0/Shelly.Ui.Gtk/build.sh
src/Shelly-ALPM-3.1.0/Shelly.Notifications.Zig/update-translations.sh
src/Shelly-ALPM-3.1.0/scripts/bump-version.sh
src/Shelly-ALPM-3.1.0/scripts/check-flatpak-separation.sh
src/Shelly-ALPM-3.1.0/Shelly.Cli.Zig/build.zig
src/Shelly-ALPM-3.1.0/shellybuild.conf
src/Shelly-ALPM-3.1.0/.github/workflows/build-and-publish.yml
Decided to review 10 additional files: src/Shelly-ALPM-3.1.0/PKGBUILD-bin, src/Shelly-ALPM-3.1.0/PKGBUILD-cli, src/Shelly-ALPM-3.1.0/PKGBUILD-git, src/Shelly-ALPM-3.1.0/Shelly.Ui.Gtk/build.sh, src/Shelly-ALPM-3.1.0/Shelly.Notifications.Zig/update-translations.sh, src/Shelly-ALPM-3.1.0/scripts/bump-version.sh, src/Shelly-ALPM-3.1.0/scripts/check-flatpak-separation.sh, src/Shelly-ALPM-3.1.0/Shelly.Cli.Zig/build.zig, src/Shelly-ALPM-3.1.0/shellybuild.conf, src/Shelly-ALPM-3.1.0/.github/workflows/build-and-publish.yml
Reviewing additional files...
Reviewing additional files...
[0/10] Reviewing src/Shelly-ALPM-3.1.0/PKGBUILD-bin...
[0/10] Reviewing src/Shelly-ALPM-3.1.0/PKGBUILD-bin, src/Shelly-ALPM-3.1.0/PKGBUILD-git...
[0/10] Reviewing src/Shelly-ALPM-3.1.0/PKGBUILD-bin, src/Shelly-ALPM-3.1.0/PKGBUILD-git, src/Shelly-ALPM-3.1.0/PKGBUILD-cli...
LLM auditresponse for PKGBUILD-cli:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard AUR packaging practices. It clones the application's official source from GitHub, builds with Zig, and installs the compiled binaries and accompanying files. There are no suspicious network requests, obfuscated code, or unexpected system modifications. The VCS source uses `SKIP` checksum, which is normal for git-based sources. All operations serve the stated purpose of packaging the Shelly CLI tool. No evidence of supply-chain attack or malicious behavior.
</details>
<evidence></evidence>
<summary>Standard AUR PKGBUILD with no malicious indicators.</summary>
</security_assessment>

[0/10] Reviewing src/Shelly-ALPM-3.1.0/PKGBUILD-bin, src/Shelly-ALPM-3.1.0/PKGBUILD-git, src/Shelly-ALPM-3.1.0/PKGBUILD-cli, src/Shelly-ALPM-3.1.0/Shelly.Ui.Gtk/build.sh...
[1/10] Reviewing src/Shelly-ALPM-3.1.0/PKGBUILD-bin, src/Shelly-ALPM-3.1.0/PKGBUILD-git, src/Shelly-ALPM-3.1.0/Shelly.Ui.Gtk/build.sh...
+ Reviewed src/Shelly-ALPM-3.1.0/PKGBUILD-cli. Status: SAFE -- Standard AUR PKGBUILD with no malicious indicators.
LLM auditresponse for PKGBUILD-git:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a standard AUR git package build script. It clones the project's own upstream repository (`https://github.com/Seafoam-Labs/Shelly-ALPM.git`) from the `development` branch, builds several Zig components, runs tests, and installs the resulting binaries, desktop entries, icons, completions, translations, and a polkit policy into the package directory. The `SKIP` checksum and unpinned branch are normal for VCS packages; they are hygiene concerns, not evidence of malice.

The only somewhat notable element is the bundled `shelly-flatpak-integrate` helper script, which copies Flatpak `.desktop` files into `~/.local/share/applications` and patches them to add a "Manage in Shelly" action. This operates within the application's stated purpose of integrating Flatpak apps with Shelly, modifies only the invoking user's local desktop entries, and does not exfiltrate data or execute remote code. The polkit policy restricts privileged execution to `auth_admin`/`auth_admin_keep`, which is a normal configuration for a package manager CLI.

No obfuscated code, unexpected network requests, base64/eval tricks, credential theft, backdoors, or tampering with unrelated system files were found. The build and packaging steps are consistent with legitimate AUR practices.
</details>
<evidence>
</evidence>
<summary>
Benign AUR build script; no malicious behavior found.
</summary>
</security_assessment>

[1/10] Reviewing src/Shelly-ALPM-3.1.0/PKGBUILD-bin, src/Shelly-ALPM-3.1.0/PKGBUILD-git, src/Shelly-ALPM-3.1.0/Shelly.Ui.Gtk/build.sh, src/Shelly-ALPM-3.1.0/Shelly.Notifications.Zig/update-translations.sh...
[2/10] Reviewing src/Shelly-ALPM-3.1.0/PKGBUILD-bin, src/Shelly-ALPM-3.1.0/Shelly.Ui.Gtk/build.sh, src/Shelly-ALPM-3.1.0/Shelly.Notifications.Zig/update-translations.sh...
+ Reviewed src/Shelly-ALPM-3.1.0/PKGBUILD-git. Status: SAFE -- Benign AUR build script; no malicious behavior found.
LLM auditresponse for PKGBUILD-bin:
<security_assessment>
<decision>SAFE</decision>
<details>
Standard PKGBUILD for a prebuilt binary package from the official upstream GitHub releases.  Downloads are from github.com/Seafoam-Labs/Shelly-ALPM with pinned SHA256 checksums.  The packaging performs only routine installation of binaries, configuration files, desktop entries, icons, completions, a polkit policy, and a man page generated from the binary itself.  The included Flatpak integration script modifies desktop entries under the user&#39;s home directory, which is normal for a package manager providing optional desktop integration.  No obfuscated code, hidden network requests, data exfiltration, or backdoors are present.  All actions are transparent and match the stated purpose of the package.
</details>
<evidence>
</evidence>
<summary>Clean prebuilt binary PKGBUILD from official source.</summary>
</security_assessment>

[3/10] Reviewing src/Shelly-ALPM-3.1.0/Shelly.Ui.Gtk/build.sh, src/Shelly-ALPM-3.1.0/Shelly.Notifications.Zig/update-translations.sh...
+ Reviewed src/Shelly-ALPM-3.1.0/PKGBUILD-bin. Status: SAFE -- Clean prebuilt binary PKGBUILD from official source.
[3/10] Reviewing src/Shelly-ALPM-3.1.0/Shelly.Ui.Gtk/build.sh, src/Shelly-ALPM-3.1.0/Shelly.Notifications.Zig/update-translations.sh, src/Shelly-ALPM-3.1.0/scripts/bump-version.sh...
LLM auditresponse for build.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a straightforward build script for the Shelly project. It builds a Flatpak backend, a CLI, and the UI using Zig's build system. It does not download any external code, execute any obfuscated commands, or perform any suspicious operations. The script only references local directories and standard build commands. The use of `exec` to run the binary after build is a normal convenience feature. No indicators of malicious behavior or supply chain attack are present.
</details>
<evidence></evidence>
<summary>Standard build script, no malicious code.</summary>
</security_assessment>

[3/10] Reviewing src/Shelly-ALPM-3.1.0/Shelly.Ui.Gtk/build.sh, src/Shelly-ALPM-3.1.0/Shelly.Notifications.Zig/update-translations.sh, src/Shelly-ALPM-3.1.0/scripts/bump-version.sh, src/Shelly-ALPM-3.1.0/scripts/check-flatpak-separation.sh...
[4/10] Reviewing src/Shelly-ALPM-3.1.0/Shelly.Notifications.Zig/update-translations.sh, src/Shelly-ALPM-3.1.0/scripts/bump-version.sh, src/Shelly-ALPM-3.1.0/scripts/check-flatpak-separation.sh...
+ Reviewed src/Shelly-ALPM-3.1.0/Shelly.Ui.Gtk/build.sh. Status: SAFE -- Standard build script, no malicious code.
LLM auditresponse for check-flatpak-separation.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This script is a development-time quality assurance (QA) tool that validates the architectural separation between the Shelly CLI and its Flatpak backend. It performs local checks using standard tools (`readelf`, `nm`, `rg`, `bash -n`) on pre-built binaries and source files. It does not download any code, execute remote content, modify system files, or exfiltrate data. The `unset LD_PRELOAD` at the top is a defensive measure against environment-based attacks, which is a good security practice. All operations are confined to reading the repository's own build artifacts and source code. The script is consistent with normal CI/QA validation and poses no supply-chain risk.
</details>
<evidence></evidence>
<summary>Development QA script, no malicious behavior.</summary>
</security_assessment>

[4/10] Reviewing src/Shelly-ALPM-3.1.0/Shelly.Notifications.Zig/update-translations.sh, src/Shelly-ALPM-3.1.0/scripts/bump-version.sh, src/Shelly-ALPM-3.1.0/scripts/check-flatpak-separation.sh, src/Shelly-ALPM-3.1.0/Shelly.Cli.Zig/build.zig...
[5/10] Reviewing src/Shelly-ALPM-3.1.0/Shelly.Notifications.Zig/update-translations.sh, src/Shelly-ALPM-3.1.0/scripts/bump-version.sh, src/Shelly-ALPM-3.1.0/Shelly.Cli.Zig/build.zig...
+ Reviewed src/Shelly-ALPM-3.1.0/scripts/check-flatpak-separation.sh. Status: SAFE -- Development QA script, no malicious behavior.
LLM auditresponse for update-translations.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This script is a standard gettext translation maintenance helper. It extracts translatable strings from Zig source files using `xgettext`, merges the template into existing `.po` files, handles fuzzy entries, optionally compiles `.mo` files, and installs them under standard locale directories (`/usr/share/locale` or a build directory). All external commands invoked are from the standard `gettext` tool suite (`xgettext`, `msgmerge`, `msgfmt`, `msginit`, `msgattrib`). There are no network requests, no downloads, no execution of fetched code, no obfuscation, and no system modifications outside the expected locale paths. The script operates entirely on the package's own source tree and temporary directories. No evidence of supply-chain injection or malicious behavior is present.
</details>
<evidence></evidence>
<summary>Standard translation maintenance script, no security issues.</summary>
</security_assessment>

[6/10] Reviewing src/Shelly-ALPM-3.1.0/scripts/bump-version.sh, src/Shelly-ALPM-3.1.0/Shelly.Cli.Zig/build.zig...
+ Reviewed src/Shelly-ALPM-3.1.0/Shelly.Notifications.Zig/update-translations.sh. Status: SAFE -- Standard translation maintenance script, no security issues.
[6/10] Reviewing src/Shelly-ALPM-3.1.0/scripts/bump-version.sh, src/Shelly-ALPM-3.1.0/Shelly.Cli.Zig/build.zig, src/Shelly-ALPM-3.1.0/shellybuild.conf...
LLM auditresponse for build.zig:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard Zig build script (`build.zig`) for the Shelly project. It defines build options, imports a dependency (`zigalpm`), creates a module, compiles an executable, and sets up test and run steps. No suspicious network requests, obfuscated code, dangerous command execution, or data exfiltration are present. The script follows normal Zig packaging practices and does not contain any supply-chain attack indicators.
</details>
<evidence></evidence>
<summary>Standard Zig build script; no malicious content.</summary>
</security_assessment>

[7/10] Reviewing src/Shelly-ALPM-3.1.0/scripts/bump-version.sh, src/Shelly-ALPM-3.1.0/shellybuild.conf...
+ Reviewed src/Shelly-ALPM-3.1.0/Shelly.Cli.Zig/build.zig. Status: SAFE -- Standard Zig build script; no malicious content.
[7/10] Reviewing src/Shelly-ALPM-3.1.0/scripts/bump-version.sh, src/Shelly-ALPM-3.1.0/shellybuild.conf, src/Shelly-ALPM-3.1.0/.github/workflows/build-and-publish.yml...
LLM auditresponse for build-and-publish.yml:
<security_assessment>
<decision>SAFE</decision>
<details>
This GitHub Actions workflow file defines CI jobs for building and testing the shelly package components. All operations are standard: checking out code, installing dependencies via `pacman`, and running `zig build` and tests. There are no suspicious network requests, obfuscated commands, data exfiltration, or execution of untrusted code. The file is an upstream CI configuration that only runs on GitHub's infrastructure and does not affect the AUR package build on a user's machine.
</details>
<evidence>
</evidence>
<summary>Standard CI workflow, no security issues.</summary>
</security_assessment>

[8/10] Reviewing src/Shelly-ALPM-3.1.0/scripts/bump-version.sh, src/Shelly-ALPM-3.1.0/shellybuild.conf...
+ Reviewed src/Shelly-ALPM-3.1.0/.github/workflows/build-and-publish.yml. Status: SAFE -- Standard CI workflow, no security issues.
LLM auditresponse for bump-version.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
The script is a standard version-bumping helper used by the package maintainer. It only edits version strings in `build.zig.zon` and `PKGBUILD*` files using `sed -i`. There is no network activity, no execution of downloaded code, no obfuscation, no exfiltration of data, and no system modifications beyond the package's own source files. All operations are local and transparent. The script includes safety features like `--dry-run` and validation of the new version format. No evidence of supply-chain compromise.
</details>
<evidence></evidence>
<summary>Legitimate version-bumping script, no malicious code.</summary>
</security_assessment>

[9/10] Reviewing src/Shelly-ALPM-3.1.0/shellybuild.conf...
+ Reviewed src/Shelly-ALPM-3.1.0/scripts/bump-version.sh. Status: SAFE -- Legitimate version-bumping script, no malicious code.
LLM auditresponse for shellybuild.conf:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `shellybuild.conf` is a standard configuration file for Shelly's in-process AUR builder. It contains only comments and commented-out option definitions with default values. There is no executable code, no network requests, no obfuscation, and no system modification logic. The file is inert and purely informational, providing users with a template for overriding default build settings. No security issues are present.
</details>
<evidence></evidence>
<summary>Inert configuration file with no security issues.</summary>
</security_assessment>

[10/10] Reviewing ...
+ Reviewed src/Shelly-ALPM-3.1.0/shellybuild.conf. Status: SAFE -- Inert configuration file with no security issues.
Reviewed all additional files.
Reviewed additional files.
Audit complete! Result: No issues found
(Skipped 1 file: shelly-3.1.0.tar.gz)

API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 57,255
  Completion Tokens: 9,057
  Total Tokens: 66,312
  Total Cost: $0.006225
  Execution Time: 134.89 seconds

Final Status: SAFE


No issues found.


Audit Skips:

shelly-3.1.0.tar.gz: [SKIPPED] Skipping binary file: shelly-3.1.0.tar.gz
