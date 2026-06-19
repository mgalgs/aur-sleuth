---
package: kicad-nightly
pkgver: 10.99.0_1515_gb3d94d1f3d
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: openrouter.ai
base_url: https://openrouter.ai/api/v1
aur_sleuth_rev: 11c93a0c95e2166961e3664fea6b5a63827ded10
prompt_tokens: 42430
completion_tokens: 8457
total_tokens: 50887
cost: 0.00534096
execution_time: 232.6
files_reviewed: 12
files_skipped: 0
date: 2026-06-19T08:48:49Z
file_verdicts:
  - file: fix-version-string.patch
    status: safe
    summary: Patch removes --dirty flag; standard build adjustment, no malice.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD with no malicious content.
  - file: src/kicad-nightly/cmake/InstallSteps/RefixupMacOS.cmake
    status: safe
    summary: Standard macOS bundle fixup script; no malicious behavior.
  - file: src/kicad-nightly/3d-viewer/3d_cache/CMakeLists.txt
    status: safe
    summary: Minimal CMakeLists with no suspicious content.
  - file: src/kicad-nightly/cmake/InstallSteps/SignMacOS.cmake
    status: safe
    summary: Standard macOS code-signing CMake helper, no security issues.
  - file: src/kicad-nightly/cmake/BuildSteps/LemonParserGenerator.cmake
    status: safe
    summary: Standard CMake build tooling, no security concerns.
  - file: src/kicad-nightly/cmake/BuildSteps/TokenList2DsnLexer.cmake
    status: safe
    summary: Standard build code generation script, no malicious behavior.
  - file: src/kicad-nightly/cmake/BuildSteps/CreateResourceCpp.cmake
    status: safe
    summary: Legitimate CMake resource embedding script.
  - file: src/kicad-nightly/cmake/InstallSteps/InstallMacOS.cmake
    status: safe
    summary: Safe CMake helper for bundling dependencies.
  - file: src/kicad-nightly/cmake/BuildSteps/Html2C.cmake
    status: safe
    summary: Standard build helper, no security concerns.
  - file: kicad-nightly-wrapper.sh
    status: safe
    summary: Config migration wrapper, no malicious activity detected.
  - file: no-metadata-translation.patch
    status: safe
    summary: Patch disables i18n; no security issue.
---

Cloning https://aur.archlinux.org/kicad-nightly.git to /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-36ownrdf...
Cloned repository to /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-36ownrdf
Analyzing kicad-nightly AUR package (working in /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-36ownrdf) with deepseek/deepseek-v4-flash from https://openrouter.ai/api/v1
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD is purely declarative at the top level, with no command substitutions, function calls, or dangerous operations that would execute during `makepkg --nobuild --nodeps --noprepare`. The source array fetches from the official KiCad GitLab repository at a pinned commit and includes two local files with valid checksums. No `pkgver()` function is present; the version is set as a static string. All potentially suspicious code (e.g., `patch`, `cp`, `sed`, loops) resides in `prepare()`, `build()`, and `package()`, which are not executed by the specified commands.
</details>
<summary>No dangerous top-level code; sourcing is safe.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete [grey50]-- No dangerous top-level code; sourcing is safe.[/]
Running makepkg --nobuild --nodeps --noprepare to download sources for agent...
makepkg --nobuild --nodeps --noprepare successful
Running makepkg --printsrcinfo to get source files for agent...
makepkg --printsrcinfo successful
Reviewing required files...
[0/2] Reviewing fix-version-string.patch...
[0/2] Reviewing fix-version-string.patch, PKGBUILD...
LLM auditresponse for fix-version-string.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
The patch modifies the KiCad build system to remove the `--dirty` flag from `git describe` when generating the version header. This is a common packaging adjustment for nightly or VCS-based packages where the source tree may not reflect a clean state. There is no evidence of malicious code, obfuscation, unexpected network requests, or any behavior outside of standard build configuration. The change is straightforward and serves a legitimate purpose in the context of a nightly AUR package.
</details>
<summary>Patch removes --dirty flag; standard build adjustment, no malice.</summary>
</security_assessment>

