---
package: codelite
pkgver: 18.4.0
pkgrel: 1
result: safe
model: anthropic/claude-sonnet-4.6
provider: custom
aur_sleuth_rev: a0710c34d2de3f3412d0c0b09b199eab9988648e
triggered_by: escalation
prompt_tokens: 58534
completion_tokens: 5876
total_tokens: 64410
cost: 0.263742
execution_time: 190.91
files_reviewed: 11
files_skipped: 1
files_unauditable: 147
unpinned_sources: 0
date: 2026-08-25T19:26:31Z
file_verdicts:
  - file: wxgui.zip
    status: skipped
    summary: "Skipping binary file: wxgui.zip"
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD; all sources from expected upstreams with checksums.
  - file: dtl-dtl_Diff_hpp.patch
    status: safe
    summary: Trivial C++ const-correctness patch; no security concerns.
  - file: src/codelite-18.4.0/Runtime/codelite_post_install.cmake
    status: safe
    summary: Standard CMake post-install RPATH fix script; no malicious behavior found.
  - file: src/codelite-18.4.0/Runtime/codelite-url-handler.desktop
    status: safe
    summary: Standard XDG desktop file registering a URI scheme handler; fully benign.
  - file: src/codelite-18.4.0/Runtime/codelite.desktop
    status: safe
    summary: Standard XDG desktop entry file; no security concerns found.
  - file: src/codelite-18.4.0/cmake/Modules/plugin.cmake
    status: safe
    summary: Standard CMake module for CodeLite plugin build system; no malicious behavior.
  - file: src/codelite-18.4.0/cmake/Modules/UtilsHelper.cmake
    status: safe
    summary: Standard CMake build utility helper; no malicious behavior found.
  - file: codelite-fsw-symlink.patch
    status: safe
    summary: Standard symlink-handling refactor patch; no malicious behavior detected.
  - file: src/codelite-18.4.0/AutoSave/CMakeLists.txt
    status: safe
    summary: Standard CMake plugin build configuration; no malicious content found.
  - file: src/codelite-18.4.0/codelite_open_helper.py
    status: safe
    summary: Legitimate upstream CodeLite IDE helper script; no malicious behavior detected.
  - file: src/codelite-18.4.0/Runtime/config/codelite-api.lua
    status: safe
    summary: Pure Lua API stub/documentation file; no executable or suspicious code.
---

Cloning https://aur.archlinux.org/codelite.git...
Cloned codelite
Analyzing codelite AUR package with anthropic/claude-sonnet-4.6
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only variable assignments and function definitions at the global/top level. No command substitutions, `eval`, or other executable constructs are present outside of `prepare()`, `build()`, and `package()` — none of which run under `--nobuild --noprepare`.

All sources are fetched from GitHub (HTTPS) as pinned commit tarballs for known upstream repositories (eranif/codelite and its submodule dependencies), plus one file from `http://repos.codelite.org/wxCrafterLibs/wxgui.zip` over plain HTTP. The plain-HTTP URL is a minor hygiene concern (susceptible to MITM without TLS), but it belongs to the codelite project's own host and has a corresponding `sha256sum` entry in the `sha256sums` array, so integrity can be verified post-download. No checksums are `SKIP`ped. Fetching and extracting these archives is the expected behavior of these commands and poses no execution risk at this stage.

There is no obfuscated code, no exfiltration, no download-and-execute pattern, and no suspicious network destinations unrelated to the codelite project.
</details>
<evidence>
</evidence>
<summary>Standard PKGBUILD; no dangerous top-level execution; all sources legitimate.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Standard PKGBUILD; no dangerous top-level execution; all sources legitimate.
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Running makepkg --printsrcinfo to get source files for agent...
makepkg --printsrcinfo successful
Reviewing required files...
[0/2] Reviewing wxgui.zip...
[0/2] Reviewing wxgui.zip, PKGBUILD...
[1/2] Reviewing PKGBUILD...
! Reviewed wxgui.zip. Status: SKIPPED -- Skipping binary file: wxgui.zip
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard AUR packaging practices throughout. All sources are fetched from GitHub via HTTPS, pinned to specific commit hashes, and accompanied by `sha256sums` for verification. The submodule handling in `prepare()` consists solely of creating symlinks to the separately-downloaded submodule tarballs — a routine technique for packages that can't use `git submodule update`. The `build()` function invokes cmake/ninja (standard upstream build system), and `package()` uses `cmake --install` and the `install` command to place files in `$pkgdir`.

