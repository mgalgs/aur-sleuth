---
package: crossover
pkgver: 26.2.0
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: openrouter.ai
base_url: https://openrouter.ai/api/v1
aur_sleuth_rev: 65e0c3f98e3e15c2f2b5d512e37cace17814cac6
prompt_tokens: 93619
completion_tokens: 10126
total_tokens: 103745
cost: 0.01024839
execution_time: 100.31
files_reviewed: 12
files_skipped: 1
date: 2026-06-19T07:28:36Z
file_verdicts:
  - file: crossover_26.2.0-1.deb
    status: skipped
    summary: "Skipping binary file: crossover_26.2.0-1.deb"
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD for CrossOver; no malicious indicators found.
  - file: crossover.install
    status: safe
    summary: Standard package install script, no malicious behavior.
  - file: src/opt/cxoffice/lib/python/bottleoperation.py
    status: safe
    summary: No malicious code found; standard application operations.
  - file: src/opt/cxoffice/lib/python/cxregisterui.py
    status: safe
    summary: Legitimate registration UI; no malicious or suspicious behavior.
  - file: src/opt/cxoffice/lib/python/cxassoc.py
    status: safe
    summary: No malicious code; standard association management module.
  - file: src/opt/cxoffice/lib/python/cxfixes.py
    status: safe
    summary: Legitimate CrossOver file for managing missing library fixes.
  - file: src/opt/cxoffice/lib/python/appdetector.py
    status: safe
    summary: Legitimate CrossOver application detection code; no malicious behavior found.
  - file: src/opt/cxoffice/bin/locate_gui.sh
    status: safe
    summary: Standard desktop environment detection script; no malicious behavior.
  - file: src/opt/cxoffice/lib/python/cxrunui.py
    status: safe
    summary: Legitimate CrossOver GUI code; no security issues.
  - file: src/opt/cxoffice/lib/python/cxconfig.py
    status: safe
    summary: Legitimate configuration library, no malicious code found.
  - file: src/opt/cxoffice/lib/python/cxaiecore.py
    status: safe
    summary: Legitimate CrossOver installer module. No malicious behavior found.
  - file: src/opt/cxoffice/lib/python/cxproduct.py
    status: safe
    summary: Standard CrossOver config library, no malicious code.
---

Cloning https://aur.archlinux.org/crossover.git to /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-f4e9ujk2...
Cloned repository to /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-f4e9ujk2
Analyzing crossover AUR package (working in /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-f4e9ujk2) with deepseek/deepseek-v4-flash from https://openrouter.ai/api/v1
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD defines standard variables and a single source URL from the official CodeWeavers CDN (`media.codeweavers.com`), which is the legitimate upstream for the CrossOver package. A sha256 checksum is provided for the `.deb` file, allowing integrity verification.

There is no `pkgver()` function or any top-level code that executes commands during sourcing. The `package()` function is defined but will not be executed by `makepkg --nobuild --nodeps --noprepare` or `makepkg --printsrcinfo`. No obfuscated code, unexpected network requests, or dangerous operations are present in the global scope.

Therefore, running the specified commands is safe; the source download and PKGBUILD sourcing do not expose any malicious behavior.
</details>
<summary>Source is legitimate, no executable code in global scope.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete [grey50]-- Source is legitimate, no executable code in global scope.[/]
Running makepkg --nobuild --nodeps --noprepare to download sources for agent...
makepkg --nobuild --nodeps --noprepare successful
Running makepkg --printsrcinfo to get source files for agent...
makepkg --printsrcinfo successful
Reviewing required files...
[0/3] Reviewing PKGBUILD...
[0/3] Reviewing PKGBUILD, crossover.install...
[0/3] Reviewing PKGBUILD, crossover.install, crossover_26.2.0-1.deb...
[1/3] Reviewing PKGBUILD, crossover.install...
! Reviewed crossover_26.2.0-1.deb. Status: SKIPPED -- Skipping binary file: crossover_26.2.0-1.deb
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a standard packaging script for the CrossOver commercial software from CodeWeavers. It downloads a `.deb` package from the official upstream source (`media.codeweavers.com`), which is the expected origin. The SHA256 checksum is provided and pinned, ensuring integrity. The `package()` function performs routine operations: extracting the archive, removing unnecessary files, moving documentation, creating symlinks, placing a license, and adding a profile script to adjust PATH. All `sed` commands modify the software&#39;s own configuration files (bottle_data, cxoffice.conf). There is no obfuscated code, no unexpected network access, no fetching of executable content from untrusted hosts, and no exfiltration of data. The package follows standard AUR practices for a commercial binary package. No malicious behavior or supply-chain attack indicators are present.
</details>
<summary>Standard PKGBUILD for CrossOver; no malicious indicators found.</summary>
</security_assessment>

