---
package: brave-origin-bin
pkgver: 1.96.59
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 15442
completion_tokens: 2152
total_tokens: 17594
cost: 0.00144580212
execution_time: 41.1
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-24T19:02:52Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata; no malicious code.
  - file: brave-origin.desktop
    status: safe
    summary: Standard browser .desktop file, no malicious content.
  - file: brave-origin-bin.sh
    status: safe
    summary: Standard flag‑passing wrapper script; no security issues.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD for official Brave binary package.
---

Materializing brave-origin-bin from local mirror...
Materialized brave-origin-bin
Analyzing brave-origin-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD's global scope contains only standard variable and array definitions (pkgname, pkgver, source, sha256sums, etc.). There are no command substitutions, backtick executions, or function calls that would execute during sourcing. The `prepare()` and `package()` functions are defined but not invoked by `makepkg --printsrcinfo`. No obfuscated code, network requests, or dangerous operations are present at the top level. The file follows normal AUR packaging practices for a binary package.
</details>
<evidence></evidence>
<summary>No malicious code in global scope.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious code in global scope.
Reviewing the 4 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/4] Reviewing .SRCINFO...
[0/4] Reviewing .SRCINFO, brave-origin-bin.sh...
[0/4] Reviewing .SRCINFO, brave-origin-bin.sh, PKGBUILD...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard AUR `.SRCINFO` metadata file for the `brave-origin-bin` package. It declares the package name, version, architecture support, dependencies, and sources. All source URLs point to the official Brave GitHub releases (`https://github.com/brave/brave-browser/releases/download/`), which is the expected upstream. Checksums are provided for all source files (both architecture‑specific archives), and `noextract` is used for the zip archives as is normal for binary packages. There are no executable scripts, encoded payloads, or commands present in this file. No indication of supply‑chain attack or malicious intent is found.
</details>
<evidence></evidence>
<summary>Standard AUR metadata; no malicious code.</summary>
</security_assessment>

[0/4] Reviewing .SRCINFO, brave-origin-bin.sh, PKGBUILD, brave-origin.desktop...
[1/4] Reviewing brave-origin-bin.sh, PKGBUILD, brave-origin.desktop...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata; no malicious code.
LLM auditresponse for brave-origin.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard Freedesktop.org `.desktop` file for the Brave Origin web browser. It contains only desktop entry metadata: application name, generic names and comments in many languages, startup notification settings, icon reference, MIME type associations, and two desktop actions (new window and new private/incognito window). The `Exec` lines launch `brave-origin` with appropriate arguments (normal browser behavior). There is no embedded code, no network requests, no obfuscation, and no system modification commands. The file conforms entirely to standard packaging practices for a browser application and contains no evidence of malicious activity.
</details>
<evidence></evidence>
<summary>Standard browser .desktop file, no malicious content.</summary>
</security_assessment>

[2/4] Reviewing brave-origin-bin.sh, PKGBUILD...
+ Reviewed brave-origin.desktop. Status: SAFE -- Standard browser .desktop file, no malicious content.
LLM auditresponse for brave-origin-bin.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a thin wrapper script that reads a user-defined configuration file (`~/.config/brave-origin-flags.conf`) and passes its non‑comment lines as command‑line arguments to the Brave binary. It performs no network operations, no downloads or execution of external code, no obfuscation, and no modification of system files. The `export CHROME_VERSION_EXTRA=stable` line is a standard environment variable. The script follows typical AUR packaging practices for a binary package that needs user‑supplied flags. No malicious or suspicious behavior is present.
</details>
<evidence></evidence>
<summary>Standard flag‑passing wrapper script; no security issues.</summary>
</security_assessment>

[3/4] Reviewing PKGBUILD...
+ Reviewed brave-origin-bin.sh. Status: SAFE -- Standard flag‑passing wrapper script; no security issues.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard packaging practices for a prebuilt binary from the official Brave GitHub releases. All source URLs point to the legitimate `github.com/brave/brave-browser` repository. Checksums are provided and non‑SKIP. The only elevated permission is `chmod 4755` on the `chrome-sandbox` binary, which is a normal requirement for Chromium‑based browser sandboxing. There is no obfuscated code, unexpected network requests, or any behavior that deviates from expected packaging workflows.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD for official Brave binary package.</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD for official Brave binary package.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 15,442
  Completion Tokens: 2,152
  Total Tokens: 17,594
  Total Cost: $0.001446
  Execution Time: 41.10 seconds

Final Status: SAFE


No issues found.
