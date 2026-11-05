---
package: hermes-agent-desktop
pkgver: 0.22.7
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 39475
completion_tokens: 7938
total_tokens: 47413
cost: 0.005036941
execution_time: 55.05
files_reviewed: 10
files_skipped: 0
maintainer_files: 10
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-11-05T00:17:02Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard .gitignore, no security issues.
  - file: LICENSE
    status: safe
    summary: License file, no executable content.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata with pinned checksums; no malicious behavior detected.
  - file: REUSE.toml
    status: safe
    summary: REUSE.toml is benign metadata.
  - file: harden-hud-modifier-monitor.patch
    status: safe
    summary: "Safe patch: standard CFLAGS/LDFLAGS propagation."
  - file: hermes-desktop
    status: safe
    summary: Standard Electron launcher script, no suspicious behavior.
  - file: PKGBUILD
    status: safe
    summary: Standard, checksum-pinned PKGBUILD with no malicious behavior found.
  - file: launcher.test.cjs
    status: safe
    summary: Test file exercising the launcher in isolated temp dirs; no malicious behavior found.
  - file: package-managed-bootstrap.patch
    status: safe
    summary: Benign patch disabling runtime bootstrap for package-managed installations. No security issues found.
  - file: package-managed-runtime.patch
    status: safe
    summary: Packaging patch to defer updates to package manager.
---

Materializing hermes-agent-desktop from local mirror...
Materialized hermes-agent-desktop
Analyzing hermes-agent-desktop AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
Running `makepkg --printsrcinfo` sources the PKGBUILD and executes only its top-level/global scope; `prepare()`, `build()`, `check()`, and `package()` are not invoked at this step. The top-level scope contains only standard variable definitions (`pkgname`, `pkgver`, `depends`, `source`, `sha256sums`, etc.), a few helper function definitions, and no top-level command substitutions, network calls, or external program execution.

The helper functions `_extract_dir()` and `_set_npm_env()` are defined at the top level but only called from within `prepare()`/`build()`/`check()`, so their contents cannot execute during `--printsrcinfo`. The source URL points to the upstream GitHub repository as expected, and all checksums are pinned rather than skipped. No obfuscation, encoded payloads, or suspicious top-level operations are present. The heavier operations (npm, patches, electron runtime handling) are confined to function bodies, which are out of scope for this narrow gate and should be examined in the full audit.
</details>
<evidence></evidence>
<summary>Top-level PKGBUILD scope is benign; no code executes during printsrcinfo.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Top-level PKGBUILD scope is benign; no code executes during printsrcinfo.
Reviewing the 10 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/10] Reviewing .SRCINFO...
[0/10] Reviewing .SRCINFO, .gitignore...
[0/10] Reviewing .SRCINFO, .gitignore, LICENSE...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard `.gitignore` for an Arch User Repository (AUR) package. It uses glob patterns to exclude build artifacts (tarballs with `.tar.gz`, `.tar.zst`, `.pkg.tar.zst` extensions) and the default `src/` and `pkg/` build directories from version control. There are no executable commands, no network operations, no obfuscation, and no attempts to modify system files. The file is entirely benign and follows normal packaging practices.
</details>
<evidence></evidence>
<summary>Standard .gitignore, no security issues.</summary>
</security_assessment>

[0/10] Reviewing .SRCINFO, .gitignore, LICENSE, PKGBUILD...
[1/10] Reviewing .SRCINFO, LICENSE, PKGBUILD...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore, no security issues.
LLM auditresponse for LICENSE:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard BSD Zero Clause License text. It contains no executable code, no network requests, no file operations, no obfuscation, and no commands of any kind. It is purely a legal notice and poses no security risk.
</details>
<evidence></evidence>
<summary>License file, no executable content.</summary>
</security_assessment>

[1/10] Reviewing .SRCINFO, LICENSE, PKGBUILD, REUSE.toml...
[2/10] Reviewing .SRCINFO, PKGBUILD, REUSE.toml...
+ Reviewed LICENSE. Status: SAFE -- License file, no executable content.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This `.SRCINFO` file is standard AUR package metadata for `hermes-agent-desktop`. It declares the upstream tarball from the project's own GitHub repository, several local patch files, a launcher script, and a test file. Every source entry has a fixed SHA-256 checksum, and no source checksum is set to `SKIP`.

