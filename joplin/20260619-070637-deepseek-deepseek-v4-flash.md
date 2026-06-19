---
package: joplin
pkgver: 3.6.14
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: openrouter.ai
base_url: https://openrouter.ai/api/v1
aur_sleuth_rev: 82f23f4981a00adcd465061c6029233f5a5b1f09
prompt_tokens: 34307
completion_tokens: 7588
total_tokens: 41895
cost: 0.00445347
execution_time: 124.1
files_reviewed: 11
files_skipped: 1
date: 2026-06-19T07:06:36Z
file_verdicts:
  - file: joplin-3.6.14.tar.gz
    status: skipped
    summary: "Skipping binary file: joplin-3.6.14.tar.gz"
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD for Joplin, no malicious code.
  - file: src/joplin-3.6.14/.yarn/patches/depd-npm-1.1.2-b0c8414da7.patch
    status: safe
    summary: Patch removes eval, no malicious behavior found.
  - file: src/joplin-3.6.14/.yarn/patches/nanoid-npm-3.3.7-98824ba130.patch
    status: safe
    summary: Patch removes browser export entry, no security issues.
  - file: src/joplin-3.6.14/Assets/TinyMCE/IconPack/gulpfile.js
    status: safe
    summary: Standard build script with no malicious behavior.
  - file: src/joplin-3.6.14/Assets/TinyMCE/IconPack/postinstall.js
    status: safe
    summary: Benign user-configuration script; no security issues.
  - file: joplin-desktop.sh
    status: safe
    summary: Standard Electron launcher script, no suspicious activity.
  - file: src/joplin-3.6.14/Assets/TinyMCE/JoplinLists/Gruntfile.js
    status: safe
    summary: Standard build configuration, no security issues found.
  - file: joplin-desktop.desktop
    status: safe
    summary: Standard desktop entry file, no security issues.
  - file: src/joplin-3.6.14/.yarn/patches/pdfjs-dist-npm-3.11.174-67f2fee6d6.patch
    status: safe
    summary: Legitimate patch for Electron compatibility, no malicious content.
  - file: src/joplin-3.6.14/.yarn/patches/formidable-npm-2.1.2-40ba18d67f.patch
    status: safe
    summary: Legitimate bug fix patch; no security issues.
  - file: src/joplin-3.6.14/.yarn/patches/app-builder-lib-npm-24.13.3-86a66c0bf3.patch
    status: safe
    summary: Patch for Joplin uninstaller; no malicious signs.
---

