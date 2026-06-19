---
package: spideroak-one
pkgver: 7.5.2
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: openrouter.ai
base_url: https://openrouter.ai/api/v1
aur_sleuth_rev: 65e0c3f98e3e15c2f2b5d512e37cace17814cac6
prompt_tokens: 37443
completion_tokens: 8140
total_tokens: 45583
cost: 0.00483507
execution_time: 84.48
files_reviewed: 13
files_skipped: 0
date: 2026-06-19T07:14:38Z
file_verdicts:
  - file: LICENSE
    status: safe
    summary: License file with no executable content
  - file: spideroak-one.install
    status: safe
    summary: Standard post-install message displaying informational URLs.
  - file: PKGBUILD
    status: safe
    summary: Safe, standard AUR package with pinned checksum.
  - file: src/opt/SpiderOakONE/lib/setuptools-39.0.1-py2.7.egg/setuptools/command/launcher manifest.xml
    status: safe
    summary: Standard Windows manifest, no malicious code.
  - file: src/opt/SpiderOakONE/lib/cffi.egg-info/entry_points.txt
    status: safe
    summary: Standard Python entry points config, no security issues.
  - file: src/usr/bin/SpiderOakONE
    status: safe
    summary: Standard wrapper script, no malicious behavior.
  - file: src/etc/sysctl.d/30-spideroakone.conf
    status: safe
    summary: Safe sysctl configuration snippet for inotify.
  - file: src/postinst
    status: safe
    summary: Standard postinst script with no malicious behavior.
  - file: src/etc/apt/sources.list.d/spideroakone.list
    status: safe
    summary: Inert apt source config; no security issues.
  - file: src/usr/share/applications/SpiderOakONE.desktop
    status: safe
    summary: Standard desktop entry file, no security issues.
  - file: src/opt/SpiderOakONE/lib/setuptools-39.0.1-py2.7.egg/setuptools/script (dev).tmpl
    status: safe
    summary: Standard setuptools dev-install template, not malicious.
  - file: src/postrm
    status: safe
    summary: Cleanup script for apt keys; no malicious behavior.
  - file: src/opt/SpiderOakONE/lib/setuptools-39.0.1-py2.7.egg/setuptools/script.tmpl
    status: safe
    summary: Standard setuptools template, no malicious content.
---

Cloning https://aur.archlinux.org/spideroak-one.git to /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-9x19kykk...
Cloned repository to /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-9x19kykk
Analyzing spideroak-one AUR package (working in /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-9x19kykk) with deepseek/deepseek-v4-flash from https://openrouter.ai/api/v1
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD defines standard package metadata and sources. The only top-level code executed during `makepkg --nobuild --nodeps --noprepare` and `--printsrcinfo` are variable assignments and array definitions. There is no `pkgver()` function. The `package()` function is not run due to `--nobuild`. The source URL points to the official SpiderOak releases S3 bucket (https) and includes a SHA-256 checksum. No obfuscation, suspicious network requests, or code execution occurs at the top level. Therefore, running the specified commands is safe.
</details>
<summary>Safe: no malicious code runs at top-level or pkgver().</summary>
</security_assessment>

+ Initial PKGBUILD audit complete [grey50]-- Safe: no malicious code runs at top-level or pkgver().[/]
Running makepkg --nobuild --nodeps --noprepare to download sources for agent...
makepkg --nobuild --nodeps --noprepare successful
Running makepkg --printsrcinfo to get source files for agent...
makepkg --printsrcinfo successful
Reviewing required files...
[0/3] Reviewing PKGBUILD...
[0/3] Reviewing PKGBUILD, spideroak-one.install...
[0/3] Reviewing PKGBUILD, spideroak-one.install, LICENSE...
LLM auditresponse for LICENSE:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a plain-text license (ISC-style) for the package metadata. It contains no executable code, no network requests, no file operations, and no obfuscated or dangerous commands. There is no evidence of malicious behavior or supply chain attack. It is exactly what it appears to be: a license file.
</details>
<summary>License file with no executable content</summary>
</security_assessment>

