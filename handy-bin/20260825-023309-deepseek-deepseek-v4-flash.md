---
package: handy-bin
pkgver: 0.9.6
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 76c02596d4f1a58500b30a8fd37c0598e2c7d68c
prompt_tokens: 22496
completion_tokens: 2971
total_tokens: 25467
cost: 0.002519777428
execution_time: 78.65
files_reviewed: 8
files_skipped: 0
files_unauditable: 28
unpinned_sources: 0
date: 2026-08-25T02:33:09Z
file_verdicts:
  - file: LICENSE
    status: safe
    summary: Standard MIT license, no security issues.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD with verified upstream sources and no malicious behavior.
  - file: src/control
    status: safe
    summary: Static metadata file; no code, no suspicious behavior, no security risk.
  - file: .nvchecker.toml
    status: safe
    summary: Standard nvchecker config, no security issues.
  - file: src/md5sums
    status: safe
    summary: Static checksum list, no malicious content.
  - file: src/usr/share/applications/Handy.desktop
    status: safe
    summary: Standard desktop entry file, no malicious content.
  - file: src/usr/lib/Handy/resources/models/gigaam_vocab.txt
    status: safe
    summary: Safe vocabulary data file.
  - file: src/usr/lib/Handy/resources/default_settings.json
    status: safe
    summary: Static JSON config, no security concerns.
---

Cloning https://aur.archlinux.org/handy-bin.git...
Cloned handy-bin
Analyzing handy-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only top-level variable assignments (pkgname, pkgver, source, b2sums, etc.) and a package() function. The source array points to the official upstream GitHub repository for both the binary .deb package and the LICENSE file. No code executes at the top level beyond variable expansion, and there is no pkgver() function defined. The `package()` function is not executed by the commands in scope (`--nobuild --noprepare`). The checksums are provided and not skipped. No malicious or obfuscated content is present at the top level. Fetching the sources and sourcing the PKGBUILD is safe.
</details>
<evidence></evidence>
<summary>No top-level code or source fetching is dangerous.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No top-level code or source fetching is dangerous.
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Running makepkg --printsrcinfo to get source files for agent...
makepkg --printsrcinfo successful
Reviewing required files...
[0/2] Reviewing PKGBUILD...
[0/2] Reviewing PKGBUILD, LICENSE...
LLM auditresponse for LICENSE:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard MIT License text for the handy-bin package. It contains no executable code, no network requests, no obfuscation, and no system modifications. There are no security concerns whatsoever.
</details>
<evidence></evidence>
<summary>Standard MIT license, no security issues.</summary>
</security_assessment>

[1/2] Reviewing PKGBUILD...
+ Reviewed LICENSE. Status: SAFE -- Standard MIT license, no security issues.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard Arch Linux packaging practices for a prebuilt binary package. It downloads the application&#39;s `.deb` package and the project&#39;s `LICENSE` from the official GitHub repository of the upstream project. Checksums are provided for both sources, ensuring integrity. The `package()` function simply extracts the archive contents into the package directory, installs the license file, and adjusts the desktop file category—all routine operations. There are no suspicious network requests, obfuscated code, dangerous command usage (e.g., `eval`, `curl|bash`), or any exfiltration or backdoor mechanisms. The package behaves exactly as expected for a binary redistribution.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD with verified upstream sources and no malicious behavior.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD with verified upstream sources and no malicious behavior.
Reviewed all required files.
Deciding which files to review next...
Note: 28 compiled/archived file(s) cannot be audited as text and were not reviewed (handy-bin-0.9.6.deb, src/control.tar.gz, src/data.tar.gz and 25 more). For a package that ships prebuilt binaries, the audit covers the packaging, not the payload.
Decided to review 6 additional files: .nvchecker.toml, src/control, src/md5sums, src/usr/lib/Handy/resources/default_settings.json, src/usr/lib/Handy/resources/models/gigaam_vocab.txt, src/usr/share/applications/Handy.desktop
Reviewing additional files...
Reviewing additional files...
[0/6] Reviewing .nvchecker.toml...
[0/6] Reviewing .nvchecker.toml, src/control...
[0/6] Reviewing .nvchecker.toml, src/control, src/md5sums...
LLM auditresponse for control:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a Debian package control file containing only metadata: package name, version, architecture, installed size, maintainer, priority, dependencies, and description. There is no executable code, no scripts, no network requests, and no file operations. The dependencies listed are standard system libraries for a GTK-based application (“handy”). Nothing in this file constitutes malicious behavior or a supply-chain attack. It is purely descriptive metadata.
</details>
<evidence>
</evidence>
<summary>
Static metadata file; no code, no suspicious behavior, no security risk.</summary>
</security_assessment>

