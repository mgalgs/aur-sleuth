---
package: hermes-agent-desktop
pkgver: 0.22.5
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 31451
completion_tokens: 4702
total_tokens: 36153
cost: 0.003717805
execution_time: 40.47
files_reviewed: 9
files_skipped: 0
maintainer_files: 9
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-23T19:20:07Z
file_verdicts:
  - file: LICENSE
    status: safe
    summary: License file is benign and safe.
  - file: .gitignore
    status: safe
    summary: Standard .gitignore; no security concerns.
  - file: .SRCINFO
    status: safe
    summary: Standard .SRCINFO with no security issues.
  - file: REUSE.toml
    status: safe
    summary: REUSE.toml is plain metadata; no risk.
  - file: launcher.test.cjs
    status: safe
    summary: Test file with standard testing patterns, no malicious behavior.
  - file: hermes-desktop
    status: safe
    summary: Standard Electron wrapper, no malicious content.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD with pinned checksums; no malicious behavior.
  - file: package-managed-bootstrap.patch
    status: safe
    summary: Patch adds safety guard for package-managed installations.
  - file: package-managed-runtime.patch
    status: safe
    summary: Patch adapts app for system package management; no malicious code.
---

Materializing hermes-agent-desktop from local mirror...
Materialized hermes-agent-desktop
Analyzing hermes-agent-desktop AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only standard variable definitions, arrays, and function declarations at the global scope. No command substitutions, backtick executions, `eval`, `curl`, `wget`, or other dynamic code is executed during sourcing. The potentially dangerous operations (`npm ci`, `patch`, `npm run build`, etc.) are confined within the `prepare()`, `build()`, `check()`, and `package()` functions, which are **not** executed by `makepkg --printsrcinfo`. Therefore, running this command to parse metadata is safe.
</details>
<evidence></evidence>
<summary>No top-level execution risk; all commands are in function bodies.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No top-level execution risk; all commands are in function bodies.
Reviewing the 9 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/9] Reviewing .SRCINFO...
[0/9] Reviewing .SRCINFO, .gitignore...
[0/9] Reviewing .SRCINFO, .gitignore, LICENSE...
LLM auditresponse for LICENSE:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard BSD Zero Clause License text. It contains no executable code, no network requests, no obfuscated content, and no system operations. It is purely a legal document and poses no security risk.
</details>
<evidence></evidence>
<summary>License file is benign and safe.</summary>
</security_assessment>

[0/9] Reviewing .SRCINFO, .gitignore, LICENSE, PKGBUILD...
[1/9] Reviewing .SRCINFO, .gitignore, PKGBUILD...
+ Reviewed LICENSE. Status: SAFE -- License file is benign and safe.
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard `.gitignore` file for an Arch Linux AUR package. It contains only patterns to ignore build artifacts (compressed archives and source/build directories). No executable code, network requests, or suspicious content is present. This is a benign and expected file in an AUR repository.
</details>
<evidence></evidence>
<summary>Standard .gitignore; no security concerns.</summary>
</security_assessment>

[1/9] Reviewing .SRCINFO, .gitignore, PKGBUILD, REUSE.toml...
[2/9] Reviewing .SRCINFO, PKGBUILD, REUSE.toml...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore; no security concerns.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This .SRCINFO file is a standard package metadata file for an AUR package. It contains only declarative fields (pkgbase, pkgdesc, pkgver, arch, license, dependencies, sources, checksums, etc.) and no executable code. The source tarball is fetched from the official upstream GitHub repository (NousResearch/hermes-agent) via HTTPS, which is normal practice. All source files have provided SHA256 checksums, meaning they are pinned and verifiable. There are no suspicious network requests, obfuscated commands, or unexpected operations. The file follows standard AUR packaging conventions.
</details>
<evidence></evidence>
<summary>Standard .SRCINFO with no security issues.</summary>
</security_assessment>

[2/9] Reviewing .SRCINFO, PKGBUILD, REUSE.toml, hermes-desktop...
[3/9] Reviewing PKGBUILD, REUSE.toml, hermes-desktop...
+ Reviewed .SRCINFO. Status: SAFE -- Standard .SRCINFO with no security issues.
LLM auditresponse for REUSE.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard REUSE (reuse.software) configuration file that declares SPDX copyright and license information for listed source files. It contains no executable code, network requests, system modifications, or obfuscated content. The annotations simply tag files with their license and copyright holder as part of a compliance practice. This is benign and follows normal packaging metadata conventions.
</details>
<evidence></evidence>
<summary>REUSE.toml is plain metadata; no risk.</summary>
</security_assessment>