[1/3] Reviewing PKGBUILD, spideroak-one.install...
+ Reviewed LICENSE. Status: SAFE -- License file with no executable content
LLM auditresponse for spideroak-one.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `spideroak-one.install` contains only `post_install` and `post_upgrade` functions. `post_install` prints three informational messages via `echo`, each displaying a URL related to the package's upstream (privacy policy, law enforcement policy, and changelog). `post_upgrade` simply calls `post_install`. There are no commands that execute any code, download or execute remote content, modify system files, or perform any obfuscated operations. This is a standard Arch Linux package installation script and contains no malicious behavior.
</details>
<summary>Standard post-install message displaying informational URLs.</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed spideroak-one.install. Status: SAFE -- Standard post-install message displaying informational URLs.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard Arch packaging practices. It downloads the official SpiderOak One Debian package from the vendor's official AWS S3 bucket with a hardcoded SHA256 checksum (pinned), which ensures integrity. The `package()` function extracts the contents and removes unnecessary `/etc/` files. No obfuscation, unexpected network requests, or dangerous commands are present. The source URL and checksum are properly defined. There is no evidence of supply-chain attack or malicious code injection.
</details>
<summary>Safe, standard AUR package with pinned checksum.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Safe, standard AUR package with pinned checksum.
Reviewed all required files.
Deciding which files to review next...
LLM response for file selection:
src/usr/share/applications/SpiderOakONE.desktop
src/etc/apt/sources.list.d/spideroakone.list
src/postinst
src/postrm
src/usr/bin/SpiderOakONE
src/opt/SpiderOakONE/lib/setuptools-39.0.1-py2.7.egg/setuptools/command/launcher manifest.xml
src/opt/SpiderOakONE/lib/setuptools-39.0.1-py2.7.egg/setuptools/script.tmpl
src/opt/SpiderOakONE/lib/setuptools-39.0.1-py2.7.egg/setuptools/script (dev).tmpl
src/etc/sysctl.d/30-spideroakone.conf
src/opt/SpiderOakONE/lib/cffi.egg-info/entry_points.txt
Decided to review 10 additional files: src/usr/share/applications/SpiderOakONE.desktop, src/etc/apt/sources.list.d/spideroakone.list, src/postinst, src/postrm, src/usr/bin/SpiderOakONE, src/opt/SpiderOakONE/lib/setuptools-39.0.1-py2.7.egg/setuptools/command/launcher manifest.xml, src/opt/SpiderOakONE/lib/setuptools-39.0.1-py2.7.egg/setuptools/script.tmpl, src/opt/SpiderOakONE/lib/setuptools-39.0.1-py2.7.egg/setuptools/script (dev).tmpl, src/etc/sysctl.d/30-spideroakone.conf, src/opt/SpiderOakONE/lib/cffi.egg-info/entry_points.txt
Reviewing additional files...
Reviewing additional files...
[0/10] Reviewing src/usr/share/applications/SpiderOakONE.desktop...
[0/10] Reviewing src/usr/share/applications/SpiderOakONE.desktop, src/postinst...
[0/10] Reviewing src/usr/share/applications/SpiderOakONE.desktop, src/postinst, src/etc/apt/sources.list.d/spideroakone.list...
[0/10] Reviewing src/usr/share/applications/SpiderOakONE.desktop, src/postinst, src/etc/apt/sources.list.d/spideroakone.list, src/postrm...
[0/10] Reviewing src/usr/share/applications/SpiderOakONE.desktop, src/postinst, src/etc/apt/sources.list.d/spideroakone.list, src/postrm, src/usr/bin/SpiderOakONE...
[0/10] Reviewing src/usr/share/applications/SpiderOakONE.desktop, src/postinst, src/etc/apt/sources.list.d/spideroakone.list, src/postrm, src/usr/bin/SpiderOakONE, src/opt/SpiderOakONE/lib/setuptools-39.0.1-py2.7.egg/setuptools/command/launcher manifest.xml...
[0/10] Reviewing src/usr/share/applications/SpiderOakONE.desktop, src/postinst, src/etc/apt/sources.list.d/spideroakone.list, src/postrm, src/usr/bin/SpiderOakONE, src/opt/SpiderOakONE/lib/setuptools-39.0.1-py2.7.egg/setuptools/command/launcher manifest.xml, src/opt/SpiderOakONE/lib/setuptools-39.0.1-py2.7.egg/setuptools/script.tmpl...
[0/10] Reviewing src/usr/share/applications/SpiderOakONE.desktop, src/postinst, src/etc/apt/sources.list.d/spideroakone.list, src/postrm, src/usr/bin/SpiderOakONE, src/opt/SpiderOakONE/lib/setuptools-39.0.1-py2.7.egg/setuptools/command/launcher manifest.xml, src/opt/SpiderOakONE/lib/setuptools-39.0.1-py2.7.egg/setuptools/script.tmpl, src/opt/SpiderOakONE/lib/setuptools-39.0.1-py2.7.egg/setuptools/script (dev).tmpl...
[0/10] Reviewing src/usr/share/applications/SpiderOakONE.desktop, src/postinst, src/etc/apt/sources.list.d/spideroakone.list, src/postrm, src/usr/bin/SpiderOakONE, src/opt/SpiderOakONE/lib/setuptools-39.0.1-py2.7.egg/setuptools/command/launcher manifest.xml, src/opt/SpiderOakONE/lib/setuptools-39.0.1-py2.7.egg/setuptools/script.tmpl, src/opt/SpiderOakONE/lib/setuptools-39.0.1-py2.7.egg/setuptools/script (dev).tmpl, src/opt/SpiderOakONE/lib/cffi.egg-info/entry_points.txt...
[0/10] Reviewing src/usr/share/applications/SpiderOakONE.desktop, src/postinst, src/etc/apt/sources.list.d/spideroakone.list, src/postrm, src/usr/bin/SpiderOakONE, src/opt/SpiderOakONE/lib/setuptools-39.0.1-py2.7.egg/setuptools/command/launcher manifest.xml, src/opt/SpiderOakONE/lib/setuptools-39.0.1-py2.7.egg/setuptools/script.tmpl, src/opt/SpiderOakONE/lib/setuptools-39.0.1-py2.7.egg/setuptools/script (dev).tmpl, src/opt/SpiderOakONE/lib/cffi.egg-info/entry_points.txt, src/etc/sysctl.d/30-spideroakone.conf...
LLM auditresponse for launcher manifest.xml:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard Windows application manifest file. It declares the assembly identity and requests the execution level as "asInvoker" with no UI access. There is no executable code, no network requests, no file operations, and no sign of malicious intent. The content is a typical manifest used for Windows applications to specify security requirements and has no relevance to supply-chain attacks in the context of an AUR package (though this particular file appears to be from a Windows component, the analysis must judge based on its contents alone).
</details>
<summary>Standard Windows manifest, no malicious code.</summary>
</security_assessment>

