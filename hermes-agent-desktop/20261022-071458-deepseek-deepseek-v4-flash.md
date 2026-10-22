---
package: hermes-agent-desktop
pkgver: 0.22.4
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 31484
completion_tokens: 11286
total_tokens: 42770
cost: 0.004919096
execution_time: 122.34
files_reviewed: 9
files_skipped: 0
maintainer_files: 9
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-22T07:14:58Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard gitignore for build artifacts.
  - file: LICENSE
    status: safe
    summary: Standard BSD Zero Clause license text; no security concerns.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata, no malicious indicators.
  - file: REUSE.toml
    status: safe
    summary: Benign REUSE configuration metadata file.
  - file: hermes-desktop
    status: safe
    summary: Standard packaging wrapper, no malicious behavior.
  - file: launcher.test.cjs
    status: safe
    summary: Legitimate test file, no malicious behavior.
  - file: package-managed-bootstrap.patch
    status: safe
    summary: Legitimate patch for package-managed runtime detection.
  - file: package-managed-runtime.patch
    status: safe
    summary: Benign AUR packaging patch disabling self-update.
  - file: PKGBUILD
    status: safe
    summary: Safe PKGBUILD with pinned sources and offline builds.
---

Materializing hermes-agent-desktop from local mirror...
Materialized hermes-agent-desktop
Analyzing hermes-agent-desktop AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only top-level variable assignments (pkgname, pkgver, source, sha256sums, etc.) and function definitions (`_extract_dir`, `_set_npm_env`, `prepare`, `build`, `check`, `package`). No function calls, command substitutions, or any executable code exist outside the defined functions. Since `makepkg --printsrcinfo` only sources the PKGBUILD (executing top‑level code) and does **not** run any function bodies, there is nothing in this file that would execute a malicious command during the parse step. All packaging logic is safely enclosed within functions that are invoked only during later build phases.
</details>
<evidence></evidence>
<summary>No top-level code execution; only definitions and variable assignments.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No top-level code execution; only definitions and variable assignments.
Reviewing the 9 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/9] Reviewing .SRCINFO...
[0/9] Reviewing .SRCINFO, LICENSE...
[0/9] Reviewing .SRCINFO, LICENSE, .gitignore...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
The `.gitignore` file contains standard exclusion patterns for Arch Linux build artifacts. It ignores compressed archives (`*.tar.gz`, `*.tar.zst`, `*.pkg.tar.zst`) and build directories (`src/`, `pkg/`). There is no executable code, no network operations, no system modifications, and no obfuscation. This is a benign configuration file with no security concerns.
</details>
<evidence>
</evidence>
<summary>Standard gitignore for build artifacts.</summary>
</security_assessment>

[0/9] Reviewing .SRCINFO, LICENSE, .gitignore, PKGBUILD...
[1/9] Reviewing .SRCINFO, LICENSE, PKGBUILD...
+ Reviewed .gitignore. Status: SAFE -- Standard gitignore for build artifacts.
LLM auditresponse for LICENSE:
<security_assessment>
<decision>SAFE</decision>
<details>
This file contains only the BSD Zero Clause License text, a standard permissive software license. There is no executable code, no network requests, no file operations, no obfuscation, and no suspicious commands. The copyright line attributes the license to the hermes-agent-desktop AUR contributors, and the remainder is the verbatim 0BSD license body. This is benign packaging content with no security implications.
</details>
<evidence>
</evidence>
<summary>
Standard BSD Zero Clause license text; no security concerns.</summary>
</security_assessment>

[1/9] Reviewing .SRCINFO, LICENSE, PKGBUILD, REUSE.toml...
[2/9] Reviewing .SRCINFO, PKGBUILD, REUSE.toml...
+ Reviewed LICENSE. Status: SAFE -- Standard BSD Zero Clause license text; no security concerns.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The `.SRCINFO` file is a standard AUR package metadata file. All source tarballs and patches are pinned with explicit SHA256 checksums (none marked SKIP). The sources originate from the project&#39;s own GitHub repository and included patches, which is normal for AUR packaging. There are no encoded commands, no suspicious network destinations, and no evidence of attempted data exfiltration or backdoor injection. The dependencies and options are appropriate for an Electron-based desktop application.
</details>
<evidence></evidence>
<summary>Standard AUR metadata, no malicious indicators.</summary>
</security_assessment>

[2/9] Reviewing .SRCINFO, PKGBUILD, REUSE.toml, hermes-desktop...
[3/9] Reviewing PKGBUILD, REUSE.toml, hermes-desktop...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata, no malicious indicators.
LLM auditresponse for REUSE.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a REUSE (Software Bill of Materials) configuration file used to track copyright and licensing information for the package's source files. It contains no executable code, network requests, obfuscation, or any mechanism that could modify the system or exfiltrate data. It simply annotates the legal metadata (copyright holder and license) of other files in the repository. This is a standard practice for license compliance and poses no security threat.
</details>
<evidence>
</evidence>
<summary>
Benign REUSE configuration metadata file.
</summary>
</security_assessment>

