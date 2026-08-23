---
package: comfy-desktop
pkgver: 1.0.41
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: ab8f04a045309f11c3e319d8a061c88f7bc8df51
prompt_tokens: 52949
completion_tokens: 6956
total_tokens: 59905
cost: 0.00382846086
execution_time: 230.56
files_reviewed: 12
files_skipped: 0
files_unauditable: 13
unpinned_sources: 0
date: 2026-08-22T22:44:32Z
file_verdicts:
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD, no malicious indicators found.
  - file: comfy-desktop.desktop
    status: safe
    summary: No security issues in this .desktop file.
  - file: src/comfy-desktop/e2e/cancel-flow.test.ts
    status: safe
    summary: Standard test file, no malicious behavior.
  - file: src/comfy-desktop/e2e/chooser.test.ts
    status: safe
    summary: Legitimate test file with no malicious behavior.
  - file: src/comfy-desktop/e2e/copy-update-destination.test.ts
    status: safe
    summary: Standard e2e test file, no security concerns.
  - file: src/comfy-desktop/e2e/comfybuilder-models.test.ts
    status: safe
    summary: Clean E2E test file, no malicious code.
  - file: src/comfy-desktop/e2e/comfybuilder-launch.test.ts
    status: safe
    summary: Legitimate Playwright test for launcher behavior; no security issues found.
  - file: src/comfy-desktop/e2e/dashboard-delete-flow.test.ts
    status: safe
    summary: Standard E2E test file, no malicious behavior.
  - file: src/comfy-desktop/e2e/deep-links.test.ts
    status: safe
    summary: Legitimate test file for deep link routing, no security issues.
  - file: src/comfy-desktop/e2e/devhooks-smoke.test.ts
    status: safe
    summary: Standard E2E test file, no security issues.
  - file: src/comfy-desktop/e2e/dismiss-error.test.ts
    status: safe
    summary: Safe test file with no malicious activity.
  - file: src/comfy-desktop/e2e/downloads-shelf.test.ts
    status: safe
    summary: Standard test file; no security concerns.
---

Cloning https://aur.archlinux.org/comfy-desktop.git...
Cloned comfy-desktop
Analyzing comfy-desktop AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains no top-level code execution, no `pkgver()` function, and no dangerous commands in the global scope. The `source` array fetches from the official GitHub repo via a pinned tag and includes a local `.desktop` file with a valid checksum. The commands `makepkg --nobuild --nodeps --noprepare` and `makepkg --printsrcinfo` will only source the PKGBUILD and download/extract the sources. The `build()` and `package()` functions (which contain normal build/install steps) are **not** executed during this step. There is no evidence of malicious code that would run during sourcing or source fetching.
</details>
<summary>No risks in top-level code or source fetching.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No risks in top-level code or source fetching.
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Running makepkg --printsrcinfo to get source files for agent...
makepkg --printsrcinfo successful
Reviewing required files...
[0/2] Reviewing PKGBUILD...
[0/2] Reviewing PKGBUILD, comfy-desktop.desktop...
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard Arch Linux packaging practices for an Electron-based desktop application. The source is pinned to a specific tag from the official GitHub repository (`https://github.com/Comfy-Org/Comfy-Desktop#tag=v1.0.41`) with a SHA256 checksum for the git checkout. The build process uses `pnpm install --frozen-lockfile` and `pnpm run build:linux`, which are typical for Node.js/Electron projects. The `package()` function installs built binaries, architecture-specific cleanup of 7zip binaries, a symlink, icons, a desktop file, and the license – all into expected package directories (`/opt`, `/usr/bin`, `/usr/share/icons`, `/usr/share/applications`, `/usr/share/licenses`). There are no suspicious network requests, obfuscated code, dangerous commands (eval, base64, curl, wget), or modifications to system files outside the application scope. The file is a legitimate AUR package with no evidence of malicious or supply-chain attack behavior.
</details>
<summary>Standard PKGBUILD, no malicious indicators found.</summary>
</security_assessment>

