---
package: stably-orca-bin
pkgver: 1.4.212
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 13624
completion_tokens: 3084
total_tokens: 16708
cost: 0.00093101568
execution_time: 68.53
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-26T15:09:21Z
file_verdicts:
  - file: stably-orca.desktop
    status: safe
    summary: Standard desktop entry; no security issues found.
  - file: stably-orca.sh
    status: safe
    summary: Standard application wrapper, no malicious behavior.
  - file: PKGBUILD
    status: safe
    summary: Standard AppImage package, no malicious content.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata; upstream source and pinned checksums; no malicious content.
---

Materializing stably-orca-bin from local mirror...
Materialized stably-orca-bin
Analyzing stably-orca-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only static variable assignments and function definitions at the global scope. No command substitutions, backtick executions, `eval`, or any other dynamically executed code exists in the top-level scope. The `source()` array constructs URLs using parameter expansion (`${pkgname}`, `${pkgver}`, `${url}`) but these are standard string operations that do not trigger any network requests or commands—the actual download happens later by `makepkg` itself. There are no global-level operations that could exfiltrate data, download payloads, or execute arbitrary commands during sourcing. The `prepare()` and `package()` functions contain AppImage extraction logic, but these are not executed during `makepkg --printsrcinfo`. Therefore, parsing this PKGBUILD is safe.
</details>
<evidence></evidence>
<summary>No malicious code at global scope.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious code at global scope.
Reviewing the 4 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/4] Reviewing .SRCINFO...
[0/4] Reviewing .SRCINFO, PKGBUILD...
[0/4] Reviewing .SRCINFO, PKGBUILD, stably-orca.desktop...
LLM auditresponse for stably-orca.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard freedesktop.org desktop entry file for the stably-orca-bin package. It declares the application name, category, icon, and a normal `Exec=stably-orca %U` invocation, which simply launches the package's own binary with optional file arguments. There is no malicious behavior: no network requests, no encoded commands, no file manipulation, and no reference to external or suspicious resources. The file is consistent with ordinary packaging practice.
</details>
<evidence>
</evidence>
<summary>
Standard desktop entry; no security issues found.</summary>
</security_assessment>

[0/4] Reviewing .SRCINFO, PKGBUILD, stably-orca.desktop, stably-orca.sh...
[1/4] Reviewing .SRCINFO, PKGBUILD, stably-orca.sh...
+ Reviewed stably-orca.desktop. Status: SAFE -- Standard desktop entry; no security issues found.
LLM auditresponse for stably-orca.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
The script is a standard wrapper for the Stably AI Orca AppImage. It sets the `APPDIR` environment variable to the installation path and launches the AppRun binary with a Vulkan-disabled flag for compatibility. No network access, obfuscation, or file operations beyond executing the application are present. The comments describe reasonable upstream configuration choices. This is a benign packaging script.
</details>
<evidence></evidence>
<summary>Standard application wrapper, no malicious behavior.</summary>
</security_assessment>

[2/4] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed stably-orca.sh. Status: SAFE -- Standard application wrapper, no malicious behavior.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD for `stably-orca-bin` is a straightforward binary package that downloads an AppImage from the project's official GitHub releases, verifies it with a SHA-256 checksum, extracts it in `prepare()`, and installs the extracted contents along with a wrapper script and desktop entry. No network requests are made to unexpected hosts, no obfuscated code is present, and no system files are modified outside the standard package install paths (`/opt/stably-orca`, `/usr/bin`, `/usr/share/applications`, `/usr/share/icons`). All operations follow normal AUR packaging practices for AppImage-based packages. There is no evidence of data exfiltration, backdoor installation, or execution of attacker-controlled code.
</details>
<evidence></evidence>
<summary>Standard AppImage package, no malicious content.</summary>
</security_assessment>

[3/4] Reviewing .SRCINFO...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AppImage package, no malicious content.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This `.SRCINFO` file is a standard Arch Linux package metadata declaration for the `stably-orca-bin` package. It contains only declarative fields: package name/version/description, dependencies, conflicts, and source/checksum arrays. No executable code, script, or build instruction is present in this file itself.

The source URL points to the project's own official upstream GitHub releases page (`https://github.com/stablyai/orca/releases/download/v1.4.212/orca-linux.AppImage`), which is the expected and legitimate origin for a prebuilt AppImage package. Checksums for all three sources are pinned with real SHA-256 hashes (no `SKIP` values), which is good supply-chain hygiene rather than a concern.

There are no suspicious network endpoints, no obfuscation, no encoded commands, no `eval`/`base64`/`curl|bash` patterns, and no file-manipulation logic. The file fully conforms to standard AUR packaging practice. The decision is SAFE.
</details>
<evidence>
</evidence>
<summary>Standard AUR metadata; upstream source and pinned checksums; no malicious content.</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata; upstream source and pinned checksums; no malicious content.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 13,624
  Completion Tokens: 3,084
  Total Tokens: 16,708
  Total Cost: $0.000931
  Execution Time: 68.53 seconds

Final Status: SAFE


No issues found.