[3/9] Reviewing PKGBUILD, REUSE.toml, hermes-desktop, launcher.test.cjs...
[4/9] Reviewing PKGBUILD, hermes-desktop, launcher.test.cjs...
+ Reviewed REUSE.toml. Status: SAFE -- Benign REUSE configuration metadata file.
LLM auditresponse for hermes-desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard wrapper script for a packaged Electron application.  
It reads user configuration from a flags file, sets environment variables to indicate the app is running from a system package, locates a system-installed Chrome/Chromium binary for browser-based agent tools, and launches the app via the system's electron binary.  
No network requests, obfuscated code, dangerous commands (eval, base64, curl, wget), or unexpected file operations are present. The script behaves consistently with ordinary AUR packaging practices.
</details>
<evidence></evidence>
<summary>Standard packaging wrapper, no malicious behavior.</summary>
</security_assessment>

[5/9] Reviewing PKGBUILD, launcher.test.cjs...
+ Reviewed hermes-desktop. Status: SAFE -- Standard packaging wrapper, no malicious behavior.
[5/9] Reviewing PKGBUILD, launcher.test.cjs, package-managed-bootstrap.patch...
LLM auditresponse for launcher.test.cjs:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a Node.js test suite for the `hermes-desktop` launcher script. It uses standard Node.js modules (`assert`, `fs`, `os`, `path`, `child_process`, `test`) to create isolated temporary directories, mock browser binaries, and spawn the launcher with a mocked `exec` function that captures arguments instead of executing anything. All file operations are confined to temporary directories that are cleaned up after each test. No network requests, obfuscated code, or suspicious system modifications are present. This code is a normal part of the upstream application&#39;s test infrastructure and does not contain any supply-chain attack vectors.
</details>
<evidence></evidence>
<summary>Legitimate test file, no malicious behavior.</summary>
</security_assessment>

[6/9] Reviewing PKGBUILD, package-managed-bootstrap.patch...
+ Reviewed launcher.test.cjs. Status: SAFE -- Legitimate test file, no malicious behavior.
[6/9] Reviewing PKGBUILD, package-managed-bootstrap.patch, package-managed-runtime.patch...
LLM auditresponse for package-managed-bootstrap.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
This patch adds a guard that checks for the environment variable `HERMES_DESKTOP_PACKAGE_MANAGED_RUNTIME`. When set to `1`, it prevents the application from attempting to download or bootstrap its own runtime, which is consistent with the behavior expected for a package-managed installation (e.g., from the AUR). The logic is straightforward, uses an allowed environment variable, and does not introduce any network requests, obfuscation, or file manipulation outside of the application's normal flow. There is no evidence of malicious intent or supply-chain attack.
</details>
<evidence></evidence>
<summary>Legitimate patch for package-managed runtime detection.</summary>
</security_assessment>

[7/9] Reviewing PKGBUILD, package-managed-runtime.patch...
+ Reviewed package-managed-bootstrap.patch. Status: SAFE -- Legitimate patch for package-managed runtime detection.
LLM auditresponse for package-managed-runtime.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
This patch file modifies the Electron main process of the hermes-agent-desktop application to support a package-managed runtime. When the environment variable `HERMES_DESKTOP_PACKAGE_MANAGED_RUNTIME` is set to `&apos;1&apos;`, the app will refuse to download, install, or update the Hermes agent tree, returning messages that direct the user to update via their AUR helper instead. This is a standard integration technique for Linux packaging (e.g., Arch AUR) that disables the built-in auto-updater and installer, deferring to the system package manager. The patch contains no obfuscated code, no suspicious network requests, no data exfiltration, and no modifications to system files outside the application&apos;s scope. It is a benign, purpose-specific patch that follows expected security practices for distribution-packaged software.
</details>
<evidence></evidence>
<summary>Benign AUR packaging patch disabling self-update.</summary>
</security_assessment>

[8/9] Reviewing PKGBUILD...
+ Reviewed package-managed-runtime.patch. Status: SAFE -- Benign AUR packaging patch disabling self-update.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard Arch packaging practices for an Electron-based application. The upstream source is fetched as a pinned tarball from the project's official GitHub repository with a SHA-256 checksum, ensuring integrity. All additional source files (patches, launcher script, test script) are also pinned with checksums. The `prepare()` and `build()` functions use `npm` with `--offline` and `--prefer-offline` flags to minimise network dependencies at build time, and `--ignore-scripts` prevents arbitrary npm lifecycle code from executing. The patches are clearly described as disabling in-app runtime downloads and self-update mechanisms, consistent with Arch's policy of using system-provided packages. There are no obfuscated commands, no unexpected network requests beyond the declared source tarball, no file operations outside the build/install directories, and no evidence of data exfiltration or backdoors. This is a well-maintained, security-conscious PKGBUILD.
</details>
<evidence>
</evidence>
<summary>Safe PKGBUILD with pinned sources and offline builds.</summary>
</security_assessment>

[9/9] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Safe PKGBUILD with pinned sources and offline builds.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 31,484
  Completion Tokens: 11,286
  Total Tokens: 42,770
  Total Cost: $0.004919
  Execution Time: 122.34 seconds

Final Status: SAFE


No issues found.
