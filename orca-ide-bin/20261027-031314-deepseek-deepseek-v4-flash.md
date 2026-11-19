---
package: orca-ide-bin
pkgver: 1.4.242
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 16687
completion_tokens: 7776
total_tokens: 24463
cost: 0.00451346
execution_time: 81.28
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-27T03:13:13Z
file_verdicts:
  - file: PKGBUILD
    status: safe
    summary: Standard pinned-release AUR PKGBUILD; no malicious behavior or injected code found.
  - file: orca-ide.js
    status: safe
    summary: No malicious code detected; legitimate Electron bootstrapper.
  - file: .SRCINFO
    status: safe
    summary: Standard pinned AUR binary package metadata with checksums; no malicious behavior found.
  - file: orca-ide.sh
    status: safe
    summary: Standard Electron app launcher, no security issues.
---

Materializing orca-ide-bin from local mirror...
Materialized orca-ide-bin
Analyzing orca-ide-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The top-level scope of this PKGBUILD consists entirely of variable assignments (`pkgname`, `pkgver`, `source`, `sha256sums`, etc.) and function definitions (`prepare()`, `package()`, `_get_app_dir()`, `_check_electron_version()`). No command substitutions, backtick operations, or implicit executable code are present at the global level.

When `makepkg --printsrcinfo` sources the PKGBUILD, only these top-level definitions are evaluated. The potentially sensitive operations — downloading content from GitHub (`source` array strings), running `find`/`strings`/`sed`, and writing wrapper scripts — are confined entirely to the `prepare()` and `package()` function bodies. Since `--printsrcinfo` does not invoke `pkgver()`, `prepare()`, `build()`, or `package()`, none of those code paths execute during this metadata parsing step. The SHA256 checksums defined (even if they were `SKIP`) are irrelevant at this stage as no source verification occurs here.

Therefore, running `makepkg --printsrcinfo` on this PKGBUILD does not trigger any malicious or unexpected code execution.
</details>
<evidence></evidence>
<summary>No global scope execution, safe to source for metadata.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No global scope execution, safe to source for metadata.
Reviewing the 4 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/4] Reviewing .SRCINFO...
[0/4] Reviewing .SRCINFO, PKGBUILD...
[0/4] Reviewing .SRCINFO, PKGBUILD, orca-ide.js...
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a standard binary package build for `orca-ide-bin`. It downloads a pinned RPM release from the project's own GitHub repository, verifies it with fixed SHA-256 checksums, and also verifies the bundled local launcher scripts. The `prepare()` function performs normal path substitutions, checks the extracted Electron version, and writes a launcher wrapper into the extracted application directory. `package()` installs files into `$pkgdir` using standard `install` and `cp` commands.

No obfuscated code, hidden network requests, credential access, or execution of downloaded scripts is present. The wrapper script generated in `prepare()` simply unsets `NODE_OPTIONS` and executes `electron43` as Node against the application's own CLI entry point, which is consistent with the application's stated purpose as an Electron-based agent development environment. The only minor hygiene note is that the two local `.js` and `.sh` sources are not visible in this file, but they are covered by pinned checksums and referenced as ordinary AUR source files; nothing in this PKGBUILD indicates malicious behavior.
</details>
<evidence>
</evidence>
<summary>
Standard pinned-release AUR PKGBUILD; no malicious behavior or injected code found.
</summary>
</security_assessment>

[0/4] Reviewing .SRCINFO, PKGBUILD, orca-ide.js, orca-ide.sh...
[1/4] Reviewing .SRCINFO, orca-ide.js, orca-ide.sh...
+ Reviewed PKGBUILD. Status: SAFE -- Standard pinned-release AUR PKGBUILD; no malicious behavior or injected code found.
LLM auditresponse for orca-ide.js:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `orca-ide.js` is a standard Electron application bootstrapper that resolves the application directory and sets up environment variables for a packaged Electron app. It does not contain any network requests, downloading of code, execution of external commands, or obfuscated content. The filesystem function wrapping performs path redirection to the application directory, which is a common technique in Electron packaging to ensure resource loads work correctly. There is no evidence of malicious behavior, data exfiltration, or supply-chain attack intent. The code is straightforward and consistent with typical Electron packaging scripts.
</details>
<evidence></evidence>
<summary>No malicious code detected; legitimate Electron bootstrapper.</summary>
</security_assessment>

[2/4] Reviewing .SRCINFO, orca-ide.sh...
+ Reviewed orca-ide.js. Status: SAFE -- No malicious code detected; legitimate Electron bootstrapper.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This `.SRCINFO` is standard AUR metadata for a prebuilt binary package. It declares pinned source URLs from the project's own GitHub repository (`stablyai/orca`) for the LICENSE file and x86_64/aarch64 RPM artifacts, with explicit SHA-256 checksums for every source. There are no suspicious network endpoints, no encoded or obfuscated commands, and no file operations beyond normal package metadata.

The package depends on common runtime components (electron43, nodejs, python, github-cli, npm), which is consistent with the stated purpose of an IDE for running coding agents with a user's own subscription. No behavior here deviates from standard packaging practices, and nothing indicates injected malicious code or a supply-chain attack.
</details>
<evidence>
</evidence>
<summary>
Standard pinned AUR binary package metadata with checksums; no malicious behavior found.
</summary>
</security_assessment>

[3/4] Reviewing orca-ide.sh...
+ Reviewed .SRCINFO. Status: SAFE -- Standard pinned AUR binary package metadata with checksums; no malicious behavior found.
LLM auditresponse for orca-ide.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard Electron application launcher script for the Orca IDE. It performs the expected launch sequence: setting up library paths (`LD_LIBRARY_PATH`), detecting the application bundle format (`app.asar`, `app/`, `app.asar.unpacked`), handling X11/Wayland session configuration via an environment variable hint, and launching the Electron binary. The use of `@appname@` and `@electronversion@` is standard template substitution performed during packaging. The indirect variable expansion (`!_ozone_var`) is used to read a defined configuration variable from the environment (defaulting to `x11`), which is a legitimate and non-obfuscated pattern. There is no evidence of network requests, downloads, data exfiltration, obfuscated commands, or any behavior that deviates from the application&#x27;s stated purpose.
</details>
<evidence>
</evidence>
<summary>Standard Electron app launcher, no security issues.</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed orca-ide.sh. Status: SAFE -- Standard Electron app launcher, no security issues.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 16,687
  Completion Tokens: 7,776
  Total Tokens: 24,463
  Total Cost: $0.004513
  Execution Time: 81.28 seconds

Final Status: SAFE


No issues found.
