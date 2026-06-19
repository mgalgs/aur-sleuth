---
package: viber
pkgver: 27.3.0.2
pkgrel: 5
result: safe
model: deepseek/deepseek-v4-flash
provider: openrouter.ai
base_url: https://openrouter.ai/api/v1
aur_sleuth_rev: 65e0c3f98e3e15c2f2b5d512e37cace17814cac6
prompt_tokens: 135517
completion_tokens: 7717
total_tokens: 143234
cost: 0.01358559
execution_time: 76.44
files_reviewed: 12
files_skipped: 0
date: 2026-06-19T07:14:30Z
file_verdicts:
  - file: Viber-Terms-of-Service-EN-March-2026.pdf
    status: safe
    summary: Standard PDF document, no malicious code detected.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR packaging; no malicious indicators found.
  - file: src/control
    status: safe
    summary: Declarative metadata file, no security concerns.
  - file: src/0
    status: safe
    summary: Empty file, no security concerns.
  - file: src/opt/viber/qml/Qt/labs/animation/plugins.qmltypes
    status: safe
    summary: Benign QML type metadata, no malicious content.
  - file: src/opt/viber/qml/Qt/labs/animation/qmldir
    status: safe
    summary: Standard QML module metadata file, no security concerns.
  - file: src/opt/viber/qml/QtMultimedia/Video.qml
    status: safe
    summary: Standard Qt QML video component, no security issues.
  - file: src/opt/viber/qml/QtQuick/Controls/Basic/ApplicationWindow.qml
    status: safe
    summary: No malicious code detected; standard QML UI component.
  - file: src/opt/viber/libexec/qt.conf
    status: safe
    summary: No malicious content; a benign Qt configuration file.
  - file: src/usr/share/applications/viber.desktop
    status: safe
    summary: Standard desktop entry file, no security issues.
  - file: src/opt/viber/qml/QtQuick/Controls/Basic/Button.qml
    status: safe
    summary: Standard QML button UI component, no malicious content.
  - file: src/md5sums
    status: safe
    summary: Static checksum list, no executable content.
---

Cloning https://aur.archlinux.org/viber.git to /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-_a51e6ii...
Cloned repository to /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-_a51e6ii
Analyzing viber AUR package (working in /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-_a51e6ii) with deepseek/deepseek-v4-flash from https://openrouter.ai/api/v1
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains no top-level code (outside `prepare()`, `build()`, or `package()`) beyond variable assignments, source definitions, and checksums. There is no `pkgver()` function, and no command substitutions, `eval`, `curl`, `wget`, or other dangerous operations in the global scope. The `source` array references an official Viber CDN URL, a local file (`viber.sh.in`), and a Viber Terms of Service PDF — all legitimate sources. Checksums (`b2sums`) are provided for all entries. Running `makepkg --nobuild --nodeps --noprepare` and `makepkg --printsrcinfo` will only fetch these predefined sources and parse the top-level declarations, which is entirely safe. No malicious behavior is present in the executable scope for these commands.
</details>
<summary>PKGBUILD safe for source fetch and SRCINFO generation</summary>
</security_assessment>

+ Initial PKGBUILD audit complete [grey50]-- PKGBUILD safe for source fetch and SRCINFO generation[/]
Running makepkg --nobuild --nodeps --noprepare to download sources for agent...
makepkg --nobuild --nodeps --noprepare successful
Running makepkg --printsrcinfo to get source files for agent...
makepkg --printsrcinfo successful
Reviewing required files...
[0/2] Reviewing PKGBUILD...
[0/2] Reviewing PKGBUILD, Viber-Terms-of-Service-EN-March-2026.pdf...
LLM auditresponse for Viber-Terms-of-Service-EN-March-2026.pdf:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard PDF document (Viber Terms of Service) with no executable code or suspicious patterns. The content consists of PDF objects, compressed streams, font definitions, and hyperlinks to legitimate Viber domains (viber.com, staging.viber.com). No instances of `curl`, `wget`, `eval`, `base64`, `exec`, or other dangerous commands were found in the visible portions. The file is a static resource included in the AUR package and does not exhibit any supply-chain attack indicators such as data exfiltration, backdoors, or obfuscated code.
</details>
<summary>Standard PDF document, no malicious code detected.</summary>
</security_assessment>

