---
package: neovim-git
pkgver: 0.13.0.r761.g0639f6e41a
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: openrouter.ai
base_url: https://openrouter.ai/api/v1
aur_sleuth_rev: 65e0c3f98e3e15c2f2b5d512e37cace17814cac6
prompt_tokens: 42677
completion_tokens: 9283
total_tokens: 51960
cost: 0.00551187
execution_time: 139.59
files_reviewed: 12
files_skipped: 0
date: 2026-06-19T07:15:35Z
file_verdicts:
  - file: PKGBUILD
    status: safe
    summary: Standard neovim-git package with no malicious behavior detected
  - file: nvimdoc.hook
    status: safe
    summary: Standard pacman hook, no security issues.
  - file: src/neovim/cmake.deps/cmake/CopyFilesGlob.cmake
    status: safe
    summary: Standard CMake helper script with no malicious behavior.
  - file: src/neovim/Makefile
    status: safe
    summary: Standard Neovim build Makefile, no malicious code.
  - file: src/neovim/cmake.deps/cmake/GetBinaryDeps.cmake
    status: safe
    summary: Standard CMake dependency helper; no malicious behavior detected.
  - file: src/neovim/cmake.deps/cmake/BuildWasmtime.cmake
    status: safe
    summary: Standard dependency build file, no security issues.
  - file: src/neovim/cmake/InstallHelpers.cmake
    status: safe
    summary: Standard CMake install helpers from upstream neovim.
  - file: src/neovim/CMakeLists.txt
    status: safe
    summary: Standard upstream build file, no malicious content.
  - file: src/neovim/cmake.deps/cmake/BuildLuajit.cmake
    status: safe
    summary: Standard CMake build script for LuaJIT dependency.
  - file: src/neovim/cmake/Deps.cmake
    status: safe
    summary: Standard dependency-handling CMake file; no signs of malicious code.
  - file: src/neovim/cmake/GenerateVersion.cmake
    status: safe
    summary: Standard upstream version generation script; no malicious behavior.
  - file: src/neovim/cmake.deps/cmake/BuildTreesitter.cmake
    status: safe
    summary: Standard upstream CMake build file, no malicious content found.
---

Cloning https://aur.archlinux.org/neovim-git.git to /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-s7cwqycb...
Cloned repository to /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-s7cwqycb
Analyzing neovim-git AUR package (working in /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-s7cwqycb) with deepseek/deepseek-v4-flash from https://openrouter.ai/api/v1
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only standard packaging constructs. The source array specifies a `git+https` URL pointing to the official Neovim repository and two local auxiliary files (`nvimdoc` and `nvimdoc.hook`) with proper checksums. No top-level command substitutions, `eval`, or unexpected network requests exist. The `pkgver()` function reads version information from the cloned source directory using standard shell commands (`sed`, `git describe`) — these only operate on local files after the source is fetched and do not perform any network activity or code execution that could be malicious. There is no code that runs at global scope beyond variable assignments and function definitions. Therefore, running `makepkg --nobuild --nodeps --noprepare` and `makepkg --printsrcinfo` is safe.
</details>
<summary>Standard AUR PKGBUILD with no dangerous top-level or pkgver() code.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete [grey50]-- Standard AUR PKGBUILD with no dangerous top-level or pkgver() code.[/]
Running makepkg --nobuild --nodeps --noprepare to download sources for agent...
makepkg --nobuild --nodeps --noprepare successful
Running makepkg --printsrcinfo to get source files for agent...
makepkg --printsrcinfo successful
Reviewing required files...
[0/2] Reviewing PKGBUILD...
[0/2] Reviewing PKGBUILD, nvimdoc.hook...
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard Arch packaging practices for a VCS package. It fetches the upstream source from the official Neovim GitHub repository via `git+https`, uses CMake for building, and installs the application normally. The included files `nvimdoc` and `nvimdoc.hook` are local to the package and have verified checksums; they appear to be regular documentation/hook scripts for post-install. The generated `sysinit.vim` and symlink to `tree_sitter` are standard configuration for Neovim to integrate with Arch Linux&#39;s Vim packages. There is no obfuscated code, unexpected network requests, or execution of untrusted content. The `SKIP` checksum on the VCS source is expected for `-git` packages and is not a sign of malice.
</details>
<summary>Standard neovim-git package with no malicious behavior detected</summary>
</security_assessment>