Cloning https://aur.archlinux.org/joplin.git to /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-cn3196ei...
Cloned repository to /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-cn3196ei
Analyzing joplin AUR package (working in /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-cn3196ei) with deepseek/deepseek-v4-flash from https://openrouter.ai/api/v1
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only top-level variable assignments, array definitions, and function definitions. No code is executed outside of function bodies. The `pkgver()` function is not defined, so no automatic version reconciliation code runs. The `source` array points to a versioned GitHub tarball with valid SHA256 checksums, plus two local files (`.sh` and `.desktop`) that are standard for AUR packaging. There are no command substitutions, `eval`, base64 decoding, or other dangerous constructs at the top level. Therefore, running `makepkg --nobuild --nodeps --noprepare` and `makepkg --printsrcinfo` will not execute any malicious code. The potentially risky operations (`prepare()`, `build()`, `package()`) are out of scope for this gate as they require additional flags to run.
</details>
<summary>No malicious top-level code or dangerous source URLs.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete [grey50]-- No malicious top-level code or dangerous source URLs.[/]
Running makepkg --nobuild --nodeps --noprepare to download sources for agent...
makepkg --nobuild --nodeps --noprepare successful
Running makepkg --printsrcinfo to get source files for agent...
makepkg --printsrcinfo successful
Reviewing required files...
[0/2] Reviewing joplin-3.6.14.tar.gz...
[0/2] Reviewing joplin-3.6.14.tar.gz, PKGBUILD...
[1/2] Reviewing PKGBUILD...
! Reviewed joplin-3.6.14.tar.gz. Status: SKIPPED -- Skipping binary file: joplin-3.6.14.tar.gz
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard AUR packaging practices for a Node.js/Electron application. The source is fetched from the official Joplin GitHub repository with a pinned version and checksum. Build steps use standard tools (npm, yarn, gulp, electron-builder) and include routine operations like removing unused components, fixing build errors with `git init`, and replacing dependency paths with local file references. No suspicious network requests, obfuscated code, or unexpected system modifications are present. The `npx` usage is normal for Node.js builds and does not indicate a supply-chain attack.
</details>
<summary>Standard AUR PKGBUILD for Joplin, no malicious code.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD for Joplin, no malicious code.
Reviewed all required files.
Deciding which files to review next...
Note: 6442 files available for selection; offering the 50 highest-priority to the model. 4671 lower-priority file(s) were not offered.
LLM response for file selection:
joplin-desktop.desktop
joplin-desktop.sh
src/joplin-3.6.14/.yarn/patches/nanoid-npm-3.3.7-98824ba130.patch
src/joplin-3.6.14/.yarn/patches/formidable-npm-2.1.2-40ba18d67f.patch
src/joplin-3.6.14/.yarn/patches/pdfjs-dist-npm-3.11.174-67f2fee6d6.patch
src/joplin-3.6.14/.yarn/patches/depd-npm-1.1.2-b0c8414da7.patch
src/joplin-3.6.14/.yarn/patches/app-builder-lib-npm-24.13.3-86a66c0bf3.patch
src/joplin-3.6.14/Assets/TinyMCE/IconPack/gulpfile.js
src/joplin-3.6.14/Assets/TinyMCE/IconPack/postinstall.js
src/joplin-3.6.14/Assets/TinyMCE/JoplinLists/Gruntfile.js
Decided to review 10 additional files: joplin-desktop.desktop, joplin-desktop.sh, src/joplin-3.6.14/.yarn/patches/nanoid-npm-3.3.7-98824ba130.patch, src/joplin-3.6.14/.yarn/patches/formidable-npm-2.1.2-40ba18d67f.patch, src/joplin-3.6.14/.yarn/patches/pdfjs-dist-npm-3.11.174-67f2fee6d6.patch, src/joplin-3.6.14/.yarn/patches/depd-npm-1.1.2-b0c8414da7.patch, src/joplin-3.6.14/.yarn/patches/app-builder-lib-npm-24.13.3-86a66c0bf3.patch, src/joplin-3.6.14/Assets/TinyMCE/IconPack/gulpfile.js, src/joplin-3.6.14/Assets/TinyMCE/IconPack/postinstall.js, src/joplin-3.6.14/Assets/TinyMCE/JoplinLists/Gruntfile.js
Reviewing additional files...
Reviewing additional files...
[0/10] Reviewing joplin-desktop.desktop...
[0/10] Reviewing joplin-desktop.desktop, joplin-desktop.sh...
[0/10] Reviewing joplin-desktop.desktop, joplin-desktop.sh, src/joplin-3.6.14/.yarn/patches/nanoid-npm-3.3.7-98824ba130.patch...
[0/10] Reviewing joplin-desktop.desktop, joplin-desktop.sh, src/joplin-3.6.14/.yarn/patches/nanoid-npm-3.3.7-98824ba130.patch, src/joplin-3.6.14/.yarn/patches/formidable-npm-2.1.2-40ba18d67f.patch...
[0/10] Reviewing joplin-desktop.desktop, joplin-desktop.sh, src/joplin-3.6.14/.yarn/patches/nanoid-npm-3.3.7-98824ba130.patch, src/joplin-3.6.14/.yarn/patches/formidable-npm-2.1.2-40ba18d67f.patch, src/joplin-3.6.14/.yarn/patches/pdfjs-dist-npm-3.11.174-67f2fee6d6.patch...
[0/10] Reviewing joplin-desktop.desktop, joplin-desktop.sh, src/joplin-3.6.14/.yarn/patches/nanoid-npm-3.3.7-98824ba130.patch, src/joplin-3.6.14/.yarn/patches/formidable-npm-2.1.2-40ba18d67f.patch, src/joplin-3.6.14/.yarn/patches/pdfjs-dist-npm-3.11.174-67f2fee6d6.patch, src/joplin-3.6.14/.yarn/patches/app-builder-lib-npm-24.13.3-86a66c0bf3.patch...
[0/10] Reviewing joplin-desktop.desktop, joplin-desktop.sh, src/joplin-3.6.14/.yarn/patches/nanoid-npm-3.3.7-98824ba130.patch, src/joplin-3.6.14/.yarn/patches/formidable-npm-2.1.2-40ba18d67f.patch, src/joplin-3.6.14/.yarn/patches/pdfjs-dist-npm-3.11.174-67f2fee6d6.patch, src/joplin-3.6.14/.yarn/patches/app-builder-lib-npm-24.13.3-86a66c0bf3.patch, src/joplin-3.6.14/.yarn/patches/depd-npm-1.1.2-b0c8414da7.patch...
[0/10] Reviewing joplin-desktop.desktop, joplin-desktop.sh, src/joplin-3.6.14/.yarn/patches/nanoid-npm-3.3.7-98824ba130.patch, src/joplin-3.6.14/.yarn/patches/formidable-npm-2.1.2-40ba18d67f.patch, src/joplin-3.6.14/.yarn/patches/pdfjs-dist-npm-3.11.174-67f2fee6d6.patch, src/joplin-3.6.14/.yarn/patches/app-builder-lib-npm-24.13.3-86a66c0bf3.patch, src/joplin-3.6.14/.yarn/patches/depd-npm-1.1.2-b0c8414da7.patch, src/joplin-3.6.14/Assets/TinyMCE/IconPack/postinstall.js...
[0/10] Reviewing joplin-desktop.desktop, joplin-desktop.sh, src/joplin-3.6.14/.yarn/patches/nanoid-npm-3.3.7-98824ba130.patch, src/joplin-3.6.14/.yarn/patches/formidable-npm-2.1.2-40ba18d67f.patch, src/joplin-3.6.14/.yarn/patches/pdfjs-dist-npm-3.11.174-67f2fee6d6.patch, src/joplin-3.6.14/.yarn/patches/app-builder-lib-npm-24.13.3-86a66c0bf3.patch, src/joplin-3.6.14/.yarn/patches/depd-npm-1.1.2-b0c8414da7.patch, src/joplin-3.6.14/Assets/TinyMCE/IconPack/postinstall.js, src/joplin-3.6.14/Assets/TinyMCE/JoplinLists/Gruntfile.js...
[0/10] Reviewing joplin-desktop.desktop, joplin-desktop.sh, src/joplin-3.6.14/.yarn/patches/nanoid-npm-3.3.7-98824ba130.patch, src/joplin-3.6.14/.yarn/patches/formidable-npm-2.1.2-40ba18d67f.patch, src/joplin-3.6.14/.yarn/patches/pdfjs-dist-npm-3.11.174-67f2fee6d6.patch, src/joplin-3.6.14/.yarn/patches/app-builder-lib-npm-24.13.3-86a66c0bf3.patch, src/joplin-3.6.14/.yarn/patches/depd-npm-1.1.2-b0c8414da7.patch, src/joplin-3.6.14/Assets/TinyMCE/IconPack/postinstall.js, src/joplin-3.6.14/Assets/TinyMCE/JoplinLists/Gruntfile.js, src/joplin-3.6.14/Assets/TinyMCE/IconPack/gulpfile.js...
LLM auditresponse for depd-npm-1.1.2-b0c8414da7.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a patch that removes an `eval` call and replaces it with a standard function definition, improving Content-Security-Policy compliance. The patch is transparent, non-obfuscated, and performs no network requests, file operations, or any other suspicious actions. It is a legitimate security enhancement for the `depd` npm package and contains no supply-chain attack indicators.
</details>
<summary>Patch removes eval, no malicious behavior found.</summary>
</security_assessment>

