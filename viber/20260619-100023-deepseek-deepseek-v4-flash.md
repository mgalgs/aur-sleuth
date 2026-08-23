---
package: viber
pkgver: 27.3.0.2
pkgrel: 5
result: safe
model: deepseek/deepseek-v4-flash
provider: openrouter.ai
base_url: https://openrouter.ai/api/v1
aur_sleuth_rev: 11c93a0c95e2166961e3664fea6b5a63827ded10
prompt_tokens: 133868
completion_tokens: 6349
total_tokens: 140217
cost: 0.01319094
execution_time: 103.5
files_reviewed: 12
files_skipped: 0
date: 2026-06-19T10:00:23Z
file_verdicts:
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD with no malicious indicators.
  - file: Viber-Terms-of-Service-EN-March-2026.pdf
    status: safe
    summary: Legitimate PDF with no malicious indicators.
  - file: src/0
    status: safe
    summary: Empty file, no security concerns.
  - file: src/usr/share/applications/viber.desktop
    status: safe
    summary: Standard desktop entry file, no security issues.
  - file: src/opt/viber/qml/QtQuick/Controls/Basic/Action.qml
    status: safe
    summary: Standard Qt QML component with no suspicious content.
  - file: src/opt/viber/qml/QtMultimedia/Video.qml
    status: safe
    summary: Standard QtMultimedia Video QML type; no malicious code found.
  - file: src/opt/viber/qml/QtQuick/Controls/Basic/CalendarModel.qml
    status: safe
    summary: Empty QML stub, no malicious content.
  - file: src/md5sums
    status: safe
    summary: Plain checksum listing, no malicious content.
  - file: src/opt/viber/qml/QtQuick/Controls/Basic/AbstractButton.qml
    status: safe
    summary: Standard QML UI component, no security issues.
  - file: src/control
    status: safe
    summary: Standard package metadata file with no security issues.
  - file: src/opt/viber/qml/QtQuick/Controls/Basic/Calendar.qml
    status: safe
    summary: Standard QML file, no security concerns.
  - file: src/opt/viber/libexec/qt.conf
    status: safe
    summary: Standard Qt configuration, no security issues.
---

Cloning https://aur.archlinux.org/viber.git to /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-u3va7ss7...
Cloned repository to /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-u3va7ss7
Analyzing viber AUR package (working in /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-u3va7ss7) with deepseek/deepseek-v4-flash from https://openrouter.ai/api/v1
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD does not contain any dangerous code in its global (top-level) scope or in `pkgver()`. The source array points to official Viber CDN URLs and a local file. There are no command substitutions, obfuscated commands, or network requests that would exfiltrate data or execute untrusted payloads during sourcing. The `prepare()`, `build()`, and `package()` functions are not executed due to the `--nobuild` and `--noprepare` flags, so any code within them is out of scope for this assessment. Running `makepkg --nobuild --nodeps --noprepare` and `--printsrcinfo` is safe.
</details>
<summary>No dangerous top-level code; sourcing and downloading are safe.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete [grey50]-- No dangerous top-level code; sourcing and downloading are safe.[/]
Running makepkg --nobuild --nodeps --noprepare to download sources for agent...
makepkg --nobuild --nodeps --noprepare successful
Running makepkg --printsrcinfo to get source files for agent...
makepkg --printsrcinfo successful
Reviewing required files...
[0/2] Reviewing PKGBUILD...
[0/2] Reviewing PKGBUILD, Viber-Terms-of-Service-EN-March-2026.pdf...
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard AUR packaging practices. It downloads the official Viber `.deb` package from the vendor's CDN (`download.cdn.viber.com`) over HTTPS, and a license PDF from the official Viber website. All source checksums (b2sums) are provided and not skipped, ensuring integrity. The `prepare()` and `package()` functions perform routine operations: extracting the archive, patching the desktop file, installing a wrapper script, and copying files into the package directory. There is no obfuscated code, no unexpected network requests, no exfiltration, and no execution of attacker-controlled content. The file is consistent with legitimate packaging and does not contain any supply-chain attack indicators.
</details>
<summary>Standard PKGBUILD with no malicious indicators.</summary>
</security_assessment>

