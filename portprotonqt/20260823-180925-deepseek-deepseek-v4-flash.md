---
package: portprotonqt
pkgver: 1.4.0
pkgrel: 1
result: unsafe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: fe97f45c52ce35303ffaaa9e3aab59c432e69008
prompt_tokens: 39077
completion_tokens: 11251
total_tokens: 50328
cost: 0.00300874994
execution_time: 148.85
files_reviewed: 11
files_skipped: 0
files_unauditable: 20
unpinned_sources: 0
date: 2026-08-23T18:09:24Z
file_verdicts:
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD, no security concerns.
  - file: src/PortProtonQt/meson.build
    status: safe
    summary: Legitimate build configuration; no security threats.
  - file: src/PortProtonQt/install.sh
    status: safe
    summary: Standard installer, no malicious behavior detected.
  - file: src/PortProtonQt/build-aux/AppImage/portprotonqt-appimage.sh
    status: safe
    summary: AppImage build script, downloads helper tool, no malicious behavior.
  - file: src/PortProtonQt/Install_PortProtonQt.desktop
    status: unsafe
    summary: Downloads and executes remote script without integrity check.
    evidence: "Exec=sh -c \"(curl -fsSL https://git.linux-gaming.ru/Linux-Gaming/PortProtonQt/raw/branch/main/install.sh || curl -fsSL https://raw.githubusercontent.com/linux-gaming-ru/PortProtonQt/main/install.sh) | sh\""
    evidence_line: 7
  - file: src/PortProtonQt/build-aux/PKGBUILD
    status: safe
    summary: Standard PKGBUILD with no malicious indicators.
  - file: src/PortProtonQt/build-aux/share/applications/ru.linux_gaming.PortProtonQt.log.desktop
    status: safe
    summary: Standard .desktop file, no security issues.
  - file: src/PortProtonQt/build-aux/share/applications/ru.linux_gaming.PortProtonQt.desktop
    status: safe
    summary: Standard desktop entry file, no security issues.
  - file: src/PortProtonQt/build-aux/share/applications/ru.linux_gaming.PortProtonQt.silent.desktop
    status: safe
    summary: Standard desktop entry file, no security issues.
  - file: src/PortProtonQt/build-aux/AppImage/get-dependencies.sh
    status: unsafe
    summary: Downloads and runs external script without verification.
    evidence: "wget --retry-connrefused --tries=30 \"$EXTRA_PACKAGES\" -O ./get-debloated-pkgs.sh\nchmod +x ./get-debloated-pkgs.sh\n./get-debloated-pkgs.sh --add-common --prefer-nano"
    evidence_line: 107
  - file: src/PortProtonQt/portprotonqt/appimage_updater.py
    status: safe
    summary: Benign AppImage updater with expected network and file operations.
---

Cloning https://aur.archlinux.org/portprotonqt.git...
Cloned portprotonqt
Analyzing portprotonqt AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only variable definitions in the global scope (pkgname, pkgver, pkgrel, etc.) and does not define a `pkgver()` function. No code is executed during sourcing of the PKGBUILD or during the `makepkg --printsrcinfo` command. The source is a git repository from the project's official upstream, which is standard. There are no suspicious commands, obfuscated payloads, or attempts to exfiltrate data in the scopes that are executed during `makepkg --nobuild --nodeps --noprepare`. The build and package functions are not run due to the `--nobuild` and `--noprepare` flags, so any code there is out of scope for this gate.
</details>
<evidence></evidence>
<summary>No dangerous code in global scope or pkgver().</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous code in global scope or pkgver().
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Running makepkg --printsrcinfo to get source files for agent...
makepkg --printsrcinfo successful
Reviewing required files...
[0/1] Reviewing PKGBUILD...
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard Arch packaging practices. The source is pinned to a tagged commit from the project's own Git repository, with a checksum provided. The `build()` and `package()` functions use standard Meson operations and install generated completion scripts from the upstream source. All dependencies are legitimate libraries and tools needed by the application. There is no obfuscated code, unexpected network requests, or suspicious file operations beyond normal build and install steps.
</details>
<evidence></evidence>
<summary>Standard AUR PKGBUILD, no security concerns.</summary>
</security_assessment>