[1/2] Reviewing PKGBUILD...
+ Reviewed Viber-Terms-of-Service-EN-March-2026.pdf. Status: SAFE -- Standard PDF document, no malicious code detected.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard packaging conventions for a proprietary application distributed via a `.deb` archive. All three sources (`viber.deb`, `viber.sh.in`, and the terms-of-service PDF) are fetched from Viber&#39;s official domains (`download.cdn.viber.com` and `viber.com`), which is expected and not suspicious. Integrity checks are provided via `b2sums` for all sources. The `prepare()` function simply extracts the `.deb` content and adjusts the desktop file binary path using `sed`—a routine packaging operation. The `package()` function installs a wrapper script, copies extracted files, renames an icon, and places the license file. No obfuscated commands, unexpected network requests, or system modifications outside the package&#39;s own directories are present. Without evidence of malicious behavior (data exfiltration, backdoors, code execution from untrusted hosts), the file is assessed as safe.
</details>
<summary>Standard AUR packaging; no malicious indicators found.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR packaging; no malicious indicators found.
Reviewed all required files.
Deciding which files to review next...
Note: 350 files available for selection; offering the 50 highest-priority to the model. 83 lower-priority file(s) were not offered.
LLM response for file selection:
src/usr/share/applications/viber.desktop
src/opt/viber/libexec/qt.conf
src/0
src/control
src/md5sums
src/opt/viber/qml/QtMultimedia/Video.qml
src/opt/viber/qml/QtQuick/Controls/Basic/ApplicationWindow.qml
src/opt/viber/qml/QtQuick/Controls/Basic/Button.qml
src/opt/viber/qml/Qt/labs/animation/plugins.qmltypes
src/opt/viber/qml/Qt/labs/animation/qmldir
Decided to review 10 additional files: src/usr/share/applications/viber.desktop, src/opt/viber/libexec/qt.conf, src/0, src/control, src/md5sums, src/opt/viber/qml/QtMultimedia/Video.qml, src/opt/viber/qml/QtQuick/Controls/Basic/ApplicationWindow.qml, src/opt/viber/qml/QtQuick/Controls/Basic/Button.qml, src/opt/viber/qml/Qt/labs/animation/plugins.qmltypes, src/opt/viber/qml/Qt/labs/animation/qmldir
Reviewing additional files...
Reviewing additional files...
[0/10] Reviewing src/usr/share/applications/viber.desktop...
[0/10] Reviewing src/usr/share/applications/viber.desktop, src/0...
[0/10] Reviewing src/usr/share/applications/viber.desktop, src/0, src/md5sums...
[0/10] Reviewing src/usr/share/applications/viber.desktop, src/0, src/md5sums, src/opt/viber/libexec/qt.conf...
[0/10] Reviewing src/usr/share/applications/viber.desktop, src/0, src/md5sums, src/opt/viber/libexec/qt.conf, src/control...
[0/10] Reviewing src/usr/share/applications/viber.desktop, src/0, src/md5sums, src/opt/viber/libexec/qt.conf, src/control, src/opt/viber/qml/QtMultimedia/Video.qml...
[0/10] Reviewing src/usr/share/applications/viber.desktop, src/0, src/md5sums, src/opt/viber/libexec/qt.conf, src/control, src/opt/viber/qml/QtMultimedia/Video.qml, src/opt/viber/qml/QtQuick/Controls/Basic/ApplicationWindow.qml...
[0/10] Reviewing src/usr/share/applications/viber.desktop, src/0, src/md5sums, src/opt/viber/libexec/qt.conf, src/control, src/opt/viber/qml/QtMultimedia/Video.qml, src/opt/viber/qml/QtQuick/Controls/Basic/ApplicationWindow.qml, src/opt/viber/qml/QtQuick/Controls/Basic/Button.qml...
[0/10] Reviewing src/usr/share/applications/viber.desktop, src/0, src/md5sums, src/opt/viber/libexec/qt.conf, src/control, src/opt/viber/qml/QtMultimedia/Video.qml, src/opt/viber/qml/QtQuick/Controls/Basic/ApplicationWindow.qml, src/opt/viber/qml/QtQuick/Controls/Basic/Button.qml, src/opt/viber/qml/Qt/labs/animation/plugins.qmltypes...
[0/10] Reviewing src/usr/share/applications/viber.desktop, src/0, src/md5sums, src/opt/viber/libexec/qt.conf, src/control, src/opt/viber/qml/QtMultimedia/Video.qml, src/opt/viber/qml/QtQuick/Controls/Basic/ApplicationWindow.qml, src/opt/viber/qml/QtQuick/Controls/Basic/Button.qml, src/opt/viber/qml/Qt/labs/animation/plugins.qmltypes, src/opt/viber/qml/Qt/labs/animation/qmldir...
LLM auditresponse for control:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a Debian control file containing only package metadata (name, version, dependencies, description, etc.). There is no executable code, no scripts, no network requests, and no system modifications. It is purely declarative and poses no security risk.
</details>
<summary>Declarative metadata file, no security concerns.</summary>
</security_assessment>

