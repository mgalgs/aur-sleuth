---
package: brave-bin
pkgver: 1.97.57
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 18318
completion_tokens: 3292
total_tokens: 21610
cost: 0.002266082
execution_time: 34.99
files_reviewed: 5
files_skipped: 0
maintainer_files: 5
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-14T19:02:02Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata with pinned upstream checksums; no malicious content found.
  - file: PKGBUILD
    status: safe
    summary: Standard binary AUR package with pinned checksums and no malicious behavior.
  - file: .pre-commit
    status: safe
    summary: Routine pre-commit helper regenerating .SRCINFO from PKGBUILD; no malicious behavior found.
  - file: brave-browser.desktop
    status: safe
    summary: Standard desktop launcher entry; no malicious or suspicious behavior found.
  - file: brave-bin.sh
    status: safe
    summary: "Safe: standard wrapper reading user flags and launching the packaged browser binary."
---

Materializing brave-bin from local mirror...
Materialized brave-bin
Analyzing brave-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD's global/top-level scope contains only variable definitions (package metadata, source URLs, checksums) and function definitions for `prepare()` and `package()`. There are no command substitutions, external command executions, or any code that would run during `makepkg --printsrcinfo` beyond standard attribute assignments. The source URLs and checksums are string values and are not downloaded or verified at this stage. Therefore, sourcing this PKGBUILD is safe.

Note: The full audit of `prepare()` and `package()` functions, as well as any source retrieval, will occur in a later review step; no issues are present for this narrow gate.
</details>
<evidence></evidence>
<summary>No dangerous top-level code.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous top-level code.
Reviewing the 5 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/5] Reviewing .SRCINFO...
[0/5] Reviewing .SRCINFO, .pre-commit...
[0/5] Reviewing .SRCINFO, .pre-commit, PKGBUILD...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This .SRCINFO describes the brave-bin package metadata: package name, version, description, dependencies, and source files. It declares two local helper files (brave-bin.sh and brave-browser.desktop) with pinned SHA-256 checksums, plus per-architecture binary archives downloaded from the official Brave project GitHub releases page, also with pinned SHA-256 checksums. This is a standard AUR packaging format with no embedded code, no network behavior beyond declaring upstream sources, and no obfuscation or suspicious operations. The checksums are pinned rather than SKIP, which is good packaging hygiene. No evidence of supply-chain attack or malicious behavior was found.
</details>
<evidence>
</evidence>
<summary>
Standard AUR metadata with pinned upstream checksums; no malicious content found.</summary>
</security_assessment>

[1/5] Reviewing .pre-commit, PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata with pinned upstream checksums; no malicious content found.
[1/5] Reviewing .pre-commit, PKGBUILD, brave-bin.sh...
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows normal AUR packaging practices for a prebuilt binary package. It downloads the official Brave browser release zip from the project&apos;s own GitHub releases URL, with pinned version numbers and SHA-256 checksums for all sources. The prepare() function simply extracts the archive and marks the main binary executable.

The package() function installs files into the package directory, sets the standard SUID bit on the chrome-sandbox helper (a widely used requirement for Chromium-based browser sandboxes), installs the launcher script, desktop entry, license, and icons. There are no suspicious network requests, no encoded or obfuscated commands, no curl/wget piping to shells, and no tampering with files outside the package&apos;s own application scope. The SUID chrome-sandbox and the helper script are expected behavior for a Chromium-based browser package.
</details>
<evidence>
</evidence>
<summary>
Standard binary AUR package with pinned checksums and no malicious behavior.
</summary>
</security_assessment>

[1/5] Reviewing .pre-commit, PKGBUILD, brave-bin.sh, brave-browser.desktop...
[2/5] Reviewing .pre-commit, brave-bin.sh, brave-browser.desktop...
+ Reviewed PKGBUILD. Status: SAFE -- Standard binary AUR package with pinned checksums and no malicious behavior.
LLM auditresponse for .pre-commit:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a routine AUR maintainer helper script. It is a `git` pre-commit hook that detects staged changes to `PKGBUILD` files, regenerates the corresponding `.SRCINFO` via `makepkg --printsrcinfo`, and stages the updated `.SRCINFO`. This workflow is standard for maintaining an AUR package in a git repository.

No suspicious behavior is present: there are no network requests, no downloaded or executed remote code, no secrets handling, no obfuscation, no base64/encoding tricks, and no file modifications outside the repository. The script only interacts with the current git repository and the packaging toolchain. `git update-index` without arguments is a harmless index refresh. `makepkg --printsrcinfo` only parses the local `PKGBUILD`, which the maintainer is already committing; it is the normal packaging command for generating `.SRCINFO`. This is consistent with acceptable AUR helper-script patterns and does not indicate a supply-chain attack.
</details>
<evidence>
</evidence>
<summary>
Routine pre-commit helper regenerating .SRCINFO from PKGBUILD; no malicious behavior found.</summary>
</security_assessment>

[3/5] Reviewing brave-bin.sh, brave-browser.desktop...
+ Reviewed .pre-commit. Status: SAFE -- Routine pre-commit helper regenerating .SRCINFO from PKGBUILD; no malicious behavior found.
LLM auditresponse for brave-browser.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard freedesktop.org `.desktop` launcher entry for the Brave web browser. It contains only desktop-entry metadata: localized names, comments, MIME type associations, and launcher actions (`brave`, `brave --incognito`) that invoke the installed browser binary. There are no network fetches, encoded payloads, file system manipulations, or execution of untrusted content. The file is consistent with ordinary packaging practice for a browser application and contains no supply-chain attack indicators.
</details>
<evidence>
</evidence>
<summary>
Standard desktop launcher entry; no malicious or suspicious behavior found.</summary>
</security_assessment>

[4/5] Reviewing brave-bin.sh...
+ Reviewed brave-browser.desktop. Status: SAFE -- Standard desktop launcher entry; no malicious or suspicious behavior found.
LLM auditresponse for brave-bin.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This script is a conventional launcher wrapper for the brave-bin package. It reads the user's `brave-flags.conf` from the XDG config directory, strips blank lines and comments, then passes the remaining lines as command-line flags to `/opt/brave-bin/brave` along with any arguments originally supplied. This is exactly the expected behavior of a flags wrapper for a browser package.

No suspicious behavior is present: there are no network requests, no downloads, no obfuscated or encoded content, no `eval` or `base64`, no writes to system files, and no execution of remote or unexpected code. The script only reads a user-owned configuration file and executes the package's own binary. The configuration values are passed to the browser as flags, which is the stated purpose of the wrapper and not evidence of malice.
</details>
<evidence></evidence>
<summary>Safe: standard wrapper reading user flags and launching the packaged browser binary.</summary>
</security_assessment>

[5/5] Reviewing ...
+ Reviewed brave-bin.sh. Status: SAFE -- Safe: standard wrapper reading user flags and launching the packaged browser binary.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 18,318
  Completion Tokens: 3,292
  Total Tokens: 21,610
  Total Cost: $0.002266
  Execution Time: 34.99 seconds

Final Status: SAFE


No issues found.