[1/1] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD, no security concerns.
Reviewed all required files.
Deciding which files to review next...
Note: 20 compiled/archived file(s) cannot be audited as text and were not reviewed (src/PortProtonQt/build-aux/bin/vk_gpu_info, src/PortProtonQt/build-aux/lib/libportprotonqt_gamepad.so, src/PortProtonQt/build-aux/share/portproton/scripts/portwine_db/JumpinJack.exe.ppdb and 17 more). For a package that ships prebuilt binaries, the audit covers the packaging, not the payload.
Note: 488 files available for selection; offering the 50 highest-priority to the model. 397 lower-priority file(s) were not offered.
LLM response for file selection:
src/PortProtonQt/install.sh
src/PortProtonQt/meson.build
src/PortProtonQt/build-aux/AppImage/get-dependencies.sh
src/PortProtonQt/build-aux/AppImage/portprotonqt-appimage.sh
src/PortProtonQt/build-aux/PKGBUILD
src/PortProtonQt/Install_PortProtonQt.desktop
src/PortProtonQt/build-aux/share/applications/ru.linux_gaming.PortProtonQt.desktop
src/PortProtonQt/build-aux/share/applications/ru.linux_gaming.PortProtonQt.log.desktop
src/PortProtonQt/build-aux/share/applications/ru.linux_gaming.PortProtonQt.silent.desktop
src/PortProtonQt/portprotonqt/appimage_updater.py
Decided to review 10 additional files: src/PortProtonQt/install.sh, src/PortProtonQt/meson.build, src/PortProtonQt/build-aux/AppImage/get-dependencies.sh, src/PortProtonQt/build-aux/AppImage/portprotonqt-appimage.sh, src/PortProtonQt/build-aux/PKGBUILD, src/PortProtonQt/Install_PortProtonQt.desktop, src/PortProtonQt/build-aux/share/applications/ru.linux_gaming.PortProtonQt.desktop, src/PortProtonQt/build-aux/share/applications/ru.linux_gaming.PortProtonQt.log.desktop, src/PortProtonQt/build-aux/share/applications/ru.linux_gaming.PortProtonQt.silent.desktop, src/PortProtonQt/portprotonqt/appimage_updater.py
Reviewing additional files...
Reviewing additional files...
[0/10] Reviewing src/PortProtonQt/install.sh...
[0/10] Reviewing src/PortProtonQt/install.sh, src/PortProtonQt/meson.build...
[0/10] Reviewing src/PortProtonQt/install.sh, src/PortProtonQt/meson.build, src/PortProtonQt/build-aux/AppImage/get-dependencies.sh...
LLM auditresponse for meson.build:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard Meson build configuration for the PortProtonQt application. It defines project metadata, locates Python and C dependencies, compiles a small native executable (`vk_gpu_info`), and installs Python packages, scripts, desktop files, icons, MIME types, udev rules, polkit rules, and sysusers configuration. All operations are typical for a packaging build system: no network requests, no obfuscated commands, no downloads of external code, and no execution of untrusted content at build time. The udev, polkit, and sysusers files are installed to support the application's runtime functionality, which is expected and not malicious. There are no signs of injected malice or supply-chain attack.</details>
<evidence></evidence>
<summary>Legitimate build configuration; no security threats.</summary>
</security_assessment>

[0/10] Reviewing src/PortProtonQt/install.sh, src/PortProtonQt/meson.build, src/PortProtonQt/build-aux/AppImage/get-dependencies.sh, src/PortProtonQt/build-aux/AppImage/portprotonqt-appimage.sh...
[1/10] Reviewing src/PortProtonQt/install.sh, src/PortProtonQt/build-aux/AppImage/get-dependencies.sh, src/PortProtonQt/build-aux/AppImage/portprotonqt-appimage.sh...
+ Reviewed src/PortProtonQt/meson.build. Status: SAFE -- Legitimate build configuration; no security threats.
LLM auditresponse for install.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
The install.sh script is a standard installer for the PortProtonQt application. It downloads the latest AppImage from the project's official Git repository (linux-gaming.ru Gitea or GitHub fallback) for the appropriate architecture, makes it executable, and runs it with an environment variable to trigger integration. The script includes basic error handling (checking for curl and mktemp, cleaning up the temporary file on exit). There is no obfuscation, no unexpected network destinations (the URLs are the project's own release APIs), no exfiltration of local data, no backdoors, and no system modifications beyond running the downloaded AppImage with the provided integration flag. This is normal, expected behavior for an installer of an AppImage-based application and does not constitute a supply-chain attack.
</details>
<evidence>
</evidence>
<summary>Standard installer, no malicious behavior detected.</summary>
</security_assessment>

