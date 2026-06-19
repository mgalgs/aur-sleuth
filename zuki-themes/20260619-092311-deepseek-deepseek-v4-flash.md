---
package: zuki-themes
pkgver: 4.0
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: openrouter.ai
base_url: https://openrouter.ai/api/v1
aur_sleuth_rev: 11c93a0c95e2166961e3664fea6b5a63827ded10
prompt_tokens: 30850
completion_tokens: 7180
total_tokens: 38030
cost: 0.00406890
execution_time: 67.47
files_reviewed: 11
files_skipped: 1
date: 2026-06-19T09:23:11Z
file_verdicts:
  - file: zuki-themes-4.0.tar.gz
    status: skipped
    summary: "Skipping binary file: zuki-themes-4.0.tar.gz"
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD with pinned source and checksum, no malicious code.
  - file: src/zuki-themes-4.0/gitpush.sh
    status: safe
    summary: Benign maintainer git helper script, no security issues.
  - file: src/zuki-themes-4.0/gtk/src/Zukitre-dark/gtk-3.0/install-dark-theme.sh
    status: safe
    summary: Standard theme install script, no security issues.
  - file: src/zuki-themes-4.0/gnome-shell/src/gnome-shell-high-contrast.scss
    status: safe
    summary: Standard SCSS theme file, no security issues.
  - file: src/zuki-themes-4.0/gnome-shell/src/gnome-shell-sass/_colors.scss
    status: safe
    summary: Pure SCSS color definitions; no executable or malicious content.
  - file: src/zuki-themes-4.0/gnome-shell/src/gnome-shell-sass/_drawing.scss
    status: safe
    summary: Safe SCSS theme drawing mixins, no malicious content.
  - file: src/zuki-themes-4.0/gnome-shell/src/gnome-shell-sass/_common.scss
    status: safe
    summary: No malicious code; standard SCSS theme definition.
  - file: src/zuki-themes-4.0/gnome-shell/meson.build
    status: safe
    summary: Standard build file with no security issues.
  - file: src/zuki-themes-4.0/gnome-shell/src/parse-sass.sh
    status: safe
    summary: Standard SCSS compilation script, no security concerns.
  - file: src/zuki-themes-4.0/gtk/src/Zukitwo/gtk-3.0/install-zukitwo.sh
    status: safe
    summary: Symlink installation script; no malicious activity.
  - file: src/zuki-themes-4.0/gtk/src/Zukitre-dark/gtk-2.0/render-assets.sh
    status: safe
    summary: Standard asset rendering script, no security issues.
---

