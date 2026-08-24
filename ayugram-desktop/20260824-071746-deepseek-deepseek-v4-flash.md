---
package: ayugram-desktop
pkgver: 7.0.9
pkgrel: 2
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 56580919ea5cd225cb34031d0932798021e4a0d8
prompt_tokens: 47322
completion_tokens: 6799
total_tokens: 54121
cost: 0.0034968080
execution_time: 178.32
files_reviewed: 11
files_skipped: 1
files_unauditable: 339
unpinned_sources: 0
date: 2026-08-24T07:17:44Z
file_verdicts:
  - file: td-022d60202e446ad1287b9fb68e687c8a0760788b.tar.gz
    status: skipped
    summary: "Skipping binary file: td-022d60202e446ad1287b9fb68e687c8a0760788b.tar.gz"
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD with no security issues.
  - file: src/AyuGramDesktop-7.0.9-full/.claude/grab_clipboard.sh
    status: safe
    summary: Standard macOS clipboard helper script for AyuGram.
  - file: src/AyuGramDesktop-7.0.9-full/CMakeLists.txt
    status: safe
    summary: Standard build file, no malicious content.
  - file: src/AyuGramDesktop-7.0.9-full/.claude/grab_clipboard.ps1
    status: safe
    summary: Simple clipboard utility; no malicious behavior.
  - file: src/AyuGramDesktop-7.0.9-full/Telegram/Resources/export_rich/js/rich_message.js
    status: safe
    summary: Safe slideshow JavaScript for export.
  - file: src/AyuGramDesktop-7.0.9-full/Telegram/Resources/export_html/js/script.js
    status: safe
    summary: Standard Telegram export JS; no malicious code.
  - file: src/AyuGramDesktop-7.0.9-full/Telegram/Resources/bot_webview_shell_html/page.js
    status: safe
    summary: Standard Telegram bot webview shell code, no supply-chain attack indicators.
  - file: src/AyuGramDesktop-7.0.9-full/Telegram/Resources/langs/stale.py
    status: safe
    summary: Simple language‑key checker, no malicious behavior.
  - file: src/AyuGramDesktop-7.0.9-full/Telegram/Resources/langs/refresh.sh
    status: safe
    summary: Standard build helper; no malicious behavior.
  - file: src/AyuGramDesktop-7.0.9-full/Telegram/Resources/langs/refresh.py
    status: safe
    summary: Benign language file processing script.
  - file: src/AyuGramDesktop-7.0.9-full/Telegram/Resources/picker_html/picker.js
    status: safe
    summary: Standard UI script for an embedded map picker; no malicious behavior.
---