[1/2] Reviewing PKGBUILD...
+ Reviewed fix-version-string.patch. Status: SAFE -- Patch removes --dirty flag; standard build adjustment, no malice.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard AUR practices for a nightly package of KiCad. The source is fetched from the official upstream GitLab repository at a pinned commit (`b3d94d1f3d`), which is good practice. Checksums for the VCS source are correctly set to `SKIP`. The included patch and wrapper script have valid checksums. The `prepare()`, `build()`, and `package()` functions perform only routine operations: applying a patch, replacing nightly icons, suppressing a compiler warning, building with CMake, and installing to `$pkgdir` with appropriate wrapper scripts, icons, MIME types, desktop files, and AppStream metadata. There are no network requests during build or package other than the initial `git clone` from the upstream. No obfuscated code, base64 decoding, `eval`, `curl|bash`, file exfiltration, or any other signs of supply-chain attack are present. The script manipulates files only within the package directory and does not touch system files outside its scope.
</details>
<summary>Standard AUR PKGBUILD with no malicious content.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD with no malicious content.
Reviewed all required files.
Deciding which files to review next...
Note: 11463 files available for selection; offering the 50 highest-priority to the model. 10587 lower-priority file(s) were not offered.
LLM response for file selection:
kicad-nightly-wrapper.sh
no-metadata-translation.patch
src/kicad-nightly/3d-viewer/3d_cache/CMakeLists.txt
src/kicad-nightly/cmake/BuildSteps/CreateResourceCpp.cmake
src/kicad-nightly/cmake/BuildSteps/Html2C.cmake
src/kicad-nightly/cmake/BuildSteps/LemonParserGenerator.cmake
src/kicad-nightly/cmake/BuildSteps/TokenList2DsnLexer.cmake
src/kicad-nightly/cmake/InstallSteps/InstallMacOS.cmake
src/kicad-nightly/cmake/InstallSteps/RefixupMacOS.cmake
src/kicad-nightly/cmake/InstallSteps/SignMacOS.cmake
Decided to review 10 additional files: kicad-nightly-wrapper.sh, no-metadata-translation.patch, src/kicad-nightly/3d-viewer/3d_cache/CMakeLists.txt, src/kicad-nightly/cmake/BuildSteps/CreateResourceCpp.cmake, src/kicad-nightly/cmake/BuildSteps/Html2C.cmake, src/kicad-nightly/cmake/BuildSteps/LemonParserGenerator.cmake, src/kicad-nightly/cmake/BuildSteps/TokenList2DsnLexer.cmake, src/kicad-nightly/cmake/InstallSteps/InstallMacOS.cmake, src/kicad-nightly/cmake/InstallSteps/RefixupMacOS.cmake, src/kicad-nightly/cmake/InstallSteps/SignMacOS.cmake
Reviewing additional files...
Reviewing additional files...
[0/10] Reviewing kicad-nightly-wrapper.sh...
[0/10] Reviewing kicad-nightly-wrapper.sh, src/kicad-nightly/3d-viewer/3d_cache/CMakeLists.txt...
[0/10] Reviewing kicad-nightly-wrapper.sh, src/kicad-nightly/3d-viewer/3d_cache/CMakeLists.txt, no-metadata-translation.patch...
[0/10] Reviewing kicad-nightly-wrapper.sh, src/kicad-nightly/3d-viewer/3d_cache/CMakeLists.txt, no-metadata-translation.patch, src/kicad-nightly/cmake/BuildSteps/CreateResourceCpp.cmake...
[0/10] Reviewing kicad-nightly-wrapper.sh, src/kicad-nightly/3d-viewer/3d_cache/CMakeLists.txt, no-metadata-translation.patch, src/kicad-nightly/cmake/BuildSteps/CreateResourceCpp.cmake, src/kicad-nightly/cmake/BuildSteps/Html2C.cmake...
[0/10] Reviewing kicad-nightly-wrapper.sh, src/kicad-nightly/3d-viewer/3d_cache/CMakeLists.txt, no-metadata-translation.patch, src/kicad-nightly/cmake/BuildSteps/CreateResourceCpp.cmake, src/kicad-nightly/cmake/BuildSteps/Html2C.cmake, src/kicad-nightly/cmake/BuildSteps/LemonParserGenerator.cmake...
[0/10] Reviewing kicad-nightly-wrapper.sh, src/kicad-nightly/3d-viewer/3d_cache/CMakeLists.txt, no-metadata-translation.patch, src/kicad-nightly/cmake/BuildSteps/CreateResourceCpp.cmake, src/kicad-nightly/cmake/BuildSteps/Html2C.cmake, src/kicad-nightly/cmake/BuildSteps/LemonParserGenerator.cmake, src/kicad-nightly/cmake/BuildSteps/TokenList2DsnLexer.cmake...
[0/10] Reviewing kicad-nightly-wrapper.sh, src/kicad-nightly/3d-viewer/3d_cache/CMakeLists.txt, no-metadata-translation.patch, src/kicad-nightly/cmake/BuildSteps/CreateResourceCpp.cmake, src/kicad-nightly/cmake/BuildSteps/Html2C.cmake, src/kicad-nightly/cmake/BuildSteps/LemonParserGenerator.cmake, src/kicad-nightly/cmake/BuildSteps/TokenList2DsnLexer.cmake, src/kicad-nightly/cmake/InstallSteps/RefixupMacOS.cmake...
[0/10] Reviewing kicad-nightly-wrapper.sh, src/kicad-nightly/3d-viewer/3d_cache/CMakeLists.txt, no-metadata-translation.patch, src/kicad-nightly/cmake/BuildSteps/CreateResourceCpp.cmake, src/kicad-nightly/cmake/BuildSteps/Html2C.cmake, src/kicad-nightly/cmake/BuildSteps/LemonParserGenerator.cmake, src/kicad-nightly/cmake/BuildSteps/TokenList2DsnLexer.cmake, src/kicad-nightly/cmake/InstallSteps/RefixupMacOS.cmake, src/kicad-nightly/cmake/InstallSteps/SignMacOS.cmake...
[0/10] Reviewing kicad-nightly-wrapper.sh, src/kicad-nightly/3d-viewer/3d_cache/CMakeLists.txt, no-metadata-translation.patch, src/kicad-nightly/cmake/BuildSteps/CreateResourceCpp.cmake, src/kicad-nightly/cmake/BuildSteps/Html2C.cmake, src/kicad-nightly/cmake/BuildSteps/LemonParserGenerator.cmake, src/kicad-nightly/cmake/BuildSteps/TokenList2DsnLexer.cmake, src/kicad-nightly/cmake/InstallSteps/RefixupMacOS.cmake, src/kicad-nightly/cmake/InstallSteps/SignMacOS.cmake, src/kicad-nightly/cmake/InstallSteps/InstallMacOS.cmake...
LLM auditresponse for RefixupMacOS.cmake:
<security_assessment>
<decision>SAFE</decision>
<details>
This CMake script is a standard macOS bundle fixup utility for KiCad. It uses `otool` and `install_name_tool` to adjust library load commands and rpaths within the built application bundle. All operations are local to the build directory and the bundle being packaged. There are no network requests, no obfuscated code, no attempts to exfiltrate data, and no execution of untrusted content. The script follows normal packaging practices for macOS applications.
</details>
<summary>Standard macOS bundle fixup script; no malicious behavior.</summary>
</security_assessment>