[1/2] Reviewing comfy-desktop.desktop...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD, no malicious indicators found.
LLM auditresponse for comfy-desktop.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.desktop` file used to register an application in the desktop environment. It contains only metadata such as the application name, icon, and the command to execute (`comfy-desktop %U`). There are no network requests, obfuscated code, file operations, or any other suspicious activity. The file is entirely benign and follows typical packaging conventions.
</details>
<summary>No security issues in this .desktop file.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed comfy-desktop.desktop. Status: SAFE -- No security issues in this .desktop file.
Reviewed all required files.
Deciding which files to review next...
Note: 13 compiled/archived file(s) cannot be audited as text and were not reviewed (src/comfy-desktop/resources/dmg/background.tiff, src/comfy-desktop/src/renderer/public/install-showcase-scene/Assets/Eat It - Dance [WanAnimate]2.webm, src/comfy-desktop/src/renderer/public/install-showcase-scene/Assets/clouds.webm and 10 more). For a package that ships prebuilt binaries, the audit covers the packaging, not the payload.
Note: 903 files available for selection; offering the 50 highest-priority to the model. 796 lower-priority file(s) were not offered.
File selection failed (LLM response message content is empty or missing. Raw response: ChatCompletion(id='gen-1787438623-rw3y0IHEjJO8mBfA6620', choices=[Choice(finish_reason='stop', index=0, logprobs=None, message=ChatCompletionMessage(content=None, refusal=None, role='assistant', annotations=None, audio=None, function_call=None, tool_calls=None, reasoning='We are tasked with selecting up to 10 files from the listing that are most likely to contain malicious or dangerous code. The already reviewed files are PKGBUILD and comfy-desktop.desktop. The listing contains many e2e test files under src/comfy-desktop/e2e/. These are e2e test files, which are test-suite scripts that run only during check() or CI, not during build or install. Therefore, they are low priority. The code review budget is limited, so we should prioritize files that execute at build/install time. The only files that might be relevant are those that are not e2e tests. However, the entire listing appears to be e2e test files (all paths start with src/comfy-desktop/e2e/). There are no build scripts, install hooks, patches, source code, etc. The listing is very homogeneous. Since PKGBUILD and the .desktop file have already been reviewed, and the remaining files are all e2e tests, they are not a priority. The e2e tests are test suite files, they run only during check(), not during normal build/install. They are also likely written by the upstream developers and not modified by the AUR maintainer. Therefore, none of these files warrant a review slot. The budget is better spent elsewhere, but since we must select from this listing, we should select none or very few. However, the instruction says "choose UP TO 10 files from the listing below that are MOST likely to contain malicious or dangerous code." Given that all are e2e tests, they are all similarly low risk. But we need to comply with the task: we must return a list of file paths, one per line, with no other text. If we think none are suspicious, we might return an empty list? But the instruction says "Respond with a list of file paths, ... (truncated)); using highest-priority files instead

Note: file selection did not complete (LLM response message content is empty or missing. Raw response: ChatCompletion(id='gen-1787438623-rw3y0IHEjJO8mBfA6620', choices=[Choice(finish_reason='stop', index=0, logprobs=None, message=ChatCompletionMessage(content=None, refusal=None, role='assistant', annotations=None, audio=None, function_call=None, tool_calls=None, reasoning='We are tasked with selecting up to 10 files from the listing that are most likely to contain malicious or dangerous code. The already reviewed files are PKGBUILD and comfy-desktop.desktop. The listing contains many e2e test files under src/comfy-desktop/e2e/. These are e2e test files, which are test-suite scripts that run only during check() or CI, not during build or install. Therefore, they are low priority. The code review budget is limited, so we should prioritize files that execute at build/install time. The only files that might be relevant are those that are not e2e tests. However, the entire listing appears to be e2e test files (all paths start with src/comfy-desktop/e2e/). There are no build scripts, install hooks, patches, source code, etc. The listing is very homogeneous. Since PKGBUILD and the .desktop file have already been reviewed, and the remaining files are all e2e tests, they are not a priority. The e2e tests are test suite files, they run only during check(), not during normal build/install. They are also likely written by the upstream developers and not modified by the AUR maintainer. Therefore, none of these files warrant a review slot. The budget is better spent elsewhere, but since we must select from this listing, we should select none or very few. However, the instruction says "choose UP TO 10 files from the listing below that are MOST likely to contain malicious or dangerous code." Given that all are e2e tests, they are all similarly low risk. But we need to comply with the task: we must return a list of file paths, one per line, with no other text. If we think none are suspicious, we might return an empty list? But the instruction says "Respond with a list of file paths, ... (truncated)). Falling back to the 10 highest-priority file(s) by ranking.
Decided to review 10 additional files: src/comfy-desktop/e2e/cancel-flow.test.ts, src/comfy-desktop/e2e/chooser.test.ts, src/comfy-desktop/e2e/comfybuilder-launch.test.ts, src/comfy-desktop/e2e/comfybuilder-models.test.ts, src/comfy-desktop/e2e/copy-update-destination.test.ts, src/comfy-desktop/e2e/dashboard-delete-flow.test.ts, src/comfy-desktop/e2e/deep-links.test.ts, src/comfy-desktop/e2e/devhooks-smoke.test.ts, src/comfy-desktop/e2e/dismiss-error.test.ts, src/comfy-desktop/e2e/downloads-shelf.test.ts
Reviewing additional files...
Reviewing additional files...
[0/10] Reviewing src/comfy-desktop/e2e/chooser.test.ts...
[0/10] Reviewing src/comfy-desktop/e2e/chooser.test.ts, src/comfy-desktop/e2e/cancel-flow.test.ts...
[0/10] Reviewing src/comfy-desktop/e2e/chooser.test.ts, src/comfy-desktop/e2e/cancel-flow.test.ts, src/comfy-desktop/e2e/comfybuilder-launch.test.ts...
LLM auditresponse for cancel-flow.test.ts:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a Playwright end-to-end test for the ComfyUI Desktop application. It sets up a temporary test environment, launches the app, and exercises UI flows related to cancelling in-flight operations. The code uses standard test infrastructure: `window.__e2eRenderer` functions exposed by the application for testing, IPC invocations, and `seedRunningSession`/`clearRunningSessions` dev hooks. No file writes beyond the test's own temporary directory. No network requests, obfuscated code, or system modifications outside the test scope. The operations are entirely within the application's test harness and pose no supply-chain risk.
</details>
<summary>Standard test file, no malicious behavior.</summary>
</security_assessment>

[0/10] Reviewing src/comfy-desktop/e2e/chooser.test.ts, src/comfy-desktop/e2e/cancel-flow.test.ts, src/comfy-desktop/e2e/comfybuilder-launch.test.ts, src/comfy-desktop/e2e/comfybuilder-models.test.ts...
[1/10] Reviewing src/comfy-desktop/e2e/chooser.test.ts, src/comfy-desktop/e2e/comfybuilder-launch.test.ts, src/comfy-desktop/e2e/comfybuilder-models.test.ts...
+ Reviewed src/comfy-desktop/e2e/cancel-flow.test.ts. Status: SAFE -- Standard test file, no malicious behavior.
LLM auditresponse for chooser.test.ts:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a Playwright E2E test suite for the Comfy Desktop Electron application. It contains only standard test code: launching the app, interacting with UI elements, and asserting behaviors. There are no suspicious network requests (no `curl`, `wget`, or unexpected HTTP calls), no obfuscated or encoded commands, no file system operations outside the application's scope, and no attempts to exfiltrate data. The `evalWithRetry` helper evaluates JavaScript in the Electron main process, but the code it runs is static and part of the test framework — it does not execute untrusted or dynamically constructed input. Everything in this file is consistent with legitimate application testing practices.
</details>
<summary>Legitimate test file with no malicious behavior.</summary>
</security_assessment>

[1/10] Reviewing src/comfy-desktop/e2e/chooser.test.ts, src/comfy-desktop/e2e/comfybuilder-launch.test.ts, src/comfy-desktop/e2e/comfybuilder-models.test.ts, src/comfy-desktop/e2e/copy-update-destination.test.ts...
[2/10] Reviewing src/comfy-desktop/e2e/comfybuilder-launch.test.ts, src/comfy-desktop/e2e/comfybuilder-models.test.ts, src/comfy-desktop/e2e/copy-update-destination.test.ts...
+ Reviewed src/comfy-desktop/e2e/chooser.test.ts. Status: SAFE -- Legitimate test file with no malicious behavior.
LLM auditresponse for copy-update-destination.test.ts:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard Playwright e2e test for a desktop application (ComfyUI launcher). It uses Node.js built-in modules (`os`, `path`, `fs/promises`) and Playwright test utilities to simulate copy/update operations and verify that the correct IPC call (`open-install-window`) is made with the expected `newInstallationId`. There are no network requests, obfuscated code, dangerous commands, or any behavior that deviates from legitimate testing practices. The code does not exfiltrate data, download or execute external code, or modify system files outside the test environment. It is consistent with typical AUR package testing for an Electron-based application.
</details>
<summary>Standard e2e test file, no security concerns.</summary>
</security_assessment>

[2/10] Reviewing src/comfy-desktop/e2e/comfybuilder-launch.test.ts, src/comfy-desktop/e2e/comfybuilder-models.test.ts, src/comfy-desktop/e2e/copy-update-destination.test.ts, src/comfy-desktop/e2e/dashboard-delete-flow.test.ts...
[3/10] Reviewing src/comfy-desktop/e2e/comfybuilder-launch.test.ts, src/comfy-desktop/e2e/comfybuilder-models.test.ts, src/comfy-desktop/e2e/dashboard-delete-flow.test.ts...
+ Reviewed src/comfy-desktop/e2e/copy-update-destination.test.ts. Status: SAFE -- Standard e2e test file, no security concerns.
LLM auditresponse for comfybuilder-models.test.ts:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard Playwright E2E test file for the comfybuilder application. It sets up a local HTTP server on 127.0.0.1 to serve deterministic test payloads, creates temporary directories for isolated install paths, and tests the model staging logic (download, checksum verification, file placement). All network requests are directed to `localhost`, no external or unexpected destinations are contacted. File operations are confined to `os.tmpdir()` and cleaned up in `afterAll`. The manifest is injected via an environment variable (`COMFY_BUILDER_MODELS_MANIFEST`), which is a common testing seam. There is no obfuscation, no `eval`, no base64 decoding, no execution of fetched code, and no exfiltration of data. The code serves only the purpose of verifying the application's model staging behavior in a hermetic, deterministic manner.
</details>
<summary>Clean E2E test file, no malicious code.</summary>
</security_assessment>

[4/10] Reviewing src/comfy-desktop/e2e/comfybuilder-launch.test.ts, src/comfy-desktop/e2e/dashboard-delete-flow.test.ts...
+ Reviewed src/comfy-desktop/e2e/comfybuilder-models.test.ts. Status: SAFE -- Clean E2E test file, no malicious code.
[4/10] Reviewing src/comfy-desktop/e2e/comfybuilder-launch.test.ts, src/comfy-desktop/e2e/dashboard-delete-flow.test.ts, src/comfy-desktop/e2e/deep-links.test.ts...
LLM auditresponse for comfybuilder-launch.test.ts:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a Playwright end-to-end test for the ComfyBuilder plugin's launcher behavior. It seeds mock installation records, creates temporary directories with fake venv Python stubs (a `#!/bin/sh\nexit 1` script so a launch attempt fails cleanly at the boot wait), and uses IPC visibility hooks to assert that clicking an installed tile triggers a `launch` action and that a failed tile shows an explanatory alert instead of the wizard. All file operations are confined to temporary `mkdtemp` directories that are cleaned up in `afterAll`. There are no network requests, no downloads, no obfuscated code, and no out-of-scope file access. The code is consistent with standard application testing and does not serve any purpose outside the test suite.