Cloning https://aur.archlinux.org/ayugram-desktop.git...
Cloned ayugram-desktop
Analyzing ayugram-desktop AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only static variable assignments (pkgname, pkgver, etc.), an array of dependencies, and a source array pointing to two GitHub release tarballs with pinned commits and valid SHA-256 checksums. There is no `pkgver()` function or any top-level command substitution, backtick execution, or code that could run at source time. The `build()` and `package()` functions are defined but will not execute with `--noprepare` and `--nobuild` flags. Fetching the source tarballs from the project's own GitHub releases is normal and expected behavior. No evidence of malicious or injected code in the PKGBUILD scope that would execute during `makepkg --printsrcinfo` or source fetching.
</details>
<evidence></evidence>
<summary>No dangerous code in global scope or during source fetch.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous code in global scope or during source fetch.
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Running makepkg --printsrcinfo to get source files for agent...
makepkg --printsrcinfo successful
Reviewing required files...
[0/2] Reviewing PKGBUILD...
[0/2] Reviewing PKGBUILD, td-022d60202e446ad1287b9fb68e687c8a0760788b.tar.gz...
[1/2] Reviewing PKGBUILD...
! Reviewed td-022d60202e446ad1287b9fb68e687c8a0760788b.tar.gz. Status: SKIPPED -- Skipping binary file: td-022d60202e446ad1287b9fb68e687c8a0760788b.tar.gz
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard AUR packaging practices for building the AyuGram Telegram client from its official GitHub repository. Sources are pinned with checksums (not SKIP) for both the main application and the tdlib dependency. The build process uses CMake with standard flags and the package install step only copies files into `$pkgdir`. There are no network requests outside the declared sources, no encoded/obfuscated commands, no manipulation of system files outside the package scope, and no unexpected post-install hooks. The API ID/HASH defaults are the well-known Telegram test credentials; overriding them via environment variables is normal and documented by the upstream. No malicious behavior detected.
</details>
<evidence>
</evidence>
<summary>Standard PKGBUILD with no security issues.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD with no security issues.
Reviewed all required files.
Deciding which files to review next...
Note: 339 compiled/archived file(s) cannot be audited as text and were not reviewed (AyuGram-7.0.9-full.tar.gz, src/AyuGramDesktop-7.0.9-full/cmake/win_directx_helper/modules/x64/d3d/d3dcompiler_47.dll, src/AyuGramDesktop-7.0.9-full/cmake/win_directx_helper/modules/x86/d3d/d3dcompiler_47.dll and 336 more). For a package that ships prebuilt binaries, the audit covers the packaging, not the payload.
Note: 13992 files available for selection; offering the 50 highest-priority to the model. 12800 lower-priority file(s) were not offered.
File selection failed (LLM response message content is empty or missing. Raw response: ChatCompletion(id='gen-1787555810-VQLmNz4bRLfxYvbIJmsr', choices=[Choice(finish_reason='stop', index=0, logprobs=None, message=ChatCompletionMessage(content=None, refusal=None, role='assistant', annotations=None, audio=None, function_call=None, tool_calls=None, reasoning='We need to select up to 10 files from the listing that are most likely to contain malicious/dangerous code, focusing on files that run at build/install time. Already reviewed: PKGBUILD and the upstream tarball. So we need to pick from the remaining files in the listing.\n\nThe listing includes many files from within the extracted source tarball (src/AyuGramDesktop-7.0.9-full/...). The note says: "DEPRIORITIZE vendored upstream bundle content." Since this is the full source tree of the AyuGramDesktop release, all these files are from the upstream artifact, not AUR-specific. The AUR package\'s PKGBUILD is already reviewed. The *only* AUR-specific files would be the PKGBUILD and possibly an install hook (not listed). The listing shows many files from within the upstream tarball. The instructions say: "When a package merely repackages a prebuilt archive, the AUR-controlled surface may be only the PKGBUILD and the install hook -- both already reviewed. In that case say so by returning FEW files or none, rather than filling slots with bundle contents. Files the maintainer wrote or modified always outrank files that came from the artifact."\n\nThus, there are no additional AUR-specific files to review. The only files that are not already reviewed are from the upstream tarball. The instruction says to deprioritize vendored upstream bundle content. So we should return an empty list or very few? But we are asked to "choose UP TO 10 files from the listing below that are MOST likely to contain malicious or dangerous code." Since the PKGBUILD is already reviewed, and the upstream tarball is not AUR-injected, there is no need to review any of these files. The most likely place for malicious code in the package i... (truncated)); using highest-priority files instead

Note: file selection did not complete (LLM response message content is empty or missing. Raw response: ChatCompletion(id='gen-1787555810-VQLmNz4bRLfxYvbIJmsr', choices=[Choice(finish_reason='stop', index=0, logprobs=None, message=ChatCompletionMessage(content=None, refusal=None, role='assistant', annotations=None, audio=None, function_call=None, tool_calls=None, reasoning='We need to select up to 10 files from the listing that are most likely to contain malicious/dangerous code, focusing on files that run at build/install time. Already reviewed: PKGBUILD and the upstream tarball. So we need to pick from the remaining files in the listing.\n\nThe listing includes many files from within the extracted source tarball (src/AyuGramDesktop-7.0.9-full/...). The note says: "DEPRIORITIZE vendored upstream bundle content." Since this is the full source tree of the AyuGramDesktop release, all these files are from the upstream artifact, not AUR-specific. The AUR package\'s PKGBUILD is already reviewed. The *only* AUR-specific files would be the PKGBUILD and possibly an install hook (not listed). The listing shows many files from within the upstream tarball. The instructions say: "When a package merely repackages a prebuilt archive, the AUR-controlled surface may be only the PKGBUILD and the install hook -- both already reviewed. In that case say so by returning FEW files or none, rather than filling slots with bundle contents. Files the maintainer wrote or modified always outrank files that came from the artifact."\n\nThus, there are no additional AUR-specific files to review. The only files that are not already reviewed are from the upstream tarball. The instruction says to deprioritize vendored upstream bundle content. So we should return an empty list or very few? But we are asked to "choose UP TO 10 files from the listing below that are MOST likely to contain malicious or dangerous code." Since the PKGBUILD is already reviewed, and the upstream tarball is not AUR-injected, there is no need to review any of these files. The most likely place for malicious code in the package i... (truncated)). Falling back to the 10 highest-priority file(s) by ranking.
Decided to review 10 additional files: src/AyuGramDesktop-7.0.9-full/.claude/grab_clipboard.ps1, src/AyuGramDesktop-7.0.9-full/.claude/grab_clipboard.sh, src/AyuGramDesktop-7.0.9-full/CMakeLists.txt, src/AyuGramDesktop-7.0.9-full/Telegram/Resources/bot_webview_shell_html/page.js, src/AyuGramDesktop-7.0.9-full/Telegram/Resources/export_html/js/script.js, src/AyuGramDesktop-7.0.9-full/Telegram/Resources/export_rich/js/rich_message.js, src/AyuGramDesktop-7.0.9-full/Telegram/Resources/langs/refresh.py, src/AyuGramDesktop-7.0.9-full/Telegram/Resources/langs/refresh.sh, src/AyuGramDesktop-7.0.9-full/Telegram/Resources/langs/stale.py, src/AyuGramDesktop-7.0.9-full/Telegram/Resources/picker_html/picker.js
Reviewing additional files...
Reviewing additional files...
[0/10] Reviewing src/AyuGramDesktop-7.0.9-full/.claude/grab_clipboard.ps1...
[0/10] Reviewing src/AyuGramDesktop-7.0.9-full/.claude/grab_clipboard.ps1, src/AyuGramDesktop-7.0.9-full/.claude/grab_clipboard.sh...
[0/10] Reviewing src/AyuGramDesktop-7.0.9-full/.claude/grab_clipboard.ps1, src/AyuGramDesktop-7.0.9-full/.claude/grab_clipboard.sh, src/AyuGramDesktop-7.0.9-full/CMakeLists.txt...
LLM auditresponse for grab_clipboard.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This script is a benign utility to read an image from the macOS clipboard and save it as a PNG file. It uses standard AppleScript (osascript) and file I/O operations. There are no network requests, obfuscated code, dangerous commands, or deviations from its stated purpose. It belongs to the upstream application's own codebase (AyuGram), not an injected supply-chain attack.
</details>
<evidence></evidence>
<summary>Standard macOS clipboard helper script for AyuGram.</summary>
</security_assessment>

[0/10] Reviewing src/AyuGramDesktop-7.0.9-full/.claude/grab_clipboard.ps1, src/AyuGramDesktop-7.0.9-full/.claude/grab_clipboard.sh, src/AyuGramDesktop-7.0.9-full/CMakeLists.txt, src/AyuGramDesktop-7.0.9-full/Telegram/Resources/bot_webview_shell_html/page.js...
[1/10] Reviewing src/AyuGramDesktop-7.0.9-full/.claude/grab_clipboard.ps1, src/AyuGramDesktop-7.0.9-full/CMakeLists.txt, src/AyuGramDesktop-7.0.9-full/Telegram/Resources/bot_webview_shell_html/page.js...
+ Reviewed src/AyuGramDesktop-7.0.9-full/.claude/grab_clipboard.sh. Status: SAFE -- Standard macOS clipboard helper script for AyuGram.
LLM auditresponse for CMakeLists.txt:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard CMake build configuration for the AyuGram Desktop application (a fork of Telegram Desktop). It uses typical CMake commands: setting project metadata, including helper modules, configuring build types, and adding subdirectories. All referenced paths and commands relate to the project's own build system. There are no obfuscated strings, no network requests or downloads, no execution of arbitrary scripts, and no attempts to exfiltrate or modify system files outside the build scope. The file is entirely consistent with normal packaging and build practices for a C++ CMake project.
</details>
<evidence></evidence>
<summary>Standard build file, no malicious content.</summary>
</security_assessment>

[2/10] Reviewing src/AyuGramDesktop-7.0.9-full/.claude/grab_clipboard.ps1, src/AyuGramDesktop-7.0.9-full/Telegram/Resources/bot_webview_shell_html/page.js...
+ Reviewed src/AyuGramDesktop-7.0.9-full/CMakeLists.txt. Status: SAFE -- Standard build file, no malicious content.
[2/10] Reviewing src/AyuGramDesktop-7.0.9-full/.claude/grab_clipboard.ps1, src/AyuGramDesktop-7.0.9-full/Telegram/Resources/bot_webview_shell_html/page.js, src/AyuGramDesktop-7.0.9-full/Telegram/Resources/export_html/js/script.js...
LLM auditresponse for grab_clipboard.ps1:
<security_assessment>
<decision>SAFE</decision>
<details>
This PowerShell script grabs an image from the Windows clipboard and saves it to a user-specified path using standard .NET APIs. There is no network activity, no obfuscation, no exfiltration of data, and no file operations outside the provided output path. It is a simple utility script likely included in the upstream source for clipboard-related features. Although it is Windows-specific and packaged in an AUR (Linux) package, that is not a security concern—it is simply part of the upstream source code and does not execute during build or on Linux systems. No malicious behavior is present.
</details>
<evidence></evidence>
<summary>Simple clipboard utility; no malicious behavior.</summary>
</security_assessment>

[2/10] Reviewing src/AyuGramDesktop-7.0.9-full/.claude/grab_clipboard.ps1, src/AyuGramDesktop-7.0.9-full/Telegram/Resources/bot_webview_shell_html/page.js, src/AyuGramDesktop-7.0.9-full/Telegram/Resources/export_html/js/script.js, src/AyuGramDesktop-7.0.9-full/Telegram/Resources/export_rich/js/rich_message.js...
[3/10] Reviewing src/AyuGramDesktop-7.0.9-full/Telegram/Resources/bot_webview_shell_html/page.js, src/AyuGramDesktop-7.0.9-full/Telegram/Resources/export_html/js/script.js, src/AyuGramDesktop-7.0.9-full/Telegram/Resources/export_rich/js/rich_message.js...
+ Reviewed src/AyuGramDesktop-7.0.9-full/.claude/grab_clipboard.ps1. Status: SAFE -- Simple clipboard utility; no malicious behavior.
LLM auditresponse for rich_message.js:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard JavaScript slideshow implementation for Telegram's export rich messages. It selects slideshow elements from the DOM, manages slide transitions via CSS transforms, toggles dot active states, and controls video playback (play/pause) based on the current slide. No network requests, file operations, obfuscated code, eval, or any other dangerous behavior is present. This code is purely client-side UI logic and does not interact with system resources or external hosts. It is consistent with expected packaging of exported chat functionality.
</details>
<evidence>
</evidence>
<summary>Safe slideshow JavaScript for export.</summary>
</security_assessment>

[4/10] Reviewing src/AyuGramDesktop-7.0.9-full/Telegram/Resources/bot_webview_shell_html/page.js, src/AyuGramDesktop-7.0.9-full/Telegram/Resources/export_html/js/script.js...
+ Reviewed src/AyuGramDesktop-7.0.9-full/Telegram/Resources/export_rich/js/rich_message.js. Status: SAFE -- Safe slideshow JavaScript for export.
[4/10] Reviewing src/AyuGramDesktop-7.0.9-full/Telegram/Resources/bot_webview_shell_html/page.js, src/AyuGramDesktop-7.0.9-full/Telegram/Resources/export_html/js/script.js, src/AyuGramDesktop-7.0.9-full/Telegram/Resources/langs/refresh.py...
LLM auditresponse for script.js:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard JavaScript helper for Telegram's HTML export feature. It provides functions for scrolling, showing toast notifications, handling hashtag/cashtag/bot command clicks, spoiler toggling, and clipboard copying via `navigator.clipboard.writeText`. There is no code that makes network requests, executes arbitrary strings, accesses system files, or performs any obfuscated operations. All functionality is purely client-side UI interaction. No evidence of a supply-chain attack or malicious behavior.
</details>
<evidence></evidence>
<summary>Standard Telegram export JS; no malicious code.</summary>
</security_assessment>

[4/10] Reviewing src/AyuGramDesktop-7.0.9-full/Telegram/Resources/bot_webview_shell_html/page.js, src/AyuGramDesktop-7.0.9-full/Telegram/Resources/export_html/js/script.js, src/AyuGramDesktop-7.0.9-full/Telegram/Resources/langs/refresh.py, src/AyuGramDesktop-7.0.9-full/Telegram/Resources/langs/refresh.sh...
[5/10] Reviewing src/AyuGramDesktop-7.0.9-full/Telegram/Resources/bot_webview_shell_html/page.js, src/AyuGramDesktop-7.0.9-full/Telegram/Resources/langs/refresh.py, src/AyuGramDesktop-7.0.9-full/Telegram/Resources/langs/refresh.sh...
+ Reviewed src/AyuGramDesktop-7.0.9-full/Telegram/Resources/export_html/js/script.js. Status: SAFE -- Standard Telegram export JS; no malicious code.
LLM auditresponse for page.js:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `page.js` is a standard component of Telegram Desktop's bot webview shell. It manages an embedded iframe, handles communication between the shell and the web app, and exposes a frozen API (`TelegramDesktopShell`) to the native client. All network interactions (via `postMessage` and `window.external.invoke`) are limited to the embedded iframe and the native Telegram Desktop client, respectively. There is no evidence of remote code execution, exfiltration, obfuscated commands, or any behavior that deviates from the intended functionality of the bot webview shell. The code follows expected security practices (e.g., validating event origin, using `no-referrer`, restricting certain operations to the official `web.telegram.org` origin). No malicious patterns are present.
</details>
<evidence></evidence>
<summary>Standard Telegram bot webview shell code, no supply-chain attack indicators.</summary>
</security_assessment>

[6/10] Reviewing src/AyuGramDesktop-7.0.9-full/Telegram/Resources/langs/refresh.py, src/AyuGramDesktop-7.0.9-full/Telegram/Resources/langs/refresh.sh...
+ Reviewed src/AyuGramDesktop-7.0.9-full/Telegram/Resources/bot_webview_shell_html/page.js. Status: SAFE -- Standard Telegram bot webview shell code, no supply-chain attack indicators.
[6/10] Reviewing src/AyuGramDesktop-7.0.9-full/Telegram/Resources/langs/refresh.py, src/AyuGramDesktop-7.0.9-full/Telegram/Resources/langs/refresh.sh, src/AyuGramDesktop-7.0.9-full/Telegram/Resources/langs/stale.py...
LLM auditresponse for stale.py:
<security_assessment>
<decision>SAFE</decision>
<details>
This script is a language‑key management utility. It reads a local file `lang.strings`, extracts keys matching a pattern, and prints the count. The only unusual aspect is an unused `import requests` (the library is never invoked) and a buggy `os.chdir()` call with no argument, which would cause a runtime error but does not perform any malicious action. There are no network requests, no obfuscated code, no file exfiltration, and no deviation from expected upstream packaging‑tool behavior.
</details>
<evidence>
</evidence>
<summary>Simple language‑key checker, no malicious behavior.</summary>
</security_assessment>

[6/10] Reviewing src/AyuGramDesktop-7.0.9-full/Telegram/Resources/langs/refresh.py, src/AyuGramDesktop-7.0.9-full/Telegram/Resources/langs/refresh.sh, src/AyuGramDesktop-7.0.9-full/Telegram/Resources/langs/stale.py, src/AyuGramDesktop-7.0.9-full/Telegram/Resources/picker_html/picker.js...
[7/10] Reviewing src/AyuGramDesktop-7.0.9-full/Telegram/Resources/langs/refresh.py, src/AyuGramDesktop-7.0.9-full/Telegram/Resources/langs/refresh.sh, src/AyuGramDesktop-7.0.9-full/Telegram/Resources/picker_html/picker.js...
+ Reviewed src/AyuGramDesktop-7.0.9-full/Telegram/Resources/langs/stale.py. Status: SAFE -- Simple language‑key checker, no malicious behavior.
LLM auditresponse for refresh.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This script is a standard build helper for Telegram Desktop's production builds. It checks for the existence of a private resource directory (`DesktopPrivate`), validates that the input file exists, and then runs a local Python script (`refresh.py`). No network requests, obfuscated code, or suspicious file operations are present. The behavior is consistent with ordinary packaging and build automation.
</details>
<evidence></evidence>
<summary>Standard build helper; no malicious behavior.</summary>
</security_assessment>

[8/10] Reviewing src/AyuGramDesktop-7.0.9-full/Telegram/Resources/langs/refresh.py, src/AyuGramDesktop-7.0.9-full/Telegram/Resources/picker_html/picker.js...
+ Reviewed src/AyuGramDesktop-7.0.9-full/Telegram/Resources/langs/refresh.sh. Status: SAFE -- Standard build helper; no malicious behavior.
LLM auditresponse for refresh.py:
<security_assessment>
<decision>SAFE</decision>
<details>
The script reads a `.strings` file from the command line, filters out specific comment lines and plural-form entries, then writes the result to `lang.strings`. All operations are local file reads/writes. The `requests` import is unused and does not perform any network activity. No obfuscation, dangerous commands, data exfiltration, or code execution from remote sources. This is a straightforward localization helper script.
</details>
<evidence></evidence>
<summary>Benign language file processing script.</summary>
</security_assessment>

[9/10] Reviewing src/AyuGramDesktop-7.0.9-full/Telegram/Resources/picker_html/picker.js...
+ Reviewed src/AyuGramDesktop-7.0.9-full/Telegram/Resources/langs/refresh.py. Status: SAFE -- Benign language file processing script.
LLM auditresponse for picker.js:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a JavaScript component for a map-based location picker UI embedded in Telegram Desktop via a web view. It communicates with the host application using `window.external.invoke`, which is standard for desktop integrations. The code configures Mapbox GL JS with a provided access token and, if the page is served from a custom hostname, adjusts the API URL to go through the local host – this is a typical reverse-proxy or resource-serving setup and not suspicious. All interactions (map movement, marker placement, venue search) are expected UI functionality. There is no obfuscation, no encoded commands, no unexpected network requests, no file system access, and no exfiltration of sensitive data. The code only forwards user-triggered events (like map moves, key presses, search requests) back to the host application with coordinates. This is consistent with the stated purpose of a location picker.
</details>
<evidence></evidence>
<summary>Standard UI script for an embedded map picker; no malicious behavior.</summary>
</security_assessment>

[10/10] Reviewing ...
+ Reviewed src/AyuGramDesktop-7.0.9-full/Telegram/Resources/picker_html/picker.js. Status: SAFE -- Standard UI script for an embedded map picker; no malicious behavior.
Reviewed all additional files.
Reviewed additional files.
Audit complete! Result: No issues found
(Skipped 1 file: td-022d60202e446ad1287b9fb68e687c8a0760788b.tar.gz)

API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 47,322
  Completion Tokens: 6,799
  Total Tokens: 54,121
  Total Cost: $0.003497
  Execution Time: 178.32 seconds

Final Status: SAFE


No issues found.


Audit Skips:

td-022d60202e446ad1287b9fb68e687c8a0760788b.tar.gz: [SKIPPED] Skipping binary file: td-022d60202e446ad1287b9fb68e687c8a0760788b.tar.gz