[1/10] Reviewing kicad-nightly-wrapper.sh, src/kicad-nightly/3d-viewer/3d_cache/CMakeLists.txt, no-metadata-translation.patch, src/kicad-nightly/cmake/BuildSteps/CreateResourceCpp.cmake, src/kicad-nightly/cmake/BuildSteps/Html2C.cmake, src/kicad-nightly/cmake/BuildSteps/LemonParserGenerator.cmake, src/kicad-nightly/cmake/BuildSteps/TokenList2DsnLexer.cmake, src/kicad-nightly/cmake/InstallSteps/SignMacOS.cmake, src/kicad-nightly/cmake/InstallSteps/InstallMacOS.cmake...
+ Reviewed src/kicad-nightly/cmake/InstallSteps/RefixupMacOS.cmake. Status: SAFE -- Standard macOS bundle fixup script; no malicious behavior.
LLM auditresponse for CMakeLists.txt:
<security_assessment>
<decision>SAFE</decision>
<details>
The file contains only `add_subdirectory( sg )`, a standard CMake command that includes another directory named "sg" in the build. There is no obfuscation, network activity, file operations, or any executable code. This is a routine build system file with no security concerns.
</details>
<summary>Minimal CMakeLists with no suspicious content.</summary>
</security_assessment>

[2/10] Reviewing kicad-nightly-wrapper.sh, no-metadata-translation.patch, src/kicad-nightly/cmake/BuildSteps/CreateResourceCpp.cmake, src/kicad-nightly/cmake/BuildSteps/Html2C.cmake, src/kicad-nightly/cmake/BuildSteps/LemonParserGenerator.cmake, src/kicad-nightly/cmake/BuildSteps/TokenList2DsnLexer.cmake, src/kicad-nightly/cmake/InstallSteps/SignMacOS.cmake, src/kicad-nightly/cmake/InstallSteps/InstallMacOS.cmake...
+ Reviewed src/kicad-nightly/3d-viewer/3d_cache/CMakeLists.txt. Status: SAFE -- Minimal CMakeLists with no suspicious content.
LLM auditresponse for SignMacOS.cmake:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `SignMacOS.cmake` defines two CMake functions for code-signing macOS KiCad bundles using Apple's `codesign` tool. It collects paths of binaries, frameworks, plugins, and translations within the bundle, then executes `codesign --force --sign` with optional flags (`--timestamp`, `--options runtime`, `--entitlements`). The second function runs `codesign --verify` for verification. All operations are standard for macOS application packaging; no network access, obfuscation, or injection of untrusted content occurs. There is no deviation from expected build infrastructure.
</details>
<summary>
Standard macOS code-signing CMake helper, no security issues.</summary>
</security_assessment>