[1/2] Reviewing nvimdoc.hook...
+ Reviewed PKGBUILD. Status: SAFE -- Standard neovim-git package with no malicious behavior detected
LLM auditresponse for nvimdoc.hook:
<security_assessment>
<decision>SAFE</decision>
<details>
This hook file is a standard pacman hook used to update Neovim help tags after package transactions that modify documentation directories. The file contains only configuration directives: a Path trigger targeting Neovim's documentation hierarchy, and an Action that runs a script at `/usr/share/libalpm/scripts/nvimdoc` with the description "Updating Neovim help tags..." during `PostTransaction`. There are no embedded commands, network requests, obfuscated code, or any other suspicious elements. The referenced script is a typical helper for maintaining help tag databases, and its location is conventional for pacman hook scripts. No security issues are present in this hook file itself.
</details>
<summary>
Standard pacman hook, no security issues.
</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed nvimdoc.hook. Status: SAFE -- Standard pacman hook, no security issues.
Reviewed all required files.
Deciding which files to review next...
Note: 3805 files available for selection; offering the 50 highest-priority to the model. 2852 lower-priority file(s) were not offered.
LLM response for file selection:
src/neovim/CMakeLists.txt
src/neovim/Makefile
src/neovim/cmake.deps/cmake/BuildLuajit.cmake
src/neovim/cmake.deps/cmake/BuildTreesitter.cmake
src/neovim/cmake.deps/cmake/BuildWasmtime.cmake
src/neovim/cmake.deps/cmake/GetBinaryDeps.cmake
src/neovim/cmake.deps/cmake/CopyFilesGlob.cmake
src/neovim/cmake/Deps.cmake
src/neovim/cmake/InstallHelpers.cmake
src/neovim/cmake/GenerateVersion.cmake
Decided to review 10 additional files: src/neovim/CMakeLists.txt, src/neovim/Makefile, src/neovim/cmake.deps/cmake/BuildLuajit.cmake, src/neovim/cmake.deps/cmake/BuildTreesitter.cmake, src/neovim/cmake.deps/cmake/BuildWasmtime.cmake, src/neovim/cmake.deps/cmake/GetBinaryDeps.cmake, src/neovim/cmake.deps/cmake/CopyFilesGlob.cmake, src/neovim/cmake/Deps.cmake, src/neovim/cmake/InstallHelpers.cmake, src/neovim/cmake/GenerateVersion.cmake
Reviewing additional files...
Reviewing additional files...
[0/10] Reviewing src/neovim/Makefile...
[0/10] Reviewing src/neovim/Makefile, src/neovim/CMakeLists.txt...
[0/10] Reviewing src/neovim/Makefile, src/neovim/CMakeLists.txt, src/neovim/cmake.deps/cmake/BuildTreesitter.cmake...
[0/10] Reviewing src/neovim/Makefile, src/neovim/CMakeLists.txt, src/neovim/cmake.deps/cmake/BuildTreesitter.cmake, src/neovim/cmake.deps/cmake/BuildLuajit.cmake...
[0/10] Reviewing src/neovim/Makefile, src/neovim/CMakeLists.txt, src/neovim/cmake.deps/cmake/BuildTreesitter.cmake, src/neovim/cmake.deps/cmake/BuildLuajit.cmake, src/neovim/cmake.deps/cmake/BuildWasmtime.cmake...
[0/10] Reviewing src/neovim/Makefile, src/neovim/CMakeLists.txt, src/neovim/cmake.deps/cmake/BuildTreesitter.cmake, src/neovim/cmake.deps/cmake/BuildLuajit.cmake, src/neovim/cmake.deps/cmake/BuildWasmtime.cmake, src/neovim/cmake.deps/cmake/CopyFilesGlob.cmake...
[0/10] Reviewing src/neovim/Makefile, src/neovim/CMakeLists.txt, src/neovim/cmake.deps/cmake/BuildTreesitter.cmake, src/neovim/cmake.deps/cmake/BuildLuajit.cmake, src/neovim/cmake.deps/cmake/BuildWasmtime.cmake, src/neovim/cmake.deps/cmake/CopyFilesGlob.cmake, src/neovim/cmake.deps/cmake/GetBinaryDeps.cmake...
[0/10] Reviewing src/neovim/Makefile, src/neovim/CMakeLists.txt, src/neovim/cmake.deps/cmake/BuildTreesitter.cmake, src/neovim/cmake.deps/cmake/BuildLuajit.cmake, src/neovim/cmake.deps/cmake/BuildWasmtime.cmake, src/neovim/cmake.deps/cmake/CopyFilesGlob.cmake, src/neovim/cmake.deps/cmake/GetBinaryDeps.cmake, src/neovim/cmake/InstallHelpers.cmake...
[0/10] Reviewing src/neovim/Makefile, src/neovim/CMakeLists.txt, src/neovim/cmake.deps/cmake/BuildTreesitter.cmake, src/neovim/cmake.deps/cmake/BuildLuajit.cmake, src/neovim/cmake.deps/cmake/BuildWasmtime.cmake, src/neovim/cmake.deps/cmake/CopyFilesGlob.cmake, src/neovim/cmake.deps/cmake/GetBinaryDeps.cmake, src/neovim/cmake/InstallHelpers.cmake, src/neovim/cmake/Deps.cmake...
[0/10] Reviewing src/neovim/Makefile, src/neovim/CMakeLists.txt, src/neovim/cmake.deps/cmake/BuildTreesitter.cmake, src/neovim/cmake.deps/cmake/BuildLuajit.cmake, src/neovim/cmake.deps/cmake/BuildWasmtime.cmake, src/neovim/cmake.deps/cmake/CopyFilesGlob.cmake, src/neovim/cmake.deps/cmake/GetBinaryDeps.cmake, src/neovim/cmake/InstallHelpers.cmake, src/neovim/cmake/Deps.cmake, src/neovim/cmake/GenerateVersion.cmake...
LLM auditresponse for CopyFilesGlob.cmake:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard CMake utility module that copies files matching a glob pattern to a target directory using legitimate CMake commands (`file(GLOB ...)` and `execute_process(COMMAND cmake -E copy ...)`). There are no network requests, no obfuscation, no dangerous system calls, and no evidence of any supply-chain attack. This is routine build infrastructure for copying files during the build process.
</details>
<summary>Standard CMake helper script with no malicious behavior.</summary>
</security_assessment>

