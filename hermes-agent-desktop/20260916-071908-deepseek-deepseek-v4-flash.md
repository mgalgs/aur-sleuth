---
package: hermes-agent-desktop
pkgver: 0.21.3
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 171a316e053e9c4b28731ccb1aa63b1168550d3a
prompt_tokens: 63385
completion_tokens: 20870
total_tokens: 84255
cost: 0.009314705750
execution_time: 260.91
files_reviewed: 14
files_skipped: 0
maintainer_files: 14
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-16T07:19:07Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard .gitignore file, no security issues.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR package metadata with pinned sources and no suspicious behavior.
  - file: LICENSE
    status: safe
    summary: Plain license file, no security concerns.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD with pinned sources and no anomalies.
  - file: hermes-desktop
    status: safe
    summary: Standard Electron launcher wrapper; no malicious or suspicious behavior detected.
  - file: fix-voice-prefs-storage-spy.patch
    status: safe
    summary: Benign test-compatibility patch; no malicious behavior found.
  - file: launcher.test.cjs
    status: safe
    summary: Test-only code; no malicious behavior; safe.
  - file: pin-packaged-runtime.patch
    status: safe
    summary: Patch pins runtime to package-managed commit; no malicious behavior found.
  - file: runtime-policy.patch
    status: safe
    summary: Legitimate desktop package runtime policy patch; no malicious behavior.
  - file: packaged-bootstrap.patch
    status: safe
    summary: Legitimate package-manager-aware runtime bootstrap; no malicious behavior detected.
  - file: runtime.test.cjs
    status: safe
    summary: Legitimate integration test suite; no malicious behavior detected.
  - file: runtime-policy.test.py
    status: safe
    summary: Legitimate update-policy regression tests; no malicious or dangerous behavior found.
  - file: system-electron-resources.patch
    status: safe
    summary: Benign packaging patch adding an optional resources path for install stamp lookup.
  - file: system-browser.patch
    status: safe
    summary: Benign packaging patch; skip-browser flag for distro-managed runtime.
---

Materializing hermes-agent-desktop from local mirror...
Materialized hermes-agent-desktop
Analyzing hermes-agent-desktop AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
Running `makepkg --printsrcinfo` only sources the PKGBUILD's global scope. The top-level code in this file consists solely of variable assignments (package metadata, sources, checksums) and function definitions (`_extract_dir()`, `_set_npm_env()`). Function bodies are not executed during sourcing. No command substitutions, external process executions, or data exfiltration occur at global scope. All potentially significant operations (patching, npm install, building, packaging) are confined to `prepare()`, `build()`, `check()`, and `package()` functions, which are NOT invoked by `--printsrcinfo`. Therefore, no malicious code executes during this step.
</details>
<evidence>
</evidence>
<summary>No dangerous top-level code execution.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous top-level code execution.
Reviewing the 14 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/14] Reviewing .gitignore...
[0/14] Reviewing .gitignore, LICENSE...
[0/14] Reviewing .gitignore, LICENSE, .SRCINFO...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard `.gitignore` for an AUR package repository. It contains only pattern-based ignore entries for common archive and package file types (`.tar.gz`, `.tgz`, `.zip`, `.pkg.tar.*`, `.src.tar.*`). There is no executable code, no network requests, no obfuscation, and no deviation from typical packaging practices. No security concerns are present.
</details>
<evidence></evidence>
<summary>Standard .gitignore file, no security issues.</summary>
</security_assessment>

[0/14] Reviewing .gitignore, LICENSE, .SRCINFO, PKGBUILD...
[1/14] Reviewing LICENSE, .SRCINFO, PKGBUILD...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore file, no security issues.
LLM auditresponse for .SRCINFO:
 <security_assessment>
<decision>SAFE</decision>
<details>
This is a standard AUR `.SRCINFO` metadata file for the `hermes-agent-desktop` package. It declares the package name, version, description, dependencies, and a set of source files with pinned SHA-256 checksums. The only remote source is the upstream GitHub tarball from the official `NousResearch/hermes-agent` repository, which is consistent with the package's stated purpose. The remaining sources are patches and test files local to the AUR repository, and every source entry has a concrete checksum.

