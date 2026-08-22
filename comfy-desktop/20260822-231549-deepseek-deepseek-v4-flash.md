---
package: comfy-desktop
pkgver: 1.0.41
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: ab8f04a045309f11c3e319d8a061c88f7bc8df51
prompt_tokens: 52949
completion_tokens: 6960
total_tokens: 59909
cost: 0.00382891894
execution_time: 107.7
files_reviewed: 12
files_skipped: 0
files_unauditable: 13
unpinned_sources: 0
date: 2026-08-22T23:15:41Z
file_verdicts:
  - file: comfy-desktop.desktop
    status: safe
    summary: Standard desktop entry file, no suspicious content or behavior.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD building official Electron app from source.
  - file: src/comfy-desktop/e2e/cancel-flow.test.ts
    status: safe
    summary: Standard E2E test file, no malicious behavior.
  - file: src/comfy-desktop/e2e/chooser.test.ts
    status: safe
    summary: Standard E2E test file with no malicious behavior.
  - file: src/comfy-desktop/e2e/comfybuilder-launch.test.ts
    status: safe
    summary: Safe e2e test – no malicious code.
  - file: src/comfy-desktop/e2e/comfybuilder-models.test.ts
    status: safe
    summary: Standard E2E test, no malicious indicators.
  - file: src/comfy-desktop/e2e/dashboard-delete-flow.test.ts
    status: safe
    summary: Standard E2E test, no security issues.
  - file: src/comfy-desktop/e2e/copy-update-destination.test.ts
    status: safe
    summary: Test file, no malicious behavior.
  - file: src/comfy-desktop/e2e/deep-links.test.ts
    status: safe
    summary: Standard E2E test file, no malicious behavior.
  - file: src/comfy-desktop/e2e/devhooks-smoke.test.ts
    status: safe
    summary: Standard Playwright E2E test file, no security issues.
  - file: src/comfy-desktop/e2e/dismiss-error.test.ts
    status: safe
    summary: Standard E2E test file, no security issues found.
  - file: src/comfy-desktop/e2e/downloads-shelf.test.ts
    status: safe
    summary: Standard test file, no security issues.
---

Cloning https://aur.archlinux.org/comfy-desktop.git...
Cloned comfy-desktop
Analyzing comfy-desktop AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only static variable declarations and function definitions. There is no code execution at the global/top-level scope (no command substitutions, no `eval`, no inline calls to curl/wget, etc.). The `pkgver()` function is not defined, so nothing custom runs during version retrieval. The `source` array points to a pinned Git tag (`v1.0.41`) from the upstream GitHub repository and a local `.desktop` file, both standard references. Running `makepkg --nobuild --nodeps --noprepare` will only clone the Git repo and download the `.desktop` file; no malicious code is executed during this phase. The `build()` and `package()` functions (which contain the actual build logic) are not invoked with these flags, so any concerns there are out of scope for this narrow safety gate.
</details>
<summary>No code executes during sourcing; safe to fetch sources.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No code executes during sourcing; safe to fetch sources.
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Running makepkg --printsrcinfo to get source files for agent...
makepkg --printsrcinfo successful
Reviewing required files...
[0/2] Reviewing PKGBUILD...
[0/2] Reviewing PKGBUILD, comfy-desktop.desktop...
LLM auditresponse for comfy-desktop.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard desktop entry file for the Comfy Desktop application. It contains only standard metadata fields (Name, Exec, Terminal, Type, Icon, StartupWMClass, Comment, Categories) and performs no operations of any kind. There is no code execution, network activity, file manipulation, or obfuscation. The Exec line simply launches the `comfy-desktop` binary with any file arguments, which is the expected behavior for a desktop entry. No security concerns are present.
</details>
<summary>Standard desktop entry file, no suspicious content or behavior.</summary>
</security_assessment>