The test's use of `process.platform` guards and inline comments are normal developer practice. There is no evidence of supply-chain tampering, data exfiltration, or execution of unexpected code. The mocked Python script is intentionally written to exit immediately and is only used to simulate a failed boot — it is not a backdoor or reverse shell.
</details>
<summary>
Legitimate Playwright test for launcher behavior; no security issues found.</summary>
</security_assessment>

[4/10] Reviewing src/comfy-desktop/e2e/comfybuilder-launch.test.ts, src/comfy-desktop/e2e/dashboard-delete-flow.test.ts, src/comfy-desktop/e2e/deep-links.test.ts, src/comfy-desktop/e2e/devhooks-smoke.test.ts...
[5/10] Reviewing src/comfy-desktop/e2e/dashboard-delete-flow.test.ts, src/comfy-desktop/e2e/deep-links.test.ts, src/comfy-desktop/e2e/devhooks-smoke.test.ts...
+ Reviewed src/comfy-desktop/e2e/comfybuilder-launch.test.ts. Status: SAFE -- Legitimate Playwright test for launcher behavior; no security issues found.
LLM auditresponse for dashboard-delete-flow.test.ts:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is an end-to-end test file for the ComfyUI Desktop application, written using Playwright and TypeScript. It tests the dashboard delete flow by simulating user interactions (clicking kebab menu, selecting Delete, confirming the modal) and asserts expected behavior: the delete confirmation modal appears quickly without invoking an unnecessary IPC call (`get-detail-sections`), the tile disappears from the chooser, and the install directory is removed from disk.

