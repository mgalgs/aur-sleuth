---
package: codelldb
pkgver: 1.12.3
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 56580919ea5cd225cb34031d0932798021e4a0d8
prompt_tokens: 50973
completion_tokens: 8723
total_tokens: 59696
cost: 0.0039272506
execution_time: 119.54
files_reviewed: 11
files_skipped: 0
files_unauditable: 2
unpinned_sources: 0
date: 2026-08-24T08:31:30Z
file_verdicts:
  - file: codelldb-update-yargs.patch
    status: safe
    summary: Standard dependency version bump patch, no malicious behavior.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD, no malicious content.
  - file: src/codelldb-1.12.3/cmake/CopyFiles.cmake
    status: safe
    summary: Standard CMake file copy helpers, no security issues.
  - file: src/codelldb-1.12.3/cmake/Extract.cmake
    status: safe
    summary: Standard archive extraction, no security concerns.
  - file: src/codelldb-1.12.3/CMakeLists.txt
    status: safe
    summary: Standard build script; no malicious behavior detected.
  - file: src/codelldb-1.12.3/webpack.config.mjs
    status: safe
    summary: Standard webpack config; no malicious indicators.
  - file: src/codelldb-1.12.3/package.json
    status: safe
    summary: Standard VS Code extension package.json, no malicious content.
  - file: src/codelldb-1.12.3/debuggee/rust/build.rs
    status: safe
    summary: Trivial build script, no concerns.
  - file: src/codelldb-1.12.3/lang_support/rust.py
    status: safe
    summary: Legitimate Rust LLDB debugging module, no malicious behavior.
  - file: src/codelldb-1.12.3/adapter/scripts/codelldb/api.py
    status: safe
    summary: Legitimate debugger extension API; no malicious behavior.
  - file: src/codelldb-1.12.3/extension/install.ts
    status: safe
    summary: Legitimate extension installer for platform-specific VSIX.
---

