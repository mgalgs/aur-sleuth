---
package: open-wallpaper-engine
pkgver: 0.2.8
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 34eecedf33cdb5da67bea8964402044d560850d8
prompt_tokens: 48359
completion_tokens: 14159
total_tokens: 62518
cost: 0.0063335202
execution_time: 171.95
files_reviewed: 11
files_skipped: 1
files_unauditable: 133
unpinned_sources: 0
date: 2026-08-25T15:24:31Z
file_verdicts:
  - file: 0001-lito-Use-system-cef.patch
    status: skipped
    summary: "Skipping binary file: 0001-lito-Use-system-cef.patch"
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD, no malicious content.
  - file: src/SPIRV-Reflect/lito.toml
    status: safe
    summary: Standard TOML config, no security issues.
  - file: src/SPIRV-Reflect/CMakeLists.txt
    status: safe
    summary: No malicious content; standard CMake build file.
  - file: src/open-wallpaper-engine/waywallen/WebRenderer/install.lua
    status: safe
    summary: Legitimate build configuration script, no security issues.
  - file: src/open-wallpaper-engine/waywallen/plugins/org.waywallen.open-wallpaper-engine/wallpaper_engine/auth.lua
    status: safe
    summary: Legitimate Steam authentication module; no malicious behavior.
  - file: src/open-wallpaper-engine/waywallen/plugins/org.waywallen.open-wallpaper-engine/main.lua
    status: safe
    summary: Standard Lua plugin for Steam Workshop integration.
  - file: src/open-wallpaper-engine/scripts/build_waywallen_plugin.sh
    status: safe
    summary: Standard build script with minor hygiene concern, not malicious.
  - file: src/open-wallpaper-engine/waywallen/plugins/org.waywallen.open-wallpaper-engine/wallpaper_engine/workshop.lua
    status: safe
    summary: Legitimate Steam Workshop data parsing module
  - file: src/open-wallpaper-engine/waywallen/plugins/org.waywallen.open-wallpaper-engine/wallpaper_engine/api.lua
    status: safe
    summary: Legitimate Steam Workshop API interface, no security issues.
  - file: src/open-wallpaper-engine/waywallen/plugins/org.waywallen.open-wallpaper-engine/wallpaper_engine/discover.lua
    status: safe
    summary: Standard plugin code, no security issues.
  - file: src/open-wallpaper-engine/release.xml
    status: safe
    summary: Static release notes XML, no security issues.
---

