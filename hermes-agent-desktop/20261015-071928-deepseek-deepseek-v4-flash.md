---
package: hermes-agent-desktop
pkgver: 0.22.1
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 31586
completion_tokens: 9088
total_tokens: 40674
cost: 0.004528342
execution_time: 107.65
files_reviewed: 9
files_skipped: 0
maintainer_files: 9
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-15T07:19:28Z
file_verdicts:
  - file: LICENSE
    status: safe
    summary: Standard license file, no security issues.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata file, no malicious content.
  - file: .gitignore
    status: safe
    summary: Benign .gitignore file excluding standard makepkg build artifacts. No security issues.
  - file: REUSE.toml
    status: safe
    summary: Declarative REUSE license metadata; no security concerns identified.
  - file: launcher.test.cjs
    status: safe
    summary: Benign launcher test file; no malicious behavior found.
  - file: package-managed-bootstrap.patch
    status: safe
    summary: Benign runtime guard patch; no malicious behavior detected.
  - file: hermes-desktop
    status: safe
    summary: Standard Electron launcher wrapper; no malicious behavior detected.
  - file: package-managed-runtime.patch
    status: safe
    summary: Benign patch disabling self-updates when runtime is package-managed. No malicious behavior.
  - file: PKGBUILD
    status: safe
    summary: "Legitimate Electron AUR package: pinned sources, normal build, no malicious behavior."
---

Materializing hermes-agent-desktop from local mirror...
Materialized hermes-agent-desktop
Analyzing hermes-agent-desktop AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only top-level variable assignments (including `source` and `sha256sums` arrays) and function definitions (`_extract_dir`, `_set_npm_env`, `prepare`, `build`, `check`, `package`). No commands are executed at the global scope when the file is sourced. There are no `eval`, command substitutions, network requests, file writes, or other potentially dangerous operations at the top level. All code that performs actual work resides inside functions that are only called during `prepare()`, `build()`, `package()`, or `check()` — none of which are invoked by `makepkg --printsrcinfo`. Therefore, running `makepkg --printsrcinfo` on this PKGBUILD is safe.
</details>
<evidence></evidence>
<summary>No top-level code execution; only definitions.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No top-level code execution; only definitions.
Reviewing the 9 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/9] Reviewing .SRCINFO...
[0/9] Reviewing .SRCINFO, .gitignore...
[0/9] Reviewing .SRCINFO, .gitignore, LICENSE...
LLM auditresponse for LICENSE:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard BSD Zero Clause License text. It contains no executable code, no instructions, no network requests, no obfuscation, and no system modifications. There is no evidence of malicious behavior. The file is purely a legal document and poses no security risk.
</details>
<evidence></evidence>
<summary>Standard license file, no security issues.</summary>
</security_assessment>