The file performs only standard test operations: creating a temporary directory, writing a marker file (for test setup), removing the directory after tests, and interacting with the application via UI selectors and IPC hooks provided solely for testing. No network requests, code downloads, obfuscated commands, system configuration modifications, or data exfiltration are present. All imports are from standard Node.js modules, Playwright test utilities, and project-internal test support files. This file is consistent with normal packaging and testing practices and contains no indicators of malicious or dangerous behavior.
</details>
<summary>Standard E2E test file, no malicious behavior.</summary>
</security_assessment>

[5/10] Reviewing src/comfy-desktop/e2e/dashboard-delete-flow.test.ts, src/comfy-desktop/e2e/deep-links.test.ts, src/comfy-desktop/e2e/devhooks-smoke.test.ts, src/comfy-desktop/e2e/dismiss-error.test.ts...
[6/10] Reviewing src/comfy-desktop/e2e/deep-links.test.ts, src/comfy-desktop/e2e/devhooks-smoke.test.ts, src/comfy-desktop/e2e/dismiss-error.test.ts...
+ Reviewed src/comfy-desktop/e2e/dashboard-delete-flow.test.ts. Status: SAFE -- Standard E2E test file, no malicious behavior.
LLM auditresponse for deep-links.test.ts:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard test file for the `comfy-desktop` Electron application, using Playwright. It validates the behavior of deep link (`comfy://`) routing by simulating IPC calls and asserting expected popup triggers. The code imports standard Node.js modules (`os`, `path`, `fs/promises`) and application-specific test helpers. All operations are contained within temporary directories created via `mkdtemp` and cleaned up in `afterAll`. There are no obfuscated commands, external network requests, file exfiltration, or execution of untrusted downloaded code. The use of `ctx.app.evaluate` is a normal Playwright technique to send messages into the renderer process for testing purposes. No supply-chain attack indicators are present.
</details>
<summary>Legitimate test file for deep link routing, no security issues.</summary>
</security_assessment>