[1/10] Reviewing src/usr/share/applications/SpiderOakONE.desktop, src/postinst, src/etc/apt/sources.list.d/spideroakone.list, src/postrm, src/usr/bin/SpiderOakONE, src/opt/SpiderOakONE/lib/setuptools-39.0.1-py2.7.egg/setuptools/script.tmpl, src/opt/SpiderOakONE/lib/setuptools-39.0.1-py2.7.egg/setuptools/script (dev).tmpl, src/opt/SpiderOakONE/lib/cffi.egg-info/entry_points.txt, src/etc/sysctl.d/30-spideroakone.conf...
+ Reviewed src/opt/SpiderOakONE/lib/setuptools-39.0.1-py2.7.egg/setuptools/command/launcher manifest.xml. Status: SAFE -- Standard Windows manifest, no malicious code.
LLM auditresponse for entry_points.txt:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard Python package entry points configuration. It declares a setuptools keyword `cffi_modules` that points to a function in the well-known `cffi` library (`cffi.setuptools_ext:cffi_modules`). This is a normal and expected mechanism for packages that use CFFI to extend Python with C code. There is no malicious or suspicious content—no network requests, obfuscated code, or dangerous commands. The file is entirely benign and follows standard packaging practices.
</details>
<summary>Standard Python entry points config, no security issues.</summary>
</security_assessment>

[2/10] Reviewing src/usr/share/applications/SpiderOakONE.desktop, src/postinst, src/etc/apt/sources.list.d/spideroakone.list, src/postrm, src/usr/bin/SpiderOakONE, src/opt/SpiderOakONE/lib/setuptools-39.0.1-py2.7.egg/setuptools/script.tmpl, src/opt/SpiderOakONE/lib/setuptools-39.0.1-py2.7.egg/setuptools/script (dev).tmpl, src/etc/sysctl.d/30-spideroakone.conf...
+ Reviewed src/opt/SpiderOakONE/lib/cffi.egg-info/entry_points.txt. Status: SAFE -- Standard Python entry points config, no security issues.
LLM auditresponse for SpiderOakONE:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard wrapper script for a proprietary application. It sets `LD_LIBRARY_PATH` and `QT_PLUGIN_PATH` to point to the application's bundled libraries, then executes the main binary. There is no obfuscation, no network requests, no dangerous commands, and no deviation from normal packaging practices. The script is benign and serves only to launch the application with the correct environment.
</details>
<summary>Standard wrapper script, no malicious behavior.</summary>
</security_assessment>

