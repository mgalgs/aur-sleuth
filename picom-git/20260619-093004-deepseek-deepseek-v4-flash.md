---
package: picom-git
pkgver: 2855_12.197.g6d676824_2026.06.02
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: openrouter.ai
base_url: https://openrouter.ai/api/v1
aur_sleuth_rev: 11c93a0c95e2166961e3664fea6b5a63827ded10
prompt_tokens: 34767
completion_tokens: 7111
total_tokens: 41878
cost: 0.00440901
execution_time: 108.88
files_reviewed: 11
files_skipped: 0
date: 2026-06-19T09:30:04Z
file_verdicts:
  - file: PKGBUILD
    status: safe
    summary: Standard AUR -git package, no malicious code detected.
  - file: src/picom/compton.desktop
    status: safe
    summary: Standard desktop entry file, no security issues.
  - file: src/picom/picom.desktop
    status: safe
    summary: Standard desktop entry file; no malicious content.
  - file: src/picom/meson_options.txt
    status: safe
    summary: Standard build configuration file; no security concerns.
  - file: src/picom/include/meson.build
    status: safe
    summary: Standard build file with no security concerns.
  - file: src/picom/picom.sample.conf
    status: safe
    summary: Safe sample configuration file, no malicious content.
  - file: src/picom/data/animation_presets.conf
    status: safe
    summary: Benign configuration file for picom animation presets.
  - file: src/picom/.circleci/config.yml
    status: safe
    summary: Standard CI config; no security issues found.
  - file: src/picom/dbus-examples/cdbus-driver.sh
    status: safe
    summary: Benign D-Bus helper script for picom; no malicious behavior.
  - file: src/picom/meson/install.sh
    status: safe
    summary: Standard compatibility symlinks; no security concerns.
  - file: src/picom/dbus-examples/inverter.sh
    status: safe
    summary: Legitimate picom utility script; no malicious behavior detected.
---

Cloning https://aur.archlinux.org/picom-git.git to /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-fs1g2my7...
Cloned repository to /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-fs1g2my7
Analyzing picom-git AUR package (working in /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-fs1g2my7) with deepseek/deepseek-v4-flash from https://openrouter.ai/api/v1
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD defines a standard VCS source (`git+https://github.com/yshui/picom.git#branch=next`) and uses `md5sums=('SKIP')` as is typical for -git packages. The top-level scope contains only variable assignments and dependency declarations—no code execution. The `pkgver()` function runs local `git describe`, `git rev-list`, and `git log` commands on the freshly cloned repository to derive a version string; these are read-only operations that do not fetch external resources or execute untrusted payloads. No obfuscation, network requests beyond the declared upstream source, or suspicious commands are present. `makepkg --nobuild --nodeps --noprepare` will safely clone the upstream repo and source the PKGBUILD without triggering any malicious behavior.
</details>
<summary>Standard git source, no dangerous top-level code or pkgver() execution.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete [grey50]-- Standard git source, no dangerous top-level code or pkgver() execution.[/]
Running makepkg --nobuild --nodeps --noprepare to download sources for agent...
makepkg --nobuild --nodeps --noprepare successful
Running makepkg --printsrcinfo to get source files for agent...
makepkg --printsrcinfo successful
Reviewing required files...
[0/1] Reviewing PKGBUILD...
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is for the AUR package `picom-git`, which builds a compositor from the upstream `yshui/picom` repository. The `source` uses a git clone from the official GitHub project with a `#branch=next` reference, which is normal for a VCS/-git package. The `build()` and `package()` functions use standard Meson and Ninja build steps, install files under `$pkgdir`, and include a license and sample config. There are no obfuscated commands, no external network requests beyond the declared source, no use of `eval`, `curl`, `wget`, or other potential attack vectors. All operations are consistent with standard packaging practices. The unpinned branch and `SKIP` checksums are typical for a -git package and do not indicate malice.
</details>
<summary>
Standard AUR -git package, no malicious code detected.</summary>
</security_assessment>