[1/2] Reviewing PKGBUILD...
+ Reviewed comfy-desktop.desktop. Status: SAFE -- Standard desktop entry file, no suspicious content or behavior.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD builds the official Comfy Desktop application from its public GitHub repository using a pinned version tag with a checksum. The build process uses standard commands: `pnpm install` (with `--frozen-lockfile` for deterministic dependencies) and `pnpm run build:linux`. The packaging step copies the built artifacts into `/opt`, creates a symlink, installs icons, a desktop file, and a license file. There are no suspicious network requests (beyond the expected git clone of the package source), no obfuscated code, no base64 decoding, and no unexpected system modifications. The cleanup of 7zip binaries is scoped carefully to the build output directory and respects the target architecture. No evidence of exfiltration, backdoors, or injected malicious code was found. This is a perfectly normal PKGBUILD for an Electron-based application.
</details>
<summary>Standard PKGBUILD building official Electron app from source.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD building official Electron app from source.
Reviewed all required files.
Deciding which files to review next...
Note: 13 compiled/archived file(s) cannot be audited as text and were not reviewed (src/comfy-desktop/resources/dmg/background.tiff, src/comfy-desktop/src/renderer/public/install-showcase-scene/Assets/Eat It - Dance [WanAnimate]2.webm, src/comfy-desktop/src/renderer/public/install-showcase-scene/Assets/clouds.webm and 10 more). For a package that ships prebuilt binaries, the audit covers the packaging, not the payload.
Note: 903 files available for selection; offering the 50 highest-priority to the model. 796 lower-priority file(s) were not offered.
File selection failed (LLM response message content is empty or missing. Raw response: ChatCompletion(id='gen-1787440489-8Qw9MTVWubhbVpuiJvxI', choices=[Choice(finish_reason='stop', index=0, logprobs=None, message=ChatCompletionMessage(content=None, refusal=None, role='assistant', annotations=None, audio=None, function_call=None, tool_calls=None, reasoning='We are asked to choose UP TO 10 files from the listing that are most likely to contain malicious or dangerous code. The listing consists entirely of files under src/comfy-desktop/e2e/ — these are end-to-end test files written in TypeScript (.ts). They are test scripts that run during the check() phase of the PKGBUILD (if enabled) or during development, but NOT during the normal build or install. The instructions say to "DEPRIORITIZE test-suite, example, and developer-maintenance scripts. They run only under check(), CI, or manual developer use, NOT during a normal build or install." So these files are essentially low-value for review because they are not executed during a typical `makepkg` build/install. However, the user has already reviewed PKGBUILD and the desktop file. The remaining files are all e2e tests. There are no build scripts, install hooks, patches, or source code files outside of e2e. The package appears to be a complex application, but the AUR maintainer likely only provides the PKGBUILD and the desktop file; the rest is upstream source code that is downloaded as an archive. The listing shows only e2e files under src/comfy-desktop/e2e/. The actual source code (src/main, src/renderer, etc.) is not listed, only e2e tests. Given the instructions, these e2e tests are not high-priority; they run only during testing. However, the instructions also say: "If fewer qualify, return fewer -- returning 3 useful paths beats padding to 10 with files you already expect to be clean." Since the only files available are e2e tests, and the user has already reviewed PKGBUILD and the desktop file, there may be nothing else worth reviewing. But the listing includes many files. Could any of these e2e tests... (truncated)); using highest-priority files instead

Note: file selection did not complete (LLM response message content is empty or missing. Raw response: ChatCompletion(id='gen-1787440489-8Qw9MTVWubhbVpuiJvxI', choices=[Choice(finish_reason='stop', index=0, logprobs=None, message=ChatCompletionMessage(content=None, refusal=None, role='assistant', annotations=None, audio=None, function_call=None, tool_calls=None, reasoning='We are asked to choose UP TO 10 files from the listing that are most likely to contain malicious or dangerous code. The listing consists entirely of files under src/comfy-desktop/e2e/ — these are end-to-end test files written in TypeScript (.ts). They are test scripts that run during the check() phase of the PKGBUILD (if enabled) or during development, but NOT during the normal build or install. The instructions say to "DEPRIORITIZE test-suite, example, and developer-maintenance scripts. They run only under check(), CI, or manual developer use, NOT during a normal build or install." So these files are essentially low-value for review because they are not executed during a typical `makepkg` build/install. However, the user has already reviewed PKGBUILD and the desktop file. The remaining files are all e2e tests. There are no build scripts, install hooks, patches, or source code files outside of e2e. The package appears to be a complex application, but the AUR maintainer likely only provides the PKGBUILD and the desktop file; the rest is upstream source code that is downloaded as an archive. The listing shows only e2e files under src/comfy-desktop/e2e/. The actual source code (src/main, src/renderer, etc.) is not listed, only e2e tests. Given the instructions, these e2e tests are not high-priority; they run only during testing. However, the instructions also say: "If fewer qualify, return fewer -- returning 3 useful paths beats padding to 10 with files you already expect to be clean." Since the only files available are e2e tests, and the user has already reviewed PKGBUILD and the desktop file, there may be nothing else worth reviewing. But the listing includes many files. Could any of these e2e tests... (truncated)). Falling back to the 10 highest-priority file(s) by ranking.
Decided to review 10 additional files: src/comfy-desktop/e2e/cancel-flow.test.ts, src/comfy-desktop/e2e/chooser.test.ts, src/comfy-desktop/e2e/comfybuilder-launch.test.ts, src/comfy-desktop/e2e/comfybuilder-models.test.ts, src/comfy-desktop/e2e/copy-update-destination.test.ts, src/comfy-desktop/e2e/dashboard-delete-flow.test.ts, src/comfy-desktop/e2e/deep-links.test.ts, src/comfy-desktop/e2e/devhooks-smoke.test.ts, src/comfy-desktop/e2e/dismiss-error.test.ts, src/comfy-desktop/e2e/downloads-shelf.test.ts
Reviewing additional files...
Reviewing additional files...
[0/10] Reviewing src/comfy-desktop/e2e/cancel-flow.test.ts...
[0/10] Reviewing src/comfy-desktop/e2e/cancel-flow.test.ts, src/comfy-desktop/e2e/chooser.test.ts...
[0/10] Reviewing src/comfy-desktop/e2e/cancel-flow.test.ts, src/comfy-desktop/e2e/chooser.test.ts, src/comfy-desktop/e2e/comfybuilder-launch.test.ts...
LLM auditresponse for cancel-flow.test.ts:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a Playwright E2E test file for the ComfyUI Desktop application. It tests the cancel-flow UI logic (ProgressModal, useActionGuard) by seeding in-flight operations and verifying IPC invocations (`cancel-operation`, `stop-comfyui`). The code uses standard Node.js APIs (`fs`, `os`, `path`) for temporary test directories and marker files. All operations are confined to the application's own test infrastructure (`__e2eRenderer` hooks, `devHooks` helpers). There are no suspicious network requests, obfuscated code, dangerous command execution, or exfiltration of data. The file is consistent with normal upstream testing practices.
</details>
<summary>Standard E2E test file, no malicious behavior.</summary>
</security_assessment>

[0/10] Reviewing src/comfy-desktop/e2e/cancel-flow.test.ts, src/comfy-desktop/e2e/chooser.test.ts, src/comfy-desktop/e2e/comfybuilder-launch.test.ts, src/comfy-desktop/e2e/comfybuilder-models.test.ts...
[1/10] Reviewing src/comfy-desktop/e2e/chooser.test.ts, src/comfy-desktop/e2e/comfybuilder-launch.test.ts, src/comfy-desktop/e2e/comfybuilder-models.test.ts...
+ Reviewed src/comfy-desktop/e2e/cancel-flow.test.ts. Status: SAFE -- Standard E2E test file, no malicious behavior.
LLM auditresponse for chooser.test.ts:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard E2E test suite for an Electron application, using Playwright. It launches the app, performs UI interactions (clicking tiles, opening menus), and asserts visibility of elements and popup webContents. No network requests, downloads, execution of external binaries, or manipulation of system files outside the application's scope are present. The `evalWithRetry` helper is a testing utility that retries `app.evaluate` calls and does not introduce any malicious behavior. There is no obfuscation, encoding, or suspicious command usage. The file is consistent with normal packaging and testing practices.
</details>
<summary>Standard E2E test file with no malicious behavior.</summary>
</security_assessment>

[2/10] Reviewing src/comfy-desktop/e2e/comfybuilder-launch.test.ts, src/comfy-desktop/e2e/comfybuilder-models.test.ts...
+ Reviewed src/comfy-desktop/e2e/chooser.test.ts. Status: SAFE -- Standard E2E test file with no malicious behavior.
[2/10] Reviewing src/comfy-desktop/e2e/comfybuilder-launch.test.ts, src/comfy-desktop/e2e/comfybuilder-models.test.ts, src/comfy-desktop/e2e/copy-update-destination.test.ts...
LLM auditresponse for comfybuilder-launch.test.ts:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a Playwright end-to-end test for an Electron application called "comfy-desktop" (or related). It performs standard UI testing operations: seeding temporary installation records on disk, launching the app under test, clicking on UI elements, and asserting expected behavior. All filesystem operations (creating temporary directories, writing dummy Python scripts, cleaning up) are confined to temporary directories and are typical for automated test setups. No network requests are made outside the local Playwright test harness. No obfuscation, encoded payloads, or dangerous shell commands appear. The only script written (`#!/bin/sh\nexit 1\n`) is a minimal stub that exits immediately, used to simulate a failed launch without leaking background processes.
</details>
<summary>Safe e2e test – no malicious code.</summary>
</security_assessment>

[3/10] Reviewing src/comfy-desktop/e2e/comfybuilder-models.test.ts, src/comfy-desktop/e2e/copy-update-destination.test.ts...
+ Reviewed src/comfy-desktop/e2e/comfybuilder-launch.test.ts. Status: SAFE -- Safe e2e test – no malicious code.
[3/10] Reviewing src/comfy-desktop/e2e/comfybuilder-models.test.ts, src/comfy-desktop/e2e/copy-update-destination.test.ts, src/comfy-desktop/e2e/dashboard-delete-flow.test.ts...
LLM auditresponse for comfybuilder-models.test.ts:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard Playwright E2E test file for verifying the model staging logic of an Electron application. It sets up a local HTTP server on `127.0.0.1` serving fixed byte buffers, writes manifest files to temporary directories, and uses the application's own `__e2e` hook to invoke the real staging code. All operations are confined to the test environment (temp directories, localhost, environment variables). Cleanup (`afterAll`) removes temporary files and stops the server. There is no external network destination, no obfuscated code, no dangerous commands (`eval`, `curl`, `wget`), and no deviation from normal testing patterns. The file is safe.
</details>
<summary>Standard E2E test, no malicious indicators.</summary>
</security_assessment>

[4/10] Reviewing src/comfy-desktop/e2e/copy-update-destination.test.ts, src/comfy-desktop/e2e/dashboard-delete-flow.test.ts...
+ Reviewed src/comfy-desktop/e2e/comfybuilder-models.test.ts. Status: SAFE -- Standard E2E test, no malicious indicators.
[4/10] Reviewing src/comfy-desktop/e2e/copy-update-destination.test.ts, src/comfy-desktop/e2e/dashboard-delete-flow.test.ts, src/comfy-desktop/e2e/deep-links.test.ts...
LLM auditresponse for dashboard-delete-flow.test.ts:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard Playwright E2E test file that validates a dashboard delete flow in a desktop application. It creates a temporary directory with a marker file, launches the application with test-only settings, and asserts UI behavior via test IDs. All operations are confined to the test environment (temporary directory, application test hooks) and follow normal testing practices. No network requests, obfuscated code, dangerous commands, or system modifications outside the test scope are present. The file is consistent with legitimate test infrastructure.
</details>
<summary>Standard E2E test, no security issues.</summary>
</security_assessment>

[5/10] Reviewing src/comfy-desktop/e2e/copy-update-destination.test.ts, src/comfy-desktop/e2e/deep-links.test.ts...
+ Reviewed src/comfy-desktop/e2e/dashboard-delete-flow.test.ts. Status: SAFE -- Standard E2E test, no security issues.
[5/10] Reviewing src/comfy-desktop/e2e/copy-update-destination.test.ts, src/comfy-desktop/e2e/deep-links.test.ts, src/comfy-desktop/e2e/devhooks-smoke.test.ts...
LLM auditresponse for copy-update-destination.test.ts:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a legitimate Playwright end-to-end test file for the comfy-desktop application. It creates temporary directories for test isolation, launches the app with controlled settings, and drives synthetic progress payloads through a renderer test hook (`__e2eRenderer.injectProgressSuccess`) to verify that the `open-install-window` IPC is correctly invoked with the expected `newInstallationId`. All file operations are confined to temporary directories created with `mkdtemp` and cleaned up after the test suite. No unusual network activity, obfuscation, or data exfiltration is present — the code is characteristic of standard test infrastructure and poses no supply-chain risk.
</details>
<summary>Test file, no malicious behavior.</summary>
</security_assessment>

[5/10] Reviewing src/comfy-desktop/e2e/copy-update-destination.test.ts, src/comfy-desktop/e2e/deep-links.test.ts, src/comfy-desktop/e2e/devhooks-smoke.test.ts, src/comfy-desktop/e2e/dismiss-error.test.ts...
[6/10] Reviewing src/comfy-desktop/e2e/deep-links.test.ts, src/comfy-desktop/e2e/devhooks-smoke.test.ts, src/comfy-desktop/e2e/dismiss-error.test.ts...
+ Reviewed src/comfy-desktop/e2e/copy-update-destination.test.ts. Status: SAFE -- Test file, no malicious behavior.
LLM auditresponse for deep-links.test.ts:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard Playwright end-to-end test file for the application's deep link functionality. It creates temporary directories, writes a marker file, launches the application with test settings, and verifies IPC behavior when deep link payloads are replayed. All operations are confined to the test environment and follow normal testing patterns. There is no evidence of malicious code such as data exfiltration, unauthorized network requests, obfuscated commands, or system modifications outside the test scope.
</details>
<summary>Standard E2E test file, no malicious behavior.</summary>
</security_assessment>

[7/10] Reviewing src/comfy-desktop/e2e/devhooks-smoke.test.ts, src/comfy-desktop/e2e/dismiss-error.test.ts...
+ Reviewed src/comfy-desktop/e2e/deep-links.test.ts. Status: SAFE -- Standard E2E test file, no malicious behavior.
[7/10] Reviewing src/comfy-desktop/e2e/devhooks-smoke.test.ts, src/comfy-desktop/e2e/dismiss-error.test.ts, src/comfy-desktop/e2e/downloads-shelf.test.ts...
LLM auditresponse for devhooks-smoke.test.ts:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard Playwright test file for end-to-end testing of the comfy-desktop application. It imports helper functions from a local module (`./support/devHooks`) and uses Playwright test hooks to verify that developer bridge hooks work correctly. All network destinations referenced are example domains (e.g., `https://example.test/model.safetensors`), which are safe test values. There is no obfuscation, no execution of untrusted code, no file operations outside normal test scaffolding, and no attempts to exfiltrate data or download executable code from unexpected sources. The file performs purely functional testing of the application's internal dev hooks.
</details>
<summary>Standard Playwright E2E test file, no security issues.</summary>
</security_assessment>

[8/10] Reviewing src/comfy-desktop/e2e/dismiss-error.test.ts, src/comfy-desktop/e2e/downloads-shelf.test.ts...
+ Reviewed src/comfy-desktop/e2e/devhooks-smoke.test.ts. Status: SAFE -- Standard Playwright E2E test file, no security issues.
LLM auditresponse for dismiss-error.test.ts:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard Playwright E2E test file for an Electron application. It uses Node.js built-in modules (`os`, `path`, `fs/promises`) to create a temporary directory, write a marker file, and clean up after the test. All operations are confined to a temporary directory created via `mkdtemp`. The test seeds an error state into the renderer process via `evaluate` to simulate a crash scenario, then verifies the UI behavior (kebab menu, dismiss action). There are no network requests, no obfuscated code, no dangerous system commands, and no data exfiltration. The test is entirely benign and follows standard testing practices.
</details>
<summary>Standard E2E test file, no security issues found.</summary>
</security_assessment>

[9/10] Reviewing src/comfy-desktop/e2e/downloads-shelf.test.ts...
+ Reviewed src/comfy-desktop/e2e/dismiss-error.test.ts. Status: SAFE -- Standard E2E test file, no security issues found.
LLM auditresponse for downloads-shelf.test.ts:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard Playwright test file for an Electron application (ComfyUI Desktop). It contains only test logic: seeding dummy download data, opening UI popups, asserting on DOM element attributes, sizes, and presence. All URLs used (e.g., `https://example.test/`) are reserved test domains. The `evaluate` calls are normal Playwright operations to read DOM state for assertions. There is no obfuscated code, no unexpected network requests, no file system modifications, no execution of untrusted code, and no exfiltration of data. The file is part of the upstream application's test suite and presents no supply-chain risk.
</details>
<summary>Standard test file, no security issues.</summary>
</security_assessment>

[10/10] Reviewing ...
+ Reviewed src/comfy-desktop/e2e/downloads-shelf.test.ts. Status: SAFE -- Standard test file, no security issues.
Reviewed all additional files.
Reviewed additional files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 52,949
  Completion Tokens: 6,960
  Total Tokens: 59,909
  Total Cost: $0.003829
  Execution Time: 107.70 seconds

Final Status: SAFE


No issues found.
