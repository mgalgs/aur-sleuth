---
package: cursor-bin
pkgver: 3.17.21
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: a0710c34d2de3f3412d0c0b09b199eab9988648e
prompt_tokens: 13227
completion_tokens: 2235
total_tokens: 15462
cost: 0.0014617722
execution_time: 117.64
files_reviewed: 4
files_skipped: 0
files_unauditable: 1
unpinned_sources: 0
date: 2026-08-25T19:16:47Z
file_verdicts:
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD with no malicious indicators.
  - file: rg.sh
    status: safe
    summary: Simple argument-transformation wrapper; no malicious behavior.
  - file: code.mjs
    status: safe
    summary: Standard Electron entry point script, no security issues.
  - file: code.sh
    status: safe
    summary: Standard Electron wrapper script, no malicious behavior found.
---

Cloning https://aur.archlinux.org/cursor-bin.git...
Cloned cursor-bin
Analyzing cursor-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains no top-level code execution, no `pkgver()` function, and no dangerous commands (like `curl`, `eval`, or base64 decoding) that would run during `makepkg --nobuild --nodeps --noprepare` or `makepkg --printsrcinfo`. The `source` array references a `.deb` from the upstream domain (cursor.com) and helper scripts from the official Arch Linux packaging repository (gitlab.archlinux.org). All sources are fetched via HTTPS. The `sha512sums` array initially has `SKIP` for the first entry but is later overridden with a specific hash, which is a normal pattern. No code in the global scope or `pkgver()` (which is absent) could execute maliciously during the narrow gate operations. The `package()` function contains file manipulation commands, but it is not executed at this stage. Therefore, running the specified commands is safe.
</details>
<evidence>

</evidence>
<summary>No malicious code runs during source fetch or PKGBUILD parse.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious code runs during source fetch or PKGBUILD parse.
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Running makepkg --printsrcinfo to get source files for agent...
makepkg --printsrcinfo successful
Reviewing required files...
[0/2] Reviewing PKGBUILD...
[0/2] Reviewing PKGBUILD, rg.sh...
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD for cursor-bin is a standard binary package from the Arch User Repository. It downloads the upstream Debian package from the official Cursor downloads URL, fetches helper scripts from the Arch Linux GitLab, and includes a local `rg.sh` script. The `package()` function extracts the Debian archive, installs files, creates symlinks to system binaries (node, xdg-open), and patches paths for the Electron wrapper. No obfuscated code, unexpected network requests, data exfiltration, or execution of untrusted content is present. The SKIP checksum on the main .deb source is common for binary packages and not indicative of malicious intent.
</details>
<evidence>
</evidence>
<summary>Standard AUR PKGBUILD with no malicious indicators.</summary>
</security_assessment>

[1/2] Reviewing rg.sh...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD with no malicious indicators.
LLM auditresponse for rg.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a trivial wrapper script that transforms the `--cursor-ignore` argument into `--ignore-file` and then executes the system `rg` (ripgrep) binary. There is no obfuscation, no network access, no file manipulation outside the script&#039;s intended purpose, and no execution of untrusted code. The behavior is consistent with a helper script to adapt a command-line option for the upstream ripgrep tool. No security issues are present.
</details>
<evidence></evidence>
<summary>Simple argument-transformation wrapper; no malicious behavior.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed rg.sh. Status: SAFE -- Simple argument-transformation wrapper; no malicious behavior.
Reviewed all required files.
Deciding which files to review next...
Note: 1 compiled/archived file(s) cannot be audited as text and were not reviewed (cursor_3.17.21_amd64.deb). For a package that ships prebuilt binaries, the audit covers the packaging, not the payload.
Decided to review 2 additional files: code.sh, code.mjs
Reviewing additional files...
Reviewing additional files...
[0/2] Reviewing code.sh...
[0/2] Reviewing code.sh, code.mjs...
LLM auditresponse for code.mjs:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `code.mjs` is a standard Electron entry point script for a packaged application. It sets the process comm name, adjusts argument prefixes, configures application paths (userCache, userData, name, desktopName) from `package.json`, and then imports the main application module from `out/main.js`. No suspicious network activity, obfuscated code, or unexpected system modifications are present. The comment about `sed` in the PKGBUILD is a normal packaging instruction. This script only manipulates its own process and application-scoped data, which is expected behavior.
</details>
<evidence>
</evidence>
<summary>Standard Electron entry point script, no security issues.</summary>
</security_assessment>

[1/2] Reviewing code.sh...
+ Reviewed code.mjs. Status: SAFE -- Standard Electron entry point script, no security issues.
LLM auditresponse for code.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This script is a standard wrapper for launching a VS Code-based application (likely Cursor) using Electron. It reads flag configuration files from the user&#x27;s XDG config directory and passes them as arguments to the Electron binary. There is no obfuscated code, no network requests, no execution of untrusted content, and no modifications to system files outside the application&#x27;s own scope. The use of `exec` with the Electron binary from `/usr/lib/` is normal for an AUR package that bundles prebuilt binaries.
</details>
<evidence></evidence>
<summary>Standard Electron wrapper script, no malicious behavior found.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed code.sh. Status: SAFE -- Standard Electron wrapper script, no malicious behavior found.
Reviewed all additional files.
Reviewed additional files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 13,227
  Completion Tokens: 2,235
  Total Tokens: 15,462
  Total Cost: $0.001462
  Execution Time: 117.64 seconds

Final Status: SAFE


No issues found.