Cloning https://aur.archlinux.org/zuki-themes.git to /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-8_nkq4iw...
Cloned repository to /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-8_nkq4iw
Analyzing zuki-themes AUR package (working in /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-8_nkq4iw) with deepseek/deepseek-v4-flash from https://openrouter.ai/api/v1
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD is a standard AUR package file for the zuki-themes project. It defines a source tarball from the official GitHub release (`https://github.com/lassekongo83/zuki-themes/archive/v4.0.tar.gz`) with a valid SHA256 checksum. No top-level command substitutions, `pkgver()` function, or other code that executes during sourcing is present. The `build()` and `package()` functions are only invoked during later stages that are skipped by the `--nobuild --nodeps --noprepare` flags. Fetching the source and sourcing the PKGBUILD pose no security risk.
</details>
<summary>Standard PKGBUILD with safe source fetch.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete [grey50]-- Standard PKGBUILD with safe source fetch.[/]
Running makepkg --nobuild --nodeps --noprepare to download sources for agent...
makepkg --nobuild --nodeps --noprepare successful
Running makepkg --printsrcinfo to get source files for agent...
makepkg --printsrcinfo successful
Reviewing required files...
[0/2] Reviewing PKGBUILD...
[0/2] Reviewing PKGBUILD, zuki-themes-4.0.tar.gz...
[1/2] Reviewing PKGBUILD...
! Reviewed zuki-themes-4.0.tar.gz. Status: SKIPPED -- Skipping binary file: zuki-themes-4.0.tar.gz
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard AUR packaging practices. The source is fetched from the official GitHub release tarball with a pinned version and a valid SHA-256 checksum. Build and package steps use meson/ninja with standard options. There are no suspicious commands, network requests to unexpected hosts, obfuscated code, or file operations outside the expected build/install path. All dependencies are listed and reasonable. No evidence of supply-chain attack or malicious injection.
</details>
<summary>Standard PKGBUILD with pinned source and checksum, no malicious code.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD with pinned source and checksum, no malicious code.
Reviewed all required files.
Deciding which files to review next...
Note: 145 files available for selection; offering the 50 highest-priority to the model. 22 lower-priority file(s) were not offered.
LLM response for file selection:
src/zuki-themes-4.0/gitpush.sh
src/zuki-themes-4.0/gnome-shell/meson.build
src/zuki-themes-4.0/gnome-shell/src/parse-sass.sh
src/zuki-themes-4.0/gtk/src/Zukitre-dark/gtk-2.0/render-assets.sh
src/zuki-themes-4.0/gtk/src/Zukitre-dark/gtk-3.0/install-dark-theme.sh
src/zuki-themes-4.0/gtk/src/Zukitwo/gtk-3.0/install-zukitwo.sh
src/zuki-themes-4.0/gnome-shell/src/gnome-shell-high-contrast.scss
src/zuki-themes-4.0/gnome-shell/src/gnome-shell-sass/_colors.scss
src/zuki-themes-4.0/gnome-shell/src/gnome-shell-sass/_common.scss
src/zuki-themes-4.0/gnome-shell/src/gnome-shell-sass/_drawing.scss
Decided to review 10 additional files: src/zuki-themes-4.0/gitpush.sh, src/zuki-themes-4.0/gnome-shell/meson.build, src/zuki-themes-4.0/gnome-shell/src/parse-sass.sh, src/zuki-themes-4.0/gtk/src/Zukitre-dark/gtk-2.0/render-assets.sh, src/zuki-themes-4.0/gtk/src/Zukitre-dark/gtk-3.0/install-dark-theme.sh, src/zuki-themes-4.0/gtk/src/Zukitwo/gtk-3.0/install-zukitwo.sh, src/zuki-themes-4.0/gnome-shell/src/gnome-shell-high-contrast.scss, src/zuki-themes-4.0/gnome-shell/src/gnome-shell-sass/_colors.scss, src/zuki-themes-4.0/gnome-shell/src/gnome-shell-sass/_common.scss, src/zuki-themes-4.0/gnome-shell/src/gnome-shell-sass/_drawing.scss
Reviewing additional files...
Reviewing additional files...
[0/10] Reviewing src/zuki-themes-4.0/gnome-shell/meson.build...
[0/10] Reviewing src/zuki-themes-4.0/gnome-shell/meson.build, src/zuki-themes-4.0/gitpush.sh...
[0/10] Reviewing src/zuki-themes-4.0/gnome-shell/meson.build, src/zuki-themes-4.0/gitpush.sh, src/zuki-themes-4.0/gnome-shell/src/parse-sass.sh...
[0/10] Reviewing src/zuki-themes-4.0/gnome-shell/meson.build, src/zuki-themes-4.0/gitpush.sh, src/zuki-themes-4.0/gnome-shell/src/parse-sass.sh, src/zuki-themes-4.0/gtk/src/Zukitre-dark/gtk-2.0/render-assets.sh...
[0/10] Reviewing src/zuki-themes-4.0/gnome-shell/meson.build, src/zuki-themes-4.0/gitpush.sh, src/zuki-themes-4.0/gnome-shell/src/parse-sass.sh, src/zuki-themes-4.0/gtk/src/Zukitre-dark/gtk-2.0/render-assets.sh, src/zuki-themes-4.0/gnome-shell/src/gnome-shell-high-contrast.scss...
[0/10] Reviewing src/zuki-themes-4.0/gnome-shell/meson.build, src/zuki-themes-4.0/gitpush.sh, src/zuki-themes-4.0/gnome-shell/src/parse-sass.sh, src/zuki-themes-4.0/gtk/src/Zukitre-dark/gtk-2.0/render-assets.sh, src/zuki-themes-4.0/gnome-shell/src/gnome-shell-high-contrast.scss, src/zuki-themes-4.0/gnome-shell/src/gnome-shell-sass/_colors.scss...
[0/10] Reviewing src/zuki-themes-4.0/gnome-shell/meson.build, src/zuki-themes-4.0/gitpush.sh, src/zuki-themes-4.0/gnome-shell/src/parse-sass.sh, src/zuki-themes-4.0/gtk/src/Zukitre-dark/gtk-2.0/render-assets.sh, src/zuki-themes-4.0/gnome-shell/src/gnome-shell-high-contrast.scss, src/zuki-themes-4.0/gnome-shell/src/gnome-shell-sass/_colors.scss, src/zuki-themes-4.0/gtk/src/Zukitwo/gtk-3.0/install-zukitwo.sh...
[0/10] Reviewing src/zuki-themes-4.0/gnome-shell/meson.build, src/zuki-themes-4.0/gitpush.sh, src/zuki-themes-4.0/gnome-shell/src/parse-sass.sh, src/zuki-themes-4.0/gtk/src/Zukitre-dark/gtk-2.0/render-assets.sh, src/zuki-themes-4.0/gnome-shell/src/gnome-shell-high-contrast.scss, src/zuki-themes-4.0/gnome-shell/src/gnome-shell-sass/_colors.scss, src/zuki-themes-4.0/gtk/src/Zukitwo/gtk-3.0/install-zukitwo.sh, src/zuki-themes-4.0/gtk/src/Zukitre-dark/gtk-3.0/install-dark-theme.sh...
[0/10] Reviewing src/zuki-themes-4.0/gnome-shell/meson.build, src/zuki-themes-4.0/gitpush.sh, src/zuki-themes-4.0/gnome-shell/src/parse-sass.sh, src/zuki-themes-4.0/gtk/src/Zukitre-dark/gtk-2.0/render-assets.sh, src/zuki-themes-4.0/gnome-shell/src/gnome-shell-high-contrast.scss, src/zuki-themes-4.0/gnome-shell/src/gnome-shell-sass/_colors.scss, src/zuki-themes-4.0/gtk/src/Zukitwo/gtk-3.0/install-zukitwo.sh, src/zuki-themes-4.0/gtk/src/Zukitre-dark/gtk-3.0/install-dark-theme.sh, src/zuki-themes-4.0/gnome-shell/src/gnome-shell-sass/_drawing.scss...
[0/10] Reviewing src/zuki-themes-4.0/gnome-shell/meson.build, src/zuki-themes-4.0/gitpush.sh, src/zuki-themes-4.0/gnome-shell/src/parse-sass.sh, src/zuki-themes-4.0/gtk/src/Zukitre-dark/gtk-2.0/render-assets.sh, src/zuki-themes-4.0/gnome-shell/src/gnome-shell-high-contrast.scss, src/zuki-themes-4.0/gnome-shell/src/gnome-shell-sass/_colors.scss, src/zuki-themes-4.0/gtk/src/Zukitwo/gtk-3.0/install-zukitwo.sh, src/zuki-themes-4.0/gtk/src/Zukitre-dark/gtk-3.0/install-dark-theme.sh, src/zuki-themes-4.0/gnome-shell/src/gnome-shell-sass/_drawing.scss, src/zuki-themes-4.0/gnome-shell/src/gnome-shell-sass/_common.scss...
LLM auditresponse for gitpush.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This script is a simple maintainer helper that stages files, prompts for a commit message, commits, and pushes to the repository's origin. All commands (`git add`, `git commit`, `git push`) are standard `git` operations and operate only on the repository's own tracked files. There is no obfuscation, no network requests to unexpected hosts, no execution of downloaded code, and no system modification beyond normal version control workflows. This is a typical AUR maintainer convenience script.
</details>
<summary>Benign maintainer git helper script, no security issues.</summary>
</security_assessment>

