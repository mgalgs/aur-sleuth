---
package: claude-desktop-extra
pkgver: 5.11492.5
pkgrel: 10
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 3f8f339d2184315a824bf6b8e30068212deac13a
prompt_tokens: 20727
completion_tokens: 3797
total_tokens: 24524
cost: 0.00254889
execution_time: 32.97
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-11-18T04:05:08Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard package metadata, no security concerns.
  - file: PKGBUILD
    status: safe
    summary: Clean PKGBUILD with standard packaging operations.
  - file: claude-desktop-extra.install
    status: safe
    summary: Standard packaging script, no security issues found.
---

Materializing claude-desktop-extra from local mirror...
Materialized claude-desktop-extra
Analyzing claude-desktop-extra AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The global/top-level scope of this PKGBUILD contains only variable and array assignments (pkgname, pkgver, depends, source arrays, sha256sums, etc.) and a single function definition (`package()`). No command substitutions (`$(...)` or backticks), no `eval`, `curl`, `wget`, or other code execution are present at the top level. The variable expansions used (`${pkgver}`, `${pkgrel}`, `${pkgname}`) simply expand to string values. The `install="$pkgname.install"` assigns a plain filename string. Nothing executes when the PKGBUILD is sourced for `makepkg --printsrcinfo`; the `package()` function is defined but not called. Therefore, running this command is safe.
</details>
<evidence></evidence>
<summary>No top-level execution, safe to parse.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No top-level execution, safe to parse.
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, PKGBUILD...
[0/3] Reviewing .SRCINFO, PKGBUILD, claude-desktop-extra.install...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This `.SRCINFO` file is a standard Arch Linux package metadata descriptor for the `claude-desktop-extra` AUR package. It declares sources from the project's own GitHub releases with pinned SHA-256 checksums for both x86_64 and aarch64. The dependencies and optdeps are all legitimate libraries or tools that support the application's described features (Computer Use, Cowork VM, etc.). There is no obfuscated code, no suspicious network destinations, and no commands that could inject malicious behavior. The file conforms to normal packaging practices.
</details>
<evidence></evidence>
<summary>Standard package metadata, no security concerns.</summary>
</security_assessment>

[1/3] Reviewing PKGBUILD, claude-desktop-extra.install...
+ Reviewed .SRCINFO. Status: SAFE -- Standard package metadata, no security concerns.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard AUR packaging practices for distributing a pre-patched binary package. The source is downloaded from the maintainer's GitHub releases with pinned SHA256 checksums, ensuring integrity. The `package()` function performs routine installation operations: copying the runtime tree, setting SUID on chrome-sandbox (standard for Electron apps), writing a release stamp JSON, and installing launcher scripts, desktop entries, icons, MIME types, polkit policies, and udev rules. All operations are confined to `$pkgdir` and follow expected patterns. There are no suspicious commands (curl, eval, base64), no obfuscated code, no unexpected network requests, and no exfiltration of data. The maintainer's comments are transparent about the package's nature as a patched build of the official Claude Desktop.
</details>
<evidence>
</evidence>
<summary>Clean PKGBUILD with standard packaging operations.</summary>
</security_assessment>

[2/3] Reviewing claude-desktop-extra.install...
+ Reviewed PKGBUILD. Status: SAFE -- Clean PKGBUILD with standard packaging operations.
LLM auditresponse for claude-desktop-extra.install:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard Arch Linux `.install` script that performs expected post-install tasks for a Chromium-based desktop application. It contains no network requests, no data exfiltration, no obfuscated code, and no execution of untrusted content. The operations are limited to:

- Setting SUID permissions on the Chromium sandbox binary (identical to what the official upstream .deb package does).
- Writing and loading an AppArmor profile that exempts the application from user-namespace restrictions (same pattern used by Chrome, VS Code, 1Password, and other Electron-based apps).
- Updating desktop and icon caches (standard packaging hygiene).
- Printing informational messages about optional dependencies and a repository name migration.

All file operations target the package&#x27;s own installed files or system caches. The AppArmor profile content is static, benign, and clearly documented. There is no evidence of injected malicious code or supply-chain attack behavior.
</details>
<evidence></evidence>
<summary>Standard packaging script, no security issues found.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed claude-desktop-extra.install. Status: SAFE -- Standard packaging script, no security issues found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 20,727
  Completion Tokens: 3,797
  Total Tokens: 24,524
  Total Cost: $0.002549
  Execution Time: 32.97 seconds

Final Status: SAFE


No issues found.
