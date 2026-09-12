---
package: hermes-agent-desktop
pkgver: 0.21.1
pkgrel: 4
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 171a316e053e9c4b28731ccb1aa63b1168550d3a
prompt_tokens: 62360
completion_tokens: 7923
total_tokens: 70283
cost: 0.006929520836
execution_time: 53.5
files_reviewed: 14
files_skipped: 0
maintainer_files: 14
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-09T03:09:56Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata file, no malicious content.
  - file: LICENSE
    status: safe
    summary: Plain license text; no code or security concerns.
  - file: .gitignore
    status: safe
    summary: Standard gitignore file, no security issues.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD, no evidence of malicious content.
  - file: fix-voice-prefs-storage-spy.patch
    status: safe
    summary: Patch fixing test spy compatibility only.
  - file: hermes-desktop
    status: safe
    summary: Standard Electron launcher, no malicious behavior.
  - file: launcher.test.cjs
    status: safe
    summary: Legitimate test file, no malicious code.
  - file: packaged-bootstrap.patch
    status: safe
    summary: Legitimate packaging patch, no security issues.
  - file: pin-packaged-runtime.patch
    status: safe
    summary: Legitimate patch for package-managed runtime support.
  - file: runtime-policy.test.py
    status: safe
    summary: Standard test file with no malicious behavior.
  - file: runtime.test.cjs
    status: safe
    summary: Legitimate test file; no malicious behavior.
  - file: runtime-policy.patch
    status: safe
    summary: Legitimate AUR integration patch, no malicious code.
  - file: system-browser.patch
    status: safe
    summary: Benign packaging patch for system browser reuse.
  - file: system-electron-resources.patch
    status: safe
    summary: Patch adds environment variable path override, no malicious behavior.
---

