---
package: hermes-agent-desktop
pkgver: 0.22.0
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 30920
completion_tokens: 4257
total_tokens: 35177
cost: 0.003588494
execution_time: 67.32
files_reviewed: 9
files_skipped: 0
maintainer_files: 9
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-14T11:11:09Z
file_verdicts:
  - file: LICENSE
    status: safe
    summary: Standard license file with no security concerns.
  - file: .gitignore
    status: safe
    summary: Standard .gitignore file, no security issues.
  - file: REUSE.toml
    status: safe
    summary: Metadata file; no security concerns.
  - file: hermes-desktop
    status: safe
    summary: Clean wrapper script; no malicious code found.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata, no security issues.
  - file: package-managed-bootstrap.patch
    status: safe
    summary: Patch adds a safe environment variable guard.
  - file: PKGBUILD
    status: safe
    summary: Clean PKGBUILD with pinned sources and no malicious code.
  - file: launcher.test.cjs
    status: safe
    summary: Test file, no malicious behavior found.
  - file: package-managed-runtime.patch
    status: safe
    summary: Legitimate packaging patch disabling self-update for AUR.
---

Materializing hermes-agent-desktop from local mirror...
Materialized hermes-agent-desktop
Analyzing hermes-agent-desktop AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only standard top-level variable definitions (pkgname, version, source, sha256sums, etc.) and two helper function definitions (`_extract_dir` and `_set_npm_env`). No code in the global scope executes arbitrary commands, network requests, or file operations. All potentially dangerous operations (patching, npm install, builds, tests, packaging) are confined to function bodies (`prepare()`, `build()`, `check()`, `package()`) which are **not executed by `makepkg --printsrcinfo`. No global command substitutions or malicious top-level code was found.</details>
<evidence></evidence>
<summary>No malicious code at top-level scope.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious code at top-level scope.
Reviewing the 9 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/9] Reviewing .SRCINFO...
[0/9] Reviewing .SRCINFO, .gitignore...
[0/9] Reviewing .SRCINFO, .gitignore, LICENSE...
LLM auditresponse for LICENSE:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard BSD Zero Clause License text. It contains no executable code, no obfuscation, no network requests, and no file operations. It is purely a legal document and poses no security risk.
</details>
<evidence></evidence>
<summary>Standard license file with no security concerns.</summary>
</security_assessment>

[0/9] Reviewing .SRCINFO, .gitignore, LICENSE, PKGBUILD...
[1/9] Reviewing .SRCINFO, .gitignore, PKGBUILD...
+ Reviewed LICENSE. Status: SAFE -- Standard license file with no security concerns.
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
The `.gitignore` file contains standard patterns to exclude build artifacts (compressed archives and build directories) from version control. This is normal and expected for any AUR or Git repository. No code execution, network activity, or any other security-relevant operations are present.
</details>
<evidence></evidence>
<summary>Standard .gitignore file, no security issues.</summary>
</security_assessment>

[1/9] Reviewing .SRCINFO, .gitignore, PKGBUILD, REUSE.toml...
[2/9] Reviewing .SRCINFO, PKGBUILD, REUSE.toml...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore file, no security issues.
LLM auditresponse for REUSE.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a REUSE.toml configuration used to declare copyright and license information for files in the package repository. It contains no executable code, network requests, or any operations that could be considered malicious. It is a standard practice for open-source license compliance.
</details>
<evidence>
</evidence>
<summary>Metadata file; no security concerns.</summary>
</security_assessment>

[3/9] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed REUSE.toml. Status: SAFE -- Metadata file; no security concerns.
[3/9] Reviewing .SRCINFO, PKGBUILD, hermes-desktop...
LLM auditresponse for hermes-desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This script is a standard AUR wrapper for launching the `hermes-agent-desktop` Electron application. It reads optional flags from a user configuration file, sets environment variables to point to packaged runtime paths, and verifies the existence of a local hermes CLI and browser (for agent tools). No network requests, downloads, obfuscated code, or unexpected system modifications are present. All operations are consistent with legitimate packaging practices.
</details>
<evidence></evidence>
<summary>Clean wrapper script; no malicious code found.</summary>
</security_assessment>

[3/9] Reviewing .SRCINFO, PKGBUILD, hermes-desktop, launcher.test.cjs...
[4/9] Reviewing .SRCINFO, PKGBUILD, launcher.test.cjs...
+ Reviewed hermes-desktop. Status: SAFE -- Clean wrapper script; no malicious code found.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard AUR `.SRCINFO` metadata file for the `hermes-agent-desktop` package. It contains only declarative fields such as package name, version, upstream URL, dependencies, source URLs, and SHA256 checksums. There are no executable commands, no network requests, no obfuscated code, and no file operations. All source tarballs and patches are pinned with checksums, and the tarball is fetched over HTTPS from the official GitHub repository. There is no evidence of any malicious or dangerous behavior.
</details>
<evidence>
</evidence>
<summary>Standard AUR metadata, no security issues.</summary>
</security_assessment>

