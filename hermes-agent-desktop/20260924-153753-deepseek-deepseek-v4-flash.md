---
package: hermes-agent-desktop
pkgver: 0.21.4
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 63098
completion_tokens: 9176
total_tokens: 72274
cost: 0.006841800
execution_time: 86.2
files_reviewed: 14
files_skipped: 0
maintainer_files: 14
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-24T15:37:53Z
file_verdicts:
  - file: LICENSE
    status: safe
    summary: Standard license file, no security risks.
  - file: .gitignore
    status: safe
    summary: Standard .gitignore, no security issues.
  - file: fix-voice-prefs-storage-spy.patch
    status: safe
    summary: Safe patch adjusting test spies for localStorage across environments.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD with no malicious content.
  - file: launcher.test.cjs
    status: safe
    summary: Standard test file, no malicious code
  - file: .SRCINFO
    status: safe
    summary: Standard packaging metadata; no security concerns.
  - file: packaged-bootstrap.patch
    status: safe
    summary: Patch adds safe package-managed runtime support.
  - file: pin-packaged-runtime.patch
    status: safe
    summary: Legitimate patch for packaging managed runtime.
  - file: runtime-policy.test.py
    status: safe
    summary: Standard unit test, no security concerns.
  - file: runtime-policy.patch
    status: safe
    summary: Legitimate AUR integration patch, no malicious behavior observed.
  - file: runtime.test.cjs
    status: safe
    summary: Test file for runtime installer, no malicious code.
  - file: system-browser.patch
    status: safe
    summary: Routine patch for distro integration.
  - file: system-electron-resources.patch
    status: safe
    summary: Patch adds environment variable override for resources path.
  - file: hermes-desktop
    status: safe
    summary: Standard Electron wrapper, no malicious behavior.
---

Materializing hermes-agent-desktop from local mirror...
Materialized hermes-agent-desktop
Analyzing hermes-agent-desktop AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
Sourcing this PKGBUILD for `makepkg --printsrcinfo` is safe. The top-level scope contains only variable definitions (standard packaging metadata like `pkgname`, `source`, `sha256sums`, etc.) and function definitions (`_extract_dir`, `_set_npm_env`, `prepare`, `build`, `check`, `package`). None of these functions are invoked at the top level. There are no command substitutions, eval, network calls, or any other potentially malicious code execution at global scope. The comment about `_srcdir` is just explanatory text and does nothing. The checksums are all actual hashes (not `SKIP`), but even if they were `SKIP`, that would not be a concern for this parsing step.
</details>
<evidence></evidence>
<summary>No malicious top-level code; safe to source.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious top-level code; safe to source.
Reviewing the 14 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/14] Reviewing .SRCINFO...
[0/14] Reviewing .SRCINFO, LICENSE...
[0/14] Reviewing .SRCINFO, LICENSE, .gitignore...
LLM auditresponse for LICENSE:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard BSD Zero Clause License text. It contains no executable code, instructions, network requests, or any other security-relevant content. It is purely a legal document and presents no risk.
</details>
<evidence>
</evidence>
<summary>Standard license file, no security risks.</summary>
</security_assessment>

[0/14] Reviewing .SRCINFO, LICENSE, .gitignore, PKGBUILD...
[1/14] Reviewing .SRCINFO, .gitignore, PKGBUILD...
+ Reviewed LICENSE. Status: SAFE -- Standard license file, no security risks.
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard `.gitignore` file for an AUR package repository. It lists common build artifact patterns (compressed archives and packaged binaries) to prevent them from being tracked by git. There is no executable code, no network requests, no obfuscation, and no deviation from normal packaging practices. Nothing in this file poses a security risk.
</details>
<evidence></evidence>
<summary>Standard .gitignore, no security issues.</summary>
</security_assessment>