[1/10] Reviewing joplin-desktop.desktop, joplin-desktop.sh, src/joplin-3.6.14/.yarn/patches/nanoid-npm-3.3.7-98824ba130.patch, src/joplin-3.6.14/.yarn/patches/formidable-npm-2.1.2-40ba18d67f.patch, src/joplin-3.6.14/.yarn/patches/pdfjs-dist-npm-3.11.174-67f2fee6d6.patch, src/joplin-3.6.14/.yarn/patches/app-builder-lib-npm-24.13.3-86a66c0bf3.patch, src/joplin-3.6.14/Assets/TinyMCE/IconPack/postinstall.js, src/joplin-3.6.14/Assets/TinyMCE/JoplinLists/Gruntfile.js, src/joplin-3.6.14/Assets/TinyMCE/IconPack/gulpfile.js...
+ Reviewed src/joplin-3.6.14/.yarn/patches/depd-npm-1.1.2-b0c8414da7.patch. Status: SAFE -- Patch removes eval, no malicious behavior found.
LLM auditresponse for nanoid-npm-3.3.7-98824ba130.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
The provided file is a patch that removes the &quot;browser&quot; entry from the &quot;exports&quot; field in `package.json`. This is a minor configuration change that does not introduce any malicious code, network requests, file operations, or system modifications. It simply alters which module is used for browser environments. There is no evidence of a supply-chain attack or any security concern. The change is consistent with legitimate packaging adjustments.
</details>
<summary>Patch removes browser export entry, no security issues.</summary>
</security_assessment>