No suspicious network requests, obfuscated commands, dangerous file operations, or executable payloads are present. The `depends` and `optdepends` entries are normal runtime dependencies for an Electron-based desktop application. The use of fixed checksums is a positive packaging practice, and there is nothing in this file that indicates a supply-chain attack or malicious behavior.
</details>
<evidence>
</evidence>
<summary>
Standard AUR package metadata with pinned sources and no suspicious behavior.</summary>
</security_assessment>

[1/14] Reviewing LICENSE, .SRCINFO, PKGBUILD, fix-voice-prefs-storage-spy.patch...
[2/14] Reviewing LICENSE, PKGBUILD, fix-voice-prefs-storage-spy.patch...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR package metadata with pinned sources and no suspicious behavior.
LLM auditresponse for LICENSE:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard BSD Zero Clause License text. It contains no executable code, no instructions, no network requests, no file operations, and no obfuscated content. It is purely a legal disclaimer and poses no security risk. There is no evidence of malicious or dangerous behavior.
</details>
<evidence></evidence>
<summary>Plain license file, no security concerns.</summary>
</security_assessment>

[3/14] Reviewing PKGBUILD, fix-voice-prefs-storage-spy.patch...
+ Reviewed LICENSE. Status: SAFE -- Plain license file, no security concerns.
[3/14] Reviewing PKGBUILD, fix-voice-prefs-storage-spy.patch, hermes-desktop...
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a standard Arch package that builds &quot;Hermes Agent Desktop&quot; from the official NousResearch GitHub repository. All source archives and patches are pinned by commit and have SHA256 checksums. The build process uses `npm ci` with `--ignore-scripts` (preventing arbitrary lifecycle code) and `--prefer-offline`. Native addons are rebuilt with `--offline` and the system&#39;s Electron runtime is used instead of downloading a bundled one. No unexpected network requests, obfuscated code, or file exfiltration is present. Patches are included in the source array with verified checksums and serve legitimate purposes (e.g., fixing a voice-prefs privacy issue). The `check()` function runs tests from the source. Everything is consistent with legitimate packaging practices.
</details>
<evidence></evidence>
<summary>Standard AUR PKGBUILD with pinned sources and no anomalies.</summary>
</security_assessment>

[3/14] Reviewing PKGBUILD, fix-voice-prefs-storage-spy.patch, hermes-desktop, launcher.test.cjs...
[4/14] Reviewing fix-voice-prefs-storage-spy.patch, hermes-desktop, launcher.test.cjs...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD with pinned sources and no anomalies.
LLM auditresponse for hermes-desktop:
 <security_assessment>
<decision>SAFE</decision>
<details>
This is a standard AUR package launcher script. It reads optional user configuration from a flags file, ignores comments and blank lines, and passes those flags to the Electron runtime. It also sets package-related environment variables and optionally selects an available local Chromium-based browser for the application to use. No network requests, downloads, obfuscated commands, or writes to sensitive system areas are present. The `exec /usr/bin/electron42 ... app.asar` invocation is the expected way to launch a packaged Electron application. No genuinely malicious or supply-chain behavior was found.
</details>
<evidence>
</evidence>
<summary>
Standard Electron launcher wrapper; no malicious or suspicious behavior detected.
</summary>
</security_assessment>

[4/14] Reviewing fix-voice-prefs-storage-spy.patch, hermes-desktop, launcher.test.cjs, packaged-bootstrap.patch...
[5/14] Reviewing fix-voice-prefs-storage-spy.patch, launcher.test.cjs, packaged-bootstrap.patch...
+ Reviewed hermes-desktop. Status: SAFE -- Standard Electron launcher wrapper; no malicious or suspicious behavior detected.
LLM auditresponse for fix-voice-prefs-storage-spy.patch:
 <security_assessment>
<decision>SAFE</decision>
<details>
This patch makes a small, legitimate change to a unit test in the upstream project. It introduces a `storageMethods` helper that resolves whether `localStorage.setItem` lives as an own property on the object (jsdom) or on its prototype (Node&apos;s built-in `localStorage`), then spies on that resolved object. This is a standard cross-environment test-compatibility fix and contains no network access, no encoded or obfuscated content, no file-system manipulation outside the test, and no execution of downloaded code.

