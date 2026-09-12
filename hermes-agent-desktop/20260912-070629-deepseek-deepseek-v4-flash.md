---
package: hermes-agent-desktop
pkgver: 0.21.2
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 171a316e053e9c4b28731ccb1aa63b1168550d3a
prompt_tokens: 62384
completion_tokens: 9264
total_tokens: 71648
cost: 0.00540330336
execution_time: 82.99
files_reviewed: 14
files_skipped: 0
maintainer_files: 14
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-12T07:06:29Z
file_verdicts:
  - file: LICENSE
    status: safe
    summary: Simple license file, no security concerns.
  - file: .gitignore
    status: safe
    summary: Standard gitignore file, no security concerns.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata, no security issues.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD with pinned sources and no malicious behavior.
  - file: fix-voice-prefs-storage-spy.patch
    status: safe
    summary: Routine test compatibility patch, no security issues.
  - file: packaged-bootstrap.patch
    status: safe
    summary: Legitimate packaging modifications with no malicious behavior.
  - file: launcher.test.cjs
    status: safe
    summary: Test file for launcher; no security issues.
  - file: pin-packaged-runtime.patch
    status: safe
    summary: Packaging integration patch — no malicious behavior detected.
  - file: runtime-policy.patch
    status: safe
    summary: Standard AUR packaging adaptation, no malicious code.
  - file: hermes-desktop
    status: safe
    summary: Standard AUR launcher, no malicious behavior.
  - file: runtime-policy.test.py
    status: safe
    summary: Test file with no malicious behavior.
  - file: runtime.test.cjs
    status: safe
    summary: Legitimate test file, no malicious behavior.
  - file: system-electron-resources.patch
    status: safe
    summary: Patches env var path override, benign change.
  - file: system-browser.patch
    status: safe
    summary: Legitimate packaging patch; no security issues.
---

Materializing hermes-agent-desktop from local mirror...
Materialized hermes-agent-desktop
Analyzing hermes-agent-desktop AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The top-level code of this PKGBUILD contains only variable assignments, array definitions, comments, and function definitions (`_extract_dir()` and `_set_npm_env()`). No command substitutions, subshell executions, network requests, or other dangerous operations are present at the global scope. The `source` array includes a URL, but `makepkg --printsrcinfo` does not download or verify sources—it merely evaluates the variable expression as a string assignment. Function bodies (prepare, build, package, check) are not executed during `makepkg --printsrcinfo`, so they are out of scope for this gate. There is no risk of malicious code execution during the parsing phase.
</details>
<evidence></evidence>
<summary>PKGBUILD top-level scope contains no dangerous code.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- PKGBUILD top-level scope contains no dangerous code.
Reviewing the 14 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/14] Reviewing .SRCINFO...
[0/14] Reviewing .SRCINFO, .gitignore...
[0/14] Reviewing .SRCINFO, .gitignore, LICENSE...
LLM auditresponse for LICENSE:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard BSD Zero Clause License text. It contains no executable commands, network requests, obfuscated code, or system modifications. It is purely a legal declaration of permissions and disclaimers. There are no security issues.
</details>
<evidence></evidence>
<summary>Simple license file, no security concerns.</summary>
</security_assessment>

[1/14] Reviewing .SRCINFO, .gitignore...
+ Reviewed LICENSE. Status: SAFE -- Simple license file, no security concerns.
[1/14] Reviewing .SRCINFO, .gitignore, PKGBUILD...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard `.gitignore` for an Arch Linux package repository. It lists common build artifacts (compressed archives, built package files) to be ignored by version control. There are no executable commands, network operations, or any other security-relevant content. It is completely benign.
</details>
<evidence>
</evidence>
<summary>Standard gitignore file, no security concerns.</summary>
</security_assessment>

[2/14] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed .gitignore. Status: SAFE -- Standard gitignore file, no security concerns.
[2/14] Reviewing .SRCINFO, PKGBUILD, fix-voice-prefs-storage-spy.patch...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This `.SRCINFO` file is standard package metadata for an AUR package. It declares sources (a tarball from the official GitHub repository and various patches), dependencies, and checksums. All checksums are provided and non-`SKIP`, ensuring source integrity. There are no obfuscated commands, suspicious network destinations, or unexpected file operations. The patch names, while unusual (e.g., `fix-voice-prefs-storage-spy.patch`), are consistent with maintainer packaging fixes and do not indicate malice. The version mismatch between `pkgver=0.21.2` and the source tag `v2026.9.11` is noteworthy but not a security concern—likely an upstream versioning anomaly or typo. No evidence of supply-chain attack or malicious intent.
</details>
<evidence></evidence>
<summary>Standard AUR metadata, no security issues.</summary>
</security_assessment>