[1/1] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR -git package, no malicious code detected.
Reviewed all required files.
Deciding which files to review next...
Note: 208 files available for selection; offering the 50 highest-priority to the model. 143 lower-priority file(s) were not offered.
LLM response for file selection:
src/picom/meson/install.sh
src/picom/compton.desktop
src/picom/picom.desktop
src/picom/include/meson.build
src/picom/meson_options.txt
src/picom/dbus-examples/cdbus-driver.sh
src/picom/dbus-examples/inverter.sh
src/picom/.circleci/config.yml
src/picom/data/animation_presets.conf
src/picom/picom.sample.conf
Decided to review 10 additional files: src/picom/meson/install.sh, src/picom/compton.desktop, src/picom/picom.desktop, src/picom/include/meson.build, src/picom/meson_options.txt, src/picom/dbus-examples/cdbus-driver.sh, src/picom/dbus-examples/inverter.sh, src/picom/.circleci/config.yml, src/picom/data/animation_presets.conf, src/picom/picom.sample.conf
Reviewing additional files...
Reviewing additional files...
[0/10] Reviewing src/picom/meson/install.sh...
[0/10] Reviewing src/picom/meson/install.sh, src/picom/picom.desktop...
[0/10] Reviewing src/picom/meson/install.sh, src/picom/picom.desktop, src/picom/compton.desktop...
[0/10] Reviewing src/picom/meson/install.sh, src/picom/picom.desktop, src/picom/compton.desktop, src/picom/include/meson.build...
[0/10] Reviewing src/picom/meson/install.sh, src/picom/picom.desktop, src/picom/compton.desktop, src/picom/include/meson.build, src/picom/meson_options.txt...
[0/10] Reviewing src/picom/meson/install.sh, src/picom/picom.desktop, src/picom/compton.desktop, src/picom/include/meson.build, src/picom/meson_options.txt, src/picom/dbus-examples/cdbus-driver.sh...
[0/10] Reviewing src/picom/meson/install.sh, src/picom/picom.desktop, src/picom/compton.desktop, src/picom/include/meson.build, src/picom/meson_options.txt, src/picom/dbus-examples/cdbus-driver.sh, src/picom/.circleci/config.yml...
[0/10] Reviewing src/picom/meson/install.sh, src/picom/picom.desktop, src/picom/compton.desktop, src/picom/include/meson.build, src/picom/meson_options.txt, src/picom/dbus-examples/cdbus-driver.sh, src/picom/.circleci/config.yml, src/picom/data/animation_presets.conf...
[0/10] Reviewing src/picom/meson/install.sh, src/picom/picom.desktop, src/picom/compton.desktop, src/picom/include/meson.build, src/picom/meson_options.txt, src/picom/dbus-examples/cdbus-driver.sh, src/picom/.circleci/config.yml, src/picom/data/animation_presets.conf, src/picom/dbus-examples/inverter.sh...
[0/10] Reviewing src/picom/meson/install.sh, src/picom/picom.desktop, src/picom/compton.desktop, src/picom/include/meson.build, src/picom/meson_options.txt, src/picom/dbus-examples/cdbus-driver.sh, src/picom/.circleci/config.yml, src/picom/data/animation_presets.conf, src/picom/dbus-examples/inverter.sh, src/picom/picom.sample.conf...
LLM auditresponse for compton.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.desktop` file for the compton X compositor. It contains only metadata fields (Name, GenericName, Comment, Categories, Keywords, TryExec, Exec, Icon) and a harmless comment. There are no network requests, obfuscated code, dangerous commands, or any deviation from normal packaging practices. The file is benign.
</details>
<summary>Standard desktop entry file, no security issues.</summary>
</security_assessment>

[1/10] Reviewing src/picom/meson/install.sh, src/picom/picom.desktop, src/picom/include/meson.build, src/picom/meson_options.txt, src/picom/dbus-examples/cdbus-driver.sh, src/picom/.circleci/config.yml, src/picom/data/animation_presets.conf, src/picom/dbus-examples/inverter.sh, src/picom/picom.sample.conf...
+ Reviewed src/picom/compton.desktop. Status: SAFE -- Standard desktop entry file, no security issues.
LLM auditresponse for picom.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard `.desktop` entry for the picom X compositor. It contains only metadata (name, comment, categories, icon) and an `Exec` line that launches `picom`. There are no network requests, encoded or obfuscated commands, file operations, or any other suspicious behavior. The comment thanking a contributor is benign. No supply chain attack indicators are present.
</details>
<summary>Standard desktop entry file; no malicious content.</summary>
</security_assessment>

[2/10] Reviewing src/picom/meson/install.sh, src/picom/include/meson.build, src/picom/meson_options.txt, src/picom/dbus-examples/cdbus-driver.sh, src/picom/.circleci/config.yml, src/picom/data/animation_presets.conf, src/picom/dbus-examples/inverter.sh, src/picom/picom.sample.conf...
+ Reviewed src/picom/picom.desktop. Status: SAFE -- Standard desktop entry file; no malicious content.
LLM auditresponse for meson_options.txt:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `meson_options.txt` is a standard Meson build system options file. It defines boolean flags for compile-time features such as `opengl`, `dbus`, `regex`, and `compton`. No executable code, network requests, file modifications, or obfuscated content is present. It is purely declarative metadata used to configure the build process. There is no evidence of malicious behavior or supply-chain attack vectors.
</details>
<summary>Standard build configuration file; no security concerns.</summary>
</security_assessment>

[3/10] Reviewing src/picom/meson/install.sh, src/picom/include/meson.build, src/picom/dbus-examples/cdbus-driver.sh, src/picom/.circleci/config.yml, src/picom/data/animation_presets.conf, src/picom/dbus-examples/inverter.sh, src/picom/picom.sample.conf...
+ Reviewed src/picom/meson_options.txt. Status: SAFE -- Standard build configuration file; no security concerns.
LLM auditresponse for meson.build:
<security_assessment>
<decision>SAFE</decision>
<details>
This `meson.build` file is a standard Meson build system configuration. It contains only a copyright header and a single `subdir('picom')` directive, which instructs Meson to process the `meson.build` file located in the `picom` subdirectory. There are no network requests, encoded commands, file manipulations, or any other suspicious operations. The file is entirely benign and conforms to normal AUR packaging and upstream build practices.
</details>
<summary>Standard build file with no security concerns.</summary>
</security_assessment>

[4/10] Reviewing src/picom/meson/install.sh, src/picom/dbus-examples/cdbus-driver.sh, src/picom/.circleci/config.yml, src/picom/data/animation_presets.conf, src/picom/dbus-examples/inverter.sh, src/picom/picom.sample.conf...
+ Reviewed src/picom/include/meson.build. Status: SAFE -- Standard build file with no security concerns.
LLM auditresponse for picom.sample.conf:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a sample configuration file for the picom compositor. It contains only configuration directives (e.g., `shadow`, `fading`, `backend`, `rules`) and comments. There are no executable commands, no network requests, no file operations, no obfuscated code, and no system modifications. The `@include` directive is a standard picom feature for including additional config files and is not suspicious. The only URL referenced (`https://picom.app/`) is the official upstream project website. No evidence of malicious or dangerous behavior was found.
</details>
<summary>Safe sample configuration file, no malicious content.</summary>
</security_assessment>

