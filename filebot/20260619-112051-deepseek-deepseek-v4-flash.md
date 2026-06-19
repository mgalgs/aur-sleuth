---
package: filebot
pkgver: 5.2.3
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: openrouter.ai
base_url: https://openrouter.ai/api/v1
aur_sleuth_rev: 11c93a0c95e2166961e3664fea6b5a63827ded10
prompt_tokens: 34379
completion_tokens: 8295
total_tokens: 42674
cost: 0.00458721
execution_time: 97.12
files_reviewed: 13
files_skipped: 0
date: 2026-06-19T11:20:51Z
file_verdicts:
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD with no suspicious operations.
  - file: filebot.sh
    status: safe
    summary: Safe launcher; no supply-chain attack indicators.
  - file: filebot.install
    status: safe
    summary: Clean AUR install script with no security issues.
  - file: src/usr/share/file-manager/actions/menu-filebot.desktop
    status: safe
    summary: Standard desktop menu file, no security concerns.
  - file: src/usr/share/applications/filebot-license.desktop
    status: safe
    summary: Standard desktop entry file, no security concerns.
  - file: src/usr/share/file-manager/actions/filebot-checksum.desktop
    status: safe
    summary: Standard desktop action file; no security concerns.
  - file: .editorconfig
    status: safe
    summary: No security issues; standard editor configuration file.
  - file: src/usr/share/mime/packages/filebot.xml
    status: safe
    summary: Standard MIME configuration file, no security issues.
  - file: src/usr/share/file-manager/actions/filebot-subtitles.desktop
    status: safe
    summary: Standard desktop entry file; no security issues.
  - file: src/usr/share/applications/filebot.desktop
    status: safe
    summary: Standard desktop entry file, no security issues.
  - file: src/usr/share/file-manager/actions/filebot-import.desktop
    status: safe
    summary: Standard desktop action for FileBot media import.
  - file: src/usr/share/file-manager/actions/filebot-rename.desktop
    status: safe
    summary: Standard desktop action file for FileBot.
  - file: src/etc/bash_completion.d/filebot
    status: safe
    summary: Standard bash completion script, no malicious behavior.
---

Cloning https://aur.archlinux.org/filebot.git to /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-6gbk3zxq...
Cloned repository to /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-6gbk3zxq
Analyzing filebot AUR package (working in /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-6gbk3zxq) with deepseek/deepseek-v4-flash from https://openrouter.ai/api/v1
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD's global scope consists only of variable definitions and array declarations (source, b2sums, etc.). There is no code execution at the top level or within an explicit `pkgver()` function. All source URLs point to the official upstream domain (`get.filebot.net`) over HTTPS, which is standard. The local file `filebot.sh` is fetched from the AUR repository. No suspicious commands (eval, curl|bash, base64 decoding, etc.) are present. Therefore, running `makepkg --nobuild --nodeps --noprepare` and `makepkg --printsrcinfo` is safe.</details>
<summary>No malicious code executes during source fetching or PKGBUILD sourcing.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete [grey50]-- No malicious code executes during source fetching or PKGBUILD sourcing.[/]
Running makepkg --nobuild --nodeps --noprepare to download sources for agent...
makepkg --nobuild --nodeps --noprepare successful
Running makepkg --printsrcinfo to get source files for agent...
makepkg --printsrcinfo successful
Reviewing required files...
[0/3] Reviewing filebot.install...
[0/3] Reviewing filebot.install, PKGBUILD...
[0/3] Reviewing filebot.install, PKGBUILD, filebot.sh...
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard AUR packaging conventions. The source tarball is fetched from the official filebot.net domain over HTTPS, with a valid BLAKE2 checksum and a PGP signature verification key specified. The package() function only creates directories and copies files from the extracted source and a bundled shell script into the package directory. There are no dangerous commands (eval, obfuscated code, curl|bash, etc.), no unexpected network requests, and no operations that manipulate data outside the package's own scope. No evidence of supply-chain injection or malicious behavior is present.
</details>
<summary>Standard PKGBUILD with no suspicious operations.</summary>
</security_assessment>

