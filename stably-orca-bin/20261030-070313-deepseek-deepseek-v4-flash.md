---
package: stably-orca-bin
pkgver: 1.4.245
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 13603
completion_tokens: 2726
total_tokens: 16329
cost: 0.001734005
execution_time: 31.07
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-30T07:03:12Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard AUR binary package with pinned checksums; no malicious behavior detected.
  - file: stably-orca.desktop
    status: safe
    summary: Standard desktop entry, no security issues.
  - file: stably-orca.sh
    status: safe
    summary: Legitimate wrapper script with no malicious content.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD, no malicious behavior.
---

Materializing stably-orca-bin from local mirror...
Materialized stably-orca-bin
Analyzing stably-orca-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD top-level scope contains only variable definitions (pkgname, pkgver, source, sha256sums, etc.) and comments. No command substitutions, function calls, or dangerous commands (curl, eval, base64, etc.) are present. Sourcing this file to run `makepkg --printsrcinfo` will only populate these variables without executing any payload. The use of HTML entities (`&quot;`, `&apos;`) as literal characters would cause a syntax error if uncorrected, but that is harmless and does not execute code. Functions like `prepare()`, `build()`, and `package()` are not executed during this step and are out of scope.
</details>
<evidence>
</evidence>
<summary>Top-level code is safe for sourcing.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Top-level code is safe for sourcing.
Reviewing the 4 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/4] Reviewing .SRCINFO...
[0/4] Reviewing .SRCINFO, stably-orca.desktop...
[0/4] Reviewing .SRCINFO, stably-orca.desktop, PKGBUILD...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This .SRCINFO describes a standard AUR binary package. It declares a prebuilt AppImage downloaded from the project's own GitHub releases URL (`https://github.com/stablyai/orca/releases/download/v1.4.245/orca-linux.AppImage`) along with a launcher script and desktop file. All three sources have pinned sha256 checksums. Dependencies and packaging options are ordinary for an Electron-based GTK application. There are no suspicious network endpoints, no obfuscated commands, no file operations that modify system data beyond normal package installation, and no signs of injected malicious code. The package follows normal AUR packaging practice, and the upstream download relationship is consistent with the package's stated purpose.
</details>
<evidence>
</evidence>
<summary>
Standard AUR binary package with pinned checksums; no malicious behavior detected.</summary>
</security_assessment>

[1/4] Reviewing stably-orca.desktop, PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR binary package with pinned checksums; no malicious behavior detected.
[1/4] Reviewing stably-orca.desktop, PKGBUILD, stably-orca.sh...
LLM auditresponse for stably-orca.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.desktop` file for the Orca IDE application. It defines the application name, comment, command to execute (`stably-orca %U`), and other metadata. There is no obfuscated code, no network requests, no dangerous operations, and no deviation from normal packaging practices. The file is a simple configuration file used by Linux desktop environments to launch the application.
</details>
<evidence></evidence>
<summary>Standard desktop entry, no security issues.</summary>
</security_assessment>

[2/4] Reviewing PKGBUILD, stably-orca.sh...
+ Reviewed stably-orca.desktop. Status: SAFE -- Standard desktop entry, no security issues.
LLM auditresponse for stably-orca.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This wrapper script sets the `APPDIR` environment variable to `/opt/stably-orca` and then launches the application's `AppRun` binary with a `--disable-features=Vulkan` flag. It also includes a commented alternative for Wayland support. There are no network operations, file modifications outside of the expected execution path, obfuscated code, or any other indicators of malicious behavior. The script performs only standard packaging tasks: setting environment variables and executing the upstream binary with user-provided arguments. No evidence of a supply-chain attack is present.
</details>
<evidence></evidence>
<summary>Legitimate wrapper script with no malicious content.</summary>
</security_assessment>

[3/4] Reviewing PKGBUILD...
+ Reviewed stably-orca.sh. Status: SAFE -- Legitimate wrapper script with no malicious content.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard Arch packaging practices for a prebuilt binary AppImage. The source is downloaded from the upstream project's official GitHub releases, and all three sources have pinned SHA256 checksums. The `prepare()` function extracts the AppImage without executing any payload, and `package()` installs the extracted files into `$pkgdir` along with a wrapper script and desktop entry. There are no obfuscated commands, no unexpected network requests, no exfiltration of data, and no execution of code from untrusted sources. The file contains only routine packaging operations.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD, no malicious behavior.</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD, no malicious behavior.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 13,603
  Completion Tokens: 2,726
  Total Tokens: 16,329
  Total Cost: $0.001734
  Execution Time: 31.07 seconds

Final Status: SAFE


No issues found.