[1/10] Reviewing src/zuki-themes-4.0/gnome-shell/meson.build, src/zuki-themes-4.0/gnome-shell/src/parse-sass.sh, src/zuki-themes-4.0/gtk/src/Zukitre-dark/gtk-2.0/render-assets.sh, src/zuki-themes-4.0/gnome-shell/src/gnome-shell-high-contrast.scss, src/zuki-themes-4.0/gnome-shell/src/gnome-shell-sass/_colors.scss, src/zuki-themes-4.0/gtk/src/Zukitwo/gtk-3.0/install-zukitwo.sh, src/zuki-themes-4.0/gtk/src/Zukitre-dark/gtk-3.0/install-dark-theme.sh, src/zuki-themes-4.0/gnome-shell/src/gnome-shell-sass/_drawing.scss, src/zuki-themes-4.0/gnome-shell/src/gnome-shell-sass/_common.scss...
+ Reviewed src/zuki-themes-4.0/gitpush.sh. Status: SAFE -- Benign maintainer git helper script, no security issues.
LLM auditresponse for install-dark-theme.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This script performs standard theme installation operations: creating directories and setting up symbolic links for a dark GTK theme variant. It uses Meson install variables and only runs `install`, `mkdir`, and `ln` commands. There is no network access, no obfuscated code, no dangerous commands like `eval`, `curl`, or `wget`, and no manipulation of files outside the intended theme directory. The script follows normal packaging practices for installing theme assets.
</details>
<summary>Standard theme install script, no security issues.</summary>
</security_assessment>

