---
package: llama.cpp-vulkan
pkgver: b10586
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: ab8f04a045309f11c3e319d8a061c88f7bc8df51
prompt_tokens: 13756
completion_tokens: 3000
total_tokens: 16756
cost: 0.00113122856
execution_time: 114.78
files_reviewed: 3
files_skipped: 0
files_unauditable: 25
unpinned_sources: 0
date: 2026-08-22T22:26:45Z
file_verdicts:
  - file: llama.cpp.conf
    status: safe
    summary: Trivial config file with no malicious content.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD, no malicious code found.
  - file: llama.cpp.service
    status: safe
    summary: Standard service unit; no security concerns found.
---

Cloning https://aur.archlinux.org/llama.cpp-vulkan.git...
Cloned llama.cpp-vulkan
Analyzing llama.cpp-vulkan AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only variable declarations and function definitions (prepare, build, package) in its global scope. No command substitutions, backticks, or other executable code is present at the top level. The `pkgver` is a static variable; there is no `pkgver()` function that could execute during sourcing. The `source` array uses standard HTTP(S) downloads with SHA256 checksums, and all URLs point to the package's upstream (ggml-org/llama.cpp) and the maintainer's GitHub repository (Orion-zhen/aur-packages) for auxiliary files. Fetching and extracting these sources is the intended behavior of `makepkg --nobuild --nodeps --noprepare`. No code in `prepare()`, `build()`, or `package()` executes during this gate, so none of the operations (creating a `.git` directory, running npm, cmake, etc.) are triggered. The two commands (`makepkg --nobuild --nodeps --noprepare` and `makepkg --printsrcinfo`) are safe to run.
</details>
<summary>No malicious global or pkgver() code; source fetches are safe.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious global or pkgver() code; source fetches are safe.
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Running makepkg --printsrcinfo to get source files for agent...
makepkg --printsrcinfo successful
Reviewing required files...
[0/2] Reviewing PKGBUILD...
[0/2] Reviewing PKGBUILD, llama.cpp.conf...
LLM auditresponse for llama.cpp.conf:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a trivial configuration file that sets the environment variable `LLAMA_ARGS` to an empty string. There is no executable code, no network requests, no file operations, and no obfuscation. This is standard for a package configuration file and presents no security risk.
</details>
<summary>Trivial config file with no malicious content.</summary>
</security_assessment>

[1/2] Reviewing PKGBUILD...
+ Reviewed llama.cpp.conf. Status: SAFE -- Trivial config file with no malicious content.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD is a standard AUR build script for llama.cpp with Vulkan support. It sources the upstream release tarball from the official GitHub repository (ggml-org/llama.cpp) with a pinned tag and a valid SHA-256 checksum. The two additional files (systemd service and configuration) are fetched from the maintainer's own GitHub repository (`Orion-zhen/aur-packages`) and also have checksums — no unexpected or untrusted origins are used.  

The `prepare()` function creates an empty `.git` directory to work around a Tailwind v4 scanner bug; this is a benign and well-documented upstream workaround. The `build()` uses `npm ci`/`npm run build` for the web UI frontend and standard `cmake` invocations. The `package()` installs only the package's own files and configuration. There is no obfuscated code, no network communication outside fetching the declared sources/npm dependencies, no base64 decoding, no `eval` or `curl|bash`, and no tampering with unrelated system files. All operations are consistent with ordinary packaging practices.
</details>
<summary>Standard PKGBUILD, no malicious code found.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD, no malicious code found.
Reviewed all required files.
Deciding which files to review next...
Note: 25 compiled/archived file(s) cannot be audited as text and were not reviewed (llama.cpp-vulkan-b10586.tar.gz, src/llama.cpp-b10586/docs/development/llama-star/idea-arch.key, src/llama.cpp-b10586/examples/llama.android/gradle/wrapper/gradle-wrapper.jar and 22 more). For a package that ships prebuilt binaries, the audit covers the packaging, not the payload.
Note: 3380 files available for selection; offering the 50 highest-priority to the model. 3010 lower-priority file(s) were not offered.
LLM response for file selection:
llama.cpp.service
Decided to review 1 additional files: llama.cpp.service
Reviewing additional files...
Reviewing additional files...
[0/1] Reviewing llama.cpp.service...
LLM auditresponse for llama.cpp.service:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard systemd service unit for launching `llama-server` with arguments read from `/etc/conf.d/llama.cpp`. It contains only ordinary service definitions: `Type=simple`, `ExecStart`, `ExecReload`, `Restart=on-failure`, and installation targets. There are no network requests, no downloads, no execution of arbitrary code, no obfuscation, and no file operations beyond what a typical service requires. The environment file path and executable path are hardcoded and expected. No security issues are present.
</details>
<summary>Standard service unit; no security concerns found.</summary>
</security_assessment>

[1/1] Reviewing ...
+ Reviewed llama.cpp.service. Status: SAFE -- Standard service unit; no security concerns found.
Reviewed all additional files.
Reviewed additional files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 13,756
  Completion Tokens: 3,000
  Total Tokens: 16,756
  Total Cost: $0.001131
  Execution Time: 114.78 seconds

Final Status: SAFE


No issues found.