[2/10] Reviewing joplin-desktop.desktop, joplin-desktop.sh, src/joplin-3.6.14/.yarn/patches/formidable-npm-2.1.2-40ba18d67f.patch, src/joplin-3.6.14/.yarn/patches/pdfjs-dist-npm-3.11.174-67f2fee6d6.patch, src/joplin-3.6.14/.yarn/patches/app-builder-lib-npm-24.13.3-86a66c0bf3.patch, src/joplin-3.6.14/Assets/TinyMCE/IconPack/postinstall.js, src/joplin-3.6.14/Assets/TinyMCE/JoplinLists/Gruntfile.js, src/joplin-3.6.14/Assets/TinyMCE/IconPack/gulpfile.js...
+ Reviewed src/joplin-3.6.14/.yarn/patches/nanoid-npm-3.3.7-98824ba130.patch. Status: SAFE -- Patch removes browser export entry, no security issues.
LLM auditresponse for gulpfile.js:
<security_assessment>
<decision>SAFE</decision>
<details>
The gulpfile.js is a standard build script for an icon packager within the Joplin project. It defines tasks to clean, package SVG icons, and copy the resulting JavaScript file into the desktop app’s directory (`packages/app-desktop/...`). All operations are local to the project tree, use well-known npm packages (`gulp`, `@ephox/oxide-icons-tools`, `fs`), and contain no network requests, obfuscated code, or unusual system modifications. This is ordinary development/build automation, not a supply-chain attack.
</details>
<summary>Standard build script with no malicious behavior.</summary>
</security_assessment>

[3/10] Reviewing joplin-desktop.desktop, joplin-desktop.sh, src/joplin-3.6.14/.yarn/patches/formidable-npm-2.1.2-40ba18d67f.patch, src/joplin-3.6.14/.yarn/patches/pdfjs-dist-npm-3.11.174-67f2fee6d6.patch, src/joplin-3.6.14/.yarn/patches/app-builder-lib-npm-24.13.3-86a66c0bf3.patch, src/joplin-3.6.14/Assets/TinyMCE/IconPack/postinstall.js, src/joplin-3.6.14/Assets/TinyMCE/JoplinLists/Gruntfile.js...
+ Reviewed src/joplin-3.6.14/Assets/TinyMCE/IconPack/gulpfile.js. Status: SAFE -- Standard build script with no malicious behavior.
LLM auditresponse for postinstall.js:
<security_assessment>
<decision>SAFE</decision>
<details>
The script reads user input via the `prompts` library, then reads and writes `package.json` in the current directory. It performs no network requests, no obfuscation, no dangerous system calls, and no operations outside the scope of its own package configuration. This is a routine post-install configuration script that allows the user to set an icon pack name. No evidence of malicious behavior (data exfiltration, backdoors, code execution from untrusted sources, or supply-chain attack indicators) was found.
</details>
<summary>Benign user-configuration script; no security issues.</summary>
</security_assessment>