One minor hygiene note: the `wxgui.zip` source is fetched over plain HTTP (`http://repos.codelite.org/wxCrafterLibs/wxgui.zip`), which is unencrypted and susceptible to MITM in transit. However, a sha256 checksum is provided for it and it is listed in `noextract` but not actually installed (the corresponding `install` line in `package()` is commented out). This is a hygiene concern, not a security threat.

No obfuscated code, no `eval`, no `base64` decoding, no unexpected network calls at build time, no data exfiltration, and no execution of downloaded binaries outside the normal cmake build flow were found.
</details>
<evidence>
</evidence>
<summary>Standard PKGBUILD; all sources from expected upstreams with checksums.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD; all sources from expected upstreams with checksums.
Reviewed all required files.
Deciding which files to review next...
Note: 147 compiled/archived file(s) cannot be audited as text and were not reviewed (codelite-18.4.0.tar.gz, eranif-LuaBridge-a78d4f1.tar.gz, strands-agents-agent-sop-666897b.tar.gz and 144 more). For a package that ships prebuilt binaries, the audit covers the packaging, not the payload.
Note: 12222 files available for selection; offering the 50 highest-priority to the model. 6380 lower-priority file(s) were not offered.
LLM response for file selection:
codelite-fsw-symlink.patch
dtl-dtl_Diff_hpp.patch
src/codelite-18.4.0/Runtime/codelite_post_install.cmake
src/codelite-18.4.0/Runtime/codelite-url-handler.desktop
src/codelite-18.4.0/Runtime/codelite.desktop
src/codelite-18.4.0/cmake/Modules/UtilsHelper.cmake
src/codelite-18.4.0/cmake/Modules/plugin.cmake
src/codelite-18.4.0/AutoSave/CMakeLists.txt
src/codelite-18.4.0/codelite_open_helper.py
src/codelite-18.4.0/Runtime/config/codelite-api.lua
Decided to review 10 additional files: codelite-fsw-symlink.patch, dtl-dtl_Diff_hpp.patch, src/codelite-18.4.0/Runtime/codelite_post_install.cmake, src/codelite-18.4.0/Runtime/codelite-url-handler.desktop, src/codelite-18.4.0/Runtime/codelite.desktop, src/codelite-18.4.0/cmake/Modules/UtilsHelper.cmake, src/codelite-18.4.0/cmake/Modules/plugin.cmake, src/codelite-18.4.0/AutoSave/CMakeLists.txt, src/codelite-18.4.0/codelite_open_helper.py, src/codelite-18.4.0/Runtime/config/codelite-api.lua
Reviewing additional files...
Reviewing additional files...
[0/10] Reviewing codelite-fsw-symlink.patch...
[0/10] Reviewing codelite-fsw-symlink.patch, dtl-dtl_Diff_hpp.patch...
[0/10] Reviewing codelite-fsw-symlink.patch, dtl-dtl_Diff_hpp.patch, src/codelite-18.4.0/Runtime/codelite_post_install.cmake...
LLM auditresponse for dtl-dtl_Diff_hpp.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a simple patch file that modifies a C++ header (`Diff.hpp`) in the CodeLite plugin directory. The change removes the `const` qualifier from the `enableTrivial()` method, which is a legitimate and minor correctness fix (a `const` method cannot modify the member variable `trivial`). There is nothing suspicious here — no network requests, no obfuscated code, no dangerous commands, and no unexpected file operations. This is a standard upstream code patch used in the build process.
</details>
<evidence>
</evidence>
<summary>
Trivial C++ const-correctness patch; no security concerns.</summary>
</security_assessment>