Cloning https://aur.archlinux.org/open-wallpaper-engine.git...
Cloned open-wallpaper-engine
Analyzing open-wallpaper-engine AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only variable assignments in its global scope and defines `prepare()`, `build()`, and `package()` functions that will not execute during `makepkg --nobuild --nodeps --noprepare` or `makepkg --printsrcinfo`. No top-level command substitutions, `eval`, or other code that runs during sourcing. The `source` array points to legitimate GitHub repositories and a local patch file, all with provided checksums. No evidence of malicious payload execution during source fetch or PKGBUILD parsing.
</details>
<evidence>
</evidence>
<summary>Safe source fetching; no code executes outside functions.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Safe source fetching; no code executes outside functions.
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Running makepkg --printsrcinfo to get source files for agent...
makepkg --printsrcinfo successful
Reviewing required files...
[0/2] Reviewing PKGBUILD...
[0/2] Reviewing PKGBUILD, 0001-lito-Use-system-cef.patch...
[1/2] Reviewing PKGBUILD...
! Reviewed 0001-lito-Use-system-cef.patch. Status: SKIPPED -- Skipping binary file: 0001-lito-Use-system-cef.patch
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a standard AUR packaging script for the open-wallpaper-engine project. All source URLs point to the project's own upstream repositories on GitHub, and each is pinned to a specific commit with a valid checksum. No `SKIP` checksums, no unpinned mutable references, and no unexpected network fetches are present. The `prepare()`, `build()`, and `package()` functions perform only routine operations: applying a patch, creating a build-system configuration file, compiling the project with `lito`, and installing the resulting binaries. There is no obfuscated code, no attempt to exfiltrate data, no execution of code from untrusted sources, and no modification of files outside the package's own scope. The use of the `lito` build tool is declared as a build dependency and is part of the normal build process. The file is consistent with ordinary AUR packaging practices and contains no indicators of malicious activity.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD, no malicious content.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD, no malicious content.
Reviewed all required files.
Deciding which files to review next...
Note: 133 compiled/archived file(s) cannot be audited as text and were not reviewed (src/SPIRV-Reflect/examples/sample.spv, src/SPIRV-Reflect/tests/16bit/vert_in_out_16.spv, src/SPIRV-Reflect/tests/access_chains/array_length_from_access_chain.spv and 130 more). For a package that ships prebuilt binaries, the audit covers the packaging, not the payload.
Note: 1428 files available for selection; offering the 50 highest-priority to the model. 1003 lower-priority file(s) were not offered.
LLM response for file selection:
src/open-wallpaper-engine/scripts/build_waywallen_plugin.sh
src/open-wallpaper-engine/waywallen/WebRenderer/install.lua
src/SPIRV-Reflect/lito.toml
src/SPIRV-Reflect/CMakeLists.txt
src/open-wallpaper-engine/waywallen/plugins/org.waywallen.open-wallpaper-engine/main.lua
src/open-wallpaper-engine/waywallen/plugins/org.waywallen.open-wallpaper-engine/wallpaper_engine/auth.lua
src/open-wallpaper-engine/waywallen/plugins/org.waywallen.open-wallpaper-engine/wallpaper_engine/api.lua
src/open-wallpaper-engine/waywallen/plugins/org.waywallen.open-wallpaper-engine/wallpaper_engine/workshop.lua
src/open-wallpaper-engine/waywallen/plugins/org.waywallen.open-wallpaper-engine/wallpaper_engine/discover.lua
src/open-wallpaper-engine/release.xml
Decided to review 10 additional files: src/open-wallpaper-engine/scripts/build_waywallen_plugin.sh, src/open-wallpaper-engine/waywallen/WebRenderer/install.lua, src/SPIRV-Reflect/lito.toml, src/SPIRV-Reflect/CMakeLists.txt, src/open-wallpaper-engine/waywallen/plugins/org.waywallen.open-wallpaper-engine/main.lua, src/open-wallpaper-engine/waywallen/plugins/org.waywallen.open-wallpaper-engine/wallpaper_engine/auth.lua, src/open-wallpaper-engine/waywallen/plugins/org.waywallen.open-wallpaper-engine/wallpaper_engine/api.lua, src/open-wallpaper-engine/waywallen/plugins/org.waywallen.open-wallpaper-engine/wallpaper_engine/workshop.lua, src/open-wallpaper-engine/waywallen/plugins/org.waywallen.open-wallpaper-engine/wallpaper_engine/discover.lua, src/open-wallpaper-engine/release.xml
Reviewing additional files...
Reviewing additional files...
[0/10] Reviewing src/open-wallpaper-engine/scripts/build_waywallen_plugin.sh...
[0/10] Reviewing src/open-wallpaper-engine/scripts/build_waywallen_plugin.sh, src/SPIRV-Reflect/lito.toml...
[0/10] Reviewing src/open-wallpaper-engine/scripts/build_waywallen_plugin.sh, src/SPIRV-Reflect/lito.toml, src/open-wallpaper-engine/waywallen/WebRenderer/install.lua...
LLM auditresponse for lito.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a TOML configuration file for the `spirv-reflect` library. It defines package metadata, library name, module, source files, and public include directories. There is no executable code, no network requests, no obfuscation, and no system modification commands. It is a standard declarative configuration used by build systems like `lito` (a build tool for Nim). No security concerns are present.
</details>
<evidence></evidence>
<summary>Standard TOML config, no security issues.</summary>
</security_assessment>

[1/10] Reviewing src/open-wallpaper-engine/scripts/build_waywallen_plugin.sh, src/open-wallpaper-engine/waywallen/WebRenderer/install.lua...
+ Reviewed src/SPIRV-Reflect/lito.toml. Status: SAFE -- Standard TOML config, no security issues.
[1/10] Reviewing src/open-wallpaper-engine/scripts/build_waywallen_plugin.sh, src/open-wallpaper-engine/waywallen/WebRenderer/install.lua, src/SPIRV-Reflect/CMakeLists.txt...
LLM auditresponse for CMakeLists.txt:
<security_assessment>
<decision>SAFE</decision>
<details>
This CMakeLists.txt is a standard build configuration file for the SPIRV-Reflect project. It defines build targets (executables, static library, tests), sets compiler options, and installs artifacts. There are no network requests, no obfuscated code, no execution of external scripts, and no suspicious system modifications. The only inclusion of third-party code is `third_party/googletest`, which is a normal bundled dependency for testing. The file adheres to standard packaging practices and contains no indicators of a supply-chain attack.
</details>
<evidence></evidence>
<summary>No malicious content; standard CMake build file.</summary>
</security_assessment>

