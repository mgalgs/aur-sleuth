---
package: perry
pkgver: 0.5.1182
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: openrouter.ai
base_url: https://openrouter.ai/api/v1
aur_sleuth_rev: 42d5d13ec215be60bdccd096603da490f9ec6c7d
prompt_tokens: 84266
completion_tokens: 11693
total_tokens: 95959
cost: 0.00968868
execution_time: 211.64
files_reviewed: 11
files_skipped: 1
date: 2026-06-19T06:41:33Z
file_verdicts:
  - file: perry-0.5.1182.tar.gz
    status: skipped
    summary: "Skipping binary file: perry-0.5.1182.tar.gz"
  - file: PKGBUILD
    status: safe
    summary: Standard Rust packaging; no indicators of malicious behavior.
  - file: src/perry-0.5.1182/npm/perry/bin/perry.js
    status: safe
    summary: Standard platform-specific binary wrapper; no malicious behavior.
  - file: src/perry-0.5.1182/crates/perry-audio-miniaudio/build.rs
    status: safe
    summary: Standard build script; no security issues.
  - file: src/perry-0.5.1182/run_parity_tests.sh
    status: safe
    summary: Legitimate test runner for Perry language runtime.
  - file: src/perry-0.5.1182/run_tests.sh
    status: safe
    summary: Standard test runner, no malicious behavior detected.
  - file: src/perry-0.5.1182/packaging/install.sh
    status: safe
    summary: Standard GitHub installer; no malicious code found.
  - file: src/perry-0.5.1182/run_module_parity.sh
    status: safe
    summary: Standard test runner, no security issues.
  - file: src/perry-0.5.1182/packaging/homebrew/perry.rb
    status: safe
    summary: Standard Homebrew formula, placeholder checksums only.
  - file: src/perry-0.5.1182/crates/perry-codegen-js/src/web_runtime.js
    status: safe
    summary: Standard web runtime for Perry UI framework; no malicious behavior.
  - file: src/perry-0.5.1182/crates/perry-codegen-wasm/src/wasm_runtime.js
    status: safe
    summary: Legitimate WASM runtime; no malicious behavior detected.
  - file: src/perry-0.5.1182/run_llvm_sweep.sh
    status: safe
    summary: Standard test harness for LLVM backend, no malicious behavior.
---