[3/9] Reviewing PKGBUILD, REUSE.toml, hermes-desktop, launcher.test.cjs...
[4/9] Reviewing PKGBUILD, hermes-desktop, launcher.test.cjs...
+ Reviewed REUSE.toml. Status: SAFE -- REUSE.toml is plain metadata; no risk.
LLM auditresponse for launcher.test.cjs:
<security_assessment>
<decision>SAFE</decision>
<details>
This test file exercises a launcher script for the Hermes Agent Desktop package. It uses standard Node.js testing modules (`node:test`, `node:assert`) and spawns Bash with a wrapper that overrides `exec` to capture arguments rather than launching Electron. All operations operate on transient temporary directories created with `fs.mkdtempSync` and cleaned up via `t.after()`. The test logic inspects environment variable values, browser detection ordering, and flag parsing – all benign testing activities. There are no network requests, encoded payloads, unexpected file writes outside the test sandbox, or any indicators of a supply-chain attack. The file is purely a test harness and presents no security concerns.
</details>
<evidence></evidence>
<summary>Test file with standard testing patterns, no malicious behavior.</summary>
</security_assessment>

[4/9] Reviewing PKGBUILD, hermes-desktop, launcher.test.cjs, package-managed-bootstrap.patch...
[5/9] Reviewing PKGBUILD, hermes-desktop, package-managed-bootstrap.patch...
+ Reviewed launcher.test.cjs. Status: SAFE -- Test file with standard testing patterns, no malicious behavior.
LLM auditresponse for hermes-desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This script is a standard wrapper that launches an Electron desktop application. It reads additional flags from a user-configurable file in `~/.config/`, sets several environment variables to indicate the packaged runtime location, and locates the `hermes` CLI and a Chrome-based browser on the system. Finally, it executes the Electron binary with the application archive (`app.asar`). There are no network requests, no obfuscated commands, no attempts to download or execute code from external sources, and no operations that access or exfiltrate sensitive data outside the application's scope. Reading a configuration file from the user's home directory is expected behavior for a desktop application and does not constitute a supply-chain attack.
</details>
<evidence></evidence>
<summary>Standard Electron wrapper, no malicious content.</summary>
</security_assessment>

[5/9] Reviewing PKGBUILD, hermes-desktop, package-managed-bootstrap.patch, package-managed-runtime.patch...
[6/9] Reviewing PKGBUILD, package-managed-bootstrap.patch, package-managed-runtime.patch...
+ Reviewed hermes-desktop. Status: SAFE -- Standard Electron wrapper, no malicious content.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard Arch Linux packaging practices for an Electron-based desktop application. All source files (tarball from the project&#39;s GitHub, patches, launcher script, and test script) are pinned with SHA-256 checksums, ensuring integrity. The build process uses `npm ci` with `--ignore-scripts` to prevent arbitrary lifecycle execution, and enables offline mode to avoid unintended network requests. Patches are applied locally and only modify the application to integrate with the system&#39;s Electron runtime and prevent built-in agent bootstrap/update mechanisms. There is no exfiltration of data, no fetching of code from untrusted sources at build time, and no obfuscated commands. The package relies on the upstream source and standard tooling; the maintainer has taken care to pin versions and maintain reproducibility.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD with pinned checksums; no malicious behavior.</summary>
</security_assessment>

[7/9] Reviewing package-managed-bootstrap.patch, package-managed-runtime.patch...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD with pinned checksums; no malicious behavior.
LLM auditresponse for package-managed-bootstrap.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
The patch adds a simple environment-check guard at the beginning of the bootstrap runner. When `HERMES_DESKTOP_PACKAGE_MANAGED_RUNTIME` is set to `'1'`, the function immediately throws an error explaining that the runtime is managed by the package system and bootstrap is disabled. This is a standard defensive measure for package-managed installations: it prevents the application from downloading and executing its own installer or bootstrap scripts, which could otherwise bypass the package manager&#39;s update mechanism and introduce supply-chain risks. The code is clear, non-obfuscated, and serves a legitimate security/hygiene purpose. There is no evidence of data exfiltration, backdoors, or any other malicious behaviour.
</details>
<evidence>
</evidence>
<summary>Patch adds safety guard for package-managed installations.</summary>
</security_assessment>

[8/9] Reviewing package-managed-runtime.patch...
+ Reviewed package-managed-bootstrap.patch. Status: SAFE -- Patch adds safety guard for package-managed installations.
LLM auditresponse for package-managed-runtime.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
This patch adds a package-managed runtime mode for the Hermes Desktop application. When the environment variable `HERMES_DESKTOP_PACKAGE_MANAGED_RUNTIME` is set to `1`, the application disables its built-in update mechanisms and bootstrap (agent tree installation) and instead instructs the user to update via the system package manager. This is a standard adaptation for AUR packaging where the runtime is managed by the system package rather than the application itself. There is no malicious code: no exfiltration, no unexpected network requests, no obfuscation, no backdoors. The patch only adds conditional blocks that return early with informative messages when the environment variable is set.
</details>
<evidence></evidence>
<summary>Patch adapts app for system package management; no malicious code.</summary>
</security_assessment>

[9/9] Reviewing ...
+ Reviewed package-managed-runtime.patch. Status: SAFE -- Patch adapts app for system package management; no malicious code.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 31,451
  Completion Tokens: 4,702
  Total Tokens: 36,153
  Total Cost: $0.003718
  Execution Time: 40.47 seconds

Final Status: SAFE


No issues found.