[5/10] Reviewing src/picom/meson/install.sh, src/picom/dbus-examples/cdbus-driver.sh, src/picom/.circleci/config.yml, src/picom/data/animation_presets.conf, src/picom/dbus-examples/inverter.sh...
+ Reviewed src/picom/picom.sample.conf. Status: SAFE -- Safe sample configuration file, no malicious content.
LLM auditresponse for animation_presets.conf:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a configuration file for picom's animation presets. It defines animation curves, timing, and transformations (opacity, scale, offset) for window events like appearance, disappearance, and geometry changes. The content is purely declarative configuration using a structured syntax (picom's internal animation definition language). There are no commands (exec, eval, curl, wget), no encoded or obfuscated strings, no network requests, and no file I/O outside of being read by the picom compositor as configuration. All values are numeric or refer to window properties (e.g., `window-width`, `window-height`) or placeholder names. The file follows standard packaging practice for an upstream configuration file.
</details>
<summary>
Benign configuration file for picom animation presets.</summary>
</security_assessment>

[6/10] Reviewing src/picom/meson/install.sh, src/picom/dbus-examples/cdbus-driver.sh, src/picom/.circleci/config.yml, src/picom/dbus-examples/inverter.sh...
+ Reviewed src/picom/data/animation_presets.conf. Status: SAFE -- Benign configuration file for picom animation presets.
LLM auditresponse for config.yml:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a CircleCI CI configuration file for the picom/compton project. It defines standard build and test jobs using Docker, meson, ninja, and various compiler flags. The only external network interaction is downloading the coverage upload script from `https://codecov.io/bash` and running it, which is a standard CI practice for coverage reporting (codecov.io is a legitimate service). There is no obfuscation, no unexpected file operations, no backdoors, and no exfiltration of sensitive data. The file performs only routine CI automation tasks (checkout, build, test, coverage analysis) consistent with the project's upstream development workflow.
</details>
<summary>Standard CI config; no security issues found.</summary>
</security_assessment>