[1/10] Reviewing src/PortProtonQt/install.sh, src/PortProtonQt/build-aux/AppImage/get-dependencies.sh, src/PortProtonQt/build-aux/AppImage/portprotonqt-appimage.sh, src/PortProtonQt/build-aux/PKGBUILD...
[2/10] Reviewing src/PortProtonQt/build-aux/AppImage/get-dependencies.sh, src/PortProtonQt/build-aux/AppImage/portprotonqt-appimage.sh, src/PortProtonQt/build-aux/PKGBUILD...
+ Reviewed src/PortProtonQt/install.sh. Status: SAFE -- Standard installer, no malicious behavior detected.
LLM auditresponse for portprotonqt-appimage.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a build script used to create an AppImage of PortProtonQt. It downloads a helper script (`quick-sharun`) from a GitHub repository, removes some system packages to slim down the image, bundles dependencies (Qt, Python, udev rules), and finally creates the AppImage. The downloaded script is a utility for bundling shared libraries into an AppDir, which is standard practice for AppImage creation.

While the script fetches an external resource from a mutable branch (main) without any checksum verification, this is a build-time dependency and not executed on end-user systems. The lack of pinning is a supply-chain hygiene concern, not evidence of malice. There is no obfuscation, no exfiltration of data, no backdoors, and no unexpected system modifications beyond what is necessary to produce the AppImage. The file does not contain any code that would be considered genuinely malicious under the provided guidelines.
</details>
<evidence></evidence>
<summary>AppImage build script, downloads helper tool, no malicious behavior.</summary>
</security_assessment>