[2/14] Reviewing .SRCINFO, PKGBUILD, fix-voice-prefs-storage-spy.patch, hermes-desktop...
[3/14] Reviewing PKGBUILD, fix-voice-prefs-storage-spy.patch, hermes-desktop...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata, no security issues.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard Arch packaging practices for an Electron application built from source. All sources are fetched from the official GitHub repository using a pinned tag with SHA256 checksums provided for every file. The build process uses system packages (electron42, nodejs, npm) and neither downloads nor executes any code from untrusted external hosts. Patches included in the AUR are checksummed and applied in `prepare()`. The package installs files only into `$pkgdir` under standard paths (`/usr/lib`, `/usr/bin`, `/usr/share`). There is no obfuscation, no network exfiltration, no `curl|bash`, and no unexpected system modifications. The only environment variable exports (`GITHUB_SHA`, `GITHUB_REF_NAME`, `npm_config_*`) are for reproducibility and to prevent npm from phoning home, which is a best-practice hardening measure. No supply-chain attack indicators found.
</details>
<evidence></evidence>
<summary>Standard AUR PKGBUILD with pinned sources and no malicious behavior.</summary>
</security_assessment>

[3/14] Reviewing PKGBUILD, fix-voice-prefs-storage-spy.patch, hermes-desktop, launcher.test.cjs...
[4/14] Reviewing fix-voice-prefs-storage-spy.patch, hermes-desktop, launcher.test.cjs...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD with pinned sources and no malicious behavior.
LLM auditresponse for fix-voice-prefs-storage-spy.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a patch that adjusts how a test file spies on `localStorage` methods. The change accommodates differences between jsdom and Node&#39;s `localStorage` implementations. It is purely a test infrastructure fix with no production impact, no network activity, no obfuscated code, and no system modifications. This is standard upstream development practice and presents no security risk.
</details>
<evidence></evidence>
<summary>Routine test compatibility patch, no security issues.</summary>
</security_assessment>

[4/14] Reviewing fix-voice-prefs-storage-spy.patch, hermes-desktop, launcher.test.cjs, packaged-bootstrap.patch...
[5/14] Reviewing hermes-desktop, launcher.test.cjs, packaged-bootstrap.patch...
+ Reviewed fix-voice-prefs-storage-spy.patch. Status: SAFE -- Routine test compatibility patch, no security issues.
LLM auditresponse for packaged-bootstrap.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
This patch adds support for a "package-managed runtime" mode in the hermes-agent-desktop package, triggered by the `HERMES_DESKTOP_PACKAGE_MANAGED_RUNTIME` environment variable. The modifications are typical of downstream packaging: they allow the package to use system-level dependencies (system `uv`, system Python venv, local browser) instead of downloading them, and they clone the upstream repository at a pinned commit (validated as a 40-character hex string) from the project's own upstream URL, applying a `runtime-policy.patch` shipped with the package.

All network operations are limited to fetching a pinned commit from the project's own upstream repository (`$REPO_URL_HTTPS`). The commit is validated as a 40-hex SHA before any operation. The patch file itself (`runtime-policy.patch`) is shipped with the package, not downloaded at install time. There is no obfuscated code, no use of `eval` or base64-encoded payloads, no data exfiltration, no unexpected system file access, and no backdoor of any kind. The test additions confirm the code behaves as expected without performing unintended network requests.

The modifications to `install.sh` that suppress browser detection for the packaged case or skip the normal `hermes update` message are reasonable packaging integrations—they direct the user to their AUR helper for updates and avoid persisting stale browser overrides. The `clone_packaged_repo` function uses a careful patch-reversion mechanism to ensure local changes are not overwritten. All of this is consistent with legitimate AUR packaging modifications rather than supply-chain attack behavior.
</details>
<summary>Legitimate packaging modifications with no malicious behavior.</summary>
<evidence>
</evidence>
</security_assessment>