[3/10] Reviewing kicad-nightly-wrapper.sh, no-metadata-translation.patch, src/kicad-nightly/cmake/BuildSteps/CreateResourceCpp.cmake, src/kicad-nightly/cmake/BuildSteps/Html2C.cmake, src/kicad-nightly/cmake/BuildSteps/LemonParserGenerator.cmake, src/kicad-nightly/cmake/BuildSteps/TokenList2DsnLexer.cmake, src/kicad-nightly/cmake/InstallSteps/InstallMacOS.cmake...
+ Reviewed src/kicad-nightly/cmake/InstallSteps/SignMacOS.cmake. Status: SAFE -- Standard macOS code-signing CMake helper, no security issues.
LLM auditresponse for LemonParserGenerator.cmake:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard CMake module that invokes the Lemon parser generator tool to produce parser source code from a grammar file. It performs no network operations, no obfuscated code, no downloads, and no execution of untrusted external commands beyond the declared `LEMON_EXE` tool. The logic is straightforward: compare file timestamps and conditionally run the generator. There is no evidence of malicious or dangerous behavior. The file is part of KiCad's upstream build system, not a supply-chain attack vector.
</details>
<summary>Standard CMake build tooling, no security concerns.</summary>
</security_assessment>

[4/10] Reviewing kicad-nightly-wrapper.sh, no-metadata-translation.patch, src/kicad-nightly/cmake/BuildSteps/CreateResourceCpp.cmake, src/kicad-nightly/cmake/BuildSteps/Html2C.cmake, src/kicad-nightly/cmake/BuildSteps/TokenList2DsnLexer.cmake, src/kicad-nightly/cmake/InstallSteps/InstallMacOS.cmake...
+ Reviewed src/kicad-nightly/cmake/BuildSteps/LemonParserGenerator.cmake. Status: SAFE -- Standard CMake build tooling, no security concerns.
LLM auditresponse for TokenList2DsnLexer.cmake:
<security_assessment>
<decision>SAFE</decision>
<details>
This CMake script is a standard code generation tool used in the KiCad build system. It reads a plain-text token list file, validates each token against a strict regex (`[a-z][_0-9a-z]*`), sorts them, checks for duplicates, and generates C++ header and source files for a DSN lexer. All operations are local file reads and writes within the build directory. There are no network requests, no execution of external programs (beyond CMake itself), no obfuscated or encoded commands, and no system modifications outside the intended build output. The script is part of the upstream KiCad source and serves a legitimate build automation purpose. No supply-chain attack indicators are present.
</details>
<summary>Standard build code generation script, no malicious behavior.</summary>
</security_assessment>

[5/10] Reviewing kicad-nightly-wrapper.sh, no-metadata-translation.patch, src/kicad-nightly/cmake/BuildSteps/CreateResourceCpp.cmake, src/kicad-nightly/cmake/BuildSteps/Html2C.cmake, src/kicad-nightly/cmake/InstallSteps/InstallMacOS.cmake...
+ Reviewed src/kicad-nightly/cmake/BuildSteps/TokenList2DsnLexer.cmake. Status: SAFE -- Standard build code generation script, no malicious behavior.
LLM auditresponse for CreateResourceCpp.cmake:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard CMake module used to convert a binary resource file (e.g., a shader) into a compile-time C++ byte array. It reads the source file in hex, wraps the string, and writes the generated `.cpp` and `.h` files to designated build directories. There are no network requests, no execution of external commands, no obfuscation, and no access to sensitive system files. All operations are confined to the build environment and follow typical packaging/building practices for embedding resources.
</details>
<summary>Legitimate CMake resource embedding script.</summary>
</security_assessment>