[1/2] Reviewing Viber-Terms-of-Service-EN-March-2026.pdf...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD with no malicious indicators.
LLM auditresponse for Viber-Terms-of-Service-EN-March-2026.pdf:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a legitimate PDF document (Viber Terms of Service) containing standard PDF objects, font definitions, and hyperlinks to viber.com and related domains. The truncated content shows no matches for suspicious patterns such as curl, wget, eval, base64, or exec. The annotated URIs point to Viber's own policy pages and are consistent with the document's stated purpose. No obfuscated code, unexpected file operations, or exfiltration mechanisms were detected.
</details>
<summary>Legitimate PDF with no malicious indicators.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed Viber-Terms-of-Service-EN-March-2026.pdf. Status: SAFE -- Legitimate PDF with no malicious indicators.
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
src/opt/viber/qml/QtQuick/Controls/Basic/AbstractButton.qml
src/opt/viber/qml/QtQuick/Controls/Basic/Action.qml
src/opt/viber/qml/QtQuick/Controls/Basic/Calendar.qml
src/opt/viber/qml/QtQuick/Controls/Basic/CalendarModel.qml
Decided to review 10 additional files: src/usr/share/applications/viber.desktop, src/opt/viber/libexec/qt.conf, src/0, src/control, src/md5sums, src/opt/viber/qml/QtMultimedia/Video.qml, src/opt/viber/qml/QtQuick/Controls/Basic/AbstractButton.qml, src/opt/viber/qml/QtQuick/Controls/Basic/Action.qml, src/opt/viber/qml/QtQuick/Controls/Basic/Calendar.qml, src/opt/viber/qml/QtQuick/Controls/Basic/CalendarModel.qml
Reviewing additional files...
Reviewing additional files...
[0/10] Reviewing src/usr/share/applications/viber.desktop...
[0/10] Reviewing src/usr/share/applications/viber.desktop, src/0...
[0/10] Reviewing src/usr/share/applications/viber.desktop, src/0, src/opt/viber/libexec/qt.conf...
[0/10] Reviewing src/usr/share/applications/viber.desktop, src/0, src/opt/viber/libexec/qt.conf, src/md5sums...
[0/10] Reviewing src/usr/share/applications/viber.desktop, src/0, src/opt/viber/libexec/qt.conf, src/md5sums, src/control...
[0/10] Reviewing src/usr/share/applications/viber.desktop, src/0, src/opt/viber/libexec/qt.conf, src/md5sums, src/control, src/opt/viber/qml/QtMultimedia/Video.qml...
[0/10] Reviewing src/usr/share/applications/viber.desktop, src/0, src/opt/viber/libexec/qt.conf, src/md5sums, src/control, src/opt/viber/qml/QtMultimedia/Video.qml, src/opt/viber/qml/QtQuick/Controls/Basic/Calendar.qml...
[0/10] Reviewing src/usr/share/applications/viber.desktop, src/0, src/opt/viber/libexec/qt.conf, src/md5sums, src/control, src/opt/viber/qml/QtMultimedia/Video.qml, src/opt/viber/qml/QtQuick/Controls/Basic/Calendar.qml, src/opt/viber/qml/QtQuick/Controls/Basic/Action.qml...
[0/10] Reviewing src/usr/share/applications/viber.desktop, src/0, src/opt/viber/libexec/qt.conf, src/md5sums, src/control, src/opt/viber/qml/QtMultimedia/Video.qml, src/opt/viber/qml/QtQuick/Controls/Basic/Calendar.qml, src/opt/viber/qml/QtQuick/Controls/Basic/Action.qml, src/opt/viber/qml/QtQuick/Controls/Basic/AbstractButton.qml...
[0/10] Reviewing src/usr/share/applications/viber.desktop, src/0, src/opt/viber/libexec/qt.conf, src/md5sums, src/control, src/opt/viber/qml/QtMultimedia/Video.qml, src/opt/viber/qml/QtQuick/Controls/Basic/Calendar.qml, src/opt/viber/qml/QtQuick/Controls/Basic/Action.qml, src/opt/viber/qml/QtQuick/Controls/Basic/AbstractButton.qml, src/opt/viber/qml/QtQuick/Controls/Basic/CalendarModel.qml...
LLM auditresponse for 0:
<security_assessment>
<decision>SAFE</decision>
<details>
The provided file is empty, containing no code or instructions. Therefore, there are no security issues to analyze.
</details>
<summary>Empty file, no security concerns.</summary>
</security_assessment>