[2/3] Reviewing crossover.install...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD for CrossOver; no malicious indicators found.
LLM auditresponse for crossover.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `crossover.install` is a standard packaging hook script for the CrossOver package. It performs routine post-installation, upgrade, and removal tasks confined to the application's own directory `/opt/cxoffice`. Operations include updating SELinux contexts, managing symlinks, cleaning up obsolete files, running the package's own `cxupgrade` and `cxtie` utilities, and registering/unregistering desktop entries and file associations. No network requests, encoded or obfuscated code, or execution of untrusted content are present. All activities are consistent with normal AUR packaging and the expected behavior of the upstream application. No supply-chain attack indicators were found.
</details>
<summary>Standard package install script, no malicious behavior.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed crossover.install. Status: SAFE -- Standard package install script, no malicious behavior.
Reviewed all required files.
Deciding which files to review next...
Note: 377 files available for selection; offering the 50 highest-priority to the model. 243 lower-priority file(s) were not offered.
LLM response for file selection:
src/opt/cxoffice/bin/locate_gui.sh
src/opt/cxoffice/lib/python/cxproduct.py
src/opt/cxoffice/lib/python/cxregisterui.py
src/opt/cxoffice/lib/python/cxconfig.py
src/opt/cxoffice/lib/python/cxrunui.py
src/opt/cxoffice/lib/python/cxaiecore.py
src/opt/cxoffice/lib/python/cxfixes.py
src/opt/cxoffice/lib/python/appdetector.py
src/opt/cxoffice/lib/python/bottleoperation.py
src/opt/cxoffice/lib/python/cxassoc.py
Decided to review 10 additional files: src/opt/cxoffice/bin/locate_gui.sh, src/opt/cxoffice/lib/python/cxproduct.py, src/opt/cxoffice/lib/python/cxregisterui.py, src/opt/cxoffice/lib/python/cxconfig.py, src/opt/cxoffice/lib/python/cxrunui.py, src/opt/cxoffice/lib/python/cxaiecore.py, src/opt/cxoffice/lib/python/cxfixes.py, src/opt/cxoffice/lib/python/appdetector.py, src/opt/cxoffice/lib/python/bottleoperation.py, src/opt/cxoffice/lib/python/cxassoc.py
Reviewing additional files...
Reviewing additional files...
[0/10] Reviewing src/opt/cxoffice/lib/python/cxregisterui.py...
[0/10] Reviewing src/opt/cxoffice/lib/python/cxregisterui.py, src/opt/cxoffice/bin/locate_gui.sh...
[0/10] Reviewing src/opt/cxoffice/lib/python/cxregisterui.py, src/opt/cxoffice/bin/locate_gui.sh, src/opt/cxoffice/lib/python/cxaiecore.py...
[0/10] Reviewing src/opt/cxoffice/lib/python/cxregisterui.py, src/opt/cxoffice/bin/locate_gui.sh, src/opt/cxoffice/lib/python/cxaiecore.py, src/opt/cxoffice/lib/python/cxproduct.py...
[0/10] Reviewing src/opt/cxoffice/lib/python/cxregisterui.py, src/opt/cxoffice/bin/locate_gui.sh, src/opt/cxoffice/lib/python/cxaiecore.py, src/opt/cxoffice/lib/python/cxproduct.py, src/opt/cxoffice/lib/python/cxrunui.py...
[0/10] Reviewing src/opt/cxoffice/lib/python/cxregisterui.py, src/opt/cxoffice/bin/locate_gui.sh, src/opt/cxoffice/lib/python/cxaiecore.py, src/opt/cxoffice/lib/python/cxproduct.py, src/opt/cxoffice/lib/python/cxrunui.py, src/opt/cxoffice/lib/python/cxconfig.py...
[0/10] Reviewing src/opt/cxoffice/lib/python/cxregisterui.py, src/opt/cxoffice/bin/locate_gui.sh, src/opt/cxoffice/lib/python/cxaiecore.py, src/opt/cxoffice/lib/python/cxproduct.py, src/opt/cxoffice/lib/python/cxrunui.py, src/opt/cxoffice/lib/python/cxconfig.py, src/opt/cxoffice/lib/python/cxfixes.py...
[0/10] Reviewing src/opt/cxoffice/lib/python/cxregisterui.py, src/opt/cxoffice/bin/locate_gui.sh, src/opt/cxoffice/lib/python/cxaiecore.py, src/opt/cxoffice/lib/python/cxproduct.py, src/opt/cxoffice/lib/python/cxrunui.py, src/opt/cxoffice/lib/python/cxconfig.py, src/opt/cxoffice/lib/python/cxfixes.py, src/opt/cxoffice/lib/python/appdetector.py...
[0/10] Reviewing src/opt/cxoffice/lib/python/cxregisterui.py, src/opt/cxoffice/bin/locate_gui.sh, src/opt/cxoffice/lib/python/cxaiecore.py, src/opt/cxoffice/lib/python/cxproduct.py, src/opt/cxoffice/lib/python/cxrunui.py, src/opt/cxoffice/lib/python/cxconfig.py, src/opt/cxoffice/lib/python/cxfixes.py, src/opt/cxoffice/lib/python/appdetector.py, src/opt/cxoffice/lib/python/bottleoperation.py...
[0/10] Reviewing src/opt/cxoffice/lib/python/cxregisterui.py, src/opt/cxoffice/bin/locate_gui.sh, src/opt/cxoffice/lib/python/cxaiecore.py, src/opt/cxoffice/lib/python/cxproduct.py, src/opt/cxoffice/lib/python/cxrunui.py, src/opt/cxoffice/lib/python/cxconfig.py, src/opt/cxoffice/lib/python/cxfixes.py, src/opt/cxoffice/lib/python/appdetector.py, src/opt/cxoffice/lib/python/bottleoperation.py, src/opt/cxoffice/lib/python/cxassoc.py...
LLM auditresponse for bottleoperation.py:
<security_assessment>
<decision>SAFE</decision>
<details>
This file implements GUI operations for managing CrossOver bottles (Wine prefixes). It contains standard application logic: archiving, deleting, opening the C: drive, quitting bottles, and toggling high resolution or preview modes. All operations use local library calls (e.g., `bottlecollection`, `bottlemanagement`, `cxutils`) and standard GTK dialogs. The `xdg-open` invocation in `open_c_drive` is a normal way to open a directory on Linux. There are no network requests, encoded/obfuscated code, eval, or unexpected file modifications. The file does not deviate from expected packaging practices for a Wine management GUI.
</details>
<summary>No malicious code found; standard application operations.</summary>
</security_assessment>