[2/10] Reviewing src/zuki-themes-4.0/gnome-shell/meson.build, src/zuki-themes-4.0/gnome-shell/src/parse-sass.sh, src/zuki-themes-4.0/gtk/src/Zukitre-dark/gtk-2.0/render-assets.sh, src/zuki-themes-4.0/gnome-shell/src/gnome-shell-high-contrast.scss, src/zuki-themes-4.0/gnome-shell/src/gnome-shell-sass/_colors.scss, src/zuki-themes-4.0/gtk/src/Zukitwo/gtk-3.0/install-zukitwo.sh, src/zuki-themes-4.0/gnome-shell/src/gnome-shell-sass/_drawing.scss, src/zuki-themes-4.0/gnome-shell/src/gnome-shell-sass/_common.scss...
+ Reviewed src/zuki-themes-4.0/gtk/src/Zukitre-dark/gtk-3.0/install-dark-theme.sh. Status: SAFE -- Standard theme install script, no security issues.
LLM auditresponse for gnome-shell-high-contrast.scss:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard SCSS (Sassy CSS) stylesheet for a GNOME Shell theme. It imports local helper files (`gnome-shell-sass/_high-contrast-colors`, `_drawing`, `_common`, `_widgets`) and defines style overrides for high-contrast mode. There are no network requests, no obfuscated code, no dangerous commands, no file operations outside the scope of theme styling. The content is purely cosmetic and follows normal packaging practices for a GNOME theme.
</details>
<summary>Standard SCSS theme file, no security issues.</summary>
</security_assessment>

LLM auditresponse for _colors.scss:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `_colors.scss` is a standard SCSS stylesheet that defines color variables for use in a GTK theme. It contains no executable code, network requests, file operations, or any mechanism to exfiltrate data, download arbitrary content, or modify system state. The content is purely declarative color definitions with conditional logic (`if($variant == 'light', ..., ...)`) and simple color manipulation functions (`darken`, `lighten`, `mix`, `transparentize`, `desaturate`) provided by the Sass preprocessor. There is no obfuscation, encoded commands, or deviation from expected theming practices. No security issues are present.
</details>
<summary>Pure SCSS color definitions; no executable or malicious content.</summary>
</security_assessment>