[1/10] Reviewing src/usr/share/applications/viber.desktop, src/0, src/md5sums, src/opt/viber/libexec/qt.conf, src/opt/viber/qml/QtMultimedia/Video.qml, src/opt/viber/qml/QtQuick/Controls/Basic/ApplicationWindow.qml, src/opt/viber/qml/QtQuick/Controls/Basic/Button.qml, src/opt/viber/qml/Qt/labs/animation/plugins.qmltypes, src/opt/viber/qml/Qt/labs/animation/qmldir...
+ Reviewed src/control. Status: SAFE -- Declarative metadata file, no security concerns.
LLM auditresponse for 0:
<security_assessment>
<decision>SAFE</decision>
<details>
The file contains no content besides an empty XML-like tag. There is no code, no instructions, and no data to analyze for security issues. Therefore, no malicious behavior is present.
</details>
<summary>Empty file, no security concerns.</summary>
</security_assessment>

[2/10] Reviewing src/usr/share/applications/viber.desktop, src/md5sums, src/opt/viber/libexec/qt.conf, src/opt/viber/qml/QtMultimedia/Video.qml, src/opt/viber/qml/QtQuick/Controls/Basic/ApplicationWindow.qml, src/opt/viber/qml/QtQuick/Controls/Basic/Button.qml, src/opt/viber/qml/Qt/labs/animation/plugins.qmltypes, src/opt/viber/qml/Qt/labs/animation/qmldir...
+ Reviewed src/0. Status: SAFE -- Empty file, no security concerns.
LLM auditresponse for plugins.qmltypes:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard QML types registration file auto-generated by `qmltyperegistrar`. It contains only metadata describing the `QQuickBoundaryRule` component (properties, signals, methods, enums) for Qt tooling purposes. There are no shell commands, network requests, obfuscated code, or any operations that could be exploited. The content is entirely benign and consistent with normal Qt package distribution.
</details>
<summary>Benign QML type metadata, no malicious content.</summary>
</security_assessment>

[3/10] Reviewing src/usr/share/applications/viber.desktop, src/md5sums, src/opt/viber/libexec/qt.conf, src/opt/viber/qml/QtMultimedia/Video.qml, src/opt/viber/qml/QtQuick/Controls/Basic/ApplicationWindow.qml, src/opt/viber/qml/QtQuick/Controls/Basic/Button.qml, src/opt/viber/qml/Qt/labs/animation/qmldir...
+ Reviewed src/opt/viber/qml/Qt/labs/animation/plugins.qmltypes. Status: SAFE -- Benign QML type metadata, no malicious content.
LLM auditresponse for qmldir:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a QML module definition (`qmldir`) for the Qt module `Qt.labs.animation`. It contains only metadata: module name, linked target, optional plugin, class name, type info, dependencies, and a path preference. There are no executable commands, no obfuscation, no network requests, and no file system operations. It is a standard configuration file used by the Qt QML engine and poses no security risk.
</details>
<summary>Standard QML module metadata file, no security concerns.</summary>
</security_assessment>

[4/10] Reviewing src/usr/share/applications/viber.desktop, src/md5sums, src/opt/viber/libexec/qt.conf, src/opt/viber/qml/QtMultimedia/Video.qml, src/opt/viber/qml/QtQuick/Controls/Basic/ApplicationWindow.qml, src/opt/viber/qml/QtQuick/Controls/Basic/Button.qml...
+ Reviewed src/opt/viber/qml/Qt/labs/animation/qmldir. Status: SAFE -- Standard QML module metadata file, no security concerns.
LLM auditresponse for Video.qml:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard QML type definition from the Qt Multimedia module. It defines a `Video` convenience type that combines `MediaPlayer` and `VideoOutput`. The code contains only property aliases, signal declarations, and function wrappers around the underlying player and output components. There are no suspicious network operations, obfuscated code, system modifications, or any behavior that deviates from normal application functionality. This is upstream Qt source code, not a supply-chain attack.
</details>
<summary>Standard Qt QML video component, no security issues.</summary>
</security_assessment>