[1/10] Reviewing src/opt/cxoffice/lib/python/cxregisterui.py, src/opt/cxoffice/bin/locate_gui.sh, src/opt/cxoffice/lib/python/cxaiecore.py, src/opt/cxoffice/lib/python/cxproduct.py, src/opt/cxoffice/lib/python/cxrunui.py, src/opt/cxoffice/lib/python/cxconfig.py, src/opt/cxoffice/lib/python/cxfixes.py, src/opt/cxoffice/lib/python/appdetector.py, src/opt/cxoffice/lib/python/cxassoc.py...
+ Reviewed src/opt/cxoffice/lib/python/bottleoperation.py. Status: SAFE -- No malicious code found; standard application operations.
LLM auditresponse for cxregisterui.py:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard registration and demo UI for the CrossOver application. It interacts with CodeWeavers servers for license validation, account creation, and token generation, which is expected upstream functionality. All network destinations (codeweavers.com) are legitimate and related to the package. There is no obfuscated code, no execution of arbitrary downloaded content, no exfiltration of local data, and no deviation from normal packaging practices. The code reads license files from its own application directory (`$CX_ROOT/etc/`) and uses standard GUI and networking libraries. No security issues are present.
</details>
<summary>
Legitimate registration UI; no malicious or suspicious behavior.
</summary>
</security_assessment>