Cloning https://aur.archlinux.org/perry.git to /tmp/aur-sleuth/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-b1zpz0ah...
Cloned repository to /tmp/aur-sleuth/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-b1zpz0ah
Analyzing perry AUR package (working in /tmp/aur-sleuth/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-b1zpz0ah) with deepseek/deepseek-v4-flash from https://openrouter.ai/api/v1
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD only defines top-level variables and a `source` array pointing to a pinned GitHub release tarball with a valid SHA256 checksum. No commands execute beyond variable assignments in the global scope. The functions `prepare()`, `build()`, `check()`, and `package()` are not invoked by the requested commands (`--nobuild --nodeps --noprepare` and `--printsrcinfo`). There is no `pkgver()` function, no top-level command substitution, and no network requests outside the declared source. The source is fetched from the official upstream GitHub repository with a pinned version and checksum, which is standard and safe. No signs of malicious code, obfuscation, or data exfiltration.
</details>
<summary>Standard PKGBUILD with pinned source; no execution risk.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete [grey50]-- Standard PKGBUILD with pinned source; no execution risk.[/]
Running makepkg --nobuild --nodeps --noprepare to download sources for agent...
makepkg --nobuild --nodeps --noprepare successful
Running makepkg --printsrcinfo to get source files for agent...
makepkg --printsrcinfo successful
Reviewing required files...
[0/2] Reviewing PKGBUILD...
[0/2] Reviewing PKGBUILD, perry-0.5.1182.tar.gz...
[1/2] Reviewing PKGBUILD...
! Reviewed perry-0.5.1182.tar.gz. Status: SKIPPED -- Skipping binary file: perry-0.5.1182.tar.gz
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard Rust packaging practices for the AUR. The source is pinned to a specific version tarball with a valid SHA-256 checksum. All operations (`cargo update`, `cargo build --frozen`, `cargo fetch`) are normal for Rust projects and fetch from the upstream GitHub and crates.io, not from suspicious or unexpected hosts. The `cargo update` call syncs the lockfile, which is a common and acceptable practice, not a supply-chain threat. There is no obfuscated code, no network exfiltration, no execution of untrusted scripts, and no modification of files outside the package installation directory. The smoke test in `check()` creates and runs a temporary file locally, which is standard functionality.
</details>
<summary>Standard Rust packaging; no indicators of malicious behavior.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard Rust packaging; no indicators of malicious behavior.
Reviewed all required files.
Deciding which files to review next...
Note: 7386 files available for selection; offering the 50 highest-priority to the model. 5862 lower-priority file(s) were not offered.
LLM response for file selection:
src/perry-0.5.1182/crates/perry-audio-miniaudio/build.rs
src/perry-0.5.1182/crates/perry-codegen-js/src/web_runtime.js
src/perry-0.5.1182/crates/perry-codegen-wasm/src/wasm_runtime.js
src/perry-0.5.1182/packaging/install.sh
src/perry-0.5.1182/packaging/homebrew/perry.rb
src/perry-0.5.1182/npm/perry/bin/perry.js
src/perry-0.5.1182/run_tests.sh
src/perry-0.5.1182/run_llvm_sweep.sh
src/perry-0.5.1182/run_module_parity.sh
src/perry-0.5.1182/run_parity_tests.sh
Decided to review 10 additional files: src/perry-0.5.1182/crates/perry-audio-miniaudio/build.rs, src/perry-0.5.1182/crates/perry-codegen-js/src/web_runtime.js, src/perry-0.5.1182/crates/perry-codegen-wasm/src/wasm_runtime.js, src/perry-0.5.1182/packaging/install.sh, src/perry-0.5.1182/packaging/homebrew/perry.rb, src/perry-0.5.1182/npm/perry/bin/perry.js, src/perry-0.5.1182/run_tests.sh, src/perry-0.5.1182/run_llvm_sweep.sh, src/perry-0.5.1182/run_module_parity.sh, src/perry-0.5.1182/run_parity_tests.sh
Reviewing additional files...
Reviewing additional files...
[0/10] Reviewing src/perry-0.5.1182/crates/perry-codegen-wasm/src/wasm_runtime.js...
[0/10] Reviewing src/perry-0.5.1182/crates/perry-codegen-wasm/src/wasm_runtime.js, src/perry-0.5.1182/crates/perry-audio-miniaudio/build.rs...
[0/10] Reviewing src/perry-0.5.1182/crates/perry-codegen-wasm/src/wasm_runtime.js, src/perry-0.5.1182/crates/perry-audio-miniaudio/build.rs, src/perry-0.5.1182/crates/perry-codegen-js/src/web_runtime.js...
[0/10] Reviewing src/perry-0.5.1182/crates/perry-codegen-wasm/src/wasm_runtime.js, src/perry-0.5.1182/crates/perry-audio-miniaudio/build.rs, src/perry-0.5.1182/crates/perry-codegen-js/src/web_runtime.js, src/perry-0.5.1182/packaging/install.sh...
[0/10] Reviewing src/perry-0.5.1182/crates/perry-codegen-wasm/src/wasm_runtime.js, src/perry-0.5.1182/crates/perry-audio-miniaudio/build.rs, src/perry-0.5.1182/crates/perry-codegen-js/src/web_runtime.js, src/perry-0.5.1182/packaging/install.sh, src/perry-0.5.1182/packaging/homebrew/perry.rb...
[0/10] Reviewing src/perry-0.5.1182/crates/perry-codegen-wasm/src/wasm_runtime.js, src/perry-0.5.1182/crates/perry-audio-miniaudio/build.rs, src/perry-0.5.1182/crates/perry-codegen-js/src/web_runtime.js, src/perry-0.5.1182/packaging/install.sh, src/perry-0.5.1182/packaging/homebrew/perry.rb, src/perry-0.5.1182/npm/perry/bin/perry.js...
[0/10] Reviewing src/perry-0.5.1182/crates/perry-codegen-wasm/src/wasm_runtime.js, src/perry-0.5.1182/crates/perry-audio-miniaudio/build.rs, src/perry-0.5.1182/crates/perry-codegen-js/src/web_runtime.js, src/perry-0.5.1182/packaging/install.sh, src/perry-0.5.1182/packaging/homebrew/perry.rb, src/perry-0.5.1182/npm/perry/bin/perry.js, src/perry-0.5.1182/run_tests.sh...
[0/10] Reviewing src/perry-0.5.1182/crates/perry-codegen-wasm/src/wasm_runtime.js, src/perry-0.5.1182/crates/perry-audio-miniaudio/build.rs, src/perry-0.5.1182/crates/perry-codegen-js/src/web_runtime.js, src/perry-0.5.1182/packaging/install.sh, src/perry-0.5.1182/packaging/homebrew/perry.rb, src/perry-0.5.1182/npm/perry/bin/perry.js, src/perry-0.5.1182/run_tests.sh, src/perry-0.5.1182/run_llvm_sweep.sh...
[0/10] Reviewing src/perry-0.5.1182/crates/perry-codegen-wasm/src/wasm_runtime.js, src/perry-0.5.1182/crates/perry-audio-miniaudio/build.rs, src/perry-0.5.1182/crates/perry-codegen-js/src/web_runtime.js, src/perry-0.5.1182/packaging/install.sh, src/perry-0.5.1182/packaging/homebrew/perry.rb, src/perry-0.5.1182/npm/perry/bin/perry.js, src/perry-0.5.1182/run_tests.sh, src/perry-0.5.1182/run_llvm_sweep.sh, src/perry-0.5.1182/run_module_parity.sh...
[0/10] Reviewing src/perry-0.5.1182/crates/perry-codegen-wasm/src/wasm_runtime.js, src/perry-0.5.1182/crates/perry-audio-miniaudio/build.rs, src/perry-0.5.1182/crates/perry-codegen-js/src/web_runtime.js, src/perry-0.5.1182/packaging/install.sh, src/perry-0.5.1182/packaging/homebrew/perry.rb, src/perry-0.5.1182/npm/perry/bin/perry.js, src/perry-0.5.1182/run_tests.sh, src/perry-0.5.1182/run_llvm_sweep.sh, src/perry-0.5.1182/run_module_parity.sh, src/perry-0.5.1182/run_parity_tests.sh...
LLM auditresponse for perry.js:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard Node.js wrapper that resolves a platform-specific binary from an optional-dependency package (@perryts/perry-*) and spawns it. The code:
- Maps host OS/arch to a package name
- Detects musl libc by reading `/etc/os-release` (normal for platform detection)
- Uses `require.resolve` to locate the binary (no dynamic code execution)
- Spawns the binary with `child_process.spawn` and passes CLI arguments through
- Handles signal forwarding and exit codes

