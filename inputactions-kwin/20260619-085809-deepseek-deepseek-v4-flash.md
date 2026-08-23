---
package: inputactions-kwin
pkgver: 0.9.2.0
pkgrel: 2
result: safe
model: deepseek/deepseek-v4-flash
provider: openrouter.ai
base_url: https://openrouter.ai/api/v1
aur_sleuth_rev: 11c93a0c95e2166961e3664fea6b5a63827ded10
prompt_tokens: 39129
completion_tokens: 6460
total_tokens: 45589
cost: 0.00468441
execution_time: 114.05
files_reviewed: 13
files_skipped: 0
date: 2026-06-19T08:58:08Z
file_verdicts:
  - file: inputactions-kwin.install
    status: safe
    summary: Standard post-install info message, no malicious content.
  - file: rebuild-reminder.hook
    status: safe
    summary: Standard pacman hook for rebuild reminder.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR packaging, no malicious indicators.
  - file: reminder.conf
    status: safe
    summary: Configuration file template, no executable content, safe.
  - file: src/lib/core/src/libinputactions/actions/PlasmaGlobalShortcutAction.cpp
    status: safe
    summary: Standard source file, no malicious content.
  - file: src/lib/core/src/libinputactions/conditions/CustomCondition.cpp
    status: safe
    summary: Clean C++ class implementation, no malicious behavior.
  - file: src/lib/core/src/libinputactions/actions/CommandAction.cpp
    status: safe
    summary: Standard input action command execution code; no security issues.
  - file: src/lib/core/src/libinputactions/actions/ActionExecutor.cpp
    status: safe
    summary: Standard C++ source file, no security issues.
  - file: src/lib/core/src/libinputactions/actions/TriggerAction.cpp
    status: safe
    summary: Legitimate upstream C++ source code, no security issues.
  - file: src/lib/core/src/libinputactions/actions/CustomAction.cpp
    status: safe
    summary: Standard C++ action class, no security concerns.
  - file: src/CMakeLists.txt
    status: safe
    summary: Standard CMake build file, no security issues.
  - file: src/lib/core/src/libinputactions/config/ConfigLoader.cpp
    status: safe
    summary: Legitimate upstream source code, no malicious indicators.
  - file: src/lib/core/src/libinputactions/InputActionsMain.cpp
    status: safe
    summary: No malicious code; typical KWin plugin source.
---

Cloning https://aur.archlinux.org/inputactions-kwin.git to /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-ehncan0j...
Cloned repository to /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-ehncan0j
Analyzing inputactions-kwin AUR package (working in /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-ehncan0j) with deepseek/deepseek-v4-flash from https://openrouter.ai/api/v1
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD defines standard packaging variables and arrays. The `source` array contains a tarball from the official GitHub releases (with a pinned SHA-256 checksum) and three local files shipped with the AUR package. There is no `pkgver()` function, and the global scope only contains static assignments with no command substitution or function calls that could execute external commands. The `prepare()`, `build()`, and `package()` functions are not executed by the requested `makepkg` commands due to `--noprepare` and `--nobuild`. No red flags (e.g., `curl|bash`, obfuscated code, network exfiltration) are present in the global scope or source definitions. Therefore, fetching sources and sourcing the PKGBUILD is safe.
</details>
<summary>No malicious code in global scope or sources. Safe.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete [grey50]-- No malicious code in global scope or sources. Safe.[/]
Running makepkg --nobuild --nodeps --noprepare to download sources for agent...
makepkg --nobuild --nodeps --noprepare successful
Running makepkg --printsrcinfo to get source files for agent...
makepkg --printsrcinfo successful
Reviewing required files...
[0/3] Reviewing PKGBUILD...
[0/3] Reviewing PKGBUILD, inputactions-kwin.install...
[0/3] Reviewing PKGBUILD, inputactions-kwin.install, rebuild-reminder.hook...
LLM auditresponse for inputactions-kwin.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `inputactions-kwin.install` contains a single function `post_install()` that prints an informational message using `echo` and `tput` for formatting. There are no commands that download, execute, or modify system files. The message simply directs users to the upstream wiki for optional additional setup steps — this is normal packaging practice. No security issues are present.
</details>
<summary>Standard post-install info message, no malicious content.</summary>
</security_assessment>