[2/10] Reviewing src/open-wallpaper-engine/scripts/build_waywallen_plugin.sh, src/open-wallpaper-engine/waywallen/WebRenderer/install.lua...
+ Reviewed src/SPIRV-Reflect/CMakeLists.txt. Status: SAFE -- No malicious content; standard CMake build file.
[2/10] Reviewing src/open-wallpaper-engine/scripts/build_waywallen_plugin.sh, src/open-wallpaper-engine/waywallen/WebRenderer/install.lua, src/open-wallpaper-engine/waywallen/plugins/org.waywallen.open-wallpaper-engine/main.lua...
LLM auditresponse for install.lua:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `install.lua` is a standard configuration script for the lito build system. It defines installation paths for a binary artifact (`waywallen-weweb-renderer`) and an external asset dependency (`cef`, the Chromium Embedded Framework). The script specifies runtime search paths and stripping options for the CEF libraries. There is no network activity, no execution of arbitrary code, no obfuscation, no file operations beyond defining installation destinations, and no attempts to exfiltrate data or tamper with system files. The content is consistent with legitimate packaging workflow for an application that bundles CEF.
</details>
<evidence></evidence>
<summary>Legitimate build configuration script, no security issues.</summary>
</security_assessment>

[3/10] Reviewing src/open-wallpaper-engine/scripts/build_waywallen_plugin.sh, src/open-wallpaper-engine/waywallen/plugins/org.waywallen.open-wallpaper-engine/main.lua...
+ Reviewed src/open-wallpaper-engine/waywallen/WebRenderer/install.lua. Status: SAFE -- Legitimate build configuration script, no security issues.
[3/10] Reviewing src/open-wallpaper-engine/scripts/build_waywallen_plugin.sh, src/open-wallpaper-engine/waywallen/plugins/org.waywallen.open-wallpaper-engine/main.lua, src/open-wallpaper-engine/waywallen/plugins/org.waywallen.open-wallpaper-engine/wallpaper_engine/auth.lua...
LLM auditresponse for auth.lua:
<security_assessment>
<decision>SAFE</decision>
<details>
This file implements a Steam QR login flow using official Steam API endpoints (api.steampowered.com). It sends HTTP POST requests to begin and poll an authentication session, then stores the resulting tokens via the session module. The network destinations are legitimate Steam services, and the code contains no obfuscation, dangerous commands, or exfiltration of data to unrelated hosts. This is standard authentication logic for a wallpaper theme that integrates with Steam Workshop (likely the purpose of open-wallpaper-engine). No supply-chain attack indicators are present.
</details>
<evidence></evidence>
<summary>Legitimate Steam authentication module; no malicious behavior.</summary>
</security_assessment>

[3/10] Reviewing src/open-wallpaper-engine/scripts/build_waywallen_plugin.sh, src/open-wallpaper-engine/waywallen/plugins/org.waywallen.open-wallpaper-engine/main.lua, src/open-wallpaper-engine/waywallen/plugins/org.waywallen.open-wallpaper-engine/wallpaper_engine/auth.lua, src/open-wallpaper-engine/waywallen/plugins/org.waywallen.open-wallpaper-engine/wallpaper_engine/api.lua...
[4/10] Reviewing src/open-wallpaper-engine/scripts/build_waywallen_plugin.sh, src/open-wallpaper-engine/waywallen/plugins/org.waywallen.open-wallpaper-engine/main.lua, src/open-wallpaper-engine/waywallen/plugins/org.waywallen.open-wallpaper-engine/wallpaper_engine/api.lua...
+ Reviewed src/open-wallpaper-engine/waywallen/plugins/org.waywallen.open-wallpaper-engine/wallpaper_engine/auth.lua. Status: SAFE -- Legitimate Steam authentication module; no malicious behavior.
LLM auditresponse for main.lua:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `main.lua` is a standard plugin module for the Waywallen wallpaper manager, providing Steam Workshop integration via QR login and session management. It contains no obfuscated code, no network requests, no system command execution, and no unexpected file operations. All imported modules (`wallpaper_engine.*`) are part of the same package and serve the application's stated purpose. The `expand_home` function performs a benign path transformation to handle Flatpak environments; it does not exfiltrate data or execute untrusted commands. The code is functionally transparent and aligns with normal packaging practices for a Steam-integrated application.
</details>
<evidence></evidence>
<summary>Standard Lua plugin for Steam Workshop integration.</summary>
</security_assessment>