[1/14] Reviewing .SRCINFO, .gitignore, PKGBUILD, fix-voice-prefs-storage-spy.patch...
[2/14] Reviewing .SRCINFO, PKGBUILD, fix-voice-prefs-storage-spy.patch...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore, no security issues.
LLM auditresponse for fix-voice-prefs-storage-spy.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
This patch modifies a unit test file to correctly spy on `localStorage` methods across different JavaScript environments (jsdom vs. Node). It selects the appropriate object holding the `setItem` method and uses it for `vi.spyOn()`. No network requests, file system modifications, code execution, or obfuscation are present. The change is a routine testing fix and does not introduce any supply-chain risk or malicious behavior.
</details>
<evidence></evidence>
<summary>Safe patch adjusting test spies for localStorage across environments.</summary>
</security_assessment>

[2/14] Reviewing .SRCINFO, PKGBUILD, fix-voice-prefs-storage-spy.patch, hermes-desktop...
[3/14] Reviewing .SRCINFO, PKGBUILD, hermes-desktop...
+ Reviewed fix-voice-prefs-storage-spy.patch. Status: SAFE -- Safe patch adjusting test spies for localStorage across environments.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard Arch packaging practices for an Electron application. Sources are pinned to a specific commit and have SHA256 checksums. The `prepare()` function applies local patches (also checksummed), runs `npm ci` with `--ignore-scripts` to prevent arbitrary lifecycle code, and replaces the bundled Electron runtime with the system&#39;s `electron42`. No network access occurs beyond the initial source download; `npm` is used only in offline mode. The `build()` and `package()` functions install files only into `$pkgdir`. There are no obfuscated commands, no unintended file operations, and no exfiltration or backdoors. The patches and test scripts are part of the package source and serve legitimate integration purposes.
</details>
<evidence></evidence>
<summary>Standard AUR PKGBUILD with no malicious content.</summary>
</security_assessment>

[4/14] Reviewing .SRCINFO, hermes-desktop...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD with no malicious content.
[4/14] Reviewing .SRCINFO, hermes-desktop, launcher.test.cjs...
LLM auditresponse for launcher.test.cjs:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a Node.js unit test file for the Hermes Agent Desktop launcher script. It uses standard modules (`assert`, `fs`, `os`, `path`, `child_process`) to create temporary environments, stub browser executables, and verify launcher behavior (browser preference, flag parsing, etc.).  

All operations are confined to temporary directories under `os.tmpdir()` and only execute a modified copy of the launcher script where the real Electron process is replaced with a diagnostic `printf`. There are no network requests, no exfiltration of data, no execution of code from external sources, and no obfuscation. The test content (including the `--literal=$(touch should-not-exist)` flag) is explicitly designed to verify that command injection is not possible via the config file.  

This file is part of the upstream source and follows standard packaging/testing practices. No evidence of a supply‑chain attack has been found.
</details>
<evidence></evidence>
<summary>Standard test file, no malicious code</summary>
</security_assessment>

[4/14] Reviewing .SRCINFO, hermes-desktop, launcher.test.cjs, packaged-bootstrap.patch...
[5/14] Reviewing .SRCINFO, hermes-desktop, packaged-bootstrap.patch...
+ Reviewed launcher.test.cjs. Status: SAFE -- Standard test file, no malicious code
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The `.SRCINFO` file is a standard AUR metadata file containing package definitions, sources, checksums, and dependencies. All sources are from the official GitHub repository of the upstream project (NousResearch/hermes-agent) with pinned checksums (no `SKIP` entries). Dependencies and options are typical for an Electron-based desktop application. No executable code, obfuscated content, or unexpected network references are present. The file presents no security risk.
</details>
<evidence></evidence>
<summary>Standard packaging metadata; no security concerns.</summary>
</security_assessment>