[1/10] Reviewing src/usr/share/applications/viber.desktop, src/opt/viber/libexec/qt.conf, src/md5sums, src/control, src/opt/viber/qml/QtMultimedia/Video.qml, src/opt/viber/qml/QtQuick/Controls/Basic/Calendar.qml, src/opt/viber/qml/QtQuick/Controls/Basic/Action.qml, src/opt/viber/qml/QtQuick/Controls/Basic/AbstractButton.qml, src/opt/viber/qml/QtQuick/Controls/Basic/CalendarModel.qml...
+ Reviewed src/0. Status: SAFE -- Empty file, no security concerns.
LLM auditresponse for viber.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard Linux desktop entry file for the Viber application. It defines the application name, executable path (`/opt/viber/Viber`), icon, categories, and MIME type. There are no suspicious commands, network requests, obfuscated content, or unexpected system modifications. The file follows normal packaging conventions and contains only static configuration data.
</details>
<summary>Standard desktop entry file, no security issues.</summary>
</security_assessment>

[2/10] Reviewing src/opt/viber/libexec/qt.conf, src/md5sums, src/control, src/opt/viber/qml/QtMultimedia/Video.qml, src/opt/viber/qml/QtQuick/Controls/Basic/Calendar.qml, src/opt/viber/qml/QtQuick/Controls/Basic/Action.qml, src/opt/viber/qml/QtQuick/Controls/Basic/AbstractButton.qml, src/opt/viber/qml/QtQuick/Controls/Basic/CalendarModel.qml...
+ Reviewed src/usr/share/applications/viber.desktop. Status: SAFE -- Standard desktop entry file, no security issues.
LLM auditresponse for Action.qml:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `Action.qml` is a minimal QML component definition that imports standard Qt Quick modules and instantiates an empty `T.Action`. No network requests, file operations, system modifications, or obfuscated code are present. The content matches typical Qt QML boilerplate and contains no indicators of malicious intent.
</details>
<summary>Standard Qt QML component with no suspicious content.</summary>
</security_assessment>

[3/10] Reviewing src/opt/viber/libexec/qt.conf, src/md5sums, src/control, src/opt/viber/qml/QtMultimedia/Video.qml, src/opt/viber/qml/QtQuick/Controls/Basic/Calendar.qml, src/opt/viber/qml/QtQuick/Controls/Basic/AbstractButton.qml, src/opt/viber/qml/QtQuick/Controls/Basic/CalendarModel.qml...
+ Reviewed src/opt/viber/qml/QtQuick/Controls/Basic/Action.qml. Status: SAFE -- Standard Qt QML component with no suspicious content.
LLM auditresponse for Video.qml:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard QML type definition for a `Video` component from the QtMultimedia module. It contains property aliases, signals, methods, and documentation. There is no obfuscated code, no network requests, no execution of downloaded content, no suspicious file operations, or any other malicious behavior. It is a legitimate and expected part of the Qt framework, serving the purpose of providing a convenient video playback element for QML applications. No supply-chain attack indicators are present.
</details>
<summary>Standard QtMultimedia Video QML type; no malicious code found.</summary>
</security_assessment>

[4/10] Reviewing src/opt/viber/libexec/qt.conf, src/md5sums, src/control, src/opt/viber/qml/QtQuick/Controls/Basic/Calendar.qml, src/opt/viber/qml/QtQuick/Controls/Basic/AbstractButton.qml, src/opt/viber/qml/QtQuick/Controls/Basic/CalendarModel.qml...
+ Reviewed src/opt/viber/qml/QtMultimedia/Video.qml. Status: SAFE -- Standard QtMultimedia Video QML type; no malicious code found.
LLM auditresponse for CalendarModel.qml:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `CalendarModel.qml` is a minimal QML file that simply imports `QtQuick.Templates` and creates an empty `T.CalendarModel {}` object. There is no executable code, no network requests, no obfuscation, and no system modifications. The comment about "Qt-Security score" is just metadata and not a threat. This file poses no security risk.
</details>
<summary>Empty QML stub, no malicious content.</summary>
</security_assessment>