[1/3] Reviewing filebot.install, filebot.sh...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD with no suspicious operations.
LLM auditresponse for filebot.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
The script is a standard wrapper for FileBot, a Java-based media renaming tool. It sets environment variables, applies workarounds (e.g., disabling Wayland, forcing software rendering via `-Dprism.order=sw`), and launches the application with necessary JVM module opens. No suspicious network requests, obfuscated code, or system modifications outside the application&#x27;s scope are present. The use of `--add-opens` flags is normal for Java applications requiring deep reflection. The script respects the user&#x27;s home directory for data and warns against running as root. All behavior aligns with legitimate packaging.
</details>
<summary>Safe launcher; no supply-chain attack indicators.</summary>
</security_assessment>

[2/3] Reviewing filebot.install...
+ Reviewed filebot.sh. Status: SAFE -- Safe launcher; no supply-chain attack indicators.
LLM auditresponse for filebot.install:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard Arch Linux `.install` script for the filebot package. It performs routine maintenance operations: cleaning up leftover directories/symlinks from previous versions (`/usr/share/filebot/openjfx`), printing informational messages about license activation and system extractor configuration, and re-setting the default file manager via `xdg-mime` (which appears to be a no-op since it queries and sets the same value). There are no network requests, downloads, obfuscated code, dangerous commands (eval, base64, curl, wget), or any operations that exfiltrate data or modify system files outside the package scope. All commands (`rm`, `echo`, `xdg-mime`) are legitimate system utilities used for their intended purposes. The script follows standard packaging practices and contains no evidence of a supply-chain attack.
</details>
<summary>Clean AUR install script with no security issues.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed filebot.install. Status: SAFE -- Clean AUR install script with no security issues.
Reviewed all required files.
Deciding which files to review next...
LLM response for file selection:
src/usr/share/applications/filebot-license.desktop
src/usr/share/applications/filebot.desktop
src/usr/share/file-manager/actions/filebot-checksum.desktop
src/usr/share/file-manager/actions/filebot-import.desktop
src/usr/share/file-manager/actions/filebot-rename.desktop
src/usr/share/file-manager/actions/filebot-subtitles.desktop
src/usr/share/file-manager/actions/menu-filebot.desktop
src/usr/share/mime/packages/filebot.xml
.editorconfig
src/etc/bash_completion.d/filebot
Decided to review 10 additional files: src/usr/share/applications/filebot-license.desktop, src/usr/share/applications/filebot.desktop, src/usr/share/file-manager/actions/filebot-checksum.desktop, src/usr/share/file-manager/actions/filebot-import.desktop, src/usr/share/file-manager/actions/filebot-rename.desktop, src/usr/share/file-manager/actions/filebot-subtitles.desktop, src/usr/share/file-manager/actions/menu-filebot.desktop, src/usr/share/mime/packages/filebot.xml, .editorconfig, src/etc/bash_completion.d/filebot
Reviewing additional files...
Reviewing additional files...
[0/10] Reviewing src/usr/share/applications/filebot-license.desktop...
[0/10] Reviewing src/usr/share/applications/filebot-license.desktop, src/usr/share/file-manager/actions/filebot-checksum.desktop...
[0/10] Reviewing src/usr/share/applications/filebot-license.desktop, src/usr/share/file-manager/actions/filebot-checksum.desktop, src/usr/share/applications/filebot.desktop...
[0/10] Reviewing src/usr/share/applications/filebot-license.desktop, src/usr/share/file-manager/actions/filebot-checksum.desktop, src/usr/share/applications/filebot.desktop, src/usr/share/file-manager/actions/filebot-import.desktop...
[0/10] Reviewing src/usr/share/applications/filebot-license.desktop, src/usr/share/file-manager/actions/filebot-checksum.desktop, src/usr/share/applications/filebot.desktop, src/usr/share/file-manager/actions/filebot-import.desktop, src/usr/share/file-manager/actions/filebot-rename.desktop...
[0/10] Reviewing src/usr/share/applications/filebot-license.desktop, src/usr/share/file-manager/actions/filebot-checksum.desktop, src/usr/share/applications/filebot.desktop, src/usr/share/file-manager/actions/filebot-import.desktop, src/usr/share/file-manager/actions/filebot-rename.desktop, src/usr/share/file-manager/actions/filebot-subtitles.desktop...
[0/10] Reviewing src/usr/share/applications/filebot-license.desktop, src/usr/share/file-manager/actions/filebot-checksum.desktop, src/usr/share/applications/filebot.desktop, src/usr/share/file-manager/actions/filebot-import.desktop, src/usr/share/file-manager/actions/filebot-rename.desktop, src/usr/share/file-manager/actions/filebot-subtitles.desktop, .editorconfig...
[0/10] Reviewing src/usr/share/applications/filebot-license.desktop, src/usr/share/file-manager/actions/filebot-checksum.desktop, src/usr/share/applications/filebot.desktop, src/usr/share/file-manager/actions/filebot-import.desktop, src/usr/share/file-manager/actions/filebot-rename.desktop, src/usr/share/file-manager/actions/filebot-subtitles.desktop, .editorconfig, src/usr/share/file-manager/actions/menu-filebot.desktop...
[0/10] Reviewing src/usr/share/applications/filebot-license.desktop, src/usr/share/file-manager/actions/filebot-checksum.desktop, src/usr/share/applications/filebot.desktop, src/usr/share/file-manager/actions/filebot-import.desktop, src/usr/share/file-manager/actions/filebot-rename.desktop, src/usr/share/file-manager/actions/filebot-subtitles.desktop, .editorconfig, src/usr/share/file-manager/actions/menu-filebot.desktop, src/usr/share/mime/packages/filebot.xml...
[0/10] Reviewing src/usr/share/applications/filebot-license.desktop, src/usr/share/file-manager/actions/filebot-checksum.desktop, src/usr/share/applications/filebot.desktop, src/usr/share/file-manager/actions/filebot-import.desktop, src/usr/share/file-manager/actions/filebot-rename.desktop, src/usr/share/file-manager/actions/filebot-subtitles.desktop, .editorconfig, src/usr/share/file-manager/actions/menu-filebot.desktop, src/usr/share/mime/packages/filebot.xml, src/etc/bash_completion.d/filebot...
LLM auditresponse for menu-filebot.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard .desktop menu definition for FileBot. It contains only metadata (Name, Tooltip, Icon, ItemsList) and references to other .desktop entries. No executable code, network requests, file operations, or obfuscation is present. It poses no security risk.
</details>
<summary>Standard desktop menu file, no security concerns.</summary>
</security_assessment>