[0/10] Reviewing codelite-fsw-symlink.patch, dtl-dtl_Diff_hpp.patch, src/codelite-18.4.0/Runtime/codelite_post_install.cmake, src/codelite-18.4.0/Runtime/codelite-url-handler.desktop...
[1/10] Reviewing codelite-fsw-symlink.patch, src/codelite-18.4.0/Runtime/codelite_post_install.cmake, src/codelite-18.4.0/Runtime/codelite-url-handler.desktop...
+ Reviewed dtl-dtl_Diff_hpp.patch. Status: SAFE -- Trivial C++ const-correctness patch; no security concerns.
LLM auditresponse for codelite_post_install.cmake:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a short CMake post-install script that runs a helper binary (`codelite-fix-rpath`) from the installation directory to fix RPATH entries. This is standard packaging behavior for a C++ IDE like CodeLite — adjusting RPATHs after installation is a common and expected post-install task on Linux systems.

The script uses `execute_process` to run a binary that is part of the package itself (`${INSTALL_DIR}/codelite-fix-rpath`), not an external or unexpected source. There is no network access, no data exfiltration, no obfuscated code, and no downloading or execution of untrusted content.
</details>
<evidence>
</evidence>
<summary>
Standard CMake post-install RPATH fix script; no malicious behavior found.</summary>
</security_assessment>

[1/10] Reviewing codelite-fsw-symlink.patch, src/codelite-18.4.0/Runtime/codelite_post_install.cmake, src/codelite-18.4.0/Runtime/codelite-url-handler.desktop, src/codelite-18.4.0/Runtime/codelite.desktop...
[2/10] Reviewing codelite-fsw-symlink.patch, src/codelite-18.4.0/Runtime/codelite-url-handler.desktop, src/codelite-18.4.0/Runtime/codelite.desktop...
+ Reviewed src/codelite-18.4.0/Runtime/codelite_post_install.cmake. Status: SAFE -- Standard CMake post-install RPATH fix script; no malicious behavior found.
LLM auditresponse for codelite-url-handler.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard XDG `.desktop` file that registers a custom URL scheme handler (`codelite://`) for the CodeLite IDE. It invokes the `codelite-url-handler` binary (part of the CodeLite package itself) with the URL as an argument. There is nothing unusual or malicious here — registering custom URI scheme handlers via `.desktop` files is a well-established and expected practice for desktop applications.
</details>
<evidence>
</evidence>
<summary>Standard XDG desktop file registering a URI scheme handler; fully benign.</summary>
</security_assessment>

[3/10] Reviewing codelite-fsw-symlink.patch, src/codelite-18.4.0/Runtime/codelite.desktop...
+ Reviewed src/codelite-18.4.0/Runtime/codelite-url-handler.desktop. Status: SAFE -- Standard XDG desktop file registering a URI scheme handler; fully benign.
[3/10] Reviewing codelite-fsw-symlink.patch, src/codelite-18.4.0/Runtime/codelite.desktop, src/codelite-18.4.0/cmake/Modules/UtilsHelper.cmake...
LLM auditresponse for codelite.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard XDG desktop entry file for the CodeLite IDE. It contains only the expected fields: application name, executable command, icon, terminal flag, type, categories, startup notification, and keywords. There is nothing suspicious or malicious here — no network requests, no shell commands, no obfuscation, and no unexpected system modifications. This is a completely normal `.desktop` file as used throughout Linux desktop environments.
</details>
<evidence>
</evidence>
<summary>
Standard XDG desktop entry file; no security concerns found.</summary>
</security_assessment>

[4/10] Reviewing codelite-fsw-symlink.patch, src/codelite-18.4.0/cmake/Modules/UtilsHelper.cmake...
+ Reviewed src/codelite-18.4.0/Runtime/codelite.desktop. Status: SAFE -- Standard XDG desktop entry file; no security concerns found.
[4/10] Reviewing codelite-fsw-symlink.patch, src/codelite-18.4.0/cmake/Modules/UtilsHelper.cmake, src/codelite-18.4.0/cmake/Modules/plugin.cmake...
LLM auditresponse for plugin.cmake:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard CMake module file for the CodeLite IDE project. It defines two CMake functions:

