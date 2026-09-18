---
package: claude-desktop-extra
pkgver: 2.2553.1
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 171a316e053e9c4b28731ccb1aa63b1168550d3a
prompt_tokens: 16485
completion_tokens: 3447
total_tokens: 19932
cost: 0.002071519674
execution_time: 75.21
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-18T11:02:06Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard .SRCINFO with pinned sources; no malicious indicators.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD with pinned checksums, no malicious behavior.
  - file: claude-desktop-extra.install
    status: safe
    summary: Safe standard install hook, no malicious behavior.
---

Materializing claude-desktop-extra from local mirror...
Materialized claude-desktop-extra
Analyzing claude-desktop-extra AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
 <security_assessment>
<decision>SAFE</decision>
<details>
Running `makepkg --printsrcinfo` sources the PKGBUILD and executes only its global/top-level scope — the function bodies of `pkgver()`, `prepare()`, `build()`, and `package()` are not executed at this step, and the content shown inside `package()` (the `install`/`chmod 4755` calls, desktop entries, icon installation, etc.) is therefore out of scope for this gate.

Inspecting the top-level scope visible in the file:

- The global scope consists only of inert variable assignments: `pkgname`, `pkgver`, `pkgdesc`, `arch`, `url`, `optdepends`/`optdepends_x86_64`/`optdepends_aarch64`, `source_x86_64`/`source_aarch64`, and pinned `sha256sums` entries.
- There are no top-level command substitutions (`$(...)`), backticks, `eval`, `curl`, `wget`, `base64`, or any other executable construct in the global scope.
- The `source_*` arrays point over HTTPS to the maintainer's own GitHub release ("releases/download/.../claude-desktop-2.2553.1-linux*.tar.gz"). Fetching the package's declared upstream tarball is standard packaging practice, and the checksums for both architectures are pinned (not SKIP). Nothing is downloaded or executed by `makepkg --printsrcinfo` itself.
- The optdepends text mentioning that the installed app "auto-downloads a checksum-verified CLI" is descriptive metadata about upstream application behavior, not code executed at parse time.

No evidence exists of top-level code that exfiltrates data, downloads and executes an untrusted payload, or runs arbitrary commands while the PKGBUILD is sourced. The potentially sensitive operations (setuid chrome-sandbox, pre-patched tarball install, etc.) live inside `package()` and will be executed only during a later `makepkg` build step, which is outside the scope of this narrow `--printsrcinfo` safety gate and should be covered by the full PKGBUILD audit.
</details>
<evidence></evidence>
<summary>The PKGBUILD's global scope contains only variable assignments and HTTPS source URLs with pinned checksums. No top-level command execution, downloads, or data exfiltration can occur during `makepkg --printsrcinfo`. All file/install/setuid operations are confined to `package()`, which is not executed by this command. SAFE for this gate.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- The PKGBUILD's global scope contains only variable assignments and HTTPS source URLs with pinned checksums. No top-level command execution, downloads, or data exfiltration can occur during `makepkg --printsrcinfo`. All file/install/setuid operations are confined to `package()`, which is not executed by this command. SAFE for this gate.
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, PKGBUILD...
[0/3] Reviewing .SRCINFO, PKGBUILD, claude-desktop-extra.install...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The `.SRCINFO` file contains only standard package metadata: dependencies, architecture declarations, and source URLs with pinned SHA256 checksums. All sources are fetched from the project's own GitHub releases page (`https://github.com/patrickjaja/claude-desktop-extra/releases/download/...`), which is the expected upstream location. There are no obfuscated commands, no suspicious network destinations, no dangerous file operations, and no deviations from normal AUR packaging practices. The checksums are provided (not skipped), so the source integrity can be verified. The file poses no supply-chain risk.
</details>
<evidence></evidence>
<summary>Standard .SRCINFO with pinned sources; no malicious indicators.</summary>
</security_assessment>

[1/3] Reviewing PKGBUILD, claude-desktop-extra.install...
+ Reviewed .SRCINFO. Status: SAFE -- Standard .SRCINFO with pinned sources; no malicious indicators.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard AUR packaging practices. Sources are fetched from the package's own GitHub releases with pinned SHA256 checksums. The `package()` function performs only expected operations: installing the pre-built application tree, setting SUID on the Chromium sandbox, installing a launcher script, desktop entry, icons, and license file. There are no suspicious network requests, no obfuscated code, no unexpected system modifications, and no attempts to fetch or execute code from untrusted sources. The checksums are properly pinned (not SKIP), and the package does not contain any behavior that would indicate a supply-chain attack.
</details>
<evidence></evidence>
<summary>Standard AUR PKGBUILD with pinned checksums, no malicious behavior.</summary>
</security_assessment>

[2/3] Reviewing claude-desktop-extra.install...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD with pinned checksums, no malicious behavior.
LLM auditresponse for claude-desktop-extra.install:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard pacman install hook for the claude-desktop-extra package. It performs routine post-install operations that mirror the official Claude Desktop .deb package's postinst script: setting the chrome-sandbox binary to SUID root (required for Chromium's setuid sandbox), installing an AppArmor profile to allow unprivileged user namespaces (a known pattern used by Chrome/VS Code/1Password on modern distributions), and refreshing desktop database and icon caches. The script also prints informational messages about optional Cowork VM dependencies and a legacy repository migration notice. All actions are localized to the package's own installed files (e.g., `/usr/lib/claude-desktop/chrome-sandbox`) or standard system configuration directories (`/etc/apparmor.d/`). There is no obfuscated code, no network requests, no use of `eval` or `curl|bash`, and no exfiltration or modification of user data outside the application's scope. The AppArmor profile is explicitly unconfined and only allowlists the application for namespace access—it does not restrict the application further. This is consistent with the package's stated purpose and upstream behavior.
</details>
<evidence></evidence>
<summary>Safe standard install hook, no malicious behavior.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed claude-desktop-extra.install. Status: SAFE -- Safe standard install hook, no malicious behavior.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 16,485
  Completion Tokens: 3,447
  Total Tokens: 19,932
  Total Cost: $0.002072
  Execution Time: 75.21 seconds

Final Status: SAFE


No issues found.