There are no suspicious network operations, no encoded or obfuscated commands, no unexpected file modifications, and no references to external or unrelated hosts. The dependencies are consistent with a desktop Electron application. The file only describes package metadata; the active build logic would be in the PKGBUILD, which is not present here. Nothing in this file indicates malicious or injected behavior.
</details>
<evidence>
</evidence>
<summary>
Standard AUR metadata with pinned checksums; no malicious behavior detected.
</summary>
</security_assessment>

[3/10] Reviewing PKGBUILD, REUSE.toml...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata with pinned checksums; no malicious behavior detected.
[3/10] Reviewing PKGBUILD, REUSE.toml, harden-hud-modifier-monitor.patch...
LLM auditresponse for REUSE.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a REUSE-compliant license and copyright annotation configuration. It contains only declarative metadata (paths, SPDX identifiers, and copyright statements) with no executable code, network requests, file operations, or any other behavior that could be exploited as a supply-chain attack. It is standard packaging practice and entirely benign.
</details>
<evidence></evidence>
<summary>REUSE.toml is benign metadata.</summary>
</security_assessment>

[4/10] Reviewing PKGBUILD, harden-hud-modifier-monitor.patch...
+ Reviewed REUSE.toml. Status: SAFE -- REUSE.toml is benign metadata.
[4/10] Reviewing PKGBUILD, harden-hud-modifier-monitor.patch, hermes-desktop...
LLM auditresponse for harden-hud-modifier-monitor.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
This patch propagates the standard environment variables `CFLAGS` and `LDFLAGS` to a compiler invocation (`cc`) within a build script. This is a routine and expected packaging practice: it allows users or packagers to supply custom compiler and linker flags (e.g., hardening flags, architecture optimizations) without modifying the source. The invocation uses `execFileSync` with an argument array, not a shell, so no command injection vector exists through these variables. The patch contains no obfuscation, no unexpected network requests, and no system modifications beyond the intended build of a small helper binary. It is a benign and standard build system improvement.
</details>
<evidence></evidence>
<summary>Safe patch: standard CFLAGS/LDFLAGS propagation.</summary>
</security_assessment>

[4/10] Reviewing PKGBUILD, harden-hud-modifier-monitor.patch, hermes-desktop, launcher.test.cjs...
[5/10] Reviewing PKGBUILD, hermes-desktop, launcher.test.cjs...
+ Reviewed harden-hud-modifier-monitor.patch. Status: SAFE -- Safe patch: standard CFLAGS/LDFLAGS propagation.
LLM auditresponse for hermes-desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
The script is a standard launcher for an Electron-based desktop application. It reads optional flags from a user configuration file, sets environment variables indicating a packaged installation, checks for the existence of a required runtime binary (`/usr/bin/hermes`) with a user-facing warning if missing, and then launches the electron binary with the application archive. There are no network requests, no data exfiltration, no obfuscated code, no file modifications outside the expected application paths, and no dangerous command executions such as `eval`, `curl`, or `wget`. The only I/O is reading a plaintext config file from the user&#x27;s own XDG config directory and printing a warning to stderr. This behavior is entirely normal for a desktop application wrapper and does not constitute a supply-chain attack.
</details>
<evidence></evidence>
<summary>Standard Electron launcher script, no suspicious behavior.</summary>
</security_assessment>

[6/10] Reviewing PKGBUILD, launcher.test.cjs...
+ Reviewed hermes-desktop. Status: SAFE -- Standard Electron launcher script, no suspicious behavior.
[6/10] Reviewing PKGBUILD, launcher.test.cjs, package-managed-bootstrap.patch...
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard AUR packaging practices for an Electron desktop application. The upstream source is a pinned release archive from the project's official GitHub repository, and every source entry has a sha256 checksum. The prepare(), build(), check(), and package() functions apply local patches, run npm with `--ignore-scripts`, `--prefer-offline`, or `--offline`, build with electron-builder, and install files into `$pkgdir` and `/usr/lib/hermes-agent-desktop`. No eval, base64, curl-pipe-to-shell, reverse shell, credential access, or data exfiltration behavior is present.

