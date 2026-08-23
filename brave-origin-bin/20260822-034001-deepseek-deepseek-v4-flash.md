---
package: brave-origin-bin
pkgver: 1.93.138
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 09f2e477a21d918155ca5fbfdf5bc833f8a3f124
prompt_tokens: 14495
completion_tokens: 2156
total_tokens: 16651
cost: 0.00141917622
execution_time: 107.07
files_reviewed: 3
files_skipped: 0
files_unauditable: 87
unpinned_sources: 0
date: 2026-08-22T03:40:00Z
file_verdicts:
  - file: brave-origin.desktop
    status: safe
    summary: Standard desktop entry file, no malicious content.
  - file: PKGBUILD
    status: safe
    summary: Standard binary package with no malicious indicators.
  - file: brave-origin-bin.sh
    status: safe
    summary: Simple wrapper script, no malicious behavior.
---

Cloning https://aur.archlinux.org/brave-origin-bin.git...
Cloned brave-origin-bin
Analyzing brave-origin-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD sources are fetched from official Brave GitHub releases and local files. Global scope contains only variable assignments, no dangerous commands. `pkgver()` is not defined, so no code execution there. All checksums are present and pinned; even if they were SKIP, that would not make fetching unsafe for this gate. No malicious payloads or exfiltration attempts are present. The two commands (`makepkg --nobuild --nodeps --noprepare` and `makepkg --printsrcinfo`) will only download and extract archives and source the PKGBUILD, which is safe.
</details>
<summary>Standard PKGBUILD, no malicious code in scope.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Standard PKGBUILD, no malicious code in scope.
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Running makepkg --printsrcinfo to get source files for agent...
makepkg --printsrcinfo successful
Reviewing required files...
[0/2] Reviewing PKGBUILD...
[0/2] Reviewing PKGBUILD, brave-origin.desktop...
LLM auditresponse for brave-origin.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.desktop` file that defines the Brave Origin Web Browser menu entry, including translations, MIME types, and actions (new window, new private window). It contains no executable code, no network requests, no obfuscation, and no dangerous commands. The file is entirely declarative and follows normal desktop entry specifications. There is no evidence of malicious behavior.
</details>
<summary>Standard desktop entry file, no malicious content.</summary>
</security_assessment>

[1/2] Reviewing PKGBUILD...
+ Reviewed brave-origin.desktop. Status: SAFE -- Standard desktop entry file, no malicious content.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD is a straightforward binary package for the Brave Origin browser. It downloads a prebuilt ZIP archive from the official Brave GitHub releases, verifies checksums, extracts it, and installs the files. The `chrome-sandbox` binary is given setuid permissions (4755), which is standard for Chromium-based browsers to enable sandboxing. There is no obfuscated code, unexpected network requests, or data exfiltration. All sources are pinned with SHA256 hashes. The script performs only standard packaging operations (download, extract, install, icon setup). No supply-chain attack indicators are present.
</details>
<summary>Standard binary package with no malicious indicators.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard binary package with no malicious indicators.
Reviewed all required files.
Deciding which files to review next...
Note: 87 compiled/archived file(s) cannot be audited as text and were not reviewed (brave-origin-bin-1.93.138-x86_64.zip, src/chrome-sandbox, src/v8_context_snapshot.bin and 84 more). For a package that ships prebuilt binaries, the audit covers the packaging, not the payload.
LLM response for file selection:
brave-origin-bin.sh
Decided to review 1 additional files: brave-origin-bin.sh
Reviewing additional files...
Reviewing additional files...
[0/1] Reviewing brave-origin-bin.sh...
LLM auditresponse for brave-origin-bin.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This script is a standard wrapper for launching the `brave-origin` browser. It reads optional command-line flags from a user configuration file (`~/.config/brave-origin-flags.conf`), parses them (ignoring comments and blank lines), and passes them to the binary at `/opt/brave-origin-bin/brave-origin` via `exec`. There are no network requests, obfuscated code, dangerous commands (`eval`, `curl`, `wget`, base64 decoding), or any operations that deviate from typical packaging practices. The script only accesses a user-specified config file and executes the expected binary. This behavior is entirely benign and consistent with legitimate AUR packages that need to pass user-defined flags to an upstream application.
</details>
<summary>Simple wrapper script, no malicious behavior.</summary>
</security_assessment>

[1/1] Reviewing ...
+ Reviewed brave-origin-bin.sh. Status: SAFE -- Simple wrapper script, no malicious behavior.
Reviewed all additional files.
Reviewed additional files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 14,495
  Completion Tokens: 2,156
  Total Tokens: 16,651
  Total Cost: $0.001419
  Execution Time: 107.07 seconds

Final Status: SAFE


No issues found.