[2/10] Reviewing src/opt/cxoffice/bin/locate_gui.sh, src/opt/cxoffice/lib/python/cxaiecore.py, src/opt/cxoffice/lib/python/cxproduct.py, src/opt/cxoffice/lib/python/cxrunui.py, src/opt/cxoffice/lib/python/cxconfig.py, src/opt/cxoffice/lib/python/cxfixes.py, src/opt/cxoffice/lib/python/appdetector.py, src/opt/cxoffice/lib/python/cxassoc.py...
+ Reviewed src/opt/cxoffice/lib/python/cxregisterui.py. Status: SAFE -- Legitimate registration UI; no malicious or suspicious behavior.
LLM auditresponse for cxassoc.py:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard Python module for managing file associations in a Crossover bottle. It imports internal modules (bottlequery, cxconfig, cxutils, cxlog) and calls the `cxassoc` binary to query and apply association settings. There is no obfuscated code, no network requests, no suspicious file operations, and no attempt to execute untrusted content. The command-line construction uses internal data from configuration files, which is normal for this type of tool. No evidence of supply-chain attack or malicious behavior is present.
</details>
<summary>No malicious code; standard association management module.</summary>
</security_assessment>

[3/10] Reviewing src/opt/cxoffice/bin/locate_gui.sh, src/opt/cxoffice/lib/python/cxaiecore.py, src/opt/cxoffice/lib/python/cxproduct.py, src/opt/cxoffice/lib/python/cxrunui.py, src/opt/cxoffice/lib/python/cxconfig.py, src/opt/cxoffice/lib/python/cxfixes.py, src/opt/cxoffice/lib/python/appdetector.py...
+ Reviewed src/opt/cxoffice/lib/python/cxassoc.py. Status: SAFE -- No malicious code; standard association management module.
LLM auditresponse for cxfixes.py:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `cxfixes.py` is a standard component of CrossOver, a commercial compatibility layer. It handles detection of missing system libraries, downloads fix information from CodeWeavers' own server (`ftp.codeweavers.com`), and installs required packages using the distribution's package manager. All behaviors—modifying `/etc/pacman.conf` to enable multilib on Arch, adding i386 architecture on Debian, running package installation commands via `pkexec`/`sudo`—are normal for an application that needs to install 32-bit libraries to run Windows software. The FIXES_URL uses plain HTTP rather than HTTPS, which is a best-practice concern (man-in-the-middle risk for the fix metadata), but not evidence of an injected supply-chain attack. No obfuscated code, data exfiltration, or execution of untrusted remote payloads was found.
</details>
<summary>
Legitimate CrossOver file for managing missing library fixes.
</summary>
</security_assessment>

[4/10] Reviewing src/opt/cxoffice/bin/locate_gui.sh, src/opt/cxoffice/lib/python/cxaiecore.py, src/opt/cxoffice/lib/python/cxproduct.py, src/opt/cxoffice/lib/python/cxrunui.py, src/opt/cxoffice/lib/python/cxconfig.py, src/opt/cxoffice/lib/python/appdetector.py...
+ Reviewed src/opt/cxoffice/lib/python/cxfixes.py. Status: SAFE -- Legitimate CrossOver file for managing missing library fixes.
LLM auditresponse for appdetector.py:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `appdetector.py` is a standard component of CrossOver, a compatibility layer for running Windows applications on non-Windows systems. Its purpose is to detect installed Windows applications within Wine "bottles" by reading registry keys and matching them against application profiles. All operations are legitimate and expected for this application:

- Reads Windows registry entries under standard `Uninstall` keys to enumerate installed applications.
- Uses C4 profiles (application definitions) to match installed applications by keyname, display name, or file/registry glob patterns.
- The `uninstall()` method calls `cxutils.run()` with a Wine-based uninstaller command, which is standard for the application's functionality.
- No network requests, no execution of downloaded or obfuscated code, no exfiltration of system data, no modifications to files outside the application's own scope.

The code imports and uses several custom modules (`cxutils`, `bottlequery`, `cxglob`, etc.) which are part of the CrossOver codebase. There is no evidence of supply-chain injection or malicious behavior. The file behaves exactly as expected for an application detector in a Wine compatibility layer.
</details>
<summary>
Legitimate CrossOver application detection code; no malicious behavior found.
</summary>
</security_assessment>

[5/10] Reviewing src/opt/cxoffice/bin/locate_gui.sh, src/opt/cxoffice/lib/python/cxaiecore.py, src/opt/cxoffice/lib/python/cxproduct.py, src/opt/cxoffice/lib/python/cxrunui.py, src/opt/cxoffice/lib/python/cxconfig.py...
+ Reviewed src/opt/cxoffice/lib/python/appdetector.py. Status: SAFE -- Legitimate CrossOver application detection code; no malicious behavior found.
LLM auditresponse for locate_gui.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This script (`locate_gui.sh`) is a detection utility for menu and file-type association systems (XDG, Debian, CDE, Mac OS X, mailcap). It only reads local configuration files (e.g., `~/.config/user-dirs.dirs`) and scans well-known system directories. There are no network requests, downloads, execution of external code, obfuscated commands, or attempts to exfiltrate data. The use of `eval` is for constructing variable names from numeric indexes, which is safe given the hardcoded paths. The script is standard for the CrossOver application and presents no supply-chain attack indicators.
</details>
<summary>Standard desktop environment detection script; no malicious behavior.</summary>
</security_assessment>

[6/10] Reviewing src/opt/cxoffice/lib/python/cxaiecore.py, src/opt/cxoffice/lib/python/cxproduct.py, src/opt/cxoffice/lib/python/cxrunui.py, src/opt/cxoffice/lib/python/cxconfig.py...
+ Reviewed src/opt/cxoffice/bin/locate_gui.sh. Status: SAFE -- Standard desktop environment detection script; no malicious behavior.
LLM auditresponse for cxrunui.py:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard GUI component of the CrossOver application (a commercial Wine compatibility layer). It provides a dialog to run Windows executables in Wine bottles. The code uses `os.execv` and `subprocess.Popen` to launch the `cxstart` binary with user-provided commands, which is the intended functionality of the application. There are no network requests, no obfuscated code, no base64 decoding, no eval, and no unexpected file operations. The command-line arguments are processed safely using `cxutils.cmdlinetoargv` and `cxutils.argvtocmdline`, and subprocess calls use list arguments (no shell injection). The file reads the `CX_BOTTLE` environment variable and handles root warnings, both normal for this type of tool. No evidence of malicious or injected code was found.
</details>
<summary>Legitimate CrossOver GUI code; no security issues.</summary>
</security_assessment>