[5/14] Reviewing hermes-desktop, launcher.test.cjs, packaged-bootstrap.patch, pin-packaged-runtime.patch...
[6/14] Reviewing hermes-desktop, launcher.test.cjs, pin-packaged-runtime.patch...
+ Reviewed packaged-bootstrap.patch. Status: SAFE -- Legitimate packaging modifications with no malicious behavior.
LLM auditresponse for launcher.test.cjs:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a test file for the Hermes Agent Desktop launcher script. It creates a temporary sandboxed environment to test browser detection, flag parsing, and override behavior. The test spawns a Bash subprocess with an overridden `exec` to capture arguments instead of actually launching any application. It verifies that command injection attempts in config flags (e.g., `--literal=$(touch should-not-exist)`) are preserved as literal strings and not executed. No malicious code, data exfiltration, unexpected downloads, or obfuscated commands are present. This file is a standard automated test and poses no security risk.
</details>
<evidence></evidence>
<summary>Test file for launcher; no security issues.</summary>
</security_assessment>

[6/14] Reviewing hermes-desktop, launcher.test.cjs, pin-packaged-runtime.patch, runtime-policy.patch...
[7/14] Reviewing hermes-desktop, pin-packaged-runtime.patch, runtime-policy.patch...
+ Reviewed launcher.test.cjs. Status: SAFE -- Test file for launcher; no security issues.
LLM auditresponse for pin-packaged-runtime.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
This patch adds support for a **package-managed runtime** in the Hermes desktop agent. It introduces environment-flag-based logic (`PACKAGE_MANAGED_RUNTIME`) that prevents the app from self-updating, detects commit mismatches between the installed runtime checkout and the packaged install stamp, and triggers a bootstrap repair when needed. All changes are legitimate packaging integration: they disable in-app updates, read a `commit` field from an install stamp file, and compare it against the active git HEAD. No network requests, obfuscated code, suspicious file operations, or data exfiltration are present.
</details>
<evidence></evidence>
<summary>Packaging integration patch — no malicious behavior detected.</summary>
</security_assessment>

[7/14] Reviewing hermes-desktop, pin-packaged-runtime.patch, runtime-policy.patch, runtime-policy.test.py...
[8/14] Reviewing hermes-desktop, runtime-policy.patch, runtime-policy.test.py...
+ Reviewed pin-packaged-runtime.patch. Status: SAFE -- Packaging integration patch — no malicious behavior detected.
LLM auditresponse for runtime-policy.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
The patch adapts the upstream hermes-agent to work correctly when installed via the AUR package manager. It introduces detection of a package-managed runtime via an environment variable or a marker file, then disables self-update mechanisms (downloading uv, `uv self update`, GitHub API version checks, and in-place update buttons) and instead directs users to update through the AUR helper. All changes are transparent, expected packaging integration work, and contain no obfuscation, data exfiltration, backdoors, or downloads from unexpected sources. No malicious behavior is present.
</details>
<evidence></evidence>
<summary>Standard AUR packaging adaptation, no malicious code.</summary>
</security_assessment>

[9/14] Reviewing hermes-desktop, runtime-policy.test.py...
+ Reviewed runtime-policy.patch. Status: SAFE -- Standard AUR packaging adaptation, no malicious code.
[9/14] Reviewing hermes-desktop, runtime-policy.test.py, runtime.test.cjs...
LLM auditresponse for hermes-desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
The script is a standard launcher for a packaged Electron application. It reads user-defined command-line flags from a configuration file in `~/.config/`, sets environment variables to indicate the application is packaged, searches for a Chrome/Chromium browser on the system to use for agent tools, and then launches the Electron runtime with the application bundle. All operations are routine for AUR packaging: reading user config files, exporting packaging flags, and executing the application binary. There are no network requests, no obfuscated or encoded commands, no file exfiltration, and no unexpected system modifications. The only external command executed is `/usr/bin/electron42`, which is the intended runtime for the packaged application. The script does not download or execute any untrusted code, nor does it access data outside the application's scope.</details>
<evidence></evidence>
<summary>Standard AUR launcher, no malicious behavior.</summary>
</security_assessment>