[5/14] Reviewing .SRCINFO, hermes-desktop, packaged-bootstrap.patch, pin-packaged-runtime.patch...
[6/14] Reviewing hermes-desktop, packaged-bootstrap.patch, pin-packaged-runtime.patch...
+ Reviewed .SRCINFO. Status: SAFE -- Standard packaging metadata; no security concerns.
LLM auditresponse for packaged-bootstrap.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
The patch introduces a "package-managed runtime" mode for the Hermes agent desktop package. This mode uses system-provided tools (uv, Python) and local resources (install.sh, runtime-policy.patch) from the package's own resources path, rather than downloading components from the internet at install time. The repository operations (`git init`, `git fetch`, `git checkout`, `git apply`) all target the package's own upstream repository and are guarded by commit hash validation, temporary index checks, and rollback logic. No data exfiltration, backdoors, obfuscated code, or execution of untrusted content from unrelated sources is present. The modifications are consistent with standard AUR packaging practices for a pinned, reproducible runtime.
</details>
<evidence></evidence>
<summary>Patch adds safe package-managed runtime support.</summary>
</security_assessment>

[6/14] Reviewing hermes-desktop, packaged-bootstrap.patch, pin-packaged-runtime.patch, runtime-policy.patch...
[7/14] Reviewing hermes-desktop, pin-packaged-runtime.patch, runtime-policy.patch...
+ Reviewed packaged-bootstrap.patch. Status: SAFE -- Patch adds safe package-managed runtime support.
LLM auditresponse for pin-packaged-runtime.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
The patch adds support for recognizing when the Hermes runtime is managed by a system package (e.g., via AUR) and enforcing that the runtime checkout matches the packaged commit. It introduces an environment variable `HERMES_DESKTOP_PACKAGE_MANAGED_RUNTIME` and modifies update checking, bootstrap logic, and runtime state classification to block in-app updates and force re-bootstrap on commit mismatch. All modifications are straightforward TypeScript code with no obfuscation, suspicious network activity, or system modifications beyond normal application behavior (reading environment variables, file system checks, IPC handlers). The patch is consistent with legitimate packaging practices to ensure version consistency and does not contain any supply-chain attack indicators.
</details>
<evidence></evidence>
<summary>Legitimate patch for packaging managed runtime.</summary>
</security_assessment>

[8/14] Reviewing hermes-desktop, runtime-policy.patch...
+ Reviewed pin-packaged-runtime.patch. Status: SAFE -- Legitimate patch for packaging managed runtime.
[8/14] Reviewing hermes-desktop, runtime-policy.patch, runtime-policy.test.py...
LLM auditresponse for runtime-policy.test.py:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a unit test for the Hermes desktop package&#39;s update policy. It uses standard Python testing patterns: temporary directories, mocking (`unittest.mock.patch`), and AST-based compilation of the route function to test without full server imports. All network-related calls are mocked (`banner.check_for_updates`). There are no downloads, obfuscated code, or unexpected file operations. The dynamic code execution with `exec()` on compiled AST is a legitimate testing technique to isolate the function. No evidence of malicious or injected code.
</details>
<evidence></evidence>
<summary>Standard unit test, no security concerns.</summary>
</security_assessment>

[9/14] Reviewing hermes-desktop, runtime-policy.patch...
+ Reviewed runtime-policy.test.py. Status: SAFE -- Standard unit test, no security concerns.
[9/14] Reviewing hermes-desktop, runtime-policy.patch, runtime.test.cjs...
LLM auditresponse for runtime-policy.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
This patch integrates the Hermes CLI with a system package-managed installation (e.g., from the AUR). It adds a helper function `is_desktop_package_managed()` that checks for an environment variable or a marker file to detect that the checkout is owned by a distribution package. When detected, the code prefers the system `uv` binary over Hermes' private copy, disables self-update logic, and blocks update checks in the banner and web router. No obfuscation, unexpected network requests, or exfiltration is present. The changes are standard practices for packaging an application that might otherwise try to self-update—they ensure the package manager remains in control.
</details>
<evidence></evidence>
<summary>Legitimate AUR integration patch, no malicious behavior observed.</summary>
</security_assessment>