[4/10] Reviewing joplin-desktop.desktop, joplin-desktop.sh, src/joplin-3.6.14/.yarn/patches/formidable-npm-2.1.2-40ba18d67f.patch, src/joplin-3.6.14/.yarn/patches/pdfjs-dist-npm-3.11.174-67f2fee6d6.patch, src/joplin-3.6.14/.yarn/patches/app-builder-lib-npm-24.13.3-86a66c0bf3.patch, src/joplin-3.6.14/Assets/TinyMCE/JoplinLists/Gruntfile.js...
+ Reviewed src/joplin-3.6.14/Assets/TinyMCE/IconPack/postinstall.js. Status: SAFE -- Benign user-configuration script; no security issues.
LLM auditresponse for joplin-desktop.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
The script is a standard launcher for an Electron-based desktop application. It sets `ELECTRON_IS_DEV=0`, navigates to the installation directory, and executes the Electron binary with the application's ASAR file. The `@electronversion@` placeholder indicates a template that gets replaced during packaging; this is normal AUR packaging practice. There are no suspicious network operations, obfuscated code, file manipulations outside the application scope, or any commands that could introduce a supply-chain attack. The script performs only routine startup operations for the intended application.
</details>
<summary>Standard Electron launcher script, no suspicious activity.</summary>
</security_assessment>

[5/10] Reviewing joplin-desktop.desktop, src/joplin-3.6.14/.yarn/patches/formidable-npm-2.1.2-40ba18d67f.patch, src/joplin-3.6.14/.yarn/patches/pdfjs-dist-npm-3.11.174-67f2fee6d6.patch, src/joplin-3.6.14/.yarn/patches/app-builder-lib-npm-24.13.3-86a66c0bf3.patch, src/joplin-3.6.14/Assets/TinyMCE/JoplinLists/Gruntfile.js...
+ Reviewed joplin-desktop.sh. Status: SAFE -- Standard Electron launcher script, no suspicious activity.
LLM auditresponse for Gruntfile.js:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard Grunt build configuration file for a TinyMCE plugin (joplinLists) used within the Joplin application. It defines tasks for cleaning, compiling TypeScript, bundling with Rollup, minifying with Uglify, concatenating license headers, and copying the built output to a local development directory. All commands (`tsc`, `rollup`, `uglify`, etc.) are routine packaging/build tools. There are no obfuscated commands, unexpected network requests, or suspicious file operations. The `copy` task copies the built file to a path within the Joplin project tree, which is normal for development workflows. There is no evidence of malicious behavior such as data exfiltration, code injection, or backdoors.
</details>
<summary>
Standard build configuration, no security issues found.</summary>
</security_assessment>

[6/10] Reviewing joplin-desktop.desktop, src/joplin-3.6.14/.yarn/patches/formidable-npm-2.1.2-40ba18d67f.patch, src/joplin-3.6.14/.yarn/patches/pdfjs-dist-npm-3.11.174-67f2fee6d6.patch, src/joplin-3.6.14/.yarn/patches/app-builder-lib-npm-24.13.3-86a66c0bf3.patch...
+ Reviewed src/joplin-3.6.14/Assets/TinyMCE/JoplinLists/Gruntfile.js. Status: SAFE -- Standard build configuration, no security issues found.
LLM auditresponse for joplin-desktop.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.desktop` file used to register the Joplin application in the desktop environment. It contains no executable code, network requests, obfuscation, or any other suspicious behavior. The file only defines metadata such as the application name, comment, icon, and the command to execute (`/usr/bin/joplin-desktop`). The `MimeType` entry is legitimate for handling the `joplin://` URI scheme. No evidence of malicious activity or supply-chain attack.
</details>
<summary>Standard desktop entry file, no security issues.</summary>
</security_assessment>