[3/10] Reviewing src/zuki-themes-4.0/gnome-shell/meson.build, src/zuki-themes-4.0/gnome-shell/src/parse-sass.sh, src/zuki-themes-4.0/gtk/src/Zukitre-dark/gtk-2.0/render-assets.sh, src/zuki-themes-4.0/gnome-shell/src/gnome-shell-sass/_colors.scss, src/zuki-themes-4.0/gtk/src/Zukitwo/gtk-3.0/install-zukitwo.sh, src/zuki-themes-4.0/gnome-shell/src/gnome-shell-sass/_drawing.scss, src/zuki-themes-4.0/gnome-shell/src/gnome-shell-sass/_common.scss...
+ Reviewed src/zuki-themes-4.0/gnome-shell/src/gnome-shell-high-contrast.scss. Status: SAFE -- Standard SCSS theme file, no security issues.
[4/10] Reviewing src/zuki-themes-4.0/gnome-shell/meson.build, src/zuki-themes-4.0/gnome-shell/src/parse-sass.sh, src/zuki-themes-4.0/gtk/src/Zukitre-dark/gtk-2.0/render-assets.sh, src/zuki-themes-4.0/gtk/src/Zukitwo/gtk-3.0/install-zukitwo.sh, src/zuki-themes-4.0/gnome-shell/src/gnome-shell-sass/_drawing.scss, src/zuki-themes-4.0/gnome-shell/src/gnome-shell-sass/_common.scss...
+ Reviewed src/zuki-themes-4.0/gnome-shell/src/gnome-shell-sass/_colors.scss. Status: SAFE -- Pure SCSS color definitions; no executable or malicious content.
LLM auditresponse for _drawing.scss:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `_drawing.scss` is a standard SCSS theme styling helper defining drawing mixins for UI components (entries, buttons, shadows, etc.). It contains no network requests, encoded/obfuscated code, unexpected system operations, or any commands outside of standard theme development. The content is purely cosmetic and follows normal GTK theme build practices. No evidence of malicious or dangerous behavior was found.
</details>
<summary>Safe SCSS theme drawing mixins, no malicious content.</summary>
</security_assessment>

[5/10] Reviewing src/zuki-themes-4.0/gnome-shell/meson.build, src/zuki-themes-4.0/gnome-shell/src/parse-sass.sh, src/zuki-themes-4.0/gtk/src/Zukitre-dark/gtk-2.0/render-assets.sh, src/zuki-themes-4.0/gtk/src/Zukitwo/gtk-3.0/install-zukitwo.sh, src/zuki-themes-4.0/gnome-shell/src/gnome-shell-sass/_common.scss...
+ Reviewed src/zuki-themes-4.0/gnome-shell/src/gnome-shell-sass/_drawing.scss. Status: SAFE -- Safe SCSS theme drawing mixins, no malicious content.
LLM auditresponse for _common.scss:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard SCSS stylesheet for a GNOME Shell theme. It contains only variable definitions (e.g., colors, padding, border-radius), placeholder selectors (`%placeholder`), and mixins (`@mixin`, `@include`) used to generate CSS. There are no network requests, downloads, system commands, encoded/obfuscated payloads, backdoors, or file operations of any kind. The `$cakeisalie` variable is merely a humorous name for a comment string and has no functional effect. The content adheres entirely to expected theme packaging practices.
</details>
<summary>No malicious code; standard SCSS theme definition.</summary>
</security_assessment>

[6/10] Reviewing src/zuki-themes-4.0/gnome-shell/meson.build, src/zuki-themes-4.0/gnome-shell/src/parse-sass.sh, src/zuki-themes-4.0/gtk/src/Zukitre-dark/gtk-2.0/render-assets.sh, src/zuki-themes-4.0/gtk/src/Zukitwo/gtk-3.0/install-zukitwo.sh...
+ Reviewed src/zuki-themes-4.0/gnome-shell/src/gnome-shell-sass/_common.scss. Status: SAFE -- No malicious code; standard SCSS theme definition.
LLM auditresponse for meson.build:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard Meson build configuration file. It sets a theme directory path using `join_paths` and then processes the `src` subdirectory. There are no network requests, obfuscated code, dangerous commands, or any deviation from normal packaging practices. The content is benign and serves only to structure the build process.
</details>
<summary>
Standard build file with no security issues.</summary>
</security_assessment>