1. `CL_PLUGIN` - A helper function to configure and build CodeLite plugins as shared libraries, handling wxWidgets integration, PCH support, and installation.
2. `CL_SCAN_FOR_PLUGINS` - Scans the source tree for directories containing `codelite-plugin.cmake` files and includes them.

All operations are standard CMake build system functionality. There are no network requests, no shell command execution, no obfuscated code, and no suspicious file operations outside the build directory. The HTML entities (`&quot;`, `&apos;`) in the file are just the way the content was displayed but represent normal CMake string quoting. This file is entirely consistent with upstream build system infrastructure for an IDE plugin system.
</details>
<evidence>
</evidence>
<summary>Standard CMake module for CodeLite plugin build system; no malicious behavior.</summary>
</security_assessment>

[4/10] Reviewing codelite-fsw-symlink.patch, src/codelite-18.4.0/cmake/Modules/UtilsHelper.cmake, src/codelite-18.4.0/cmake/Modules/plugin.cmake, src/codelite-18.4.0/AutoSave/CMakeLists.txt...
[5/10] Reviewing codelite-fsw-symlink.patch, src/codelite-18.4.0/cmake/Modules/UtilsHelper.cmake, src/codelite-18.4.0/AutoSave/CMakeLists.txt...
+ Reviewed src/codelite-18.4.0/cmake/Modules/plugin.cmake. Status: SAFE -- Standard CMake module for CodeLite plugin build system; no malicious behavior.
LLM auditresponse for UtilsHelper.cmake:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard CMake utility helper file for the CodeLite IDE build system. It contains typical CMake macros and functions for:

- Extracting wxWidgets version numbers from header files
- Installing scripts, executables, SVG resources, and libraries
- Detecting the Linux distribution from `/etc/os-release`
- Handling MSYS2/MinGW Windows build environments
- Managing precompiled headers for wxWidgets

The `execute_process` calls run standard system commands (`cat /etc/os-release`, `uname -s`) to detect the build environment — this is entirely normal for a cross-platform build system. The MINGW `msys_list_deps` macro uses `ntldd` (a Windows DLL dependency lister) to find DLL dependencies, which is standard packaging practice for Windows builds.

There are no network requests, no data exfiltration, no obfuscated code, no unexpected downloads, and no suspicious use of `eval`, `curl`, `wget`, or `base64`. All operations are confined to normal build/install tasks.
</details>
<evidence>
</evidence>
<summary>Standard CMake build utility helper; no malicious behavior found.</summary>
</security_assessment>

[6/10] Reviewing codelite-fsw-symlink.patch, src/codelite-18.4.0/AutoSave/CMakeLists.txt...
+ Reviewed src/codelite-18.4.0/cmake/Modules/UtilsHelper.cmake. Status: SAFE -- Standard CMake build utility helper; no malicious behavior found.
[6/10] Reviewing codelite-fsw-symlink.patch, src/codelite-18.4.0/AutoSave/CMakeLists.txt, src/codelite-18.4.0/codelite_open_helper.py...
LLM auditresponse for codelite-fsw-symlink.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a source code patch modifying how CodeLite handles symlink resolution in its file scanner and editor tab management. The key changes are:

1. **`CLRealPath()` refactoring**: The function gains an optional `force` parameter and reads an environment variable `CL_REALPATH` at static-initialization time. When `force=false` and the env var is unset, the function returns the filepath unmodified instead of resolving symlinks. This is a legitimate behavior change to avoid undesired symlink resolution during file scanning.

2. **File scanner changes**: Calls to `FileUtils::RealPath()` are replaced with `CLRealPath()` (no force), meaning symlink resolution in scanning is now opt-in via the env var. This is a functional fix, not malicious.

3. **Editor (`mainbook.cpp`) changes**: Some calls use `CLRealPath(x, true)` (forced resolution) and others use the default. A guard is added to handle relative file paths in the context of an open workspace.