There is no obfuscation, no network fetches, no unexpected file writes, and no execution of untrusted content. The binary it runs is installed by npm as a declared dependency, not downloaded on the fly. This is a safe, conventional packaging pattern for distributing native binaries via npm.
</details>
<summary>Standard platform-specific binary wrapper; no malicious behavior.</summary>
</security_assessment>

[1/10] Reviewing src/perry-0.5.1182/crates/perry-codegen-wasm/src/wasm_runtime.js, src/perry-0.5.1182/crates/perry-audio-miniaudio/build.rs, src/perry-0.5.1182/crates/perry-codegen-js/src/web_runtime.js, src/perry-0.5.1182/packaging/install.sh, src/perry-0.5.1182/packaging/homebrew/perry.rb, src/perry-0.5.1182/run_tests.sh, src/perry-0.5.1182/run_llvm_sweep.sh, src/perry-0.5.1182/run_module_parity.sh, src/perry-0.5.1182/run_parity_tests.sh...
+ Reviewed src/perry-0.5.1182/npm/perry/bin/perry.js. Status: SAFE -- Standard platform-specific binary wrapper; no malicious behavior.
LLM auditresponse for build.rs:
<security_assessment>
<decision>SAFE</decision>
<details>
The build script is a standard Rust `cc` invocation that compiles a vendored C file (`vendor/miniaudio_impl.c`) and links system audio libraries appropriate for each target platform (Linux, Android, Windows, Apple). There are no network requests, encoding/obfuscation, dangerous commands, file modifications outside the expected build process, or any behavior that deviates from normal Rust crate packaging practices. The comments accurately describe the purpose of each section. No evidence of supply-chain attack or malicious code injection.
</details>
<summary>Standard build script; no security issues.</summary>
</security_assessment>