[4/9] Reviewing .SRCINFO, PKGBUILD, launcher.test.cjs, package-managed-bootstrap.patch...
[5/9] Reviewing PKGBUILD, launcher.test.cjs, package-managed-bootstrap.patch...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata, no security issues.
LLM auditresponse for package-managed-bootstrap.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
The patch adds a conditional check that throws an error when the environment variable `HERMES_DESKTOP_PACKAGE_MANAGED_RUNTIME` is set to `1`. This is a standard safeguard for AUR packages that install the application via the system package manager, preventing the upstream bootstrap runner from running in an environment where the runtime is managed externally. The patch contains no obfuscation, no network requests, no file operations, and no execution of untrusted code. It is a routine packaging adjustment.
</details>
<evidence></evidence>
<summary>Patch adds a safe environment variable guard.</summary>
</security_assessment>

[5/9] Reviewing PKGBUILD, launcher.test.cjs, package-managed-bootstrap.patch, package-managed-runtime.patch...
[6/9] Reviewing PKGBUILD, launcher.test.cjs, package-managed-runtime.patch...
+ Reviewed package-managed-bootstrap.patch. Status: SAFE -- Patch adds a safe environment variable guard.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard Arch packaging practices for an Electron-based desktop application. All source files are pinned to a specific upstream commit with valid SHA-256 checksums. The build process uses `npm ci --ignore-scripts` to prevent arbitrary code execution during dependency installation, and `npm rebuild node-pty --offline` avoids network calls. Patches are included with checksums and serve the legitimate purpose of preventing in-app runtime updates (good security practice). The `check()` function uses `uv sync --frozen` with a lockfile for deterministic test dependencies, and runs tests in an isolated environment. No obfuscated code, unexpected network requests, data exfiltration, or backdoors are present. The package correctly depends on the `hermes-agent` runtime package rather than bundling its own, and installs files to standard locations.
</details>
<evidence></evidence>
<summary>Clean PKGBUILD with pinned sources and no malicious code.</summary>
</security_assessment>

[7/9] Reviewing launcher.test.cjs, package-managed-runtime.patch...
+ Reviewed PKGBUILD. Status: SAFE -- Clean PKGBUILD with pinned sources and no malicious code.
LLM auditresponse for launcher.test.cjs:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a test script (`launcher.test.cjs`) for the `hermes-desktop` launcher. It uses standard Node.js testing patterns: creating temporary directories, mocking binaries, spawning the launcher with mocked `exec`, and verifying output. There is no obfuscated code, no network requests, no file exfiltration, and no execution of untrusted content. The test even includes a positive security check: it passes a flag containing `$(touch should-not-exist)` and confirms the file is **not** created, verifying that shell injection is prevented. All operations are confined to temporary test directories that are cleaned up. No supply-chain attack indicators are present.
</details>
<evidence></evidence>
<summary>Test file, no malicious behavior found.</summary>
</security_assessment>

[8/9] Reviewing package-managed-runtime.patch...
+ Reviewed launcher.test.cjs. Status: SAFE -- Test file, no malicious behavior found.
LLM auditresponse for package-managed-runtime.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
This patch disables the Hermes desktop application's built-in update and bootstrap mechanisms when the `HERMES_DESKTOP_PACKAGE_MANAGED_RUNTIME` environment variable is set to `1`. This is a standard packaging practice for AUR (or any system package manager) to prevent the application from self-updating, which would bypass the package manager and potentially create conflicts. The patch does not exfiltrate data, download or execute code from untrusted sources, use obfuscated commands, or perform any dangerous system modifications. All changes are limited to early returns with appropriate error messages, ensuring the application defers to the system package for updates and agent management. There is no evidence of malicious intent.
</details>
<evidence></evidence>
<summary>Legitimate packaging patch disabling self-update for AUR.</summary>
</security_assessment>

[9/9] Reviewing ...
+ Reviewed package-managed-runtime.patch. Status: SAFE -- Legitimate packaging patch disabling self-update for AUR.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 30,920
  Completion Tokens: 4,257
  Total Tokens: 35,177
  Total Cost: $0.003588
  Execution Time: 67.32 seconds

Final Status: SAFE


No issues found.