[4/10] Reviewing src/open-wallpaper-engine/scripts/build_waywallen_plugin.sh, src/open-wallpaper-engine/waywallen/plugins/org.waywallen.open-wallpaper-engine/main.lua, src/open-wallpaper-engine/waywallen/plugins/org.waywallen.open-wallpaper-engine/wallpaper_engine/api.lua, src/open-wallpaper-engine/waywallen/plugins/org.waywallen.open-wallpaper-engine/wallpaper_engine/workshop.lua...
[5/10] Reviewing src/open-wallpaper-engine/scripts/build_waywallen_plugin.sh, src/open-wallpaper-engine/waywallen/plugins/org.waywallen.open-wallpaper-engine/wallpaper_engine/api.lua, src/open-wallpaper-engine/waywallen/plugins/org.waywallen.open-wallpaper-engine/wallpaper_engine/workshop.lua...
+ Reviewed src/open-wallpaper-engine/waywallen/plugins/org.waywallen.open-wallpaper-engine/main.lua. Status: SAFE -- Standard Lua plugin for Steam Workshop integration.
LLM auditresponse for build_waywallen_plugin.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This build script is a standard build automation script for an AUR-packaged application (open-wallpaper-engine). It sets up a Conda environment, clones the upstream waywallen repository, and builds a plugin using the lito build system.  

The only notable security-relevant pattern is the `curl | bash` invocation to install lito (`curl -fsSL https://raw.githubusercontent.com/litocpp/lito/main/install.sh | bash`). While downloading and executing code from a remote URL without verification is a supply-chain risk, the URL points to the official GitHub repository of the project's own build tool (lito). This is not unexpected—many projects dynamically install their own build dependencies in a similar manner. There is no evidence of exfiltration, backdoors, or manipulation of unrelated system files. The remainder of the script performs ordinary operations: git clones, package management via Conda, building with lito, and packaging.  

Thus, although the `curl|bash` pattern is a hygiene concern, it does not rise to the level of a genuinely malicious supply-chain attack; the script follows the conventions of the upstream project and does not exhibit obfuscated, encoded, or attacker-controlled behavior.
</details>
<evidence>
</evidence>
<summary>Standard build script with minor hygiene concern, not malicious.</summary>
</security_assessment>

[5/10] Reviewing src/open-wallpaper-engine/scripts/build_waywallen_plugin.sh, src/open-wallpaper-engine/waywallen/plugins/org.waywallen.open-wallpaper-engine/wallpaper_engine/api.lua, src/open-wallpaper-engine/waywallen/plugins/org.waywallen.open-wallpaper-engine/wallpaper_engine/workshop.lua, src/open-wallpaper-engine/waywallen/plugins/org.waywallen.open-wallpaper-engine/wallpaper_engine/discover.lua...
[6/10] Reviewing src/open-wallpaper-engine/waywallen/plugins/org.waywallen.open-wallpaper-engine/wallpaper_engine/api.lua, src/open-wallpaper-engine/waywallen/plugins/org.waywallen.open-wallpaper-engine/wallpaper_engine/workshop.lua, src/open-wallpaper-engine/waywallen/plugins/org.waywallen.open-wallpaper-engine/wallpaper_engine/discover.lua...
+ Reviewed src/open-wallpaper-engine/scripts/build_waywallen_plugin.sh. Status: SAFE -- Standard build script with minor hygiene concern, not malicious.
LLM auditresponse for workshop.lua:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a Lua module that reads Steam's local `appworkshop_*.acf` file to determine which Workshop items are subscribed and their sizes. It parses Valve KeyValues format using standard Lua string operations and exposes query functions (`state`, `size`, `subscription_id`) for the application. The code performs no network requests, does not download or execute any code, and only reads a predefined file from the user's Steam directory. There is no obfuscation, no use of dangerous commands (eval, base64, curl), and no modification of system files. The behavior is entirely consistent with the application's purpose of managing Workshop wallpapers.
</details>
<evidence></evidence>
<summary>Legitimate Steam Workshop data parsing module</summary>
</security_assessment>