[7/10] Reviewing src/zuki-themes-4.0/gnome-shell/src/parse-sass.sh, src/zuki-themes-4.0/gtk/src/Zukitre-dark/gtk-2.0/render-assets.sh, src/zuki-themes-4.0/gtk/src/Zukitwo/gtk-3.0/install-zukitwo.sh...
+ Reviewed src/zuki-themes-4.0/gnome-shell/meson.build. Status: SAFE -- Standard build file with no security issues.
LLM auditresponse for parse-sass.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
The script `parse-sass.sh` is a straightforward build helper that compiles SCSS to CSS using `sassc`. It does not perform any network requests, downloads, obfuscated commands, or unexpected file operations. The only external command is `sassc` with local `.scss` files as input and `.css` files as output. There is no evidence of malicious behavior; the script behaves exactly as expected for generating theme CSS files from source.
</details>
<summary>Standard SCSS compilation script, no security concerns.</summary>
</security_assessment>

[8/10] Reviewing src/zuki-themes-4.0/gtk/src/Zukitre-dark/gtk-2.0/render-assets.sh, src/zuki-themes-4.0/gtk/src/Zukitwo/gtk-3.0/install-zukitwo.sh...
+ Reviewed src/zuki-themes-4.0/gnome-shell/src/parse-sass.sh. Status: SAFE -- Standard SCSS compilation script, no security concerns.
LLM auditresponse for install-zukitwo.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
The script performs only standard installation operations: creating directories and setting up symbolic links for the Zukitwo theme, linking to files in a related Zukitre theme. No network requests, no downloads, no execution of untrusted code, no obfuscation, and no unexpected file modifications. All commands are standard POSIX utilities (`install`, `ln`) with no dangerous arguments. The script is consistent with normal packaging practices for theme collections sharing assets.
</details>
<summary>Symlink installation script; no malicious activity.</summary>
</security_assessment>

[9/10] Reviewing src/zuki-themes-4.0/gtk/src/Zukitre-dark/gtk-2.0/render-assets.sh...
+ Reviewed src/zuki-themes-4.0/gtk/src/Zukitwo/gtk-3.0/install-zukitwo.sh. Status: SAFE -- Symlink installation script; no malicious activity.
LLM auditresponse for render-assets.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
The script is a standard asset rendering helper for a theme package. It reads an index file (`assets.txt`) and renders SVG assets using Inkscape. The only potential risk is command injection via the `$INDEX` content (e.g., if an attacker controls `assets.txt` and inserts filenames with shell metacharacters). However, in the context of a package build script, this file is part of the source and not user-controlled. The script uses local tools only, does not fetch any data over a network, and performs no obfuscated or encoded operations. There is no evidence of malicious behavior.
</details>
<summary>Standard asset rendering script, no security issues.</summary>
</security_assessment>

[10/10] Reviewing ...
+ Reviewed src/zuki-themes-4.0/gtk/src/Zukitre-dark/gtk-2.0/render-assets.sh. Status: SAFE -- Standard asset rendering script, no security issues.
Reviewed all additional files.
Reviewed additional files.
Audit complete! Result: No issues found
(Skipped 1 file: zuki-themes-4.0.tar.gz)

API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 30,850
  Completion Tokens: 7,180
  Total Tokens: 38,030
  Total Cost: $0.004069
  Execution Time: 67.47 seconds
Full audit report can be found in /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-report-zuki-themes.txt
Final Status: SAFE


No issues found.


Audit Skips:

/home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-8_nkq4iw/zuki-themes-4.0.tar.gz: [SKIPPED] Skipping binary file: zuki-themes-4.0.tar.gz