Materializing hermes-agent-desktop from local mirror...
Materialized hermes-agent-desktop
Analyzing hermes-agent-desktop AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD's top-level scope contains only variable declarations, array definitions, and function definitions. No command substitutions, backticks, `eval`, `curl`, `wget`, or other dangerous commands are executed at the global level. The functions `_extract_dir()`, `_set_npm_env()`, `prepare()`, `build()`, `check()`, and `package()` are defined but not called during sourcing. All variable assignments use static strings or simple variable expansions. There is no code that would execute arbitrary commands or exfiltrate data when the PKGBUILD is sourced by `makepkg --printsrcinfo`.
</details>
<evidence></evidence>
<summary>No top-level dangerous code execution.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No top-level dangerous code execution.
Reviewing the 14 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/14] Reviewing .SRCINFO...
[0/14] Reviewing .SRCINFO, LICENSE...
[0/14] Reviewing .SRCINFO, LICENSE, .gitignore...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.SRCINFO` metadata file for an AUR package. It contains only declarative fields: package name, description, version, URLs, dependencies, source file list, and checksums. There are no scripts, commands, or executable content. The sources are pinned to a specific upstream tag (`v2026.9.7`) with explicit SHA-256 checksums. No network requests, obfuscated code, or suspicious operations are present. The file is purely informational and follows normal AUR packaging practices.
</details>
<evidence></evidence>
<summary>Standard AUR metadata file, no malicious content.</summary>
</security_assessment>

[1/14] Reviewing LICENSE, .gitignore...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata file, no malicious content.
[1/14] Reviewing LICENSE, .gitignore, PKGBUILD...
LLM auditresponse for LICENSE:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a plain BSD Zero Clause License text. It contains no executable code, no network operations, no file system modifications, no obfuscated content, and no directives of any kind. It is standard legal boilerplate for a package. There are no security-relevant behaviors to analyze.
</details>
<evidence></evidence>
<summary>Plain license text; no code or security concerns.</summary>
</security_assessment>

[1/14] Reviewing LICENSE, .gitignore, PKGBUILD, fix-voice-prefs-storage-spy.patch...
[2/14] Reviewing .gitignore, PKGBUILD, fix-voice-prefs-storage-spy.patch...
+ Reviewed LICENSE. Status: SAFE -- Plain license text; no code or security concerns.
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard `.gitignore` file for an AUR package repository. It lists common build artifact patterns (`.tar.gz`, `.tgz`, `.zip`, `.pkg.tar.*`, `.src.tar.*`) to exclude them from version control. There are no commands, network requests, obfuscated code, or any operations that could be exploited. This is a harmless metadata file.
</details>
<evidence></evidence>
<summary>Standard gitignore file, no security issues.</summary>
</security_assessment>

[2/14] Reviewing .gitignore, PKGBUILD, fix-voice-prefs-storage-spy.patch, hermes-desktop...
[3/14] Reviewing PKGBUILD, fix-voice-prefs-storage-spy.patch, hermes-desktop...
+ Reviewed .gitignore. Status: SAFE -- Standard gitignore file, no security issues.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard Arch packaging practices for an Electron-based desktop application. The source is fetched from the official upstream GitHub repository with a pinned commit tag and all patch files have verified sha256sums. The build process uses `npm ci` with `--ignore-scripts`, `--offline`, and `--prefer-offline` flags, which prevent unintended network access during the build. The `check()` function runs the included test files and verifies the native addon loads correctly. The `package()` function installs only the built application artifacts, a launcher script, desktop entry, icon, and license. No suspicious network requests, obfuscated code, dangerous command execution, or data exfiltration is present. The patches are all checked into the AUR source and have pinned checksums, so they cannot be tampered with between the user's download and build.
</details>
<evidence></evidence>
<summary>Standard AUR PKGBUILD, no evidence of malicious content.</summary>
</security_assessment>

[3/14] Reviewing PKGBUILD, fix-voice-prefs-storage-spy.patch, hermes-desktop, launcher.test.cjs...
[4/14] Reviewing fix-voice-prefs-storage-spy.patch, hermes-desktop, launcher.test.cjs...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD, no evidence of malicious content.
LLM auditresponse for fix-voice-prefs-storage-spy.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
The patch modifies a unit test file to correctly spy on `localStorage.setItem` across different JavaScript environments (jsdom vs Node.js). It introduces a fallback to access the method from the prototype when the object does not own it. This is a standard testing compatibility fix, not malicious code. There is no obfuscation, no network requests, no file system modifications, and no execution of untrusted content. The patch is entirely benign and only affects test behavior.
</details>
<evidence>
</evidence>
<summary>Patch fixing test spy compatibility only.</summary>
</security_assessment>

[5/14] Reviewing hermes-desktop, launcher.test.cjs...
+ Reviewed fix-voice-prefs-storage-spy.patch. Status: SAFE -- Patch fixing test spy compatibility only.
[5/14] Reviewing hermes-desktop, launcher.test.cjs, packaged-bootstrap.patch...
LLM auditresponse for hermes-desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
The script is a standard Electron application launcher for the AUR package `hermes-agent-desktop`. It performs the following routine operations: reading a user‑configurable flags file, setting environment variables to indicate the packaged runtime, searching for a local Chromium‑based browser on `PATH` (to use a dedicated browser, not the user’s profile), and then executing the Electron runtime (`electron42`) with the application bundle (`app.asar`). No network requests, downloads, obfuscated commands, or unexpected system modifications occur. All operations are confined to the local system and are consistent with normal packaging practices for Electron applications. There is no evidence of injected malicious code or supply‑chain attack behavior.
</details>
<evidence></evidence>
<summary>Standard Electron launcher, no malicious behavior.</summary>
</security_assessment>

[5/14] Reviewing hermes-desktop, launcher.test.cjs, packaged-bootstrap.patch, pin-packaged-runtime.patch...
[6/14] Reviewing launcher.test.cjs, packaged-bootstrap.patch, pin-packaged-runtime.patch...
+ Reviewed hermes-desktop. Status: SAFE -- Standard Electron launcher, no malicious behavior.
LLM auditresponse for launcher.test.cjs:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a legitimate test file for the hermes-agent-desktop launcher script. It isolates the launcher in a temporary directory, mocks browser executables, and replaces the `exec` call to avoid actually launching Electron. The test validates browser selection logic, config file parsing, and argument forwarding. Notably, the test includes a config line `--literal=$(touch should-not-exist)` to verify that the launcher does not evaluate shell expansions in the flags, and explicitly asserts that the file `should-not-exist` is not created—demonstrating security-conscious test design. No network requests, obfuscated code, or unexpected system modifications are present. The file is a standard unit test and does not exhibit any malicious behavior.
</details>
<evidence></evidence>
<summary>Legitimate test file, no malicious code.</summary>
</security_assessment>

[6/14] Reviewing launcher.test.cjs, packaged-bootstrap.patch, pin-packaged-runtime.patch, runtime-policy.patch...
[7/14] Reviewing packaged-bootstrap.patch, pin-packaged-runtime.patch, runtime-policy.patch...
+ Reviewed launcher.test.cjs. Status: SAFE -- Legitimate test file, no malicious code.
LLM auditresponse for packaged-bootstrap.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
This patch adds support for a package-managed runtime mode in the Hermes Agent Desktop application. It is designed to allow the application to be installed and managed via a system package (e.g., an AUR package) rather than by downloading and self-installing. The changes are consistent with legitimate packaging practices:

- The installer uses a system-provided `uv` command instead of downloading its own.
- The repository is cloned from the upstream URL with a pinned commit, and a package-specific patch is applied.
- The Electron bootstrap runner uses the packaged installer script and `runtime-policy.patch` from the package resources.
- The runtime state detects when the policy patch is missing and triggers a minimal refresh rather than a full reinstall.
- Tests are added to verify the new behavior.

All network operations (git clone/fetch) target the project's own upstream repository. There is no evidence of data exfiltration, backdoors, obfuscated code, or execution of untrusted content. The patch is well-documented and serves the stated purpose of making the application work correctly when installed via a system package manager.
</details>
<evidence></evidence>
<summary>Legitimate packaging patch, no security issues.</summary>
</security_assessment>

[7/14] Reviewing packaged-bootstrap.patch, pin-packaged-runtime.patch, runtime-policy.patch, runtime-policy.test.py...
[8/14] Reviewing pin-packaged-runtime.patch, runtime-policy.patch, runtime-policy.test.py...
+ Reviewed packaged-bootstrap.patch. Status: SAFE -- Legitimate packaging patch, no security issues.
LLM auditresponse for pin-packaged-runtime.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
This patch adds upstream support for a &quot;package-managed runtime&quot; mode in the Hermes desktop agent. The changes are legitimate and expected for an AUR package: they allow the application to detect when it is installed via the system package manager, compare the currently checked-out runtime commit against the packaged commit, block in-app updates (since the package manager handles updates), and re-run bootstrap if the checkout does not match the packaged version. The code is straightforward TypeScript/JavaScript with no obfuscation, no suspicious network requests, no data exfiltration, no backdoors, and no deviation from normal application development patterns. The patch is consistent with the upstream project's own codebase and serves the stated purpose of integrating with a system package manager.
</details>
<evidence></evidence>
<summary>Legitimate patch for package-managed runtime support.</summary>
</security_assessment>

[8/14] Reviewing pin-packaged-runtime.patch, runtime-policy.patch, runtime-policy.test.py, runtime.test.cjs...
[9/14] Reviewing runtime-policy.patch, runtime-policy.test.py, runtime.test.cjs...
+ Reviewed pin-packaged-runtime.patch. Status: SAFE -- Legitimate patch for package-managed runtime support.
LLM auditresponse for runtime-policy.test.py:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard Python unit test file for the `hermes-agent-desktop` package. It tests update policy logic by mocking dependencies and compiling route functions from the package's own source code. The `exec` call is used to extract and run a specific function from the package for isolated testing, which is a legitimate testing technique. No suspicious network requests, obfuscated code, or dangerous system modifications are present. The file does exactly what a test file should do: verify behavior without side effects.
</details>
<evidence></evidence>
<summary>Standard test file with no malicious behavior.</summary>
</security_assessment>

[9/14] Reviewing runtime-policy.patch, runtime-policy.test.py, runtime.test.cjs, system-browser.patch...
[10/14] Reviewing runtime-policy.patch, runtime.test.cjs, system-browser.patch...
+ Reviewed runtime-policy.test.py. Status: SAFE -- Standard test file with no malicious behavior.
LLM auditresponse for runtime.test.cjs:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a test file (`runtime.test.cjs`) that validates the behavior of a package installer (`install.sh`). It creates temporary directories and a mock git repository, then runs the installer under various conditions to verify that it correctly pins commits, preserves user files, handles errors, and uses system utilities. All operations are confined to temporary test directories (`os.tmpdir()`) and no network requests, data exfiltration, obfuscated code, or backdoors are present. The file is a standard, transparent test for the package's own installation logic.
</details>
<evidence></evidence>
<summary>Legitimate test file; no malicious behavior.</summary>
</security_assessment>

[10/14] Reviewing runtime-policy.patch, runtime.test.cjs, system-browser.patch, system-electron-resources.patch...
[11/14] Reviewing runtime-policy.patch, system-browser.patch, system-electron-resources.patch...
+ Reviewed runtime.test.cjs. Status: SAFE -- Legitimate test file; no malicious behavior.
LLM auditresponse for runtime-policy.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
This patch is a standard integration patch for the AUR package `hermes-agent-desktop`. It adds a mechanism to detect when the runtime is managed by a system package (via an environment variable or a marker file) and adjusts behavior accordingly: preferring system `uv` over Hermes' private copy, disabling self-update, and skipping version checks. All changes are consistent with making the upstream software work correctly under a package manager. There is no obfuscation, no unexpected network requests, no credential theft, and no backdoor. The modifications are transparent and serve the stated purpose of adapting the application to a packaged environment.
</details>
<evidence></evidence>
<summary>Legitimate AUR integration patch, no malicious code.</summary>
</security_assessment>

[12/14] Reviewing system-browser.patch, system-electron-resources.patch...
+ Reviewed runtime-policy.patch. Status: SAFE -- Legitimate AUR integration patch, no malicious code.
LLM auditresponse for system-browser.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
This patch adds support for an optional environment variable `HERMES_DESKTOP_PACKAGE_MANAGED_RUNTIME` that, when set to `1`, causes the application to pass `--skip-browser` to its internal bootstrap logic. The purpose is to prevent the application from downloading its own browser runtime when the system package manager already provides one. This is a standard packaging integration change, not a security concern. The patch is transparent, adds no dangerous commands, no network operations, and no obfuscation. The corresponding test cases verify correct behavior.
</details>
<evidence></evidence>
<summary>Benign packaging patch for system browser reuse.</summary>
</security_assessment>

[13/14] Reviewing system-electron-resources.patch...
+ Reviewed system-browser.patch. Status: SAFE -- Benign packaging patch for system browser reuse.
LLM auditresponse for system-electron-resources.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
This patch adds an additional candidate for locating the application's install-stamp.json file, using the environment variable `HERMES_DESKTOP_RESOURCES_PATH`. This is a standard technique for allowing developers or system administrators to override the resources path without modifying the application itself. There is no evidence of malicious behavior: no network requests, no code execution, no data exfiltration, no obfuscation. The code is transparent and serves a legitimate purpose.
</details>
<evidence></evidence>
<summary>Patch adds environment variable path override, no malicious behavior.</summary>
</security_assessment>

[14/14] Reviewing ...
+ Reviewed system-electron-resources.patch. Status: SAFE -- Patch adds environment variable path override, no malicious behavior.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 62,360
  Completion Tokens: 7,923
  Total Tokens: 70,283
  Total Cost: $0.006930
  Execution Time: 53.50 seconds

Final Status: SAFE


No issues found.