[9/14] Reviewing hermes-desktop, runtime-policy.test.py, runtime.test.cjs, system-browser.patch...
[10/14] Reviewing runtime-policy.test.py, runtime.test.cjs, system-browser.patch...
+ Reviewed hermes-desktop. Status: SAFE -- Standard AUR launcher, no malicious behavior.
LLM auditresponse for runtime-policy.test.py:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard unit test file for the hermes-agent-desktop package. It tests update policy logic, update admission, image provenance, and banner behavior using mock objects, temporary directories, and patching of environment variables and module attributes. There is no obfuscated code, no base64 decoding, no unexpected network requests (e.g., curl, wget), no file exfiltration, no backdoors, and no downloads from unrelated hosts. The use of `exec` to compile and execute the `check_hermes_update` function from the source file is a legitimate testing technique to avoid importing heavy FastAPI dependencies; it does not execute attacker-controlled code. All file operations (creation, writing, deletion) are confined to a temporary directory created with `tempfile.TemporaryDirectory`, which is standard practice for isolated testing. There is no evidence of malicious or dangerous behavior that would indicate a supply-chain attack.
</details>
<evidence></evidence>
<summary>Test file with no malicious behavior.</summary>
</security_assessment>

[10/14] Reviewing runtime-policy.test.py, runtime.test.cjs, system-browser.patch, system-electron-resources.patch...
[11/14] Reviewing runtime.test.cjs, system-browser.patch, system-electron-resources.patch...
+ Reviewed runtime-policy.test.py. Status: SAFE -- Test file with no malicious behavior.
LLM auditresponse for runtime.test.cjs:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a Node.js test suite for the hermes-agent-desktop installer script. It creates temporary directories, sets up git repositories, and runs the installer under various conditions to verify correct behavior (pinning commits, preserving user files, handling upgrades, etc.). All network accesses are absent—the script works entirely on local fixtures. The commands executed (git, bash, python) are standard for testing packaging scripts. There is no obfuscation, no unexpected downloads or data exfiltration, and no code that deviates from legitimate testing of the package's installation logic. The file is safe.
</details>
<evidence></evidence>
<summary>Legitimate test file, no malicious behavior.</summary>
</security_assessment>

[12/14] Reviewing system-browser.patch, system-electron-resources.patch...
+ Reviewed runtime.test.cjs. Status: SAFE -- Legitimate test file, no malicious behavior.
LLM auditresponse for system-electron-resources.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
This patch adds an additional candidate path for locating the `install-stamp.json` file, based on the environment variable `HERMES_DESKTOP_RESOURCES_PATH`. The logic is straightforward: if the variable is set, it constructs a path using `path.join` and includes it in the list of candidate locations. There is no obfuscation, no execution of downloaded code, no network requests, and no modification of system files. The environment variable override is a common pattern for development or deployment flexibility and does not, by itself, indicate malice. The patch aligns with the application's functionality and standard packaging practices in the AUR. No evidence of a supply-chain attack was found.
</details>
<evidence></evidence>
<summary>Patches env var path override, benign change.</summary>
</security_assessment>

[13/14] Reviewing system-browser.patch...
+ Reviewed system-electron-resources.patch. Status: SAFE -- Patches env var path override, benign change.
LLM auditresponse for system-browser.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
This patch is a legitimate packaging adjustment for an Arch Linux AUR package. It modifies the Electron application to skip downloading its own browser runtime when the environment variable `HERMES_DESKTOP_PACKAGE_MANAGED_RUNTIME` is set to `1`, which would be the case when the system browser is provided by the package manager. The patch also adds corresponding unit tests. There is no evidence of malicious behavior such as exfiltration, code injection, obfuscated commands, or unexpected network requests. The change is consistent with standard packaging practices to avoid duplicate or unnecessary downloads.
</details>
<evidence></evidence>
<summary>Legitimate packaging patch; no security issues.</summary>
</security_assessment>

[14/14] Reviewing ...
+ Reviewed system-browser.patch. Status: SAFE -- Legitimate packaging patch; no security issues.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 62,384
  Completion Tokens: 9,264
  Total Tokens: 71,648
  Total Cost: $0.005403
  Execution Time: 82.99 seconds

Final Status: SAFE


No issues found.