[2/10] Reviewing src/perry-0.5.1182/crates/perry-codegen-wasm/src/wasm_runtime.js, src/perry-0.5.1182/crates/perry-codegen-js/src/web_runtime.js, src/perry-0.5.1182/packaging/install.sh, src/perry-0.5.1182/packaging/homebrew/perry.rb, src/perry-0.5.1182/run_tests.sh, src/perry-0.5.1182/run_llvm_sweep.sh, src/perry-0.5.1182/run_module_parity.sh, src/perry-0.5.1182/run_parity_tests.sh...
+ Reviewed src/perry-0.5.1182/crates/perry-audio-miniaudio/build.rs. Status: SAFE -- Standard build script; no security issues.
LLM auditresponse for run_parity_tests.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard test runner script for the Perry project, a language/runtime that compiles to native code. It performs typical CI tasks: building the project with Cargo, running parity tests against Node.js, spawning temporary network servers for network-related tests, and generating JSON reports. The script uses standard tools (bash, python3, cargo, node, sed, awk) and does not contain any obfuscated code, suspicious network requests, or attempts to exfiltrate data or modify system files outside its intended scope. All network operations are limited to localhost test servers (port 17891 and 17892) used for testing the runtime's networking APIs, which is legitimate for a language runtime's test suite. There are no downloads from external hosts, no execution of untrusted code, and no backdoors. The file is consistent with a normal development/test automation script.
</details>
<summary>Legitimate test runner for Perry language runtime.</summary>
</security_assessment>

[3/10] Reviewing src/perry-0.5.1182/crates/perry-codegen-wasm/src/wasm_runtime.js, src/perry-0.5.1182/crates/perry-codegen-js/src/web_runtime.js, src/perry-0.5.1182/packaging/install.sh, src/perry-0.5.1182/packaging/homebrew/perry.rb, src/perry-0.5.1182/run_tests.sh, src/perry-0.5.1182/run_llvm_sweep.sh, src/perry-0.5.1182/run_module_parity.sh...
+ Reviewed src/perry-0.5.1182/run_parity_tests.sh. Status: SAFE -- Legitimate test runner for Perry language runtime.
LLM auditresponse for run_tests.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard test runner for the Perry programming language compiler. It builds the compiler with `cargo build`, compiles test files (`.ts`), runs the resulting binaries, and executes regression test shell scripts from the `tests/` directory. All operations are local and constrained to the package’s own source tree and `/tmp/perry_tests`. There are no network requests, obfuscated commands, or suspicious data exfiltration. Running `bash` on scripts from the `tests/` directory is normal test-runner behavior; the trustworthiness of those scripts depends on the package contents, not on this runner itself. No supply-chain attack indicators are present.
</details>
<summary>Standard test runner, no malicious behavior detected.</summary>
</security_assessment>