[1/10] Reviewing src/neovim/Makefile, src/neovim/CMakeLists.txt, src/neovim/cmake.deps/cmake/BuildTreesitter.cmake, src/neovim/cmake.deps/cmake/BuildLuajit.cmake, src/neovim/cmake.deps/cmake/BuildWasmtime.cmake, src/neovim/cmake.deps/cmake/GetBinaryDeps.cmake, src/neovim/cmake/InstallHelpers.cmake, src/neovim/cmake/Deps.cmake, src/neovim/cmake/GenerateVersion.cmake...
+ Reviewed src/neovim/cmake.deps/cmake/CopyFilesGlob.cmake. Status: SAFE -- Standard CMake helper script with no malicious behavior.
LLM auditresponse for Makefile:
<security_assessment>
<decision>SAFE</decision>
<details>
This Makefile is a standard build file for the Neovim editor project. It defines targets for building (`nvim`, `libnvim`, `deps`), testing (`test`, `oldtest`, `functionaltest-lua`), formatting, linting, and cleanup. All commands use the typical build tools (`cmake`, `make`, `rm`, `mkdir`, `touch`) and refer only to the project's own source tree (`cmake.deps`, `test/old/testdir`, `scripts/genappimage.sh`). There is no network fetching, no execution of external scripts from untrusted sources, no obfuscated code, and no exfiltration of data. The file is consistent with neovim's upstream repository and normal packaging practices.
</details>
<summary>Standard Neovim build Makefile, no malicious code.</summary>
</security_assessment>

[2/10] Reviewing src/neovim/CMakeLists.txt, src/neovim/cmake.deps/cmake/BuildTreesitter.cmake, src/neovim/cmake.deps/cmake/BuildLuajit.cmake, src/neovim/cmake.deps/cmake/BuildWasmtime.cmake, src/neovim/cmake.deps/cmake/GetBinaryDeps.cmake, src/neovim/cmake/InstallHelpers.cmake, src/neovim/cmake/Deps.cmake, src/neovim/cmake/GenerateVersion.cmake...
+ Reviewed src/neovim/Makefile. Status: SAFE -- Standard Neovim build Makefile, no malicious code.
LLM auditresponse for GetBinaryDeps.cmake:
<security_assessment>
<decision>SAFE</decision>
<details>
This CMake file defines two helper functions for downloading and installing third-party binary dependencies as part of the `neovim-git` build system. The code uses standard CMake `ExternalProject_Add` with SHA256 hash verification through `URL_HASH`. There is no obfuscation, no encoded commands, no unexpected network targets, and no execution of untrusted content beyond the declared build process. The functions require the caller to provide a URL and hash, which is a typical pattern for managing prebuilt dependencies in CMake-based projects.