[3/10] Reviewing src/usr/share/applications/SpiderOakONE.desktop, src/postinst, src/etc/apt/sources.list.d/spideroakone.list, src/postrm, src/opt/SpiderOakONE/lib/setuptools-39.0.1-py2.7.egg/setuptools/script.tmpl, src/opt/SpiderOakONE/lib/setuptools-39.0.1-py2.7.egg/setuptools/script (dev).tmpl, src/etc/sysctl.d/30-spideroakone.conf...
+ Reviewed src/usr/bin/SpiderOakONE. Status: SAFE -- Standard wrapper script, no malicious behavior.
LLM auditresponse for 30-spideroakone.conf:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a simple sysctl configuration snippet that increases the `fs.inotify.max_user_watches` kernel parameter to 65536. This is a standard and expected tweak for file synchronization or backup applications like SpiderOakONE, which need to monitor a large number of files. There is no executable code, network requests, obfuscation, or any behavior that deviates from normal packaging practices. The file poses no security risk and is entirely benign.
</details>
<summary>Safe sysctl configuration snippet for inotify.</summary>
</security_assessment>

[4/10] Reviewing src/usr/share/applications/SpiderOakONE.desktop, src/postinst, src/etc/apt/sources.list.d/spideroakone.list, src/postrm, src/opt/SpiderOakONE/lib/setuptools-39.0.1-py2.7.egg/setuptools/script.tmpl, src/opt/SpiderOakONE/lib/setuptools-39.0.1-py2.7.egg/setuptools/script (dev).tmpl...
+ Reviewed src/etc/sysctl.d/30-spideroakone.conf. Status: SAFE -- Safe sysctl configuration snippet for inotify.
LLM auditresponse for postinst:
<security_assessment>
<decision>SAFE</decision>
<details>
The script is a standard Debian post-installation script for SpiderOakONE. It performs three main operations:

1. Runs `update-menus` to refresh desktop menu entries (normal post-install behavior).
2. Removes old symlinks (`SpiderOak` → `SpiderOakONE`) after verifying file checksums — this is standard package upgrade cleanup.
3. Conditionally imports SpiderOak's GPG keys into the apt keyring if `apt-key` is available. On Arch Linux `apt-key` is not present, so this block never executes. Even if it did, the keys belong to the legitimate SpiderOak repository (signers are `apt@spideroak.com`, `linuxpackaging@spideroak.com`, etc.) — this is normal Debian-compatible repository setup, not a supply-chain attack.

No network requests, encoded/obfuscated commands, data exfiltration, or code execution from untrusted sources are present. The dead code branch `[ "SpiderOakONE" = "SpiderOakGroups" ]` is always false and harmless.

The script is consistent with packaging expected for a package distributed via AUR that bundles upstream Debian packaging files. There is no evidence of injected malicious behavior.
</details>
<summary>Standard postinst script with no malicious behavior.</summary>
</security_assessment>

[5/10] Reviewing src/usr/share/applications/SpiderOakONE.desktop, src/etc/apt/sources.list.d/spideroakone.list, src/postrm, src/opt/SpiderOakONE/lib/setuptools-39.0.1-py2.7.egg/setuptools/script.tmpl, src/opt/SpiderOakONE/lib/setuptools-39.0.1-py2.7.egg/setuptools/script (dev).tmpl...
+ Reviewed src/postinst. Status: SAFE -- Standard postinst script with no malicious behavior.
LLM auditresponse for spideroakone.list:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `spideroakone.list` contains a single line declaring an APT repository source for SpiderOak's official Ubuntu repository (`https://apt.spideroak.com/ubuntu/`). It is a plain text configuration file with no executable code, obfuscation, or scripting. There is no evidence of any malicious activity such as data exfiltration, downloading or executing code from unexpected sources, or system tampering. The presence of an APT `.list` file in an AUR package is unusual but not inherently unsafe; it is likely used as part of a custom build process or for reference. The URL uses HTTPS and points to the vendor's own domain, which is expected.
</details>
<summary>Inert apt source config; no security issues.</summary>
</security_assessment>