The change is scoped entirely to a test file and only alters how the test mock is attached. There is no evidence of exfiltration, backdoors, credential access, or any behavior deviating from ordinary packaging/test workflow. It is a benign maintenance patch.
</details>
<evidence>
</evidence>
<summary>Benign test-compatibility patch; no malicious behavior found.</summary>
</security_assessment>

[5/14] Reviewing fix-voice-prefs-storage-spy.patch, launcher.test.cjs, packaged-bootstrap.patch, pin-packaged-runtime.patch...
[6/14] Reviewing launcher.test.cjs, packaged-bootstrap.patch, pin-packaged-runtime.patch...
+ Reviewed fix-voice-prefs-storage-spy.patch. Status: SAFE -- Benign test-compatibility patch; no malicious behavior found.
LLM auditresponse for launcher.test.cjs:
 <security_assessment>
<decision>SAFE</decision>
<details>
This file is a Node.js test suite for the Hermes desktop launcher wrapper. It creates an isolated temporary HOME directory, writes stub browser executables, and runs the launcher under a fake `exec()` wrapper so that real Electron/Chrome processes are not started during tests. It does not perform any network requests, download or execute code from remote hosts, or touch the user&apos;s real home directory beyond using `os.tmpdir()` with cleanup.

The only shell-related activity is invoking `/bin/bash -c` with the launcher code in order to test argument handling. The test explicitly verifies that an argument like `--literal=$(touch should-not-exist)` is passed through literally and not executed by a shell, and the assertion checks that the file is not created. This is defensive test behavior, not an attack. No obfuscation, suspicious encoding, credential access, or system modification is present.
</details>
<evidence>
</evidence>
<summary>
Test-only code; no malicious behavior; safe.</summary>
</security_assessment>

[6/14] Reviewing launcher.test.cjs, packaged-bootstrap.patch, pin-packaged-runtime.patch, runtime-policy.patch...
[7/14] Reviewing packaged-bootstrap.patch, pin-packaged-runtime.patch, runtime-policy.patch...
+ Reviewed launcher.test.cjs. Status: SAFE -- Test-only code; no malicious behavior; safe.
LLM auditresponse for pin-packaged-runtime.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
This patch integrates the Hermes desktop application with a system-package-managed runtime. It adds a `PACKAGE_MANAGED_RUNTIME` flag, reads an install stamp commit, and changes runtime validation and update handling so that a package-managed Hermes install stays pinned to the packaged commit. The update IPC handler is also adjusted to tell users to update through the system package manager instead of the in-app updater.

No malicious behavior is present. There are no suspicious network requests, no encoded or obfuscated commands, no exfiltration of local data, and no execution of untrusted downloaded content. The changes are confined to runtime state classification, bootstrap messaging, and update IPC behavior within the application itself, which is consistent with normal AUR packaging that disables in-app updates for distro-managed installs.
</details>
<evidence></evidence>
<summary>Patch pins runtime to package-managed commit; no malicious behavior found.</summary>
</security_assessment>