[1/6] Reviewing .nvchecker.toml, src/md5sums...
+ Reviewed src/control. Status: SAFE -- Static metadata file; no code, no suspicious behavior, no security risk.
[1/6] Reviewing .nvchecker.toml, src/md5sums, src/usr/lib/Handy/resources/default_settings.json...
LLM auditresponse for .nvchecker.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a configuration for `nvchecker`, a tool used to automatically check for new upstream versions of a package. It specifies the package name `handy-bin`, the source type as `git`, the repository URL (`https://github.com/cjpais/Handy.git`), and a version prefix of `v`. All elements are standard and expected for AUR package version tracking. There is no obfuscation, no dangerous commands, no unexpected network destinations, and no evidence of malicious behavior. The configuration solely serves its intended purpose of version monitoring.
</details>
<evidence></evidence>
<summary>Standard nvchecker config, no security issues.</summary>
</security_assessment>

[2/6] Reviewing src/md5sums, src/usr/lib/Handy/resources/default_settings.json...
+ Reviewed .nvchecker.toml. Status: SAFE -- Standard nvchecker config, no security issues.
[2/6] Reviewing src/md5sums, src/usr/lib/Handy/resources/default_settings.json, src/usr/lib/Handy/resources/models/gigaam_vocab.txt...
LLM auditresponse for md5sums:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a typical md5sums listing used in Arch packaging to verify the integrity of prebuilt binary files. It contains only static MD5 checksums and file paths under `/usr/bin/`, `/usr/lib/Handy/`, `/usr/share/`, etc. There is no executable code, no obfuscation, no network requests, and no attempt to modify the system or exfiltrate data. The content is entirely harmless and consistent with standard package verification practices. The use of MD5 (which is cryptographically weak) is a hygiene concern but not a supply-chain attack marker per the provided guidelines.
</details>
<evidence></evidence>
<summary>Static checksum list, no malicious content.</summary>
</security_assessment>

[3/6] Reviewing src/usr/lib/Handy/resources/default_settings.json, src/usr/lib/Handy/resources/models/gigaam_vocab.txt...
+ Reviewed src/md5sums. Status: SAFE -- Static checksum list, no malicious content.
[3/6] Reviewing src/usr/lib/Handy/resources/default_settings.json, src/usr/lib/Handy/resources/models/gigaam_vocab.txt, src/usr/share/applications/Handy.desktop...
LLM auditresponse for Handy.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard .desktop file for the Handy application. It contains only metadata (Name, Comment, Icon, Exec, etc.) and no executable code, network requests, or any suspicious operations. The empty Categories field is unconventional but not a security concern.
</details>
<evidence></evidence>
<summary>Standard desktop entry file, no malicious content.</summary>
</security_assessment>

[4/6] Reviewing src/usr/lib/Handy/resources/default_settings.json, src/usr/lib/Handy/resources/models/gigaam_vocab.txt...
+ Reviewed src/usr/share/applications/Handy.desktop. Status: SAFE -- Standard desktop entry file, no malicious content.
LLM auditresponse for gigaam_vocab.txt:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a plain text vocabulary mapping tokens (words, subwords, characters, punctuation, and special symbols) to numerical indices. The content is strictly data for a speech recognition model (GigaAM from Sber) and contains no executable code, network requests, file operations, or any other behavior that could be exploited. It is entirely benign and poses no security risk.
</details>
<evidence></evidence>
<summary>Safe vocabulary data file.</summary>
</security_assessment>

[5/6] Reviewing src/usr/lib/Handy/resources/default_settings.json...
+ Reviewed src/usr/lib/Handy/resources/models/gigaam_vocab.txt. Status: SAFE -- Safe vocabulary data file.
LLM auditresponse for default_settings.json:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `default_settings.json` is a static JSON configuration file for an application named "Handy". It contains default settings for keyboard bindings, push-to-talk mode, and language selection. There is no executable code, no network requests, no obfuscation, no system modifications, and no attempt to fetch or execute external content. The content is entirely benign data that defines application defaults. The HTML-encoded quotes (`&quot;`) appear to be an artifact of how the file was presented in the prompt and do not represent malicious encoding. This file poses no security risk.
</details>
<evidence></evidence>
<summary>Static JSON config, no security concerns.</summary>
</security_assessment>

[6/6] Reviewing ...
+ Reviewed src/usr/lib/Handy/resources/default_settings.json. Status: SAFE -- Static JSON config, no security concerns.
Reviewed all additional files.
Reviewed additional files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 22,496
  Completion Tokens: 2,971
  Total Tokens: 25,467
  Total Cost: $0.002520
  Execution Time: 78.65 seconds

Final Status: SAFE


No issues found.