[7/10] Reviewing src/joplin-3.6.14/.yarn/patches/formidable-npm-2.1.2-40ba18d67f.patch, src/joplin-3.6.14/.yarn/patches/pdfjs-dist-npm-3.11.174-67f2fee6d6.patch, src/joplin-3.6.14/.yarn/patches/app-builder-lib-npm-24.13.3-86a66c0bf3.patch...
+ Reviewed joplin-desktop.desktop. Status: SAFE -- Standard desktop entry file, no security issues.
LLM auditresponse for pdfjs-dist-npm-3.11.174-67f2fee6d6.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
This patch removes the optional `canvas` dependency from `pdfjs-dist` (PDF.js) because Electron-rebuild fails to build it. The `NodeCanvasFactory` class is modified to throw an error instead of using the `canvas` module, which is standard for adapting a library to an environment where the dependency is unavailable (Electron). There is no obfuscated code, no suspicious network requests, no data exfiltration, and no unexpected file operations. The patch is consistent with the stated purpose of the Joplin package and does not introduce any security concerns.
</details>
<summary>Legitimate patch for Electron compatibility, no malicious content.</summary>
</security_assessment>

[8/10] Reviewing src/joplin-3.6.14/.yarn/patches/formidable-npm-2.1.2-40ba18d67f.patch, src/joplin-3.6.14/.yarn/patches/app-builder-lib-npm-24.13.3-86a66c0bf3.patch...
+ Reviewed src/joplin-3.6.14/.yarn/patches/pdfjs-dist-npm-3.11.174-67f2fee6d6.patch. Status: SAFE -- Legitimate patch for Electron compatibility, no malicious content.
LLM auditresponse for formidable-npm-2.1.2-40ba18d67f.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
The patch fixes a known issue with large uploads in the `formidable-npm` package by replacing lossy string concatenation (`String(chunk)` and `join('')`) with proper `Buffer.concat` followed by `.toString('utf-8')`. This is standard, benign packaging work—a targeted bug fix for corrupted notes/attachments. There are no signs of obfuscation, unexpected network activity, or injected malicious code. The patch aligns with the upstream project's needs and does nothing outside the scope of the package.
</details>
<summary>Legitimate bug fix patch; no security issues.</summary>
</security_assessment>

[9/10] Reviewing src/joplin-3.6.14/.yarn/patches/app-builder-lib-npm-24.13.3-86a66c0bf3.patch...
+ Reviewed src/joplin-3.6.14/.yarn/patches/formidable-npm-2.1.2-40ba18d67f.patch. Status: SAFE -- Legitimate bug fix patch; no security issues.
LLM auditresponse for app-builder-lib-npm-24.13.3-86a66c0bf3.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a patch for NSIS (Nullsoft Scriptable Install System) scripts used by the Joplin application's installer. It modifies the uninstaller logic to handle failures more gracefully and corrects system path references. The changes are sourced from an upstream pull request and are consistent with standard application maintenance. There is no obfuscated code, unexpected network activity, or data exfiltration.
</details>
<summary>Patch for Joplin uninstaller; no malicious signs.</summary>
</security_assessment>

[10/10] Reviewing ...
+ Reviewed src/joplin-3.6.14/.yarn/patches/app-builder-lib-npm-24.13.3-86a66c0bf3.patch. Status: SAFE -- Patch for Joplin uninstaller; no malicious signs.
Reviewed all additional files.
Reviewed additional files.
Audit complete! Result: No issues found
(Skipped 1 file: joplin-3.6.14.tar.gz)

API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 34,307
  Completion Tokens: 7,588
  Total Tokens: 41,895
  Total Cost: $0.004453
  Execution Time: 124.10 seconds
Full audit report can be found in /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-report-joplin.txt
Final Status: SAFE


No issues found.


Audit Skips:

/home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-cn3196ei/joplin-3.6.14.tar.gz: [SKIPPED] Skipping binary file: joplin-3.6.14.tar.gz
