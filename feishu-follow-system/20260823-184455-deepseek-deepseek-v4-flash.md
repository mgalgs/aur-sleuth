---
package: feishu-follow-system
pkgver: 7.72.23
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: fe97f45c52ce35303ffaaa9e3aab59c432e69008
prompt_tokens: 24114
completion_tokens: 4313
total_tokens: 28427
cost: 0.00159967640
execution_time: 146.17
files_reviewed: 4
files_skipped: 0
files_unauditable: 221
unpinned_sources: 0
date: 2026-08-23T18:44:54Z
file_verdicts:
  - file: feishu-follow-system.install
    status: safe
    summary: Standard install script; no malicious behavior detected.
  - file: linux-theme-preload.c
    status: safe
    summary: Benign runtime theme patching for Feishu browser.
  - file: PKGBUILD
    status: safe
    summary: Legitimate Feishu theme customization PKGBUILD, no supply-chain attack.
  - file: enable-follow-system.py
    status: safe
    summary: Legitimate theme patch script; no malicious behavior.
---

Cloning https://aur.archlinux.org/feishu-follow-system.git...
Cloned feishu-follow-system
Analyzing feishu-follow-system AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD&#39;s global scope only defines variables, arrays, and a `package()` function that is not executed during `makepkg --nobuild --nodeps --noprepare` or `makepkg --printsrcinfo`. There is no `pkgver()` function. The source entries point to official Feishu CDN URLs (`sf3-cn.feishucdn.com`) and local files (`enable-follow-system.py` and `linux-theme-preload.c`). No command substitution, base64 decoding, `eval`, `curl|bash`, or other code execution occurs in the sourced or fetched step. Fetching the sources and extracting the `.deb` archives is a standard packaging operation and does not execute any code from inside the archives. Therefore, the two requested commands are safe to run.
</details>
<evidence></evidence>
<summary>No malicious top-level or pkgver() code; sources from official CDN.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious top-level or pkgver() code; sources from official CDN.
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Running makepkg --printsrcinfo to get source files for agent...
makepkg --printsrcinfo successful
Reviewing required files...
[0/3] Reviewing PKGBUILD...
[0/3] Reviewing PKGBUILD, feishu-follow-system.install...
[0/3] Reviewing PKGBUILD, feishu-follow-system.install, linux-theme-preload.c...
LLM auditresponse for feishu-follow-system.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `feishu-follow-system.install` is a standard pacman `.install` script used to set up the Feishu application after installation and clean up during removal. It performs routine operations: installing icons via `xdg-icon-resource`, updating MIME and desktop databases, and creating/removing symlinks for NSS libraries inside the application's own directory (`/opt/bytedance/feishu/`). No network requests, no obfuscated code, no attempts to exfiltrate data, and no execution of untrusted or external code are present. The only minor issue is a reference to an undefined function `get_lib_dir`, but that would cause an error at runtime rather than a security problem. All operations are confined to the application's installation path and standard system cache directories, consistent with legitimate packaging practices.
</details>
<evidence></evidence>
<summary>Standard install script; no malicious behavior detected.</summary>
</security_assessment>

[1/3] Reviewing PKGBUILD, linux-theme-preload.c...
+ Reviewed feishu-follow-system.install. Status: SAFE -- Standard install script; no malicious behavior detected.
LLM auditresponse for linux-theme-preload.c:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a helper library that uses `LD_PRELOAD` to intercept the Feishu browser process and apply a dark theme by patching internal data structures in `libframe.so`. It reads the system dark/light theme preference via the portal D-Bus API (`org.freedesktop.appearance color-scheme`) and updates the browser accordingly. All operations are local: memory patching, glib idle callbacks, and logging to `~/.config/LarkShell/linux-theme-preload.log`. There is no network activity, no downloading or execution of remote code, no obfuscation, and no exfiltration of data. The patching is confined to the Feishu browser process and only activates on the main browser process (not on child processes). This is entirely consistent with the package's stated purpose of making Feishu follow the system theme, and no supply-chain attack indicators are present.
</details>
<evidence>
</evidence>
<summary>Benign runtime theme patching for Feishu browser.</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed linux-theme-preload.c. Status: SAFE -- Benign runtime theme patching for Feishu browser.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD downloads the official Feishu Linux client .deb from the vendor's CDN (sf3-cn.feishucdn.com) with verified checksums. The `package()` function extracts the .deb, runs a local Python helper script (checksummed), compiles a theme-preload shared library from local C source (checksummed), creates a wrapper script, and patches desktop/menu files. All operations are within the expected packaging workflow for a theme-customized fork. No unexpected network requests, obfuscated code, or system data exfiltration is present. The LD_PRELOAD injection is the explicit purpose of the package (enforcing a follow-system color scheme). The `source` array does not include any mutable VCS references that bypass checksums; the optional python script and C file are included as local sources with fixed checksums.
</details>
<evidence></evidence>
<summary>Legitimate Feishu theme customization PKGBUILD, no supply-chain attack.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Legitimate Feishu theme customization PKGBUILD, no supply-chain attack.
Reviewed all required files.
Deciding which files to review next...
Note: 221 compiled/archived file(s) cannot be audited as text and were not reviewed (Feishu-linux_x64-7.72.23.deb, src/control.tar.xz, src/data.tar.xz and 218 more). For a package that ships prebuilt binaries, the audit covers the packaging, not the payload.
Note: 3274 files available for selection; offering the 50 highest-priority to the model. 2227 lower-priority file(s) were not offered.
LLM response for file selection:
enable-follow-system.py
Decided to review 1 additional files: enable-follow-system.py
Reviewing additional files...
Reviewing additional files...
[0/1] Reviewing enable-follow-system.py...
LLM auditresponse for enable-follow-system.py:
<security_assessment>
<decision>SAFE</decision>
<details>
This script patches two files in a Feishu/Lark installation to enable the "follow system" theme feature. It modifies `setting.asar` (an Electron archive) by replacing a string to toggle a checkbox, and patches `libframe.so` by changing a byte offset to fix a compatibility issue with Chromium 131.  

The script performs only local file operations (read, write, hash verification) on the application's own directory. There are no network requests, no execution of downloaded code, no obfuscation, no exfiltration, and no modification of system files outside the application scope. The `--dry-run` option allows previewing changes. The binary patching is straightforward and well-documented, with integrity checks.

This is a typical AUR helper script that applies an upstream compatibility fix. No supply-chain attack or malicious behavior is present.
</details>
<evidence></evidence>
<summary>Legitimate theme patch script; no malicious behavior.</summary>
</security_assessment>

[1/1] Reviewing ...
+ Reviewed enable-follow-system.py. Status: SAFE -- Legitimate theme patch script; no malicious behavior.
Reviewed all additional files.
Reviewed additional files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 24,114
  Completion Tokens: 4,313
  Total Tokens: 28,427
  Total Cost: $0.001600
  Execution Time: 146.17 seconds

Final Status: SAFE


No issues found.