[1/10] Reviewing src/usr/share/applications/filebot-license.desktop, src/usr/share/file-manager/actions/filebot-checksum.desktop, src/usr/share/applications/filebot.desktop, src/usr/share/file-manager/actions/filebot-import.desktop, src/usr/share/file-manager/actions/filebot-rename.desktop, src/usr/share/file-manager/actions/filebot-subtitles.desktop, .editorconfig, src/usr/share/mime/packages/filebot.xml, src/etc/bash_completion.d/filebot...
+ Reviewed src/usr/share/file-manager/actions/menu-filebot.desktop. Status: SAFE -- Standard desktop menu file, no security concerns.
LLM auditresponse for filebot-license.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.desktop` file that registers MIME types for FileBot license files and associates them with the `filebot --license` command. There is no obfuscated code, network requests, file operations, or system modifications beyond normal desktop integration. The behavior is consistent with the intended purpose of importing a license file.
</details>
<summary>
Standard desktop entry file, no security concerns.</summary>
</security_assessment>

[2/10] Reviewing src/usr/share/file-manager/actions/filebot-checksum.desktop, src/usr/share/applications/filebot.desktop, src/usr/share/file-manager/actions/filebot-import.desktop, src/usr/share/file-manager/actions/filebot-rename.desktop, src/usr/share/file-manager/actions/filebot-subtitles.desktop, .editorconfig, src/usr/share/mime/packages/filebot.xml, src/etc/bash_completion.d/filebot...
+ Reviewed src/usr/share/applications/filebot-license.desktop. Status: SAFE -- Standard desktop entry file, no security concerns.
LLM auditresponse for filebot-checksum.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.desktop` file that defines an action for FileBot to calculate checksums (SFV). The `Exec` line runs `filebot --mode SFV %F`, which is normal application functionality. No suspicious commands, network requests, or obfuscation are present. The file only contains desktop entry metadata and an action definition, consistent with legitimate packaging practices.
</details>
<summary>Standard desktop action file; no security concerns.</summary>
</security_assessment>