While the use of external binary dependencies carries inherent supply-chain risk (the checksums are assumed to be pinned by the package maintainer), the script itself does not perform any malicious actions. It does not exfiltrate data, download from unusual hosts, or inject backdoors. The code is consistent with legitimate packaging practices for a project that needs precompiled tool dependencies (e.g., a C compiler, tree-sitter parsers, or utility executables).
</details>
<summary>
Standard CMake dependency helper; no malicious behavior detected.</summary>
</security_assessment>

[3/10] Reviewing src/neovim/CMakeLists.txt, src/neovim/cmake.deps/cmake/BuildTreesitter.cmake, src/neovim/cmake.deps/cmake/BuildLuajit.cmake, src/neovim/cmake.deps/cmake/BuildWasmtime.cmake, src/neovim/cmake/InstallHelpers.cmake, src/neovim/cmake/Deps.cmake, src/neovim/cmake/GenerateVersion.cmake...
+ Reviewed src/neovim/cmake.deps/cmake/GetBinaryDeps.cmake. Status: SAFE -- Standard CMake dependency helper; no malicious behavior detected.
LLM auditresponse for BuildWasmtime.cmake:
<security_assessment>
<decision>SAFE</decision>
<details>
This CMake file defines an ExternalProject to build a specific `wasmtime` dependency for neovim. All configuration flags are legitimate upstream build options (e.g., enabling LTO, cranelift, and GC). No network requests, encoded commands, file exfiltration, or unexpected system modifications are present. The download directory is a standard deps directory, and the source subdirectory points to the project's own `crates/c-api`. No deviation from normal packaging practices.
</details>
<summary>Standard dependency build file, no security issues.</summary>
</security_assessment>

[4/10] Reviewing src/neovim/CMakeLists.txt, src/neovim/cmake.deps/cmake/BuildTreesitter.cmake, src/neovim/cmake.deps/cmake/BuildLuajit.cmake, src/neovim/cmake/InstallHelpers.cmake, src/neovim/cmake/Deps.cmake, src/neovim/cmake/GenerateVersion.cmake...
+ Reviewed src/neovim/cmake.deps/cmake/BuildWasmtime.cmake. Status: SAFE -- Standard dependency build file, no security issues.
LLM auditresponse for InstallHelpers.cmake:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard CMake helper module from the upstream Neovim project. It defines functions `create_install_dir_with_perms` and `install_helper` to manage installation directory creation and file permissions in a portable way. The script uses only built-in CMake commands (`install`, `file(INSTALL ...)`, `get_filename_component`, `list`, `foreach`, `cmake_parse_arguments`, `message`) and sets appropriate permissions for directories, files, and programs. There are no network requests, obfuscation, dangerous commands, or any behavior that deviates from normal packaging/installation practices. The code is transparent and serves only to ensure correct installation with proper permissions, independent of umask.
</details>
<summary>Standard CMake install helpers from upstream neovim.</summary>
</security_assessment>

[5/10] Reviewing src/neovim/CMakeLists.txt, src/neovim/cmake.deps/cmake/BuildTreesitter.cmake, src/neovim/cmake.deps/cmake/BuildLuajit.cmake, src/neovim/cmake/Deps.cmake, src/neovim/cmake/GenerateVersion.cmake...
+ Reviewed src/neovim/cmake/InstallHelpers.cmake. Status: SAFE -- Standard CMake install helpers from upstream neovim.
LLM auditresponse for CMakeLists.txt:
<security_assessment>
<decision>SAFE</decision>
<details>
This is the upstream CMake build file for Neovim. It defines standard build targets, dependency management (including fetching uncrustify and lua-language-server from their official GitHub releases over HTTPS), and development tooling (linting, formatting). All network operations target the project's own upstream or well-known dependency sources. There is no obfuscated code, no unexpected file operations, no exfiltration, and no execution of untrusted content. The file follows normal CMake packaging practices for a large C project.
</details>
<summary>Standard upstream build file, no malicious content.</summary>
</security_assessment>