[4/10] Reviewing src/perry-0.5.1182/crates/perry-codegen-wasm/src/wasm_runtime.js, src/perry-0.5.1182/crates/perry-codegen-js/src/web_runtime.js, src/perry-0.5.1182/packaging/install.sh, src/perry-0.5.1182/packaging/homebrew/perry.rb, src/perry-0.5.1182/run_llvm_sweep.sh, src/perry-0.5.1182/run_module_parity.sh...
+ Reviewed src/perry-0.5.1182/run_tests.sh. Status: SAFE -- Standard test runner, no malicious behavior detected.
LLM auditresponse for install.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
The script is a standard upstream installer that downloads a pre-built binary from the project's own GitHub releases (`PerryTS/perry`). It does not exfiltrate data, execute obfuscated code, or fetch from unexpected hosts. The probe loop over release tags (using HEAD requests to find an asset) is a routine workaround for a GitHub API quirk and not malicious. The only notable hygiene concern is the absence of checksum or GPG verification on the downloaded tarball, which is common for `curl | sh` installers and not evidence of a supply-chain attack. No genuinely dangerous behavior—such as backdoors, credential theft, or remote code execution from an untrusted source—is present.
</details>
<summary>Standard GitHub installer; no malicious code found.</summary>
</security_assessment>

[5/10] Reviewing src/perry-0.5.1182/crates/perry-codegen-wasm/src/wasm_runtime.js, src/perry-0.5.1182/crates/perry-codegen-js/src/web_runtime.js, src/perry-0.5.1182/packaging/homebrew/perry.rb, src/perry-0.5.1182/run_llvm_sweep.sh, src/perry-0.5.1182/run_module_parity.sh...
+ Reviewed src/perry-0.5.1182/packaging/install.sh. Status: SAFE -- Standard GitHub installer; no malicious code found.
LLM auditresponse for run_module_parity.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This script is a test harness runner for parity tests. It iterates over specified modules (defaulting to `process` and `perf_hooks`), checks for the existence of corresponding directories under `test-parity/node-suite/`, then executes `./run_parity_tests.sh` (a local script within the same package) for each module. The output is parsed to extract pass/fail/compile-fail counts, which are aggregated into a summary table.

No network requests or downloads occur; the only external command is the local `run_parity_tests.sh`. There is no obfuscated code, no use of `eval`, `curl`, `wget`, `base64`, or any file operations outside of reading its own test output. The script exits with 0 and does not modify the system, install files, or exfiltrate data. It is a routine development/test automation script consistent with normal packaging practices.
</details>
<summary>Standard test runner, no security issues.</summary>
</security_assessment>