[6/10] Reviewing src/open-wallpaper-engine/waywallen/plugins/org.waywallen.open-wallpaper-engine/wallpaper_engine/api.lua, src/open-wallpaper-engine/waywallen/plugins/org.waywallen.open-wallpaper-engine/wallpaper_engine/workshop.lua, src/open-wallpaper-engine/waywallen/plugins/org.waywallen.open-wallpaper-engine/wallpaper_engine/discover.lua, src/open-wallpaper-engine/release.xml...
[7/10] Reviewing src/open-wallpaper-engine/waywallen/plugins/org.waywallen.open-wallpaper-engine/wallpaper_engine/api.lua, src/open-wallpaper-engine/waywallen/plugins/org.waywallen.open-wallpaper-engine/wallpaper_engine/discover.lua, src/open-wallpaper-engine/release.xml...
+ Reviewed src/open-wallpaper-engine/waywallen/plugins/org.waywallen.open-wallpaper-engine/wallpaper_engine/workshop.lua. Status: SAFE -- Legitimate Steam Workshop data parsing module
LLM auditresponse for api.lua:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a Lua API module for the `waywallen` wallpaper engine plugin that interfaces with the official Steam Workshop API (`api.steampowered.com`). It makes standard HTTPS requests to query published workshop files and fetch their details. All network destinations (`https://api.steampowered.com/IPublishedFileService/QueryFiles/v1/` and `https://api.steampowered.com/ISteamRemoteStorage/GetPublishedFileDetails/v1/`) are legitimate Valve/Steam endpoints. There is no obfuscated code, no suspicious downloads, no data exfiltration, no execution of external scripts, and no system configuration modifications. The code purely serves the application's intended purpose of browsing Steam Workshop content. No evidence of a supply-chain attack or malicious behavior was found.
</details>
<evidence></evidence>
<summary>Legitimate Steam Workshop API interface, no security issues.</summary>
</security_assessment>

[8/10] Reviewing src/open-wallpaper-engine/waywallen/plugins/org.waywallen.open-wallpaper-engine/wallpaper_engine/discover.lua, src/open-wallpaper-engine/release.xml...
+ Reviewed src/open-wallpaper-engine/waywallen/plugins/org.waywallen.open-wallpaper-engine/wallpaper_engine/api.lua. Status: SAFE -- Legitimate Steam Workshop API interface, no security issues.
LLM auditresponse for discover.lua:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard Lua module for a wallpaper engine plugin that handles searching and caching of wallpaper details. It imports three locally-defined modules (`api`, `map`, `profile`) and uses them to query an API, resolve creator names, and cache results. No external network requests are made directly in this file; all API calls go through the `api` module, which is expected upstream behavior. There is no obfuscation, encoding, or dangerous system commands. The code is straightforward and consistent with the stated purpose of a wallpaper discovery plugin. No signs of injected malicious supply-chain activity.
</details>
<evidence></evidence>
<summary>Standard plugin code, no security issues.</summary>
</security_assessment>

[9/10] Reviewing src/open-wallpaper-engine/release.xml...
+ Reviewed src/open-wallpaper-engine/waywallen/plugins/org.waywallen.open-wallpaper-engine/wallpaper_engine/discover.lua. Status: SAFE -- Standard plugin code, no security issues.
LLM auditresponse for release.xml:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `release.xml` contains only release notes and changelog entries for the open-wallpaper-engine package. It is a static XML document listing version numbers, dates, and descriptions of features, fixes, and changes. No executable code, obfuscated content, network requests, file operations, or system modifications are present. The content is entirely benign and consistent with standard packaging metadata.
</details>
<evidence></evidence>
<summary>Static release notes XML, no security issues.</summary>
</security_assessment>

[10/10] Reviewing ...
+ Reviewed src/open-wallpaper-engine/release.xml. Status: SAFE -- Static release notes XML, no security issues.
Reviewed all additional files.
Reviewed additional files.
Audit complete! Result: No issues found
(Skipped 1 file: 0001-lito-Use-system-cef.patch)

API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 48,359
  Completion Tokens: 14,159
  Total Tokens: 62,518
  Total Cost: $0.006334
  Execution Time: 171.95 seconds

Final Status: SAFE


No issues found.


Audit Skips:

0001-lito-Use-system-cef.patch: [SKIPPED] Skipping binary file: 0001-lito-Use-system-cef.patch
