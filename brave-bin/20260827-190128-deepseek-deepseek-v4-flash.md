---
package: brave-bin
pkgver: 1.94.117
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: f47e5ed5e9b50f484d29402229454e7d1b1d7cdb
prompt_tokens: 18272
completion_tokens: 2370
total_tokens: 20642
cost: 0.00179447576
execution_time: 66.98
files_reviewed: 5
files_skipped: 0
maintainer_files: 5
upstream_files: 3
upstream_named_files: 0
unpinned_sources: 0
date: 2026-08-27T19:01:26Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard metadata file, no security issues.
  - file: .pre-commit
    status: safe
    summary: Standard AUR pre-commit hook, no security issues.
  - file: PKGBUILD
    status: safe
    summary: Standard Brave binary package; no malicious behavior or injected code found.
  - file: brave-browser.desktop
    status: safe
    summary: Standard .desktop file with no security issues.
  - file: brave-bin.sh
    status: safe
    summary: Safe wrapper script for Brave browser.
---

Cloning https://aur.archlinux.org/brave-bin.git...
Cloned brave-bin
Analyzing brave-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is safe to run through `makepkg --nobuild --nodeps --noprepare` and `makepkg --printsrcinfo` for this narrow source-fetching gate. The top-level scope contains only variable definitions, package metadata, dependency lists, and source array declarations. There are no top-level command substitutions, no `eval`, no encoded payloads, and no code that executes during sourcing. There is no `pkgver()` function at all, so no function runs while the PKGBUILD is parsed.

The `source` arrays point to the package's own upstream project on `github.com/brave/brave-browser` release URLs, which is a normal and expected download location for this package. Checksums are provided for the local files and for both architecture-specific archives; even if they were `SKIP`, that would not be grounds to fail this gate. Downloading and writing source archives to disk is exactly what these commands are designed to do, and `--noprepare`/`--nobuild` ensure that `prepare()`, `build()`, and `package()` do not execute. Any concerns about the `prepare()`/`package()` logic (e.g., `chmod 4755` on chrome-sandbox) are out of scope for this gate and should be reviewed in the full PKGBUILD audit.
</details>
<evidence>
</evidence>
<summary>
Safe: sources download from Brave upstream; no top-level or pkgver execution risk.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Safe: sources download from Brave upstream; no top-level or pkgver execution risk.
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Reviewing the 5 file(s) in the AUR repository. The 3 downloaded file(s) are upstream content, outside the threat model, and are not read.
Reviewing the AUR repository's files...
[0/5] Reviewing .SRCINFO...
[0/5] Reviewing .SRCINFO, .pre-commit...
[0/5] Reviewing .SRCINFO, .pre-commit, PKGBUILD...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.SRCINFO` metadata file for the `brave-bin` AUR package. It defines the package name, version, dependencies, and source URLs with checksums. All source URLs point to the official Brave GitHub releases and use HTTPS. Checksums are provided and not skipped. No executable code, obfuscated content, or suspicious network destinations are present. The file is purely declarative and follows normal AUR packaging practices.
</details>
<evidence></evidence>
<summary>Standard metadata file, no security issues.</summary>
</security_assessment>

[1/5] Reviewing .pre-commit, PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard metadata file, no security issues.
[1/5] Reviewing .pre-commit, PKGBUILD, brave-bin.sh...
LLM auditresponse for .pre-commit:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard AUR pre-commit hook that automatically regenerates the `.SRCINFO` file when the `PKGBUILD` is modified. It uses only normal packaging commands (`makepkg --printsrcinfo`, `git update-index`, `git add`) and does not perform any network requests, execute external code, or manipulate files outside the package repository. No obfuscation or dangerous patterns are present.
</details>
<evidence></evidence>
<summary>Standard AUR pre-commit hook, no security issues.</summary>
</security_assessment>

[1/5] Reviewing .pre-commit, PKGBUILD, brave-bin.sh, brave-browser.desktop...
[2/5] Reviewing PKGBUILD, brave-bin.sh, brave-browser.desktop...
+ Reviewed .pre-commit. Status: SAFE -- Standard AUR pre-commit hook, no security issues.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a standard binary package build for the Brave browser. It downloads the official Brave browser zip from the project's own GitHub releases, verifies it with pinned SHA-256 checksums, extracts it into a staging directory, and installs it into the package directory. There are no suspicious network requests, no obfuscated commands, no eval/base64 tricks, and no operations that write outside the package's own application scope.

The `chmod 4755` on `chrome-sandbox` is a notable permission change, but it is a well-known and expected requirement for Chromium-based browsers to enable the setuid sandbox. This is an upstream application requirement rather than evidence of malicious behavior. The package also installs the launcher script, desktop entry, license, and icons into standard locations. Overall, this file follows normal AUR packaging practices and contains no injected or hidden code.
</details>
<evidence>
</evidence>
<summary>
Standard Brave binary package; no malicious behavior or injected code found.
</summary>
</security_assessment>

[3/5] Reviewing brave-bin.sh, brave-browser.desktop...
+ Reviewed PKGBUILD. Status: SAFE -- Standard Brave binary package; no malicious behavior or injected code found.
LLM auditresponse for brave-browser.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard `.desktop` entry for the Brave browser. It contains only localization strings and desktop action definitions (New Window, New Incognito Window) with `Exec` lines pointing to the `brave` binary. There are no shell commands, network requests, obfuscated strings, or any executable code outside the expected desktop-entry format. No evidence of malicious or unusual behavior.
</details>
<evidence></evidence>
<summary>Standard .desktop file with no security issues.</summary>
</security_assessment>

[4/5] Reviewing brave-bin.sh...
+ Reviewed brave-browser.desktop. Status: SAFE -- Standard .desktop file with no security issues.
LLM auditresponse for brave-bin.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
The script is a standard wrapper for the Brave browser. It reads optional command-line flags from a user-controlled configuration file (`~/.config/brave-flags.conf`), filters out comments and blank lines, then launches the binary `/opt/brave-bin/brave` with those flags and any additional arguments passed to the script. There is no obfuscation, no network requests, no unexpected file operations, and no execution of untrusted code. The `CHROME_VERSION_EXTRA` variable is set to the expected value 'stable'. The script behaves exactly as a user would expect from a wrapper that allows custom flags. No supply-chain attack indicators are present.
</details>
<evidence></evidence>
<summary>Safe wrapper script for Brave browser.</summary>
</security_assessment>

[5/5] Reviewing ...
+ Reviewed brave-bin.sh. Status: SAFE -- Safe wrapper script for Brave browser.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 18,272
  Completion Tokens: 2,370
  Total Tokens: 20,642
  Total Cost: $0.001794
  Execution Time: 66.98 seconds

Final Status: SAFE


No issues found.
