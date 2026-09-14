---
package: ttf-ms-win11-korean
pkgbase: ttf-ms-win11
pkgver: 10.0.26200.9445
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 171a316e053e9c4b28731ccb1aa63b1168550d3a
prompt_tokens: 35856
completion_tokens: 5671
total_tokens: 41527
cost: 0.004182025988
execution_time: 194.52
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-14T07:08:12Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard .gitignore for AUR build artifacts; no malicious content present.
  - file: .SRCINFO
    status: safe
    summary: Standard metadata file, no malicious content.
  - file: PKGBUILD
    status: safe
    summary: "Safe: local font packaging with a benign error-message DLAGENT override and no malicious behavior."
---

ttf-ms-win11-korean is built from ttf-ms-win11
Materializing ttf-ms-win11-korean from local mirror...
Materialized ttf-ms-win11-korean
Analyzing ttf-ms-win11-korean AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The top-level scope of the PKGBUILD only defines arrays, variables, and function stubs. No command substitutions, backtick expressions, or direct execution of external commands are present at global scope. The DLAGENTS line prepends a local `file::/usr/bin/echo` agent that simply echoes a warning message using standard makepkg color variables; this is a common AUR convenience pattern and does not fetch or execute any untrusted payload. The source array consists solely of `file://` URIs referencing local files. All function definitions (`_package()`, `package_*()`) are inert during sourcing. Therefore, running `makepkg --printsrcinfo` does not trigger any malicious code execution.
</details>
<evidence></evidence>
<summary>No dangerous top-level execution.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous top-level execution.
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, .gitignore...
[0/3] Reviewing .SRCINFO, .gitignore, PKGBUILD...
LLM auditresponse for .gitignore:
 <security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.gitignore` file for an AUR package repository. It contains only git ignore patterns for build artifacts (`src`, `pkg`, `*.pkg.tar*`), editor backup files (`*~`), and extracted files that should not be committed to the repository (`license.rtf`, `desktop.ini`, `*.ttf`, `*.ttc`, `*.fon`). These patterns are entirely consistent with normal AUR packaging workflow, where the built package directory, source directory, and extracted upstream files are intentionally excluded from version control.

There is no executable code, no network activity, no obfuscation, no file system manipulation outside normal packaging, and no indication of a supply-chain attack. The file is purely declarative configuration for git.
</details>
<evidence>
</evidence>
<summary>
Standard .gitignore for AUR build artifacts; no malicious content present.</summary>
</security_assessment>

[1/3] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore for AUR build artifacts; no malicious content present.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The .SRCINFO file is a metadata descriptor for the AUR package. All source entries use the `file://` scheme, meaning the font files are expected to be provided locally by the user — a standard practice for redistributing proprietary fonts that cannot be downloaded automatically. The only checksum set to `SKIP` is for `license.rtf`, which is not unusual for license files and does not indicate malice. There are no network requests, no obfuscated code, no unexpected commands, and no signs of exfiltration or backdoor activity. The package splits into multiple language-specific subpackages, which is normal packaging behavior. No genuinely malicious behavior is present.
</details>
<evidence></evidence>
<summary>Standard metadata file, no malicious content.</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard metadata file, no malicious content.
LLM auditresponse for PKGBUILD:
 <security_assessment>
<decision>SAFE</decision>
<details>
The visible PKGBUILD is a standard split font package. It uses local `file://` sources that reference font files the user is expected to place next to the PKGBUILD, extracted from a Windows 11 install.wim. The only unusual element is the `DLAGENTS` override pointing `file://` at `/usr/bin/echo`, which is used to print a friendly "Unable to find %u, please read the PKGBUILD" error when a local font file is missing. This does not download from a remote host, execute fetched content, or touch anything outside the package directories.

The font checksums are largely `SKIP`, which is an integrity/trust omission but not malicious by itself, especially for user-supplied local files. The `_package()` function performs ordinary font installation into `$pkgdir/usr/share/fonts/TTF` and installs the license into `$pkgdir/usr/share/licenses/$pkgname`. No obfuscation, no encoded commands, no `curl`/`wget`/`eval`, no `git pull`/`reset --hard`, and no suspicious system modifications were found.
</details>
<evidence>
</evidence>
<summary>
Safe: local font packaging with a benign error-message DLAGENT override and no malicious behavior.
</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Safe: local font packaging with a benign error-message DLAGENT override and no malicious behavior.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 35,856
  Completion Tokens: 5,671
  Total Tokens: 41,527
  Total Cost: $0.004182
  Execution Time: 194.52 seconds

Final Status: SAFE


No issues found.
