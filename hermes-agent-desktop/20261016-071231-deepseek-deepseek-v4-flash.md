---
package: hermes-agent-desktop
pkgver: 0.22.2
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 31261
completion_tokens: 6060
total_tokens: 37321
cost: 0.003947671
execution_time: 77.64
files_reviewed: 9
files_skipped: 0
maintainer_files: 9
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-16T07:12:31Z
file_verdicts:
  - file: LICENSE
    status: safe
    summary: Standard license file, no security concerns.
  - file: .gitignore
    status: safe
    summary: Standard .gitignore file, no security issues.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR .SRCINFO, no security issues.
  - file: REUSE.toml
    status: safe
    summary: REUSE.toml is a license metadata file, no security issues.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR packaging, no malicious code.
  - file: hermes-desktop
    status: safe
    summary: "Safe: standard electron app launch wrapper."
  - file: package-managed-bootstrap.patch
    status: safe
    summary: Benign packaging adaptation for system-managed runtime.
  - file: package-managed-runtime.patch
    status: safe
    summary: Standard packaging patch disabling built-in updater.
  - file: launcher.test.cjs
    status: safe
    summary: Standard unit test; no malicious behavior.
---

Materializing hermes-agent-desktop from local mirror...
Materialized hermes-agent-desktop
Analyzing hermes-agent-desktop AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD only defines variables, arrays, and function bodies at the top level. No command substitutions or dangerous operations execute during sourcing. All potentially harmful code (patch, npm, curl, etc.) resides inside `prepare()`, `build()`, `check()`, and `package()` functions, which `makepkg --printsrcinfo` does not invoke. The top-level scope contains only static declarations and function definitions; nothing would download, exfiltrate, or run untrusted code when the file is sourced.
</details>
<evidence></evidence>
<summary>No top-level code execution; safe to printsrcinfo.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No top-level code execution; safe to printsrcinfo.
Reviewing the 9 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/9] Reviewing .SRCINFO...
[0/9] Reviewing .SRCINFO, .gitignore...
[0/9] Reviewing .SRCINFO, .gitignore, LICENSE...
LLM auditresponse for LICENSE:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard BSD Zero Clause License text. It contains no executable code, network requests, obfuscation, file operations, or any other security-relevant content. It is purely a legal document and poses no security risk.</details>
<evidence></evidence>
<summary>Standard license file, no security concerns.</summary>
</security_assessment>

[1/9] Reviewing .SRCINFO, .gitignore...
+ Reviewed LICENSE. Status: SAFE -- Standard license file, no security concerns.
[1/9] Reviewing .SRCINFO, .gitignore, PKGBUILD...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard `.gitignore` file used in AUR packages. It contains only filename patterns to exclude build artifacts (`*.tar.gz`, `*.tar.zst`, `*.pkg.tar.zst`) and directories (`src/`, `pkg/`) from version control. There is no executable code, network requests, obfuscation, or any other security concern. This is perfectly normal and expected for an AUR package repository.</details>
<evidence></evidence>
<summary>Standard .gitignore file, no security issues.</summary>
</security_assessment>

[1/9] Reviewing .SRCINFO, .gitignore, PKGBUILD, REUSE.toml...
[2/9] Reviewing .SRCINFO, PKGBUILD, REUSE.toml...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore file, no security issues.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This .SRCINFO file is a standard AUR package metadata file describing the hermes-agent-desktop package. It declares sources exclusively from the project's official GitHub repository (https://github.com/NousResearch/hermes-agent) along with patches and auxiliary files. All source entries have corresponding SHA-256 checksums (none are `SKIP`), and no unexpected network destinations, embedded code, or obfuscated content are present. The file contains only declarative metadata—there are no commands, scripts, or dynamic operations that could introduce supply chain risks. The dependencies, conflicts, and options are typical for an Electron-based desktop application.

No evidence of malicious or dangerous behavior is found.
</details>
<evidence></evidence>
<summary>Standard AUR .SRCINFO, no security issues.</summary>
</security_assessment>

[2/9] Reviewing .SRCINFO, PKGBUILD, REUSE.toml, hermes-desktop...
[3/9] Reviewing PKGBUILD, REUSE.toml, hermes-desktop...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR .SRCINFO, no security issues.
LLM auditresponse for REUSE.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
The file "REUSE.toml" is a configuration file for the REUSE tool, which manages software licensing compliance. It contains only metadata: a version number, a list of file paths, and associated copyright and license declarations. There are no commands, scripts, network requests, or any executable content. The paths listed are standard packaging files (PKGBUILD, .SRCINFO, LICENSE, patches, etc.). No obfuscated or dangerous patterns exist. This file poses no security threat.
</details>
<evidence></evidence>
<summary>REUSE.toml is a license metadata file, no security issues.</summary>
</security_assessment>