[0/9] Reviewing .SRCINFO, .gitignore, LICENSE, PKGBUILD...
[1/9] Reviewing .SRCINFO, .gitignore, PKGBUILD...
+ Reviewed LICENSE. Status: SAFE -- Standard license file, no security issues.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.SRCINFO` metadata file for an AUR package. It defines package metadata (name, version, dependencies, source URLs, checksums) but contains no executable code. All source archives point to the project's own GitHub repository (`github.com/NousResearch/hermes-agent`), and each source has a non‑SKIP SHA‑256 checksum. There are no embedded scripts, no obfuscated content, no unexpected network destinations, and no commands that could exfiltrate data or execute untrusted code. The file is safe.
</details>
<evidence></evidence>
<summary>Standard AUR metadata file, no malicious content.</summary>
</security_assessment>

[2/9] Reviewing .gitignore, PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata file, no malicious content.
[2/9] Reviewing .gitignore, PKGBUILD, REUSE.toml...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard `.gitignore` used in an AUR package repository. It excludes build artifacts such as tarballs, compressed package files, and the `src/` and `pkg/` directories created during the `makepkg` process. This is normal and expected packaging practice and contains no commands, network operations, obfuscation, or references to external hosts. No security concerns are present.
</details>
<evidence>
</evidence>
<summary>
Benign .gitignore file excluding standard makepkg build artifacts. No security issues.</summary>
</security_assessment>

[2/9] Reviewing .gitignore, PKGBUILD, REUSE.toml, hermes-desktop...
[3/9] Reviewing PKGBUILD, REUSE.toml, hermes-desktop...
+ Reviewed .gitignore. Status: SAFE -- Benign .gitignore file excluding standard makepkg build artifacts. No security issues.
LLM auditresponse for REUSE.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a REUSE software licensing metadata configuration. It only lists file paths and associates them with an SPDX copyright text and license identifier. There is no executable code, no network activity, no obfuscation, and no file operations beyond declarative metadata. Nothing in this file deviates from standard packaging or licensing practice.
</details>
<evidence>
</evidence>
<summary>
Declarative REUSE license metadata; no security concerns identified.</summary>
</security_assessment>

[3/9] Reviewing PKGBUILD, REUSE.toml, hermes-desktop, launcher.test.cjs...
[4/9] Reviewing PKGBUILD, hermes-desktop, launcher.test.cjs...
+ Reviewed REUSE.toml. Status: SAFE -- Declarative REUSE license metadata; no security concerns identified.
LLM auditresponse for launcher.test.cjs:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a Node.js test suite for a launcher wrapper script. It creates temporary home directories, fake browser executables, and a flags configuration file, then runs the launcher through a stubbed `exec()` function so the actual Electron application is never started. The tests verify launcher behavior such as browser detection order, handling of an explicit `AGENT_BROWSER_EXECUTABLE_PATH`, and preservation of argument lists.

There is no network access, no downloading or execution of remote code, no obfuscation, no exfiltration of sensitive files, and no modification of system files outside temporary test directories. The `--literal=$(touch should-not-exist)` test case is actually a good-faith verification that command substitution in the flags file is not evaluated. The file is consistent with normal AUR package testing and contains no evidence of malicious behavior.
</details>
<evidence>
</evidence>
<summary>
Benign launcher test file; no malicious behavior found.</summary>
</security_assessment>

[4/9] Reviewing PKGBUILD, hermes-desktop, launcher.test.cjs, package-managed-bootstrap.patch...
[5/9] Reviewing PKGBUILD, hermes-desktop, package-managed-bootstrap.patch...
+ Reviewed launcher.test.cjs. Status: SAFE -- Benign launcher test file; no malicious behavior found.
LLM auditresponse for package-managed-bootstrap.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
This patch adds a guard at the start of a function, throwing an error when the environment variable `HERMES_DESKTOP_PACKAGE_MANAGED_RUNTIME` is set to `1`. This is consistent with a package-managed deployment where the runtime is handled by the system package rather than the desktop app's self-bootstrap logic. The patch contains no network requests, no code execution, no obfuscation, and no file system modifications. The error message clearly explains the behavior as a deliberate packaging integration. This is a normal, transparent modification and does not indicate any malicious or supply-chain risk.
</details>
<evidence>
</evidence>
<summary>
Benign runtime guard patch; no malicious behavior detected.
</summary>
</security_assessment>

[5/9] Reviewing PKGBUILD, hermes-desktop, package-managed-bootstrap.patch, package-managed-runtime.patch...
[6/9] Reviewing PKGBUILD, hermes-desktop, package-managed-runtime.patch...
+ Reviewed package-managed-bootstrap.patch. Status: SAFE -- Benign runtime guard patch; no malicious behavior detected.
LLM auditresponse for hermes-desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard launcher wrapper for a packaged Electron application. It reads an optional user flags file from `~/.config`, trims whitespace and skips comments, then exports environment variables that point the application at the packaged resources and at the locally installed `hermes-agent` CLI. It also locates an existing Chrome/Chromium binary on `PATH` to use for browser-based tools and prints a warning if one is not found.

There is no suspicious or malicious behavior: no network requests, no downloads, no eval/base64/obfuscation, no modification of files outside the user configuration, and no execution of arbitrary fetched code. The script only reads a user-owned flags file, checks for expected executables, exports environment variables, and launches the packaged Electron app via `exec`. This is consistent with normal AUR packaging and application launch behavior.
</details>
<evidence>
</evidence>
<summary>
Standard Electron launcher wrapper; no malicious behavior detected.</summary>
</security_assessment>

[7/9] Reviewing PKGBUILD, package-managed-runtime.patch...
+ Reviewed hermes-desktop. Status: SAFE -- Standard Electron launcher wrapper; no malicious behavior detected.
LLM auditresponse for package-managed-runtime.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
This patch is a benign packaging adaptation. It adds an opt-in environment flag (`HERMES_DESKTOP_PACKAGE_MANAGED_RUNTIME=1`) that causes the Hermes desktop app to refuse its normal self-update and runtime-bootstrap behavior, instead directing the user to install or update the `hermes-agent` and `hermes-agent-desktop` packages through their AUR helper.

The modifications only short-circuit existing update and bootstrap flows with early returns and error messages; they do not introduce network requests, download or execute code, modify unrelated system files, exfiltrate data, use obfuscation, or perform any privileged operations. The behavior is consistent with a system-packaging patch that prevents an application from writing its own runtime tree when the distribution package manages that runtime.
</details>
<evidence>
</evidence>
<summary>
Benign patch disabling self-updates when runtime is package-managed. No malicious behavior.</summary>
</security_assessment>

[8/9] Reviewing PKGBUILD...
+ Reviewed package-managed-runtime.patch. Status: SAFE -- Benign patch disabling self-updates when runtime is package-managed. No malicious behavior.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard AUR packaging for an Electron desktop application. Sources are pinned to a tagged upstream release (v0.22.1) with a commit hash, and every source file has a fixed sha256 checksum with no SKIP entries. The prepare, build, check, and package stages use ordinary tooling: applying local patches, `npm ci` with a lockfile, `npm run build`, electron-builder, running upstream tests, and installing files into `$pkgdir`. The only network activity is normal package-manager dependency resolution from standard registries, not fetching executable code from an unrelated host.

There is no eval, base64 decoding, curl-pipe-to-shell, obfuscation, credential access, or modification of files outside the package scope. The patches and launcher are described as enforcing a package-managed runtime and disabling in-app agent bootstrap/update in favor of the packaged `hermes-agent` dependency, which is consistent with the application's purpose. I see no evidence of injected malicious code or supply-chain attack behavior in this PKGBUILD.
</details>
<evidence></evidence>
<summary>
Legitimate Electron AUR package: pinned sources, normal build, no malicious behavior.
</summary>
</security_assessment>

[9/9] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Legitimate Electron AUR package: pinned sources, normal build, no malicious behavior.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 31,586
  Completion Tokens: 9,088
  Total Tokens: 40,674
  Total Cost: $0.004528
  Execution Time: 107.65 seconds

Final Status: SAFE


No issues found.