[7/10] Reviewing src/opt/cxoffice/lib/python/cxaiecore.py, src/opt/cxoffice/lib/python/cxproduct.py, src/opt/cxoffice/lib/python/cxconfig.py...
+ Reviewed src/opt/cxoffice/lib/python/cxrunui.py. Status: SAFE -- Legitimate CrossOver GUI code; no security issues.
LLM auditresponse for cxconfig.py:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `cxconfig.py` is a configuration file parsing and management library (part of CodeWeavers' CrossOver). It provides classes for reading, modifying, and writing INI-style configuration files with thread-safe operations, file change notifications, and a layered configuration stack. All operations are legitimate:

- File I/O (open, read, write, rename, makedirs) is standard for a config manager.
- File locking and atomic writes follow best practices.
- No network requests, no encoded/obfuscated commands, no `eval`, `base64`, `curl`, or `wget`.
- Imports are limited to standard library modules (`os`, `re`, `sys`, `threading`, `time`, `weakref`) and package-internal modules (`cxfsnotifier`, `cxlog`, `cxobservable`, `cxutils`).
- The `get()` cache and `Stack` class are ordinary convenience utilities.
- The `_fs_observer` callback only refreshes the in-memory data if the file has changed on disk, which is expected behavior.

No indicators of a supply-chain attack, backdoor, data exfiltration, or unexpected code execution are present. The file adheres to standard packaging and application functionality.
</details>
<summary>
Legitimate configuration library, no malicious code found.
</summary>
</security_assessment>

[8/10] Reviewing src/opt/cxoffice/lib/python/cxaiecore.py, src/opt/cxoffice/lib/python/cxproduct.py...
+ Reviewed src/opt/cxoffice/lib/python/cxconfig.py. Status: SAFE -- Legitimate configuration library, no malicious code found.
LLM auditresponse for cxaiecore.py:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a core module of CrossOver's Windows application installation engine. It orchestrates the installation process: extracting archives (zip, tar, cab, rar, 7z), running Windows installers under Wine, copying files into Wine bottles, registering DLLs, and applying compatibility hacks. All operations are constrained to the Wine bottle environment (a sandboxed Windows prefix). The code does not contain any obfuscated commands, network exfiltration, backdoors, or downloads from untrusted sources. Path traversal is explicitly guarded against during archive extraction. External binary calls (wine, cabextract, unrar, 7z, cxavscan, cxselinux) are all part of the standard CrossOver toolchain and serve the normal purpose of application installation. There is no evidence of supply-chain injection or malicious behavior in this file.
</details>
<summary>
Legitimate CrossOver installer module. No malicious behavior found.</summary>
</security_assessment>

[9/10] Reviewing src/opt/cxoffice/lib/python/cxproduct.py...
+ Reviewed src/opt/cxoffice/lib/python/cxaiecore.py. Status: SAFE -- Legitimate CrossOver installer module. No malicious behavior found.
LLM auditresponse for cxproduct.py:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is part of the CrossOver compatibility layer (a Wine-based commercial product) and implements product identification, directory paths, configuration management, and environment variable setup. All operations are local file reads/writes within the application's own directories (e.g., `/etc`, `~/.crossover.conf`, `$HOME/Library/Application Support/`). There are no network requests, no code execution from external sources, no use of dangerous functions (`eval`, `base64`, `curl`, `wget`), and no obfuscation. The environment variable expansion in `_refresh_environment` reads from the application's own configuration files, which is standard behavior. No supply-chain attack indicators were found.
</details>
<summary>Standard CrossOver config library, no malicious code.</summary>
</security_assessment>

[10/10] Reviewing ...
+ Reviewed src/opt/cxoffice/lib/python/cxproduct.py. Status: SAFE -- Standard CrossOver config library, no malicious code.
Reviewed all additional files.
Reviewed additional files.
Audit complete! Result: No issues found
(Skipped 1 file: crossover_26.2.0-1.deb)

API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 93,619
  Completion Tokens: 10,126
  Total Tokens: 103,745
  Total Cost: $0.010248
  Execution Time: 100.31 seconds
Full audit report can be found in /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-report-crossover.txt
Final Status: SAFE


No issues found.


Audit Skips:

/home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-f4e9ujk2/crossover_26.2.0-1.deb: [SKIPPED] Skipping binary file: crossover_26.2.0-1.deb