[1/3] Reviewing PKGBUILD, rebuild-reminder.hook...
+ Reviewed inputactions-kwin.install. Status: SAFE -- Standard post-install info message, no malicious content.
LLM auditresponse for rebuild-reminder.hook:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard pacman hook that triggers after an upgrade of the `kwin` package. It executes `/usr/share/libalpm/scripts/send-rebuild-reminder --broadcast`, a helper script used to send a desktop notification reminding users to rebuild the AUR package. This is a common pattern for AUR packages that track a dependency and require rebuilding when that dependency updates. The hook does not contain any suspicious network requests, obfuscated code, dangerous commands (like `eval`, `curl`, `wget`), or file operations outside of its intended purpose. The script it calls resides in a standard system location and the hook syntax is unremarkable. No evidence of malicious or dangerous behavior.
</details>
<summary>
Standard pacman hook for rebuild reminder.</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed rebuild-reminder.hook. Status: SAFE -- Standard pacman hook for rebuild reminder.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD fetches its primary source from the official upstream GitHub releases (https://github.com/InputActions/kwin/releases/download/) with a valid SHA256 checksum. The remaining files (a helper script, config, and hook) are also pinned with checksums. The build and packaging steps are standard for a KDE/Qt-based application: cmake, ctest, and installation into standard system paths. The `sed` operations in `prepare()` simply substitute package metadata into a helper script, which is routine AUR maintenance. There is no evidence of obfuscation, unexpected network requests, or execution of untrusted code. The `install` file is not provided in the source list but is a separate .install file co-located with the PKGBUILD, which is normal AUR practice.
</details>
<summary>Standard AUR packaging, no malicious indicators.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR packaging, no malicious indicators.
Reviewed all required files.
Deciding which files to review next...
Note: 325 files available for selection; offering the 50 highest-priority to the model. 258 lower-priority file(s) were not offered.
LLM response for file selection:
src/CMakeLists.txt
reminder.conf
src/lib/core/src/libinputactions/actions/CommandAction.cpp
src/lib/core/src/libinputactions/config/ConfigLoader.cpp
src/lib/core/src/libinputactions/actions/ActionExecutor.cpp
src/lib/core/src/libinputactions/actions/CustomAction.cpp
src/lib/core/src/libinputactions/conditions/CustomCondition.cpp
src/lib/core/src/libinputactions/actions/PlasmaGlobalShortcutAction.cpp
src/lib/core/src/libinputactions/InputActionsMain.cpp
src/lib/core/src/libinputactions/actions/TriggerAction.cpp
Decided to review 10 additional files: src/CMakeLists.txt, reminder.conf, src/lib/core/src/libinputactions/actions/CommandAction.cpp, src/lib/core/src/libinputactions/config/ConfigLoader.cpp, src/lib/core/src/libinputactions/actions/ActionExecutor.cpp, src/lib/core/src/libinputactions/actions/CustomAction.cpp, src/lib/core/src/libinputactions/conditions/CustomCondition.cpp, src/lib/core/src/libinputactions/actions/PlasmaGlobalShortcutAction.cpp, src/lib/core/src/libinputactions/InputActionsMain.cpp, src/lib/core/src/libinputactions/actions/TriggerAction.cpp
Reviewing additional files...
Reviewing additional files...
[0/10] Reviewing reminder.conf...
[0/10] Reviewing reminder.conf, src/CMakeLists.txt...
[0/10] Reviewing reminder.conf, src/CMakeLists.txt, src/lib/core/src/libinputactions/config/ConfigLoader.cpp...
[0/10] Reviewing reminder.conf, src/CMakeLists.txt, src/lib/core/src/libinputactions/config/ConfigLoader.cpp, src/lib/core/src/libinputactions/actions/CommandAction.cpp...
[0/10] Reviewing reminder.conf, src/CMakeLists.txt, src/lib/core/src/libinputactions/config/ConfigLoader.cpp, src/lib/core/src/libinputactions/actions/CommandAction.cpp, src/lib/core/src/libinputactions/actions/CustomAction.cpp...
[0/10] Reviewing reminder.conf, src/CMakeLists.txt, src/lib/core/src/libinputactions/config/ConfigLoader.cpp, src/lib/core/src/libinputactions/actions/CommandAction.cpp, src/lib/core/src/libinputactions/actions/CustomAction.cpp, src/lib/core/src/libinputactions/actions/ActionExecutor.cpp...
[0/10] Reviewing reminder.conf, src/CMakeLists.txt, src/lib/core/src/libinputactions/config/ConfigLoader.cpp, src/lib/core/src/libinputactions/actions/CommandAction.cpp, src/lib/core/src/libinputactions/actions/CustomAction.cpp, src/lib/core/src/libinputactions/actions/ActionExecutor.cpp, src/lib/core/src/libinputactions/conditions/CustomCondition.cpp...
[0/10] Reviewing reminder.conf, src/CMakeLists.txt, src/lib/core/src/libinputactions/config/ConfigLoader.cpp, src/lib/core/src/libinputactions/actions/CommandAction.cpp, src/lib/core/src/libinputactions/actions/CustomAction.cpp, src/lib/core/src/libinputactions/actions/ActionExecutor.cpp, src/lib/core/src/libinputactions/conditions/CustomCondition.cpp, src/lib/core/src/libinputactions/actions/PlasmaGlobalShortcutAction.cpp...
[0/10] Reviewing reminder.conf, src/CMakeLists.txt, src/lib/core/src/libinputactions/config/ConfigLoader.cpp, src/lib/core/src/libinputactions/actions/CommandAction.cpp, src/lib/core/src/libinputactions/actions/CustomAction.cpp, src/lib/core/src/libinputactions/actions/ActionExecutor.cpp, src/lib/core/src/libinputactions/conditions/CustomCondition.cpp, src/lib/core/src/libinputactions/actions/PlasmaGlobalShortcutAction.cpp, src/lib/core/src/libinputactions/InputActionsMain.cpp...
[0/10] Reviewing reminder.conf, src/CMakeLists.txt, src/lib/core/src/libinputactions/config/ConfigLoader.cpp, src/lib/core/src/libinputactions/actions/CommandAction.cpp, src/lib/core/src/libinputactions/actions/CustomAction.cpp, src/lib/core/src/libinputactions/actions/ActionExecutor.cpp, src/lib/core/src/libinputactions/conditions/CustomCondition.cpp, src/lib/core/src/libinputactions/actions/PlasmaGlobalShortcutAction.cpp, src/lib/core/src/libinputactions/InputActionsMain.cpp, src/lib/core/src/libinputactions/actions/TriggerAction.cpp...
LLM auditresponse for reminder.conf:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `reminder.conf` is a configuration file template for a rebuild reminder dialog. It contains only commented-out examples and explanatory text. There are no executable commands, network requests, obfuscated code, or any operations that could be considered malicious. It is a standard configuration file used in AUR packaging to remind users to rebuild a package after an update.
</details>
<summary>Configuration file template, no executable content, safe.</summary>
</security_assessment>

[1/10] Reviewing src/CMakeLists.txt, src/lib/core/src/libinputactions/config/ConfigLoader.cpp, src/lib/core/src/libinputactions/actions/CommandAction.cpp, src/lib/core/src/libinputactions/actions/CustomAction.cpp, src/lib/core/src/libinputactions/actions/ActionExecutor.cpp, src/lib/core/src/libinputactions/conditions/CustomCondition.cpp, src/lib/core/src/libinputactions/actions/PlasmaGlobalShortcutAction.cpp, src/lib/core/src/libinputactions/InputActionsMain.cpp, src/lib/core/src/libinputactions/actions/TriggerAction.cpp...
+ Reviewed reminder.conf. Status: SAFE -- Configuration file template, no executable content, safe.
LLM auditresponse for PlasmaGlobalShortcutAction.cpp:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard C++ source file for the `inputactions-kwin` package. It defines the `PlasmaGlobalShortcutAction` class, which uses a global invoker to trigger Plasma global shortcuts. There are no network requests, obfuscation, dangerous commands, or any behavior outside the expected functionality of the application. The code is consistent with legitimate upstream development and does not exhibit any signs of a supply-chain attack.
</details>
<summary>Standard source file, no malicious content.</summary>
</security_assessment>

[2/10] Reviewing src/CMakeLists.txt, src/lib/core/src/libinputactions/config/ConfigLoader.cpp, src/lib/core/src/libinputactions/actions/CommandAction.cpp, src/lib/core/src/libinputactions/actions/CustomAction.cpp, src/lib/core/src/libinputactions/actions/ActionExecutor.cpp, src/lib/core/src/libinputactions/conditions/CustomCondition.cpp, src/lib/core/src/libinputactions/InputActionsMain.cpp, src/lib/core/src/libinputactions/actions/TriggerAction.cpp...
+ Reviewed src/lib/core/src/libinputactions/actions/PlasmaGlobalShortcutAction.cpp. Status: SAFE -- Standard source file, no malicious content.
LLM auditresponse for CustomCondition.cpp:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard C++ source file implementing a custom condition class. It contains only straightforward code: includes, a namespace, a constructor, and a method that calls a stored function. There are no network requests, obfuscated strings, dangerous commands (curl, wget, base64, eval, etc.), unexpected system modifications, or any other indicators of malicious behavior. The truncated portion is not shown, but the revealed lines are entirely benign and consistent with the package's stated purpose as an input handling program. No supply-chain attack indicators are present.
</details>
<summary>Clean C++ class implementation, no malicious behavior.</summary>
</security_assessment>

[3/10] Reviewing src/CMakeLists.txt, src/lib/core/src/libinputactions/config/ConfigLoader.cpp, src/lib/core/src/libinputactions/actions/CommandAction.cpp, src/lib/core/src/libinputactions/actions/CustomAction.cpp, src/lib/core/src/libinputactions/actions/ActionExecutor.cpp, src/lib/core/src/libinputactions/InputActionsMain.cpp, src/lib/core/src/libinputactions/actions/TriggerAction.cpp...
+ Reviewed src/lib/core/src/libinputactions/conditions/CustomCondition.cpp. Status: SAFE -- Clean C++ class implementation, no malicious behavior.
LLM auditresponse for CommandAction.cpp:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `CommandAction.cpp` is a standard C++ source file belonging to a KWin input actions plugin. It defines a `CommandAction` class that executes user-defined shell commands via `/bin/sh -c` using a `ProcessRunner` interface. This is exactly the expected functionality for a package named "inputactions" that allows users to map input events to arbitary commands. There is no evidence of malicious code: no network requests, no obfuscation, no unexpected file operations, and no injection of attacker-controlled payloads. The code is clean and follows normal packaging and application development practices.
</details>
<summary>
Standard input action command execution code; no security issues.
</summary>
</security_assessment>

[4/10] Reviewing src/CMakeLists.txt, src/lib/core/src/libinputactions/config/ConfigLoader.cpp, src/lib/core/src/libinputactions/actions/CustomAction.cpp, src/lib/core/src/libinputactions/actions/ActionExecutor.cpp, src/lib/core/src/libinputactions/InputActionsMain.cpp, src/lib/core/src/libinputactions/actions/TriggerAction.cpp...
+ Reviewed src/lib/core/src/libinputactions/actions/CommandAction.cpp. Status: SAFE -- Standard input action command execution code; no security issues.
LLM auditresponse for ActionExecutor.cpp:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard C++ source file implementing an action executor for the inputactions-kwin package. It contains no network requests, obfuscated code, dangerous commands (eval, base64, curl, wget, etc.), or any operations that deviate from normal application functionality. The code manages thread pools for executing actions, which is expected behavior for an input handling system. There is no evidence of supply-chain attack or malicious injection.
</details>
<summary>Standard C++ source file, no security issues.</summary>
</security_assessment>

[5/10] Reviewing src/CMakeLists.txt, src/lib/core/src/libinputactions/config/ConfigLoader.cpp, src/lib/core/src/libinputactions/actions/CustomAction.cpp, src/lib/core/src/libinputactions/InputActionsMain.cpp, src/lib/core/src/libinputactions/actions/TriggerAction.cpp...
+ Reviewed src/lib/core/src/libinputactions/actions/ActionExecutor.cpp. Status: SAFE -- Standard C++ source file, no security issues.
LLM auditresponse for TriggerAction.cpp:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `TriggerAction.cpp` is a standard C++ source file from the `inputactions-kwin` upstream project. It implements a trigger action handler for input events, using normal Qt and C++ constructs. There are no network requests, obfuscated code, dangerous commands (curl, wget, eval, base64, exec), or any operations that deviate from expected application functionality. The code is consistent with the package's stated purpose of handling input actions. No evidence of supply-chain attack or malicious injection was found.
</details>
<summary>Legitimate upstream C++ source code, no security issues.</summary>
</security_assessment>

[6/10] Reviewing src/CMakeLists.txt, src/lib/core/src/libinputactions/config/ConfigLoader.cpp, src/lib/core/src/libinputactions/actions/CustomAction.cpp, src/lib/core/src/libinputactions/InputActionsMain.cpp...
+ Reviewed src/lib/core/src/libinputactions/actions/TriggerAction.cpp. Status: SAFE -- Legitimate upstream C++ source code, no security issues.
LLM auditresponse for CustomAction.cpp:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a normal C++ source file implementing a custom action class for the Input Actions KWin plugin. It contains only standard C++ constructs: includes, a namespace, a constructor storing a function and flags, and an `executeImpl` method that calls the stored function. There are no network operations, obfuscated code, dangerous command execution, or any behavior outside the expected scope of the application. The file is part of the upstream source and follows standard packaging practices.
</details>
<summary>Standard C++ action class, no security concerns.</summary>
</security_assessment>

[7/10] Reviewing src/CMakeLists.txt, src/lib/core/src/libinputactions/config/ConfigLoader.cpp, src/lib/core/src/libinputactions/InputActionsMain.cpp...
+ Reviewed src/lib/core/src/libinputactions/actions/CustomAction.cpp. Status: SAFE -- Standard C++ action class, no security concerns.
LLM auditresponse for CMakeLists.txt:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard CMakeLists.txt for building a KDE/Qt project. It sets up project metadata, compiler flags, finds required KDE modules (ECM), configures CPack packaging, and adds subdirectories for compilation. There are no network requests, encoded commands, unexpected file operations, or other indicators of malicious behavior. The use of `INPUTACTIONS_OVERRIDE_CORE` is a normal CMake variable for conditional compilation. The file follows standard packaging and build practices.
</details>
<summary>Standard CMake build file, no security issues.</summary>
</security_assessment>

[8/10] Reviewing src/lib/core/src/libinputactions/config/ConfigLoader.cpp, src/lib/core/src/libinputactions/InputActionsMain.cpp...
+ Reviewed src/CMakeLists.txt. Status: SAFE -- Standard CMake build file, no security issues.
LLM auditresponse for ConfigLoader.cpp:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a C++ source file from the upstream `inputactions-kwin` project. It implements configuration loading logic (parsing a config object, initializing handlers, etc.) using standard Qt/KF6 APIs. There is no obfuscated code, no network requests, no downloads, no execution of external programs, and no file operations that deviate from the application's stated purpose. The `allowExternalVariableAccess` field is a configuration setting, not a security concern. The code is consistent with normal desktop application behavior and does not contain any indicators of a supply-chain attack.
</details>
<summary>Legitimate upstream source code, no malicious indicators.</summary>
</security_assessment>

[9/10] Reviewing src/lib/core/src/libinputactions/InputActionsMain.cpp...
+ Reviewed src/lib/core/src/libinputactions/config/ConfigLoader.cpp. Status: SAFE -- Legitimate upstream source code, no malicious indicators.
LLM auditresponse for InputActionsMain.cpp:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard C++ source file for a KWin input actions plugin. It contains normal initialization, configuration handling, and registration of variables (cursor shape, pointer position, window properties, etc.) via the `VariableManager`. All includes and operations are within the expected scope of a KWin plugin that interacts with the windowing system and input devices. There are no suspicious network requests, file operations, obfuscated code, or commands like `curl`, `wget`, `eval`, `base64`, or `exec`. The code follows standard Qt/C++ patterns and does not exfiltrate data or execute untrusted content.
</details>
<summary>No malicious code; typical KWin plugin source.</summary>
</security_assessment>

[10/10] Reviewing ...
+ Reviewed src/lib/core/src/libinputactions/InputActionsMain.cpp. Status: SAFE -- No malicious code; typical KWin plugin source.
Reviewed all additional files.
Reviewed additional files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 39,129
  Completion Tokens: 6,460
  Total Tokens: 45,589
  Total Cost: $0.004684
  Execution Time: 114.05 seconds
Full audit report can be found in /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-report-inputactions-kwin.txt
Final Status: SAFE


No issues found.