Launcher edits are limited to pointing the package's own launcher and test at the system-managed Electron runtime, which matches the stated purpose. The only network-adjacent step is `npm ci` using the project's lockfile, which is normal for this kind of package and is run with installation scripts disabled. No genuinely malicious or supply-chain behavior was found in this file.
</details>
<evidence>
</evidence>
<summary>
Standard, checksum-pinned PKGBUILD with no malicious behavior found.
</summary>
</security_assessment>

[6/10] Reviewing PKGBUILD, launcher.test.cjs, package-managed-bootstrap.patch, package-managed-runtime.patch...
[7/10] Reviewing launcher.test.cjs, package-managed-bootstrap.patch, package-managed-runtime.patch...
+ Reviewed PKGBUILD. Status: SAFE -- Standard, checksum-pinned PKGBUILD with no malicious behavior found.
LLM auditresponse for launcher.test.cjs:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a Node.js test suite for the `hermes-desktop` launcher script. It is not part of the installed runtime; it reads the launcher from disk and exercises it in an isolated temporary `HOME`, replacing the final process launch with a probe function so that no real Electron process or external command is executed. All file operations are confined to temporary directories created via `fs.mkdtempSync`, which are cleaned up with `fs.rmSync`.

There is no suspicious network access, no obfuscated code, no encoded payloads, no download-and-execute behavior, and no exfiltration of local data. The tests even verify that a shell metacharacter flag like `--literal=$(touch should-not-exist)` is passed literally and does not execute command substitution. This is consistent with ordinary upstream test code and follows standard AUR packaging practices. No supply-chain attack indicators were found.
</details>
<evidence>
</evidence>
<summary>
Test file exercising the launcher in isolated temp dirs; no malicious behavior found.
</summary>
</security_assessment>

[8/10] Reviewing package-managed-bootstrap.patch, package-managed-runtime.patch...
+ Reviewed launcher.test.cjs. Status: SAFE -- Test file exercising the launcher in isolated temp dirs; no malicious behavior found.
LLM auditresponse for package-managed-bootstrap.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
This patch adds a guard at the start of a bootstrap function in an Electron desktop app. When the environment variable `HERMES_DESKTOP_PACKAGE_MANAGED_RUNTIME` is set to `1`, the function throws an error and disables runtime bootstrap, indicating the package-managed installation uses the system `hermes-agent` package and the agent tree is read-only.

The change is benign and consistent with packaging best practices: it simply prevents the desktop app from attempting to bootstrap or modify an agent tree that is owned by the system package manager. There is no obfuscation, no network access, no file manipulation, and no execution of untrusted code. The environment variable check is a standard runtime configuration mechanism. This poses no supply-chain or security risk.
</details>
<evidence>
</evidence>
<summary>
Benign patch disabling runtime bootstrap for package-managed installations. No security issues found.
</summary>
</security_assessment>

[9/10] Reviewing package-managed-runtime.patch...
+ Reviewed package-managed-bootstrap.patch. Status: SAFE -- Benign patch disabling runtime bootstrap for package-managed installations. No security issues found.
LLM auditresponse for package-managed-runtime.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
The patch adds an environment variable check (`HERMES_DESKTOP_PACKAGE_MANAGED_RUNTIME`) that, when set, causes the desktop app to skip its own bootstrap, update, and channel-switching logic, instead raising errors or returning structured responses that tell the user to update via their system package manager (AUR). This is a standard packaging integration technique: it prevents the Electron app from conflicting with the system-installed agent runtime by delegating lifecycle management to the package manager. There is no obfuscation, no unexpected network access, no data exfiltration, and no deviation from benign, expected packaging behavior. The patch is entirely transparent and purposeful.
</details>
<evidence>
</evidence>
<summary>Packaging patch to defer updates to package manager.</summary>
</security_assessment>

[10/10] Reviewing ...
+ Reviewed package-managed-runtime.patch. Status: SAFE -- Packaging patch to defer updates to package manager.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 39,475
  Completion Tokens: 7,938
  Total Tokens: 47,413
  Total Cost: $0.005037
  Execution Time: 55.05 seconds

Final Status: SAFE


No issues found.