[3/10] Reviewing src/usr/share/applications/filebot.desktop, src/usr/share/file-manager/actions/filebot-import.desktop, src/usr/share/file-manager/actions/filebot-rename.desktop, src/usr/share/file-manager/actions/filebot-subtitles.desktop, .editorconfig, src/usr/share/mime/packages/filebot.xml, src/etc/bash_completion.d/filebot...
+ Reviewed src/usr/share/file-manager/actions/filebot-checksum.desktop. Status: SAFE -- Standard desktop action file; no security concerns.
LLM auditresponse for .editorconfig:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is an `.editorconfig` file, which is a standard configuration file used by various editors to maintain consistent coding styles. It contains only settings for indentation (spaces, width 2), trimming trailing whitespace, inserting a final newline, and a couple of formatting preferences for shell scripts (`shell_variant = bash`, `keep_padding = true`, `case_indent = true`). There is no executable code, no network requests, no file modifications, and no obfuscation. It poses no security risk.
</details>
<summary>
No security issues; standard editor configuration file.</summary>
</security_assessment>

[4/10] Reviewing src/usr/share/applications/filebot.desktop, src/usr/share/file-manager/actions/filebot-import.desktop, src/usr/share/file-manager/actions/filebot-rename.desktop, src/usr/share/file-manager/actions/filebot-subtitles.desktop, src/usr/share/mime/packages/filebot.xml, src/etc/bash_completion.d/filebot...
+ Reviewed .editorconfig. Status: SAFE -- No security issues; standard editor configuration file.
LLM auditresponse for filebot.xml:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard Freedesktop shared MIME-info XML configuration. It defines a custom MIME type (`application/x-filebot-license`) for `*.psm` files and associates a generic icon. There is no executable code, no network requests, no file operations outside of defining MIME type associations, and no obfuscation. This is a normal packaging artifact for integrating an application with the desktop environment.
</details>
<summary>Standard MIME configuration file, no security issues.</summary>
</security_assessment>

[5/10] Reviewing src/usr/share/applications/filebot.desktop, src/usr/share/file-manager/actions/filebot-import.desktop, src/usr/share/file-manager/actions/filebot-rename.desktop, src/usr/share/file-manager/actions/filebot-subtitles.desktop, src/etc/bash_completion.d/filebot...
+ Reviewed src/usr/share/mime/packages/filebot.xml. Status: SAFE -- Standard MIME configuration file, no security issues.
LLM auditresponse for filebot-subtitles.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `filebot-subtitles.desktop` is a standard Linux Desktop Entry file. It defines an action profile that launches the `filebot` command with the `--mode Subtitles` argument, passing the selected files via `%F`. There are no network requests, obfuscated code, dangerous operations, or deviations from normal packaging practices. The content is purely declarative and contains no executable logic. No security concerns are present.
</details>
<summary>Standard desktop entry file; no security issues.</summary>
</security_assessment>