[7/10] Reviewing src/picom/meson/install.sh, src/picom/dbus-examples/cdbus-driver.sh, src/picom/dbus-examples/inverter.sh...
+ Reviewed src/picom/.circleci/config.yml. Status: SAFE -- Standard CI config; no security issues found.
LLM auditresponse for cdbus-driver.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
The script `cdbus-driver.sh` is a utility for interacting with picom (formerly compton) over D-Bus. It performs operations like listing windows, querying and setting the `invert_color_force` property on the focused window, resetting the compositor, and toggling redirection. All commands are standard shell operations (`dbus-send`, `sed`, `sleep`, `echo`) with no network activity, no file downloads, no obfuscation, and no modifications outside picom's own D-Bus interface. This is a typical debugging or development helper script for the package’s own functionality.
</details>
<summary>
Benign D-Bus helper script for picom; no malicious behavior.</summary>
</security_assessment>

[8/10] Reviewing src/picom/meson/install.sh, src/picom/dbus-examples/inverter.sh...
+ Reviewed src/picom/dbus-examples/cdbus-driver.sh. Status: SAFE -- Benign D-Bus helper script for picom; no malicious behavior.
LLM auditresponse for install.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard meson post-install script that creates compatibility symlinks from the old `compton` names to the new `picom` names. It uses the expected `MESON_INSTALL_DESTDIR_PREFIX` variable and performs no network operations, downloads, or dangerous commands. The script is consistent with the package's stated purpose of providing a compositor (picom, formerly compton).
</details>
<summary>Standard compatibility symlinks; no security concerns.</summary>
</security_assessment>

[9/10] Reviewing src/picom/dbus-examples/inverter.sh...
+ Reviewed src/picom/meson/install.sh. Status: SAFE -- Standard compatibility symlinks; no security concerns.
LLM auditresponse for inverter.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This script is a legitimate utility for toggling color inversion on windows managed by picom via its D-Bus interface. It queries the active window or lets the user select one, then toggles `invert_color_force` through a D-Bus method call. The code is straightforward, uses standard tools (dbus-send, xwininfo, sed), and performs no network operations, no downloads, no file system modifications outside normal user processes, and no obfuscation. The only minor hygiene issue is the use of `printf "$DISPLAY"` without a format specifier, which is a shell scripting best-practice concern but not a vulnerability in practice and does not constitute malicious behavior. No supply-chain attack indicators are present.
</details>
<summary>Legitimate picom utility script; no malicious behavior detected.</summary>
</security_assessment>

[10/10] Reviewing ...
+ Reviewed src/picom/dbus-examples/inverter.sh. Status: SAFE -- Legitimate picom utility script; no malicious behavior detected.
Reviewed all additional files.
Reviewed additional files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 34,767
  Completion Tokens: 7,111
  Total Tokens: 41,878
  Total Cost: $0.004409
  Execution Time: 108.88 seconds
Full audit report can be found in /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-report-picom-git.txt
Final Status: SAFE


No issues found.