[2/10] Reviewing src/PortProtonQt/build-aux/AppImage/get-dependencies.sh, src/PortProtonQt/build-aux/AppImage/portprotonqt-appimage.sh, src/PortProtonQt/build-aux/PKGBUILD, src/PortProtonQt/Install_PortProtonQt.desktop...
[3/10] Reviewing src/PortProtonQt/build-aux/AppImage/get-dependencies.sh, src/PortProtonQt/build-aux/PKGBUILD, src/PortProtonQt/Install_PortProtonQt.desktop...
+ Reviewed src/PortProtonQt/build-aux/AppImage/portprotonqt-appimage.sh. Status: SAFE -- AppImage build script, downloads helper tool, no malicious behavior.
LLM auditresponse for Install_PortProtonQt.desktop:
<security_assessment>
<decision>UNSAFE</decision>
<details>
The file `Install_PortProtonQt.desktop` contains an `Exec` line that downloads a shell script from two remote URLs (the project's own upstream repositories) and pipes it directly into `sh` for execution. This is a classic "curl | sh" pattern that executes arbitrary code from the internet with no integrity verification (no checksum, no signature). Even though the URLs point to the project&#x27;s own official repository, distributing such a launcher as part of an AUR package introduces a critical supply-chain risk: an attacker who compromises the upstream repository (or any intermediate CDN or DNS) can replace `install.sh` with malicious code, and any user who runs this launcher will execute that code without warning. This practice deviates from standard packaging hygiene and constitutes a genuinely dangerous behavior, not merely an imperfect or unpinned source.
</details>
<evidence>
Exec=sh -c &quot;(curl -fsSL https://git.linux-gaming.ru/Linux-Gaming/PortProtonQt/raw/branch/main/install.sh || curl -fsSL https://raw.githubusercontent.com/linux-gaming-ru/PortProtonQt/main/install.sh) | sh&quot;
</evidence>
<summary>Downloads and executes remote script without integrity check.</summary>
</security_assessment>

[3/10] Reviewing src/PortProtonQt/build-aux/AppImage/get-dependencies.sh, src/PortProtonQt/build-aux/PKGBUILD, src/PortProtonQt/Install_PortProtonQt.desktop, src/PortProtonQt/build-aux/share/applications/ru.linux_gaming.PortProtonQt.desktop...
[4/10] Reviewing src/PortProtonQt/build-aux/AppImage/get-dependencies.sh, src/PortProtonQt/build-aux/PKGBUILD, src/PortProtonQt/build-aux/share/applications/ru.linux_gaming.PortProtonQt.desktop...
x Reviewed src/PortProtonQt/Install_PortProtonQt.desktop. Status: UNSAFE -- Downloads and executes remote script without integrity check.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard AUR packaging practices. It clones the upstream repository from the project&#39;s official GitLab instance using a tagged release, which is expected. The build uses meson/ninja, and the package function installs files and generates shell completions from an upstream script. There are no unexpected network requests, obfuscated code, backdoors, or exfiltration attempts. The use of `bash "$srcdir/PortProtonQt/dev-scripts/generate-completions.sh"` is part of the upstream build helper and serves the legitimate purpose of generating bash-completion files. No malicious behavior is present.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD with no malicious indicators.</summary>
</security_assessment>

[5/10] Reviewing src/PortProtonQt/build-aux/AppImage/get-dependencies.sh, src/PortProtonQt/build-aux/share/applications/ru.linux_gaming.PortProtonQt.desktop...
+ Reviewed src/PortProtonQt/build-aux/PKGBUILD. Status: SAFE -- Standard PKGBUILD with no malicious indicators.
[5/10] Reviewing src/PortProtonQt/build-aux/AppImage/get-dependencies.sh, src/PortProtonQt/build-aux/share/applications/ru.linux_gaming.PortProtonQt.desktop, src/PortProtonQt/build-aux/share/applications/ru.linux_gaming.PortProtonQt.log.desktop...
LLM auditresponse for ru.linux_gaming.PortProtonQt.log.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard freedesktop.org .desktop entry for launching PortProtonQt with logging enabled. It contains metadata (Name, Comment in multiple languages), an Exec line that runs `portprotonqt --log %u` (where `%u` is a handled URL/file argument), and standard fields like Type, Icon, Categories, MimeType, and NoDisplay=true. There is no embedded code, no network requests, no obfuscation, and no system modifications beyond what a normal application launcher does. The content is entirely declarative and poses no security risk.
</details>
<evidence>
</evidence>
<summary>Standard .desktop file, no security issues.</summary>
</security_assessment>

[5/10] Reviewing src/PortProtonQt/build-aux/AppImage/get-dependencies.sh, src/PortProtonQt/build-aux/share/applications/ru.linux_gaming.PortProtonQt.desktop, src/PortProtonQt/build-aux/share/applications/ru.linux_gaming.PortProtonQt.log.desktop, src/PortProtonQt/build-aux/share/applications/ru.linux_gaming.PortProtonQt.silent.desktop...
[6/10] Reviewing src/PortProtonQt/build-aux/AppImage/get-dependencies.sh, src/PortProtonQt/build-aux/share/applications/ru.linux_gaming.PortProtonQt.desktop, src/PortProtonQt/build-aux/share/applications/ru.linux_gaming.PortProtonQt.silent.desktop...
+ Reviewed src/PortProtonQt/build-aux/share/applications/ru.linux_gaming.PortProtonQt.log.desktop. Status: SAFE -- Standard .desktop file, no security issues.
LLM auditresponse for ru.linux_gaming.PortProtonQt.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard freedesktop.org `.desktop` file that declares metadata for the PortProtonQt application. It defines the application name, executable (`portprotonqt %u`), supported MIME types (including Windows executable formats, which is expected for a Wine/proton compatibility layer like PortProton), icon, categories, and localization strings. There is no code execution beyond the declared `Exec` line, no network requests, no obfuscation, and no file operations. The content is purely declarative and follows standard packaging practices.
</details>
<evidence></evidence>
<summary>Standard desktop entry file, no security issues.</summary>
</security_assessment>

[6/10] Reviewing src/PortProtonQt/build-aux/AppImage/get-dependencies.sh, src/PortProtonQt/build-aux/share/applications/ru.linux_gaming.PortProtonQt.desktop, src/PortProtonQt/build-aux/share/applications/ru.linux_gaming.PortProtonQt.silent.desktop, src/PortProtonQt/portprotonqt/appimage_updater.py...
[7/10] Reviewing src/PortProtonQt/build-aux/AppImage/get-dependencies.sh, src/PortProtonQt/build-aux/share/applications/ru.linux_gaming.PortProtonQt.silent.desktop, src/PortProtonQt/portprotonqt/appimage_updater.py...
+ Reviewed src/PortProtonQt/build-aux/share/applications/ru.linux_gaming.PortProtonQt.desktop. Status: SAFE -- Standard desktop entry file, no security issues.
LLM auditresponse for ru.linux_gaming.PortProtonQt.silent.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard Freedesktop.org `.desktop` file defining an application launcher entry for the PortProtonQt application in silent mode. It includes localized names, comments, and a mime type association for Windows executables. The `Exec` line simply invokes the application binary with the `--silent` flag and passes a URL. There is no embedded code, no network requests, no obfuscation, no file operations, and no deviation from normal packaging practices. The file is purely declarative and poses no security risk.
</details>
<evidence>
</evidence>
<summary>Standard desktop entry file, no security issues.</summary>
</security_assessment>

[8/10] Reviewing src/PortProtonQt/build-aux/AppImage/get-dependencies.sh, src/PortProtonQt/portprotonqt/appimage_updater.py...
+ Reviewed src/PortProtonQt/build-aux/share/applications/ru.linux_gaming.PortProtonQt.silent.desktop. Status: SAFE -- Standard desktop entry file, no security issues.
LLM auditresponse for get-dependencies.sh:
<security_assessment>
<decision>UNSAFE</decision>
<details>
The script downloads and executes an external shell script from a third-party host (`raw.githubusercontent.com/pkgforge-dev/Anylinux-AppImages/...`) without any checksum verification or pinning. This is a classic supply-chain attack vector: an attacker who compromises that repository could replace the script with malicious code, which is then run with full root privileges via `chmod +x` and direct execution. The script also performs invasive system modifications (`/usr/bin/makepkg`, `/etc/pacman.conf`, `/usr/share/makepkg/lint_pkgbuild/arch.sh`) to bypass normal packaging safeguards, increasing the risk surface. While the intent may be AppImage build automation, the pattern of fetching unverified code from an unrelated external source and executing it makes this file unsafe.
</details>
<evidence>
wget --retry-connrefused --tries=30 "$EXTRA_PACKAGES" -O ./get-debloated-pkgs.sh
chmod +x ./get-debloated-pkgs.sh
./get-debloated-pkgs.sh --add-common --prefer-nano
</evidence>
<summary>Downloads and runs external script without verification.</summary>
</security_assessment>

[9/10] Reviewing src/PortProtonQt/portprotonqt/appimage_updater.py...
x Reviewed src/PortProtonQt/build-aux/AppImage/get-dependencies.sh. Status: UNSAFE -- Downloads and runs external script without verification.
LLM auditresponse for appimage_updater.py:
<security_assessment>
<decision>SAFE</decision>
<details>
This file implements an AppImage self-updater for PortProtonQt. It downloads the `appimageupdatetool` binary from the official [pkgforge-dev/AppImageUpdate](https://github.com/pkgforge-dev/AppImageUpdate) GitHub releases (`https://github.com/pkgforge-dev/AppImageUpdate/releases/latest/download/appimageupdate-{arch}-linux`), fetches changelogs from the project's own repositories, and uses the update tool to check for and apply AppImage updates. The URL for the tool can be overridden via an environment variable (`APPIMAGEUPDATETOOL_LINK`), but the default is pinned to a trusted upstream source.  

All network requests target the project's own infrastructure (GitHub, git.linux-gaming.ru), which is expected and necessary for its stated purpose. There is no obfuscation, no encoded/decoded commands, no data exfiltration, and no execution of untrusted code beyond the updater itself. The code performs standard file operations (download, chmod, replace) and uses `subprocess` to run the updater tool with captured output and PTY-based progress parsing. No signs of supply-chain injection or malicious intent were found.
</details>
<evidence></evidence>
<summary>Benign AppImage updater with expected network and file operations.</summary>
</security_assessment>

[10/10] Reviewing ...
+ Reviewed src/PortProtonQt/portprotonqt/appimage_updater.py. Status: SAFE -- Benign AppImage updater with expected network and file operations.
Reviewed all additional files.
Reviewed additional files.
Audit complete! Result: Unsafe -- DO NOT INSTALL!
# Issues (2 total)

## src/PortProtonQt/Install_PortProtonQt.desktop

Status: UNSAFE

Summary: Downloads and executes remote script without integrity check.

Evidence (line 7):

```
Exec=sh -c "(curl -fsSL https://git.linux-gaming.ru/Linux-Gaming/PortProtonQt/raw/branch/main/install.sh || curl -fsSL https://raw.githubusercontent.com/linux-gaming-ru/PortProtonQt/main/install.sh) | sh"
```

Details:

The file `Install_PortProtonQt.desktop` contains an `Exec` line that downloads a shell script from two remote URLs (the project's own upstream repositories) and pipes it directly into `sh` for execution. This is a classic "curl | sh" pattern that executes arbitrary code from the internet with no integrity verification (no checksum, no signature). Even though the URLs point to the project&#x27;s own official repository, distributing such a launcher as part of an AUR package introduces a critical supply-chain risk: an attacker who compromises the upstream repository (or any intermediate CDN or DNS) can replace `install.sh` with malicious code, and any user who runs this launcher will execute that code without warning. This practice deviates from standard packaging hygiene and constitutes a genuinely dangerous behavior, not merely an imperfect or unpinned source.

---

## src/PortProtonQt/build-aux/AppImage/get-dependencies.sh

Status: UNSAFE

Summary: Downloads and runs external script without verification.

Evidence (line 107):

```
wget --retry-connrefused --tries=30 "$EXTRA_PACKAGES" -O ./get-debloated-pkgs.sh
chmod +x ./get-debloated-pkgs.sh
./get-debloated-pkgs.sh --add-common --prefer-nano
```

Details:

The script downloads and executes an external shell script from a third-party host (`raw.githubusercontent.com/pkgforge-dev/Anylinux-AppImages/...`) without any checksum verification or pinning. This is a classic supply-chain attack vector: an attacker who compromises that repository could replace the script with malicious code, which is then run with full root privileges via `chmod +x` and direct execution. The script also performs invasive system modifications (`/usr/bin/makepkg`, `/etc/pacman.conf`, `/usr/share/makepkg/lint_pkgbuild/arch.sh`) to bypass normal packaging safeguards, increasing the risk surface. While the intent may be AppImage build automation, the pattern of fetching unverified code from an unrelated external source and executing it makes this file unsafe.

---

API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 39,077
  Completion Tokens: 11,251
  Total Tokens: 50,328
  Total Cost: $0.003009
  Execution Time: 148.85 seconds

Final Status: UNSAFE


Issues Found:

src/PortProtonQt/Install_PortProtonQt.desktop: [UNSAFE] Downloads and executes remote script without integrity check. / The file `Install_PortProtonQt.desktop` contains an `Exec` line that downloads a shell script from two remote URLs (the project's own upstream repositories) and pipes it directly into `sh` for execution. This is a classic "curl | sh" pattern that executes arbitrary code from the internet with no integrity verification (no checksum, no signature). Even though the URLs point to the project&#x27;s own official repository, distributing such a launcher as part of an AUR package introduces a critical supply-chain risk: an attacker who compromises the upstream repository (or any intermediate CDN or DNS) can replace `install.sh` with malicious code, and any user who runs this launcher will execute that code without warning. This practice deviates from standard packaging hygiene and constitutes a genuinely dangerous behavior, not merely an imperfect or unpinned source.

src/PortProtonQt/build-aux/AppImage/get-dependencies.sh: [UNSAFE] Downloads and runs external script without verification. / The script downloads and executes an external shell script from a third-party host (`raw.githubusercontent.com/pkgforge-dev/Anylinux-AppImages/...`) without any checksum verification or pinning. This is a classic supply-chain attack vector: an attacker who compromises that repository could replace the script with malicious code, which is then run with full root privileges via `chmod +x` and direct execution. The script also performs invasive system modifications (`/usr/bin/makepkg`, `/etc/pacman.conf`, `/usr/share/makepkg/lint_pkgbuild/arch.sh`) to bypass normal packaging safeguards, increasing the risk surface. While the intent may be AppImage build automation, the pattern of fetching unverified code from an unrelated external source and executing it makes this file unsafe.