[6/10] Reviewing kicad-nightly-wrapper.sh, no-metadata-translation.patch, src/kicad-nightly/cmake/BuildSteps/Html2C.cmake, src/kicad-nightly/cmake/InstallSteps/InstallMacOS.cmake...
+ Reviewed src/kicad-nightly/cmake/BuildSteps/CreateResourceCpp.cmake. Status: SAFE -- Legitimate CMake resource embedding script.
LLM auditresponse for InstallMacOS.cmake:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a CMake helper script (`InstallMacOS.cmake`) that copies runtime dependencies into an application bundle on macOS. It uses the standard CMake `file(GET_RUNTIME_DEPENDENCIES)` command to enumerate resolved shared libraries and installs them to a specified destination. The only operation is copying local files — no network requests, code execution, obfuscation, or data exfiltration. The `POST_EXCLUDE_FILES Python` filter is a typical exclusion for bundling Python libraries. This script is consistent with legitimate macOS packaging workflows and does not contain any supply-chain attack indicators.
</details>
<summary>Safe CMake helper for bundling dependencies.</summary>
</security_assessment>

[7/10] Reviewing kicad-nightly-wrapper.sh, no-metadata-translation.patch, src/kicad-nightly/cmake/BuildSteps/Html2C.cmake...
+ Reviewed src/kicad-nightly/cmake/InstallSteps/InstallMacOS.cmake. Status: SAFE -- Safe CMake helper for bundling dependencies.
LLM auditresponse for Html2C.cmake:
<security_assessment>
<decision>SAFE</decision>
<details>
This CMake script is a standard build utility that converts an input text file into a C-style string literal array. It reads lines from `${inputFile}`, escapes double quotes, and writes each line as a quoted C string with a `\n` escape to `${outputFile}`. There are no network requests, no execution of external commands, no obfuscated code, and no suspicious file operations beyond reading an input file and writing an output file as part of the build process. The script is transparent and performs only the stated functionality. No evidence of malicious behavior or supply-chain attack exists.
</details>
<summary>Standard build helper, no security concerns.</summary>
</security_assessment>

[8/10] Reviewing kicad-nightly-wrapper.sh, no-metadata-translation.patch...
+ Reviewed src/kicad-nightly/cmake/BuildSteps/Html2C.cmake. Status: SAFE -- Standard build helper, no security concerns.
LLM auditresponse for kicad-nightly-wrapper.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
The script performs a config migration from an old kicad-nightly config directory to a new location, then launches the application with appropriate environment variables. There is no evidence of malicious behavior: no network requests, no downloading or executing code from external sources, no obfuscation, and no exfiltration of data. The script only manipulates local configuration files within the user&#x27;s home directory.

One anomaly is the fallback path `$HOME/.hello_world` used when `KICAD_CONFIG_HOME` and `XDG_CONFIG_HOME` are unset. This is likely a leftover placeholder (similar to the `@LD_LIBRARY_PATH@` and `@KICAD_PATH@` placeholders) and does not pose a security threat; it merely results in an unusual config location if unset. While this could cause confusion for users, it is a packaging bug rather than a supply-chain attack.
</details>
<summary>Config migration wrapper, no malicious activity detected.</summary>
</security_assessment>

[9/10] Reviewing no-metadata-translation.patch...
+ Reviewed kicad-nightly-wrapper.sh. Status: SAFE -- Config migration wrapper, no malicious activity detected.
LLM auditresponse for no-metadata-translation.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
The patch is a straightforward build configuration change that disables internationalization (i18n) translation during the KiCad build process. Specifically, it replaces the conditional `if( KICAD_BUILD_I18N )` with `if( FALSE )`, which effectively skips translation file generation. This is a common and benign build tweak, often used to reduce build time or dependencies when translations are not needed. There is no evidence of network requests, obfuscated code, file exfiltration, or any other malicious activity. The patch serves no purpose other than to alter a build option.
</details>
<summary>Patch disables i18n; no security issue.</summary>
</security_assessment>

[10/10] Reviewing ...
+ Reviewed no-metadata-translation.patch. Status: SAFE -- Patch disables i18n; no security issue.
Reviewed all additional files.
Reviewed additional files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 42,430
  Completion Tokens: 8,457
  Total Tokens: 50,887
  Total Cost: $0.005341
  Execution Time: 232.60 seconds
Full audit report can be found in /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-report-kicad-nightly.txt
Final Status: SAFE


No issues found.