[3/9] Reviewing PKGBUILD, REUSE.toml, hermes-desktop, launcher.test.cjs...
[4/9] Reviewing PKGBUILD, hermes-desktop, launcher.test.cjs...
+ Reviewed REUSE.toml. Status: SAFE -- REUSE.toml is a license metadata file, no security issues.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
Standard AUR PKGBUILD for hermes-agent-desktop. The file builds an Electron desktop UI from a pinned upstream tarball with checksum verification. It uses npm ci and electron-builder, applies local patches, and runs tests. There are no unexpected network requests (source is the project's own GitHub release tarball), no obfuscated code, no data exfiltration, and no commands that fetch and execute external code. All operations are consistent with packaging an Electron application for Arch Linux.
</details>
<evidence></evidence>
<summary>Standard AUR packaging, no malicious code.</summary>
</security_assessment>

[5/9] Reviewing hermes-desktop, launcher.test.cjs...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR packaging, no malicious code.
[5/9] Reviewing hermes-desktop, launcher.test.cjs, package-managed-bootstrap.patch...
LLM auditresponse for hermes-desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This script is a standard launch wrapper for a packaged Electron application. It reads optional flags from a user-specific configuration file (with comment/whitespace handling), sets environment variables to indicate the packaged runtime and resource paths, detects an available browser for agent tools, and finally executes the Electron binary with the app bundle. There are no network requests, downloads, obfuscated commands, file exfiltration, or system modifications beyond normal application startup. The script only operates with explicit paths under `/usr/lib` and `/usr/bin`, consistent with Arch packaging conventions. All operations serve the package's stated purpose.
</details>
<evidence></evidence>
<summary>Safe: standard electron app launch wrapper.</summary>
</security_assessment>

[5/9] Reviewing hermes-desktop, launcher.test.cjs, package-managed-bootstrap.patch, package-managed-runtime.patch...
[6/9] Reviewing launcher.test.cjs, package-managed-bootstrap.patch, package-managed-runtime.patch...
+ Reviewed hermes-desktop. Status: SAFE -- Safe: standard electron app launch wrapper.
LLM auditresponse for package-managed-bootstrap.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
This patch is a simple packaging adaptation for the hermes-agent-desktop AUR package. It prevents the application's bootstrap runner from executing when the environment variable `HERMES_DESKTOP_PACKAGE_MANAGED_RUNTIME` is set to `'1'`. This makes sense when the runtime is provided by a system package rather than downloaded by the application. The error message clearly describes the situation. No malicious behavior is present: no network requests, no obfuscated code, no exfiltration, and no unexpected system modifications. It is a routine integration patch.
</details>
<evidence></evidence>
<summary>Benign packaging adaptation for system-managed runtime.</summary>
</security_assessment>

[7/9] Reviewing launcher.test.cjs, package-managed-runtime.patch...
+ Reviewed package-managed-bootstrap.patch. Status: SAFE -- Benign packaging adaptation for system-managed runtime.
LLM auditresponse for package-managed-runtime.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
This patch is a standard packaging adaptation for AUR. It adds environment-variable-controlled checks (HERMES_DESKTOP_PACKAGE_MANAGED_RUNTIME) to disable the application's built-in update mechanism, bootstrap installation, and update checking when the application is managed by a system package manager. The logic is straightforward, no obfuscation, no network requests, no data exfiltration, and no dangerous commands. The patch returns predefined error messages indicating that the runtime is managed by a system package and directs the user to update via AUR. This is normal and expected behavior for packaging an application that otherwise handles its own updates.
</details>
<evidence></evidence>
<summary>Standard packaging patch disabling built-in updater.</summary>
</security_assessment>

[8/9] Reviewing launcher.test.cjs...
+ Reviewed package-managed-runtime.patch. Status: SAFE -- Standard packaging patch disabling built-in updater.
LLM auditresponse for launcher.test.cjs:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a unit test for the Hermes Agent Desktop launcher script. It uses standard Node.js testing facilities (`node:test`, `node:assert`, `node:child_process`) and runs the launcher in isolated temporary directories with a mocked `exec()` function that only prints arguments. The test verifies properties such as browser selection, flag preservation, and shell injection safety (e.g., ensuring a literal `--literal=$(touch should-not-exist)` flag does not create a file). There are no network requests, obfuscated code, or system modifications outside the test harness. The file is benign and serves only the application's stated testing purpose.
</details>
<evidence></evidence>
<summary>Standard unit test; no malicious behavior.</summary>
</security_assessment>

[9/9] Reviewing ...
+ Reviewed launcher.test.cjs. Status: SAFE -- Standard unit test; no malicious behavior.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 31,261
  Completion Tokens: 6,060
  Total Tokens: 37,321
  Total Cost: $0.003948
  Execution Time: 77.64 seconds

Final Status: SAFE


No issues found.