[6/10] Reviewing src/usr/share/applications/SpiderOakONE.desktop, src/postrm, src/opt/SpiderOakONE/lib/setuptools-39.0.1-py2.7.egg/setuptools/script.tmpl, src/opt/SpiderOakONE/lib/setuptools-39.0.1-py2.7.egg/setuptools/script (dev).tmpl...
+ Reviewed src/etc/apt/sources.list.d/spideroakone.list. Status: SAFE -- Inert apt source config; no security issues.
LLM auditresponse for SpiderOakONE.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.desktop` file for the SpiderOakONE application. It defines metadata and an `Exec` line that runs `SpiderOakONE`, the expected binary for this package. There are no suspicious network requests, obfuscated code, file operations, or any other indicators of malicious activity. The file conforms to normal packaging practices for launching graphical applications.
</details>
<summary>Standard desktop entry file, no security issues.</summary>
</security_assessment>

[7/10] Reviewing src/postrm, src/opt/SpiderOakONE/lib/setuptools-39.0.1-py2.7.egg/setuptools/script.tmpl, src/opt/SpiderOakONE/lib/setuptools-39.0.1-py2.7.egg/setuptools/script (dev).tmpl...
+ Reviewed src/usr/share/applications/SpiderOakONE.desktop. Status: SAFE -- Standard desktop entry file, no security issues.
LLM auditresponse for script (dev).tmpl:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a template used by Python's setuptools for creating "easy-install-dev-scripts". The content is a standard stub that loads a package via `pkg_resources.require()` and then executes the actual package code from a development path using `exec(compile(open(...)))`. This is the normal mechanism for `pip install -e` (editable/development mode) installations and is not malicious. The template itself contains no embedded commands, no network requests, no obfuscation, and no system modifications. It is an expected part of standard Python packaging infrastructure and serves the package's stated purpose of loading the installed SpiderOak One code from its development location.
</details>
<summary>Standard setuptools dev-install template, not malicious.</summary>
</security_assessment>

[8/10] Reviewing src/postrm, src/opt/SpiderOakONE/lib/setuptools-39.0.1-py2.7.egg/setuptools/script.tmpl...
+ Reviewed src/opt/SpiderOakONE/lib/setuptools-39.0.1-py2.7.egg/setuptools/script (dev).tmpl. Status: SAFE -- Standard setuptools dev-install template, not malicious.
LLM auditresponse for postrm:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `postrm` is a post-removal script for the spideroak-one package. It contains a conditional block that removes apt repository keys (using `apt-key`) if the package name equals “SpiderOak” and the action is “purge”. This is a standard cleanup operation for Debian-based package repositories, not a supply-chain attack. The script does not download or execute any untrusted code, does not exfiltrate data, and performs no dangerous system modifications outside its intended scope. It is a benign artifact from upstream packaging.
</details>
<summary>Cleanup script for apt keys; no malicious behavior.</summary>
</security_assessment>

[9/10] Reviewing src/opt/SpiderOakONE/lib/setuptools-39.0.1-py2.7.egg/setuptools/script.tmpl...
+ Reviewed src/postrm. Status: SAFE -- Cleanup script for apt keys; no malicious behavior.
LLM auditresponse for script.tmpl:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard setuptools "easy-install" script template (`script.tmpl`). It contains Python code that uses string formatting (`%(spec)r` and `%(script_name)r`) to generate a small script that invokes `pkg_resources.run_script()` with the appropriate package specification and script name. This is a normal, expected part of the setuptools/distribute packaging infrastructure, and is present in many Python packages. There is no obfuscation, no network requests, no execution of untrusted code, and no data exfiltration. The file is purely a template that gets populated at install time by setuptools. The `&apos;` is likely an XML-escaping artifact; the actual file contains a single quote character. No security concerns.
</details>
<summary>
Standard setuptools template, no malicious content.
</summary>
</security_assessment>

[10/10] Reviewing ...
+ Reviewed src/opt/SpiderOakONE/lib/setuptools-39.0.1-py2.7.egg/setuptools/script.tmpl. Status: SAFE -- Standard setuptools template, no malicious content.
Reviewed all additional files.
Reviewed additional files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 37,443
  Completion Tokens: 8,140
  Total Tokens: 45,583
  Total Cost: $0.004835
  Execution Time: 84.48 seconds
Full audit report can be found in /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-report-spideroak-one.txt
Final Status: SAFE


No issues found.