[6/10] Reviewing src/neovim/cmake.deps/cmake/BuildTreesitter.cmake, src/neovim/cmake.deps/cmake/BuildLuajit.cmake, src/neovim/cmake/Deps.cmake, src/neovim/cmake/GenerateVersion.cmake...
+ Reviewed src/neovim/CMakeLists.txt. Status: SAFE -- Standard upstream build file, no malicious content.
LLM auditresponse for BuildLuajit.cmake:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard CMake build helper for compiling the LuaJIT dependency as part of neovim&#39;s build process. It defines a `BuildLuajit` function and configures platform‑specific build commands using only local system tools (`make`, `cmake -E`, the system compiler). There are no network requests, obfuscated code, dangerous commands (`eval`, `base64`, `curl`/`wget`), or unexpected file operations. All file copies are confined to the build and install directories, consistent with normal packaging practices. No evidence of malicious activity was found.
</details>
<summary>Standard CMake build script for LuaJIT dependency.</summary>
</security_assessment>

[7/10] Reviewing src/neovim/cmake.deps/cmake/BuildTreesitter.cmake, src/neovim/cmake/Deps.cmake, src/neovim/cmake/GenerateVersion.cmake...
+ Reviewed src/neovim/cmake.deps/cmake/BuildLuajit.cmake. Status: SAFE -- Standard CMake build script for LuaJIT dependency.
LLM auditresponse for Deps.cmake:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard CMake script used for building Neovim's dependencies. It defines build directories, finds helper programs (ccache, make), sets compiler arguments, reads a `deps.txt` file to obtain URLs and SHA256 hashes for each dependency, and provides a helper function for `ExternalProject` options.  
There is no obfuscated code, no unexpected network requests (the URLs are taken from the package's own `deps.txt`), no dangerous command execution (e.g., `eval`, `base64`, `curl|bash`), and no exfiltration or backdoor mechanisms. The script behaves exactly as expected for a dependency-management component in an AUR package's build system.
</details>
<summary>Standard dependency-handling CMake file; no signs of malicious code.</summary>
</security_assessment>

[8/10] Reviewing src/neovim/cmake.deps/cmake/BuildTreesitter.cmake, src/neovim/cmake/GenerateVersion.cmake...
+ Reviewed src/neovim/cmake/Deps.cmake. Status: SAFE -- Standard dependency-handling CMake file; no signs of malicious code.
LLM auditresponse for GenerateVersion.cmake:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is an upstream CMake script (part of the Neovim build system) that generates a version header based on `git describe`. It performs standard operations: running `git describe` to get the latest tag and commit info, parsing the tag string, and writing `#define` macros to an output file. There are no suspicious network requests, obfuscated code, base64 decoding, eval statements, or any operations that deviate from normal packaging/build practices. The git command is used in a read-only manner against the project's own repository to extract version information. This is a standard practice for version generation in VCS-based projects.

The file writes only to the `${OUTPUT}` variable path, which is a build artifact location, and hashes the content to avoid unnecessary writes. No system files or user data are touched. There is no evidence of malicious intent or supply-chain attack.
</details>
<summary>Standard upstream version generation script; no malicious behavior.</summary>
</security_assessment>

[9/10] Reviewing src/neovim/cmake.deps/cmake/BuildTreesitter.cmake...
+ Reviewed src/neovim/cmake/GenerateVersion.cmake. Status: SAFE -- Standard upstream version generation script; no malicious behavior.
LLM auditresponse for BuildTreesitter.cmake:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is part of neovim's upstream build system, used to build the **treesitter** library as an external dependency via CMake's `ExternalProject_Add`. It is a straightforward configuration file that sets optional WASM flags and passes standard CMake arguments. 

A potential hygiene note: the use of `${DEPS_IGNORE_SHA}` may allow skipping checksum verification for the downloaded source, which is a practice common in VCS/git-based development builds (like `neovim-git`) but not inherently malicious. There is no obfuscated code, no attempt to fetch or execute code from unexpected hosts, no exfiltration of sensitive data, and no modification of system files outside the build scope. The file only performs standard build operations for its intended dependency.
</details>
<summary>Standard upstream CMake build file, no malicious content found.</summary>
</security_assessment>

[10/10] Reviewing ...
+ Reviewed src/neovim/cmake.deps/cmake/BuildTreesitter.cmake. Status: SAFE -- Standard upstream CMake build file, no malicious content found.
Reviewed all additional files.
Reviewed additional files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 42,677
  Completion Tokens: 9,283
  Total Tokens: 51,960
  Total Cost: $0.005512
  Execution Time: 139.59 seconds
Full audit report can be found in /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-report-neovim-git.txt
Final Status: SAFE


No issues found.