[6/10] Reviewing src/usr/share/applications/filebot.desktop, src/usr/share/file-manager/actions/filebot-import.desktop, src/usr/share/file-manager/actions/filebot-rename.desktop, src/etc/bash_completion.d/filebot...
+ Reviewed src/usr/share/file-manager/actions/filebot-subtitles.desktop. Status: SAFE -- Standard desktop entry file; no security issues.
LLM auditresponse for filebot.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.desktop` file used to register the FileBot application in the desktop environment's menu and file manager. It defines metadata (name, icon, categories) and the execution command (`filebot %F`). There are no obfuscated commands, network requests, file operations, or any other suspicious content. The file is static and conforms to the freedesktop.org Desktop Entry Specification. No supply-chain attack indicators are present.
</details>
<summary>Standard desktop entry file, no security issues.</summary>
</security_assessment>

[7/10] Reviewing src/usr/share/file-manager/actions/filebot-import.desktop, src/usr/share/file-manager/actions/filebot-rename.desktop, src/etc/bash_completion.d/filebot...
+ Reviewed src/usr/share/applications/filebot.desktop. Status: SAFE -- Standard desktop entry file, no security issues.
LLM auditresponse for filebot-import.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a `.desktop` file defining a KDE service menu action that invokes `filebot -script fn:amc` with parameters for importing media into a library. The arguments (e.g., `--output &quot;$HOME/Media&quot;`, `--action duplicate`, `--conflict index`) are standard FileBot options for its `amc` (Automated Media Center) script. There is no network activity, encoded commands, file exfiltration, or unexpected system manipulation defined in the file. The command operates entirely within user space (`$HOME/Media`). This is consistent with FileBot's intended functionality and contains no supply-chain attack indicators.
</details>
<summary>Standard desktop action for FileBot media import.</summary>
</security_assessment>

[8/10] Reviewing src/usr/share/file-manager/actions/filebot-rename.desktop, src/etc/bash_completion.d/filebot...
+ Reviewed src/usr/share/file-manager/actions/filebot-import.desktop. Status: SAFE -- Standard desktop action for FileBot media import.
LLM auditresponse for filebot-rename.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.desktop` action profile file for FileBot. It defines a right-click rename action that executes `filebot --mode Rename %F` on selected files. There are no network requests, obfuscated code, or unexpected system modifications. The broad MIME type list (`text/*;application/*;`) is consistent with FileBot's typical use case (e.g., subtitles and container formats). No evidence of a supply-chain attack or malicious behavior.
</details>
<summary>Standard desktop action file for FileBot.</summary>
</security_assessment>

[9/10] Reviewing src/etc/bash_completion.d/filebot...
+ Reviewed src/usr/share/file-manager/actions/filebot-rename.desktop. Status: SAFE -- Standard desktop action file for FileBot.
LLM auditresponse for filebot:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard auto-generated bash completion script for the `filebot` command. It provides tab-completion for command-line options and arguments using bash builtins (`compgen`, `compopt`, `type`) and does not perform any network requests, file system modifications, or execute arbitrary code beyond listing files/directories for completion purposes. There is no obfuscated code, no use of dangerous commands like `eval`, `curl`, `wget`, and no evidence of exfiltration, backdoors, or other supply-chain attack indicators. The script conforms to normal AUR packaging practices for a completion file.
</details>
<summary>
Standard bash completion script, no malicious behavior.
</summary>
</security_assessment>

[10/10] Reviewing ...
+ Reviewed src/etc/bash_completion.d/filebot. Status: SAFE -- Standard bash completion script, no malicious behavior.
Reviewed all additional files.
Reviewed additional files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 34,379
  Completion Tokens: 8,295
  Total Tokens: 42,674
  Total Cost: $0.004587
  Execution Time: 97.12 seconds
Full audit report can be found in /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-report-filebot.txt
Final Status: SAFE


No issues found.