[6/10] Reviewing src/perry-0.5.1182/crates/perry-codegen-wasm/src/wasm_runtime.js, src/perry-0.5.1182/crates/perry-codegen-js/src/web_runtime.js, src/perry-0.5.1182/packaging/homebrew/perry.rb, src/perry-0.5.1182/run_llvm_sweep.sh...
+ Reviewed src/perry-0.5.1182/run_module_parity.sh. Status: SAFE -- Standard test runner, no security issues.
LLM auditresponse for perry.rb:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a straightforward Homebrew formula for the Perry TypeScript compiler. It downloads either a precompiled binary (macOS, from the project's official GitHub releases) or builds from source (Linux, using `cargo build`, also from the same official source). No suspicious network destinations or commands are present. The only notable issue is that the `sha256` values are set to the placeholder string `"PLACEHOLDER"` rather than actual checksums, which means integrity verification is effectively skipped until those are filled in. This is a packaging hygiene concern, not evidence of malice. The formula performs no obfuscated commands, no unexpected system modifications, and no data exfiltration. All operations (installing the binary, compiling source, running tests) are standard Homebrew behavior for a compiler package.
</details>
<summary>Standard Homebrew formula, placeholder checksums only.</summary>
</security_assessment>

[7/10] Reviewing src/perry-0.5.1182/crates/perry-codegen-wasm/src/wasm_runtime.js, src/perry-0.5.1182/crates/perry-codegen-js/src/web_runtime.js, src/perry-0.5.1182/run_llvm_sweep.sh...
+ Reviewed src/perry-0.5.1182/packaging/homebrew/perry.rb. Status: SAFE -- Standard Homebrew formula, placeholder checksums only.
LLM auditresponse for web_runtime.js:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `web_runtime.js` is the web runtime for the Perry UI framework. It implements widget creation, state management, canvas operations, audio capture, file system stubs, and other standard UI runtime features. All network accesses (`perry_system_open_url`, `perry_ui_image_create_url`) are expected for a UI framework and use standard browser APIs. Audio capture uses `getUserMedia` with user consent. Recording triggers a standard browser download. The file system functions (`fs_readFileSync`, etc.) operate on an in-memory cache (`__perryFileCache`) that is pre-populated with demo project content, not the real filesystem. There is no exfiltration of data, no download and execution of remote code, no obfuscated or encoded payloads, and no backdoors. The code is well-structured and consistent with legitimate packaging.
</details>
<summary>Standard web runtime for Perry UI framework; no malicious behavior.</summary>
</security_assessment>

[8/10] Reviewing src/perry-0.5.1182/crates/perry-codegen-wasm/src/wasm_runtime.js, src/perry-0.5.1182/run_llvm_sweep.sh...
+ Reviewed src/perry-0.5.1182/crates/perry-codegen-js/src/web_runtime.js. Status: SAFE -- Standard web runtime for Perry UI framework; no malicious behavior.
LLM auditresponse for wasm_runtime.js:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a JavaScript runtime bridge for a WASM-based UI framework (Perry). It implements NaN-boxing, string tables, handle stores, and a large set of functions for object manipulation, UI widget dispatch, audio, and other browser APIs. The suspicious pattern `contentWindow?.eval(js)` appears in a comment line and is likely part of a function that executes JavaScript inside an iframe, which is a legitimate feature for a UI framework that embeds web content. The comment notes "Same-origin only", limiting the risk. There is no evidence of obfuscated code, exfiltration, network requests to unexpected hosts, or backdoor installation. All other code consists of standard WASM runtime operations and upstream application functionality for the Perry framework. No malicious injection or supply-chain attack indicators are present.
</details>
<summary>
Legitimate WASM runtime; no malicious behavior detected.
</summary>
</security_assessment>

[9/10] Reviewing src/perry-0.5.1182/run_llvm_sweep.sh...
+ Reviewed src/perry-0.5.1182/crates/perry-codegen-wasm/src/wasm_runtime.js. Status: SAFE -- Legitimate WASM runtime; no malicious behavior detected.
LLM auditresponse for run_llvm_sweep.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This shell script is a test harness for the Perry package's LLVM backend. It compiles TypeScript test files, runs the resulting binaries with a timeout, compares the output to Node.js, and reports MATCH/DIFF/CRASH/COMPILE_FAIL counts. The script performs only local operations: building the project with `cargo build --release`, compiling test files with `$PERRY compile`, running the binary, and comparing output to Node.js. There are no network requests (except the implicit `cargo build` fetching dependencies, which is standard package build behavior). No obfuscated code, no suspicious commands like `eval` or `base64`, no exfiltration of data. The script is a straightforward testing tool for the package's own functionality, consistent with ordinary packaging practices.
</details>
<summary>Standard test harness for LLVM backend, no malicious behavior.</summary>
</security_assessment>

[10/10] Reviewing ...
+ Reviewed src/perry-0.5.1182/run_llvm_sweep.sh. Status: SAFE -- Standard test harness for LLVM backend, no malicious behavior.
Reviewed all additional files.
Reviewed additional files.
Audit complete! Result: No issues found
(Skipped 1 file: perry-0.5.1182.tar.gz)

API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 84,266
  Completion Tokens: 11,693
  Total Tokens: 95,959
  Total Cost: $0.009689
  Execution Time: 211.64 seconds
Full audit report can be found in /tmp/aur-sleuth/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-report-perry.txt
Final Status: SAFE


No issues found.


Audit Skips:

/tmp/aur-sleuth/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-b1zpz0ah/perry-0.5.1182.tar.gz: [SKIPPED] Skipping binary file: perry-0.5.1182.tar.gz