None of the changes involve network activity, data exfiltration, obfuscated code, or execution of external binaries. The `getenv("CL_REALPATH")` usage is a completely standard pattern for letting users configure application behavior via the environment. This patch appears to be a legitimate upstream or maintainer fix for symlink-related edge cases in CodeLite's file handling.
</details>
<evidence>
</evidence>
<summary>Standard symlink-handling refactor patch; no malicious behavior detected.</summary>
</security_assessment>

[7/10] Reviewing src/codelite-18.4.0/AutoSave/CMakeLists.txt, src/codelite-18.4.0/codelite_open_helper.py...
+ Reviewed codelite-fsw-symlink.patch. Status: SAFE -- Standard symlink-handling refactor patch; no malicious behavior detected.
[7/10] Reviewing src/codelite-18.4.0/AutoSave/CMakeLists.txt, src/codelite-18.4.0/codelite_open_helper.py, src/codelite-18.4.0/Runtime/config/codelite-api.lua...
LLM auditresponse for CMakeLists.txt:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard CMakeLists.txt file for the AutoSave plugin within the CodeLite IDE project. It defines a shared library plugin using normal CMake constructs: setting project name, including wxWidgets, globbing source files, defining a shared library target, setting compilation properties (PIC, PCH), and installing via a project-defined macro. There are no network requests, no shell command execution, no obfuscated code, and no suspicious file operations. Everything here is consistent with ordinary upstream CMake build configuration for a plugin.
</details>
<evidence>
</evidence>
<summary>Standard CMake plugin build configuration; no malicious content found.</summary>
</security_assessment>

[8/10] Reviewing src/codelite-18.4.0/codelite_open_helper.py, src/codelite-18.4.0/Runtime/config/codelite-api.lua...
+ Reviewed src/codelite-18.4.0/AutoSave/CMakeLists.txt. Status: SAFE -- Standard CMake plugin build configuration; no malicious content found.
LLM auditresponse for codelite_open_helper.py:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a straightforward Python helper script that is part of the CodeLite IDE upstream source. Its purpose is to open files in a running CodeLite instance by connecting to a local socket, or launching CodeLite if it isn't running.

The script performs only expected operations: converting filenames to absolute paths, attempting a localhost TCP connection to a CodeLite-specific port derived from the user's UID, sending a JSON payload with filenames, and optionally spawning the `codelite` binary. There are no network requests to remote hosts, no use of eval/exec on external data, no file exfiltration, and no obfuscated code. All behavior is consistent with upstream IDE helper tooling.
</details>
<evidence>
</evidence>
<summary>Legitimate upstream CodeLite IDE helper script; no malicious behavior detected.</summary>
</security_assessment>

[9/10] Reviewing src/codelite-18.4.0/Runtime/config/codelite-api.lua...
+ Reviewed src/codelite-18.4.0/codelite_open_helper.py. Status: SAFE -- Legitimate upstream CodeLite IDE helper script; no malicious behavior detected.
LLM auditresponse for codelite-api.lua:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a Lua API definition/stub file (`---@meta`) for CodeLite's Lua scripting extension. It contains only type annotations, documentation comments, and empty function stubs (all function bodies are just `end` with no implementation). There are no network requests, no shell commands, no file operations, no obfuscated code, and no executable logic whatsoever. It is purely a documentation/type-hint file for the CodeLite IDE's Lua scripting API, which is entirely standard for this type of project.
</details>
<evidence>
</evidence>
<summary>Pure Lua API stub/documentation file; no executable or suspicious code.</summary>
</security_assessment>

[10/10] Reviewing ...
+ Reviewed src/codelite-18.4.0/Runtime/config/codelite-api.lua. Status: SAFE -- Pure Lua API stub/documentation file; no executable or suspicious code.
Reviewed all additional files.
Reviewed additional files.
Audit complete! Result: No issues found
(Skipped 1 file: wxgui.zip)

API Usage Summary
  Models: anthropic/claude-sonnet-4.6
  Prompt Tokens: 58,534
  Completion Tokens: 5,876
  Total Tokens: 64,410
  Total Cost: $0.263742
  Execution Time: 190.91 seconds

Final Status: SAFE


No issues found.


Audit Skips:

wxgui.zip: [SKIPPED] Skipping binary file: wxgui.zip