[6/10] Reviewing src/comfy-desktop/e2e/deep-links.test.ts, src/comfy-desktop/e2e/devhooks-smoke.test.ts, src/comfy-desktop/e2e/dismiss-error.test.ts, src/comfy-desktop/e2e/downloads-shelf.test.ts...
[7/10] Reviewing src/comfy-desktop/e2e/devhooks-smoke.test.ts, src/comfy-desktop/e2e/dismiss-error.test.ts, src/comfy-desktop/e2e/downloads-shelf.test.ts...
+ Reviewed src/comfy-desktop/e2e/deep-links.test.ts. Status: SAFE -- Legitimate test file for deep link routing, no security issues.
LLM auditresponse for devhooks-smoke.test.ts:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard Playwright test suite that verifies the functionality of development hooks in the application. It imports helper functions from a local module and calls them with example data (e.g., example.test URLs). There is no network request to an unexpected host, no obfuscation, no file system manipulation outside the test scope, and no execution of untrusted code. The content is entirely consistent with normal E2E testing practices.
</details>
<summary>Standard E2E test file, no security issues.</summary>
</security_assessment>

[8/10] Reviewing src/comfy-desktop/e2e/dismiss-error.test.ts, src/comfy-desktop/e2e/downloads-shelf.test.ts...
+ Reviewed src/comfy-desktop/e2e/devhooks-smoke.test.ts. Status: SAFE -- Standard E2E test file, no security issues.
LLM auditresponse for dismiss-error.test.ts:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a Playwright end-to-end test for the comfy-desktop application. It imports standard Node.js modules (os, path, fs/promises) and the application's own test utilities. It performs in-renderer store manipulation via `window.__e2eRenderer` helper methods—these are intentionally exposed test hooks, not injection vectors. There are no network requests, obfuscated payloads, dangerous shell commands, or attempts to access system files outside the application's scope. The test cleans up its temporary directory in `afterAll`. No malicious or supply-chain attack behavior is present.
</details>
<summary>Safe test file with no malicious activity.</summary>
</security_assessment>

[9/10] Reviewing src/comfy-desktop/e2e/downloads-shelf.test.ts...
+ Reviewed src/comfy-desktop/e2e/dismiss-error.test.ts. Status: SAFE -- Safe test file with no malicious activity.
LLM auditresponse for downloads-shelf.test.ts:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard Playwright test file for the comfy-desktop application's downloads tray UI. It imports internal test helpers and application modules, seeds download state via a dev hook, and checks UI element sizes, visibility, and aria-labels. There is no obfuscation, no network requests to unexpected hosts, no execution of downloaded code, and no system file manipulation. The file performs only in-process browser automation to validate the application's own UI behavior. No evidence of malicious or supply-chain attack activity.
</details>
<summary>
Standard test file; no security concerns.
</summary>
</security_assessment>

[10/10] Reviewing ...
+ Reviewed src/comfy-desktop/e2e/downloads-shelf.test.ts. Status: SAFE -- Standard test file; no security concerns.
Reviewed all additional files.
Reviewed additional files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 52,949
  Completion Tokens: 6,956
  Total Tokens: 59,905
  Total Cost: $0.003828
  Execution Time: 230.56 seconds

Final Status: SAFE


No issues found.