Cloning https://aur.archlinux.org/codelldb.git...
Cloned codelldb
Analyzing codelldb AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only static variable assignments and a source array in its global scope; there is no top-level command substitution, no pkgver() function, and no code that executes during sourcing. The two commands (`makepkg --nobuild --nodeps --noprepare` and `makepkg --printsrcinfo`) will only fetch the declared sources (a tarball from the project's official GitHub repository and a local patch file) and parse the file. Checksums are pinned for both artifacts. No prepare(), build(), or package() code runs during this gate, and none of those functions contain anything that would affect this step. Nothing in the file suggests malicious behavior in the executed scope.
</details>
<evidence>
</evidence>
<summary>
Only static definitions and source fetches execute; no malicious top-level or pkgver code present.
</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Only static definitions and source fetches execute; no malicious top-level or pkgver code present.
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Running makepkg --printsrcinfo to get source files for agent...
makepkg --printsrcinfo successful
Reviewing required files...
[0/2] Reviewing PKGBUILD...
[0/2] Reviewing PKGBUILD, codelldb-update-yargs.patch...
LLM auditresponse for codelldb-update-yargs.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard patch file that updates dependency versions in `package-lock.json` for an npm-based package. It replaces the `yargs` package versions from 16.2.0 to 16.2.2 and from 17.7.2 to 17.7.3, with corresponding integrity hashes from the official npm registry. It also replaces a hardcoded version string with a placeholder `@VERSION@` for templating. There are no executable commands, no network requests outside the expected npm registry URLs, and no obfuscated or suspicious content. This is routine package maintenance.
</details>
<evidence></evidence>
<summary>Standard dependency version bump patch, no malicious behavior.</summary>
</security_assessment>

[1/2] Reviewing PKGBUILD...
+ Reviewed codelldb-update-yargs.patch. Status: SAFE -- Standard dependency version bump patch, no malicious behavior.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard AUR packaging practices for a Rust/CMake project. It fetches the source from the official GitHub repository with a pinned version tag and a valid sha256 checksum. The prepare, build, check, and package functions contain only routine operations: applying a patch, modifying build flags via sed, running cmake, cargo fetch, ctest, and installing files to the package directory. There are no suspicious network requests, obfuscated code, dangerous commands (eval, base64, curl|bash), or attempts to exfiltrate data. All symlink creation targets are absolute paths to the expected system locations, which is normal for packaging. No malicious supply-chain indicators are present.
</details>
<evidence>
</evidence>
<summary>Standard AUR PKGBUILD, no malicious content.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD, no malicious content.
Reviewed all required files.
Deciding which files to review next...
Note: 2 compiled/archived file(s) cannot be audited as text and were not reviewed (codelldb-1.12.3.tar.gz, src/codelldb-1.12.3/typings/lldb.pyi). For a package that ships prebuilt binaries, the audit covers the packaging, not the payload.
Note: 209 files available for selection; offering the 50 highest-priority to the model. 126 lower-priority file(s) were not offered.
LLM response for file selection:
src/codelldb-1.12.3/CMakeLists.txt
src/codelldb-1.12.3/cmake/CopyFiles.cmake
src/codelldb-1.12.3/cmake/Extract.cmake
src/codelldb-1.12.3/package.json
src/codelldb-1.12.3/webpack.config.mjs
src/codelldb-1.12.3/debuggee/rust/build.rs
src/codelldb-1.12.3/extension/install.ts
src/codelldb-1.12.3/adapter/scripts/codelldb/api.py
src/codelldb-1.12.3/lang_support/rust.py
src/codelldb-1.12.3/.nvchecker.toml
! Note: the model selected 1 path(s) not present in the package; these do not exist and were not reviewed: src/codelldb-1.12.3/.nvchecker.toml
Decided to review 9 additional files: src/codelldb-1.12.3/CMakeLists.txt, src/codelldb-1.12.3/cmake/CopyFiles.cmake, src/codelldb-1.12.3/cmake/Extract.cmake, src/codelldb-1.12.3/package.json, src/codelldb-1.12.3/webpack.config.mjs, src/codelldb-1.12.3/debuggee/rust/build.rs, src/codelldb-1.12.3/extension/install.ts, src/codelldb-1.12.3/adapter/scripts/codelldb/api.py, src/codelldb-1.12.3/lang_support/rust.py
Reviewing additional files...
Reviewing additional files...
[0/9] Reviewing src/codelldb-1.12.3/CMakeLists.txt...
[0/9] Reviewing src/codelldb-1.12.3/CMakeLists.txt, src/codelldb-1.12.3/cmake/CopyFiles.cmake...
[0/9] Reviewing src/codelldb-1.12.3/CMakeLists.txt, src/codelldb-1.12.3/cmake/CopyFiles.cmake, src/codelldb-1.12.3/cmake/Extract.cmake...
LLM auditresponse for CopyFiles.cmake:
<security_assessment>
<decision>SAFE</decision>
<details>
This CMake file defines two helper functions (`add_copy_file` and `add_copy_files_to`) that use standard CMake commands (`add_custom_command`, `copy_if_different`, `list`, `set`, `get_filename_component`) to copy files during the build process. There is no network access, no execution of untrusted code, no obfuscation, and no manipulation of system files outside the build directory. The code is transparent and serves only the purpose of copying files as part of the package build.
</details>
<evidence></evidence>
<summary>Standard CMake file copy helpers, no security issues.</summary>
</security_assessment>

[0/9] Reviewing src/codelldb-1.12.3/CMakeLists.txt, src/codelldb-1.12.3/cmake/CopyFiles.cmake, src/codelldb-1.12.3/cmake/Extract.cmake, src/codelldb-1.12.3/package.json...
[1/9] Reviewing src/codelldb-1.12.3/CMakeLists.txt, src/codelldb-1.12.3/cmake/Extract.cmake, src/codelldb-1.12.3/package.json...
+ Reviewed src/codelldb-1.12.3/cmake/CopyFiles.cmake. Status: SAFE -- Standard CMake file copy helpers, no security issues.
LLM auditresponse for Extract.cmake:
<security_assessment>
<decision>SAFE</decision>
<details>
This CMake script performs a standard archive extraction using CMake's built-in `file(ARCHIVE_EXTRACT)` command. There are no network requests, obfuscated code, dangerous commands, or any behavior beyond extracting an archive to a specified directory. It is a typical helper used in packaging workflows.
</details>
<evidence></evidence>
<summary>Standard archive extraction, no security concerns.</summary>
</security_assessment>

[2/9] Reviewing src/codelldb-1.12.3/CMakeLists.txt, src/codelldb-1.12.3/package.json...
+ Reviewed src/codelldb-1.12.3/cmake/Extract.cmake. Status: SAFE -- Standard archive extraction, no security concerns.
[2/9] Reviewing src/codelldb-1.12.3/CMakeLists.txt, src/codelldb-1.12.3/package.json, src/codelldb-1.12.3/webpack.config.mjs...
LLM auditresponse for CMakeLists.txt:
<security_assessment>
<decision>SAFE</decision>
<details>
This CMakeLists.txt is a standard build configuration file for the CodeLLDB VS Code extension. It performs routine build operations: downloading the LLDB package from an environment variable (expected for a debugger extension), running `npm install`, `cargo build`, and generating VSIX packages. All network references point to the project's own GitHub repository (vadimcn/codelldb). There are no obfuscated commands, no unexpected system modifications, no data exfiltration, and no execution of code from external sources beyond the package's declared upstream. The `install` directive removes the previous installation directory, which is normal for a clean install. The `update_lockfiles` target is a maintainer helper for updating dependency lock files and does not execute arbitrary code from untrusted sources.

The file does not contain any genuinely malicious behavior such as backdoors, reverse shells, credential theft, or execution of attacker-controlled code. It adheres to expected packaging practices for a VS Code extension.
</details>
<evidence></evidence>
<summary>Standard build script; no malicious behavior detected.</summary>
</security_assessment>

[2/9] Reviewing src/codelldb-1.12.3/CMakeLists.txt, src/codelldb-1.12.3/package.json, src/codelldb-1.12.3/webpack.config.mjs, src/codelldb-1.12.3/debuggee/rust/build.rs...
[3/9] Reviewing src/codelldb-1.12.3/package.json, src/codelldb-1.12.3/webpack.config.mjs, src/codelldb-1.12.3/debuggee/rust/build.rs...
+ Reviewed src/codelldb-1.12.3/CMakeLists.txt. Status: SAFE -- Standard build script; no malicious behavior detected.
LLM auditresponse for webpack.config.mjs:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard webpack configuration file for a Node.js target, used to build a VS Code extension (codelldb). It defines common settings: Node target, production mode, commonjs2 output, source maps, external modules (vscode, mocha), and TypeScript compilation via ts-loader. The module resolution paths include CMake-style variables (`${CMAKE_BINARY_DIR}`, `${CMAKE_SOURCE_DIR}`) that will be substituted during the build process; this is a normal build system integration, not a supply-chain risk. There are no network requests, no obfuscated code, no eval, no base64 decoding, no system modification commands, and no references to anything outside the package's own build scope. The file is benign and follows standard packaging and build practices.
</details>
<evidence></evidence>
<summary>Standard webpack config; no malicious indicators.</summary>
</security_assessment>

[3/9] Reviewing src/codelldb-1.12.3/package.json, src/codelldb-1.12.3/webpack.config.mjs, src/codelldb-1.12.3/debuggee/rust/build.rs, src/codelldb-1.12.3/extension/install.ts...
[4/9] Reviewing src/codelldb-1.12.3/package.json, src/codelldb-1.12.3/debuggee/rust/build.rs, src/codelldb-1.12.3/extension/install.ts...
+ Reviewed src/codelldb-1.12.3/webpack.config.mjs. Status: SAFE -- Standard webpack config; no malicious indicators.
LLM auditresponse for package.json:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is the standard `package.json` for the CodeLLDB VS Code extension. It contains metadata, dependencies, activation events, contributed commands, debugging configurations, and a `config` section with platform-specific package URLs (templates to be substituted at build time). There is no executable code, no obfuscation, no unexpected network requests, and no system modification commands. The file is a static configuration artifact for the extension and follows normal packaging practices for VS Code extensions. The placeholder URL (`@PLATFORM_PACKAGE_URL@`) is a build-time substitution mechanism, not a runtime URL fetch.
</details>
<evidence></evidence>
<summary>Standard VS Code extension package.json, no malicious content.</summary>
</security_assessment>

[4/9] Reviewing src/codelldb-1.12.3/package.json, src/codelldb-1.12.3/debuggee/rust/build.rs, src/codelldb-1.12.3/extension/install.ts, src/codelldb-1.12.3/adapter/scripts/codelldb/api.py...
[5/9] Reviewing src/codelldb-1.12.3/debuggee/rust/build.rs, src/codelldb-1.12.3/extension/install.ts, src/codelldb-1.12.3/adapter/scripts/codelldb/api.py...
+ Reviewed src/codelldb-1.12.3/package.json. Status: SAFE -- Standard VS Code extension package.json, no malicious content.
LLM auditresponse for build.rs:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `build.rs` is a standard Rust build script that only prints a message. It contains no network requests, file operations, obfuscated code, or any other potentially malicious behavior. The content is trivial and consistent with a minimal build script stub.
</details>
<evidence></evidence>
<summary>Trivial build script, no concerns.</summary>
</security_assessment>

[5/9] Reviewing src/codelldb-1.12.3/debuggee/rust/build.rs, src/codelldb-1.12.3/extension/install.ts, src/codelldb-1.12.3/adapter/scripts/codelldb/api.py, src/codelldb-1.12.3/lang_support/rust.py...
[6/9] Reviewing src/codelldb-1.12.3/extension/install.ts, src/codelldb-1.12.3/adapter/scripts/codelldb/api.py, src/codelldb-1.12.3/lang_support/rust.py...
+ Reviewed src/codelldb-1.12.3/debuggee/rust/build.rs. Status: SAFE -- Trivial build script, no concerns.
LLM auditresponse for rust.py:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard LLDB Python module for Rust debugging support, part of the codelldb package. It performs the following legitimate operations:

- Configures LLDB type formatters for Rust types (char, signed char, unsigned char, char32_t).
- Locates the Rust toolchain sysroot by running `rustc --print=sysroot` (or via `rustup run` for a specific toolchain). This is expected upstream behavior.
- Loads Rust formatter scripts from the sysroot&#39;s `lib/rustlib/etc/` directory (specifically `lldb_lookup.py` and `lldb_commands`). Reading and executing commands from that file is part of normal Rust debugging functionality.
- Includes a `char_summary` function and an `is_rust_type` recognizer, both benign.

All network operations are absent. All subprocess calls are to trusted Rust tools (`rustc`, `rustup`) with no external or unexpected hosts. File operations are limited to reading package-owned files from the Rust toolchain installation path. There is no obfuscation, base64, curl/wget, or any other supply-chain attack indicators. The code does exactly what an LLDB Rust debugging module should do.
</details>
<evidence>
</evidence>
<summary>Legitimate Rust LLDB debugging module, no malicious behavior.</summary>
</security_assessment>

[7/9] Reviewing src/codelldb-1.12.3/extension/install.ts, src/codelldb-1.12.3/adapter/scripts/codelldb/api.py...
+ Reviewed src/codelldb-1.12.3/lang_support/rust.py. Status: SAFE -- Legitimate Rust LLDB debugging module, no malicious behavior.
LLM auditresponse for api.py:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is part of the upstream CodeLLDB extension's Python API, providing functions to interact with the LLDB debugger, manage webviews, and handle configuration. All operations are standard for a debugger adapter: evaluating expressions, wrapping/unwrapping values, creating webview panels, sending debugger messages, and registering a custom LLDB command. There are no suspicious network requests, obfuscated code, or unexpected system modifications. The `on_message` handler in `display_html` executes LLDB commands from webview messages, but this is an intended feature of the extension's design (allowing webview content to control the debugger). No evidence of supply-chain attack or malicious injection.
</details>
<evidence></evidence>
<summary>Legitimate debugger extension API; no malicious behavior.</summary>
</security_assessment>

[8/9] Reviewing src/codelldb-1.12.3/extension/install.ts...
+ Reviewed src/codelldb-1.12.3/adapter/scripts/codelldb/api.py. Status: SAFE -- Legitimate debugger extension API; no malicious behavior.
LLM auditresponse for install.ts:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard VS Code extension installer for the CodeLLDB debugger. It downloads a platform-specific VSIX package from a URL constructed from the extension's own `package.json` metadata (specifically `pp.url` with `${version}` and `${platformPackage}` replaced). This is normal and expected behavior for an extension that requires native binaries. The download uses HTTPS (though not enforced by the code, the upstream URL is typically HTTPS), follows redirects, verifies content‑type, writes to a temporary file, and installs via VS Code's built‑in command. There is no obfuscation, no execution of untrusted code, no exfiltration of data, and no deviation from standard packaging practices. The source of the URL is the extension itself, not the AUR maintainer, so any risk would stem from the upstream extension being compromised, which is outside the scope of this AUR audit.
</details>
<evidence></evidence>
<summary>Legitimate extension installer for platform-specific VSIX.</summary>
</security_assessment>

[9/9] Reviewing ...
+ Reviewed src/codelldb-1.12.3/extension/install.ts. Status: SAFE -- Legitimate extension installer for platform-specific VSIX.
Reviewed all additional files.
Reviewed additional files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 50,973
  Completion Tokens: 8,723
  Total Tokens: 59,696
  Total Cost: $0.003927
  Execution Time: 119.54 seconds

Final Status: SAFE


No issues found.