[5/10] Reviewing src/usr/share/applications/viber.desktop, src/md5sums, src/opt/viber/libexec/qt.conf, src/opt/viber/qml/QtQuick/Controls/Basic/ApplicationWindow.qml, src/opt/viber/qml/QtQuick/Controls/Basic/Button.qml...
+ Reviewed src/opt/viber/qml/QtMultimedia/Video.qml. Status: SAFE -- Standard Qt QML video component, no security issues.
LLM auditresponse for ApplicationWindow.qml:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard Qt Quick QML component, `ApplicationWindow`, provided by the Qt Company with the usual LGPL/GPL licensing header. It contains no executable code, no network requests, no file operations, and no obfuscated content. It is a static UI element that sets the window color to the system palette value. There is no evidence of malicious behavior, and it does not deviate from standard packaging practices. It is safe.
</details>
<summary>No malicious code detected; standard QML UI component.</summary>
</security_assessment>

[6/10] Reviewing src/usr/share/applications/viber.desktop, src/md5sums, src/opt/viber/libexec/qt.conf, src/opt/viber/qml/QtQuick/Controls/Basic/Button.qml...
+ Reviewed src/opt/viber/qml/QtQuick/Controls/Basic/ApplicationWindow.qml. Status: SAFE -- No malicious code detected; standard QML UI component.
LLM auditresponse for qt.conf:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard Qt configuration file (`qt.conf`) that sets the `Prefix` path to `../`. This is a common technique to make Qt applications relocatable, allowing them to find their resources relative to the executable or library location. There is no embedded code, no network requests, no obfuscation, and no system modification. The file is a simple key-value pair and does not contain any malicious behavior. It is consistent with normal packaging practices for applications that bundle Qt libraries.
</details>
<summary>No malicious content; a benign Qt configuration file.</summary>
</security_assessment>

[7/10] Reviewing src/usr/share/applications/viber.desktop, src/md5sums, src/opt/viber/qml/QtQuick/Controls/Basic/Button.qml...
+ Reviewed src/opt/viber/libexec/qt.conf. Status: SAFE -- No malicious content; a benign Qt configuration file.
LLM auditresponse for viber.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.desktop` file for the Viber application. It contains typical metadata: name, comment, executable path (`/opt/viber/Viber`), icon, categories, and MIME type. There is no evidence of malicious code, obfuscation, or unexpected system modifications. The file simply registers the application in the desktop environment and has no executable content. It is consistent with normal packaging practices.
</details>
<summary>Standard desktop entry file, no security issues.</summary>
</security_assessment>

[8/10] Reviewing src/md5sums, src/opt/viber/qml/QtQuick/Controls/Basic/Button.qml...
+ Reviewed src/usr/share/applications/viber.desktop. Status: SAFE -- Standard desktop entry file, no security issues.
LLM auditresponse for Button.qml:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard QML UI component file from Qt Quick Controls, defining the visual appearance and behavior of a button. The file contains only typical QML property bindings for styling (padding, spacing, colors, borders) and uses standard Qt imports (QtQuick, QtQuick.Controls.impl, QtQuick.Templates). There are no network requests, file operations, system commands, obfuscated code, or any other malicious patterns. The `&amp;` occurrences are standard XML entity escaping for the `&` operator in QML and do not indicate any malicious intent. This is purely upstream application UI code with no security concerns.
</details>
<summary>Standard QML button UI component, no malicious content.</summary>
</security_assessment>

[9/10] Reviewing src/md5sums...
+ Reviewed src/opt/viber/qml/QtQuick/Controls/Basic/Button.qml. Status: SAFE -- Standard QML button UI component, no malicious content.
LLM auditresponse for md5sums:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a plain-text list of MD5 checksums paired with file paths. It contains no executable code, no instructions, no network references, and no obfuscated content. This is a standard packaging integrity file, typical of AUR PKGBUILDs or bundled package metadata. There is no evidence of malicious or dangerous behavior.
</details>
<summary>Static checksum list, no executable content.</summary>
</security_assessment>

[10/10] Reviewing ...
+ Reviewed src/md5sums. Status: SAFE -- Static checksum list, no executable content.
Reviewed all additional files.
Reviewed additional files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 135,517
  Completion Tokens: 7,717
  Total Tokens: 143,234
  Total Cost: $0.013586
  Execution Time: 76.44 seconds
Full audit report can be found in /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-report-viber.txt
Final Status: SAFE


No issues found.