[9/14] Reviewing hermes-desktop, runtime-policy.patch, runtime.test.cjs, system-browser.patch...
[10/14] Reviewing hermes-desktop, runtime.test.cjs, system-browser.patch...
+ Reviewed runtime-policy.patch. Status: SAFE -- Legitimate AUR integration patch, no malicious behavior observed.
LLM auditresponse for runtime.test.cjs:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a Node.js test suite (`runtime.test.cjs`) for the Hermes agent desktop runtime installer. It sets up isolated temporary directories, creates mock git repositories, and tests the behavior of functions sourced from `install.sh` (e.g., `clone_repo`, `setup_venv`, `install_uv`). All operations are confined to temporary directories. The tests include assertions that the installer refuses to operate without the `HERMES_DESKTOP_PACKAGE_MANAGED_RUNTIME` environment variable and that it prefers the system `uv` binary over a PATH-based copy. There is no obfuscated code, no network requests to unexpected hosts, no data exfiltration, and no file modifications outside the test sandbox. The file adheres to standard automated testing practices and contains no genuinely malicious behavior.
</details>
<evidence></evidence>
<summary>Test file for runtime installer, no malicious code.</summary>
</security_assessment>

[10/14] Reviewing hermes-desktop, runtime.test.cjs, system-browser.patch, system-electron-resources.patch...
[11/14] Reviewing hermes-desktop, system-browser.patch, system-electron-resources.patch...
+ Reviewed runtime.test.cjs. Status: SAFE -- Test file for runtime installer, no malicious code.
LLM auditresponse for system-browser.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
This patch is a routine packaging customization for Arch Linux. It adds support for an environment variable `HERMES_DESKTOP_PACKAGE_MANAGED_RUNTIME` that, when set to `1`, causes the Hermes desktop agent to skip provisioning its own browser and instead rely on an optional system browser. This is a common and expected practice for Linux distribution packages to avoid downloading duplicate runtimes and to respect the system package manager. The patch also includes corresponding test coverage. No suspicious operations, network requests, obfuscation, or malicious behavior is present. The code is straightforward and serves the stated purpose of improving package integration.
</details>
<evidence></evidence>
<summary>Routine patch for distro integration.</summary>
</security_assessment>

[12/14] Reviewing hermes-desktop, system-electron-resources.patch...
+ Reviewed system-browser.patch. Status: SAFE -- Routine patch for distro integration.
LLM auditresponse for system-electron-resources.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
This patch adds a new search path for `install-stamp.json` based on the `HERMES_DESKTOP_RESOURCES_PATH` environment variable. The change is consistent with standard packaging practices—allowing system-level resource overrides—and does not introduce any network requests, code execution, obfuscation, or exfiltration. The environment variable is specific to the application, and reading a JSON metadata file is benign. There is no evidence of malicious intent or supply-chain attack.
</details>
<evidence>
</evidence>
<summary>Patch adds environment variable override for resources path.</summary>
</security_assessment>

[13/14] Reviewing hermes-desktop...
+ Reviewed system-electron-resources.patch. Status: SAFE -- Patch adds environment variable override for resources path.
LLM auditresponse for hermes-desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This script is a standard wrapper for an Electron-based application (hermes-agent-desktop). It reads a user-specific flags configuration file, sets environment variables to indicate the packaged runtime and resources path, detects an available Chrome/Chromium browser for agent tools, and then launches the Electron executable (`/usr/bin/electron42`) with the application bundle (`app.asar`). All operations are routine for an AUR package: sourcing user config, setting environment variables, and executing the main application binary. No suspicious network requests, code downloads, obfuscated commands, or unexpected system modifications are present. The script does not exhibit any signs of a supply-chain attack.
</details>
<evidence>
</evidence>
<summary>Standard Electron wrapper, no malicious behavior.</summary>
</security_assessment>

[14/14] Reviewing ...
+ Reviewed hermes-desktop. Status: SAFE -- Standard Electron wrapper, no malicious behavior.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 63,098
  Completion Tokens: 9,176
  Total Tokens: 72,274
  Total Cost: $0.006842
  Execution Time: 86.20 seconds

Final Status: SAFE


No issues found.