[5/10] Reviewing src/opt/viber/libexec/qt.conf, src/md5sums, src/control, src/opt/viber/qml/QtQuick/Controls/Basic/Calendar.qml, src/opt/viber/qml/QtQuick/Controls/Basic/AbstractButton.qml...
+ Reviewed src/opt/viber/qml/QtQuick/Controls/Basic/CalendarModel.qml. Status: SAFE -- Empty QML stub, no malicious content.
LLM auditresponse for md5sums:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard md5sums manifest listing checksums and file paths for the Viber package. It contains no executable code, commands, network requests, or any logic. It is a data file used for integrity verification and poses no security risk.
</details>
<summary>Plain checksum listing, no malicious content.</summary>
</security_assessment>

[6/10] Reviewing src/opt/viber/libexec/qt.conf, src/control, src/opt/viber/qml/QtQuick/Controls/Basic/Calendar.qml, src/opt/viber/qml/QtQuick/Controls/Basic/AbstractButton.qml...
+ Reviewed src/md5sums. Status: SAFE -- Plain checksum listing, no malicious content.
LLM auditresponse for AbstractButton.qml:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard QML component from the Qt framework defining an `AbstractButton` layout. It imports `QtQuick` and `QtQuick.Templates` and sets `implicitWidth` and `implicitHeight` using standard Qt Quick properties. There are no network requests, file operations, obfuscated code, or any executable commands. The comment about "Qt-Security score" is just a metadata comment and has no runtime effect. This file does not contain any malicious or suspicious behavior.
</details>
<summary>Standard QML UI component, no security issues.</summary>
</security_assessment>

[7/10] Reviewing src/opt/viber/libexec/qt.conf, src/control, src/opt/viber/qml/QtQuick/Controls/Basic/Calendar.qml...
+ Reviewed src/opt/viber/qml/QtQuick/Controls/Basic/AbstractButton.qml. Status: SAFE -- Standard QML UI component, no security issues.
LLM auditresponse for control:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard Debian package control file containing metadata such as package name, version, dependencies, and description. It contains no executable code, no network requests, no obfuscation, and no suspicious operations. It simply defines the package's attributes and dependencies for package management. There are no security concerns.
</details>
<summary>Standard package metadata file with no security issues.</summary>
</security_assessment>

[8/10] Reviewing src/opt/viber/libexec/qt.conf, src/opt/viber/qml/QtQuick/Controls/Basic/Calendar.qml...
+ Reviewed src/control. Status: SAFE -- Standard package metadata file with no security issues.
LLM auditresponse for Calendar.qml:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard Qt QML singleton that re-exports `Calendar` from `QtQuick.Templates`. It contains no network requests, system modifications, or any other potentially malicious behavior. It is a simple wrapper and safe.</details>
<summary>Standard QML file, no security concerns.</summary>
</security_assessment>

[9/10] Reviewing src/opt/viber/libexec/qt.conf...
+ Reviewed src/opt/viber/qml/QtQuick/Controls/Basic/Calendar.qml. Status: SAFE -- Standard QML file, no security concerns.
LLM auditresponse for qt.conf:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard Qt `qt.conf` configuration file. It sets the `Prefix` path to `../`, which is a relative path pointing to the parent directory of the application's installation location. This is a common technique used by portable or self-contained applications (e.g., AppImages or bundled software) to locate their Qt libraries dynamically. The file contains no executable code, no obfuscation, no network requests, and no system modifications. It is entirely benign and follows normal packaging practices for applications that ship their own Qt dependencies.
</details>
<summary>Standard Qt configuration, no security issues.</summary>
</security_assessment>

[10/10] Reviewing ...
+ Reviewed src/opt/viber/libexec/qt.conf. Status: SAFE -- Standard Qt configuration, no security issues.
Reviewed all additional files.
Reviewed additional files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 133,868
  Completion Tokens: 6,349
  Total Tokens: 140,217
  Total Cost: $0.013191
  Execution Time: 103.50 seconds
Full audit report can be found in /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-report-viber.txt
Final Status: SAFE


No issues found.