[7/14] Reviewing packaged-bootstrap.patch, pin-packaged-runtime.patch, runtime-policy.patch, runtime-policy.test.py...
[8/14] Reviewing packaged-bootstrap.patch, runtime-policy.patch, runtime-policy.test.py...
+ Reviewed pin-packaged-runtime.patch. Status: SAFE -- Patch pins runtime to package-managed commit; no malicious behavior found.
LLM auditresponse for runtime-policy.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
This patch adjusts Hermes CLI runtime policy for desktop/package-managed installs. It adds a helper that detects a package-managed checkout (via the `HERMES_DESKTOP_PACKAGE_MANAGED_RUNTIME` env var or a marker file inside the package's own `.git` directory), then (1) refuses in-place self-updates with a message directing users to their AUR helper, and (2) resolves `uv` by preferring the system binary over downloading a private managed copy, while only self-updating a managed uv when Hermes actually owns it and the freshness window permits.

No evidence of injected malicious code: no obfuscation, no base64/eval, no exfiltration, no downloads from unexpected hosts, and no modification of unrelated system files. The patch actually narrows the supply-chain window by skipping `uv self update` for non-owned binaries and avoiding mid-turn uv downloads. Update checks continue via the project's own GitHub API and explicitly avoid `git fetch`. This is consistent with routine AUR packaging work for the hermes-agent-desktop package.
</details>
<evidence></evidence>
<summary>Legitimate desktop package runtime policy patch; no malicious behavior.</summary>
</security_assessment>

[9/14] Reviewing packaged-bootstrap.patch, runtime-policy.test.py...
+ Reviewed runtime-policy.patch. Status: SAFE -- Legitimate desktop package runtime policy patch; no malicious behavior.
[9/14] Reviewing packaged-bootstrap.patch, runtime-policy.test.py, runtime.test.cjs...
LLM auditresponse for packaged-bootstrap.patch:
 <security_assessment>
<decision>SAFE</decision>
<details>
This diff adds a package-manager-aware bootstrap path to the Hermes Agent desktop app. When `HERMES_DESKTOP_PACKAGE_MANAGED_RUNTIME=1` is set (as an AUR/systemd environment would set it), the app invokes the packaged `install.sh` from `HERMES_DESKTOP_RESOURCES_PATH` instead of self-downloading runtimes. The `clone_packaged_repo` logic fetches the project's own upstream repository, checks out a specific commit (`INSTALL_COMMIT`, validated against a 40-hex SHA-1 pattern), applies a recorded patch, and uses reverse-apply checks to preserve local user edits. These are coherent, well-tested operations for a self-managing agent runtime and do not target unrelated hosts or unexpected network destinations.

The remaining changes are tests and small logic adjustments around runtime bootstrap, including mocked child processes, stubbed environment variables, and a verification that the packaged mode "never downloads a missing package file." The only external tooling mentioned (system uv, Playwright/Chromium) is logged, gated behind flags, and consistent with the application's stated browser-automation purpose. I found no evidence of exfiltration, obfuscation, backdoors, attacker-controlled downloads, or data manipulation outside the application's own scope.
</details>
<evidence></evidence>
<summary>Legitimate package-manager-aware runtime bootstrap; no malicious behavior detected.</summary>
</security_assessment>

[9/14] Reviewing packaged-bootstrap.patch, runtime-policy.test.py, runtime.test.cjs, system-browser.patch...
[10/14] Reviewing runtime-policy.test.py, runtime.test.cjs, system-browser.patch...
+ Reviewed packaged-bootstrap.patch. Status: SAFE -- Legitimate package-manager-aware runtime bootstrap; no malicious behavior detected.
LLM auditresponse for runtime.test.cjs:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a Node.js test suite (`runtime.test.cjs`) for the hermes-agent-desktop package. It exercises the packaged `install.sh` in an isolated temporary directory, creating fake git repositories, pinned commits, and stub browser binaries to verify behavior. The tests confirm that: (1) the package-managed runtime refuses ad-hoc updates and defers to the AUR package; (2) bootstrap preserves untracked local data files; (3) the installer uses the system `uv` rather than an embedded private copy; and (4) browser detection is not persisted into explicit configuration. All commands run under a sandboxed `HOME`, with git global/system config isolated via `GIT_CONFIG_NOSYSTEM` and `GIT_CONFIG_GLOBAL=/dev/null`, and test `ssh` is stubbed to fail closed. No data exfiltration, remote code execution, obfuscation, or writes outside the temporary test root were found. The test code is consistent with a standard integration test harness for a packaged application; it does not perform any action outside its own test sandbox.
</details>
<evidence></evidence>
<summary>Legitimate integration test suite; no malicious behavior detected.</summary>
</security_assessment>

[10/14] Reviewing runtime-policy.test.py, runtime.test.cjs, system-browser.patch, system-electron-resources.patch...
[11/14] Reviewing runtime-policy.test.py, system-browser.patch, system-electron-resources.patch...
+ Reviewed runtime.test.cjs. Status: SAFE -- Legitimate integration test suite; no malicious behavior detected.
LLM auditresponse for runtime-policy.test.py:
 <security_assessment>
<decision>SAFE</decision>
<details>
This file is a unittest regression suite for the hermes-agent-desktop update-admission policy. Its most unusual piece is the `ast.parse`/`exec` of the `check_hermes_update` function from the package's own `hermes_cli/web_routers/actions.py`. That technique is explained in the file's own docstring: it compiles the route body in isolation so the default test runner does not need to import FastAPI and the full server. The compiled function is the package's own on-disk source code, executed with a controlled namespace and mocked globals — a legitimate isolated-testing pattern, not an indication of injected code.

All behavior that could touch the network or system state is explicitly mocked or sandboxed: `banner.check_for_updates` and `_check_via_local_git` are patched, `HOME`/`HERMES_HOME` are redirected to a `tempfile.TemporaryDirectory`, and config methods are replaced with stubs. The assertions verify the opposite of a supply-chain problem — that a package-managed install (indicated by a receipt file) refuses banner-driven updates, leaves the existing cache untouched, and does not call the backend query. No credentials are read, no data is exfiltrated, no remote code is downloaded, and no files are modified outside the transient test directory. There are no obfuscated strings, encoded payloads, or unexpected subprocess usage; `faulthandler.dump_traceback_later` is simply a hang-debugging aid. This is an ordinary, if slightly clever, test file.
</details>
<evidence>

</evidence>
<summary>
Legitimate update-policy regression tests; no malicious or dangerous behavior found.</summary>
</security_assessment>

[12/14] Reviewing system-browser.patch, system-electron-resources.patch...
+ Reviewed runtime-policy.test.py. Status: SAFE -- Legitimate update-policy regression tests; no malicious or dangerous behavior found.
LLM auditresponse for system-electron-resources.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
This patch modifies the Electron app&apos;s `loadInstallStamp()` function to accept an optional `HERMES_DESKTOP_RESOURCES_PATH` environment variable. This is a common packaging convenience: distribution packages often need to point an app at a system-installed resources directory instead of the bundled `process.resourcesPath`. The change only adds a candidate path used to locate `install-stamp.json`, and the resulting code simply reads a JSON stamp file.

There is no evidence of malicious behavior: no network requests, no obfuscated code, no execution of downloaded content, and no access to sensitive data. The environment variable is not used to exfiltrate anything or to run arbitrary commands. The patch is small, coherent with the surrounding logic, and consistent with standard AUR packaging adjustments for relocatable Electron applications.
</details>
<evidence>
</evidence>
<summary>
Benign packaging patch adding an optional resources path for install stamp lookup.</summary>
</security_assessment>

[13/14] Reviewing system-browser.patch...
+ Reviewed system-electron-resources.patch. Status: SAFE -- Benign packaging patch adding an optional resources path for install stamp lookup.
LLM auditresponse for system-browser.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
This patch adds a conditional `--skip-browser` argument to Hermes Desktop&apos;s runtime bootstrap when the environment variable `HERMES_DESKTOP_PACKAGE_MANAGED_RUNTIME` is set to `1`. The accompanying comment explains the rationale: Arch packages rely on a system-provided browser, so the app must not download its own during setup. This is a standard distro-packaging integration pattern (analogous to Playwright/Puppeteer packages disabling their bundled-browser downloads) and directly serves the package&apos;s stated purpose.

The change is transparent and minimal: no obfuscation, no network requests beyond normal app logic, no dangerous shell commands, no file tampering, and no data exfiltration. The HTML entities in the diff (`&apos;`, `=&gt;`, `&amp;&amp;`) are merely XML/HTML escaping of the file contents (single quotes, `=`, `&`), not encoded malicious payloads. The added unit test follows normal test practices (`vi.stubEnv`) and validates both the skip path and the fallback behavior, which is consistent with healthy upstream/package maintenance rather than an attack.

The only minor consideration is that this is a patch applied by the AUR package rather than an upstream configuration option, which is common in AUR packaging for runtime integration. There is nothing here that deviates from ordinary, benign packaging practice.
</details>
<evidence>
</evidence>
<summary>Benign packaging patch; skip-browser flag for distro-managed runtime.</summary>
</security_assessment>

[14/14] Reviewing ...
+ Reviewed system-browser.patch. Status: SAFE -- Benign packaging patch; skip-browser flag for distro-managed runtime.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 63,385
  Completion Tokens: 20,870
  Total Tokens: 84,255
  Total Cost: $0.009315
  Execution Time: 260.91 seconds

Final Status: SAFE


No issues found.
