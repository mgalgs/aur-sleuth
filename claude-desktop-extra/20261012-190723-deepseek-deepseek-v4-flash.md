---
package: claude-desktop-extra
pkgver: 2.31226.1
pkgrel: 5
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 18883
completion_tokens: 4977
total_tokens: 23860
cost: 0.00693705
execution_time: 45.52
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-12T19:07:23Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: No malicious content; metadata only with pinned checksums and expected upstream sources.
  - file: claude-desktop-extra.install
    status: safe
    summary: "Standard install hook: SUID sandbox, AppArmor profile, cache refresh. No malicious behavior found."
  - file: PKGBUILD
    status: safe
    summary: No malicious behavior found; standard AUR binary package with pinned checksums.
---

Materializing claude-desktop-extra from local mirror...
Materialized claude-desktop-extra
Analyzing claude-desktop-extra AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD's global/top-level scope contains only variable assignments (pkgname, pkgver, arch, depends, source arrays with sha256sums, etc.) and function definitions (package()). There are no command substitutions, no eval, no network requests, no file writes, or any other executable code that would run during `makepkg --printsrcinfo`. The function definitions are inert at this stage. Therefore, sourcing this PKGBUILD is safe.
</details>
<evidence></evidence>
<summary>Sourcing this PKGBUILD is safe; no top-level code executes.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Sourcing this PKGBUILD is safe; no top-level code executes.
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, claude-desktop-extra.install...
[0/3] Reviewing .SRCINFO, claude-desktop-extra.install, PKGBUILD...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a `.SRCINFO` metadata file for the `claude-desktop-extra` AUR package. It declares package metadata, dependencies, optional dependencies, and source URLs. The source tarballs are fetched from the maintainer's GitHub releases page, which is the package's declared upstream, and both architecture-specific sources have pinned SHA-256 checksums rather than `SKIP`.

The optional-dependency descriptions mention upstream application features such as a checksum-verified Claude Code CLI download and a workspace VM that shares `$HOME` into a guest; these are descriptions of the application's functionality, not instructions executed by the PKGBUILD file itself. There is no obfuscated code, suspicious network endpoint, exfiltration, or unexpected file operation in this file. The use of pinned checksums and a direct release asset URL is consistent with standard packaging practice, so the file is safe.
</details>
<evidence>

</evidence>
<summary>
No malicious content; metadata only with pinned checksums and expected upstream sources.</summary>
</security_assessment>

[1/3] Reviewing claude-desktop-extra.install, PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- No malicious content; metadata only with pinned checksums and expected upstream sources.
LLM auditresponse for claude-desktop-extra.install:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard pacman install script. It performs three routine operations: setting SUID on the packaged chrome-sandbox binary (matching official Claude Desktop/Chromium packaging), writing an AppArmor profile to `/etc/apparmor.d/claude-desktop` with `flags=(unconfined)` so the Chromium namespace sandbox functions on newer AppArmor/kernel configurations, and refreshing desktop/icon caches. The AppArmor unconfined profile is a known compatibility pattern used by Chrome, VS Code, and similar applications; it is not evidence of injected malice, though it is a minor security consideration because it disables AppArmor confinement for this specific application.

No obfuscated code, no network access, no `eval`/`base64`, and no unexpected file manipulation is present. The script only touches paths belonging to the package, its AppArmor profile, and standard system caches. Reading `/etc/pacman.conf` is limited to checking for a legacy repository section and printing a notice. The post-remove hook correctly removes the AppArmor profile it created. Overall, this is consistent with ordinary packaging practice.
</details>
<evidence>
</evidence>
<summary>
Standard install hook: SUID sandbox, AppArmor profile, cache refresh. No malicious behavior found.</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed claude-desktop-extra.install. Status: SAFE -- Standard install hook: SUID sandbox, AppArmor profile, cache refresh. No malicious behavior found.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a standard AUR binary package. It fetches a pinned, SHA-256-verified tarball from the package maintainer's own GitHub release URL (the declared source for this package), copies the bundled application tree into `$pkgdir/usr/lib/claude-desktop`, sets the expected SUID bit on `chrome-sandbox`, and installs a launcher, desktop entry, icons, GNOME search-provider files, MIME definitions, and license text. There are no network calls during build or package time, no shell evaluation of downloaded content, no encoded or obfuscated commands, and no writes outside `$pkgdir`. The `chmod 4755` on `chrome-sandbox` is normal for Electron/Chromium-based applications and is re-asserted by the `.install` hook.

The main trust consideration is that the release artifacts are a maintainer-patched prebuilt binary (patched `app.asar` and bundled bridges), so users must trust the maintainer's published builds. That is a supply-chain trust consideration common to AUR binary packages, not evidence of injected malice in this file. Checksums are pinned for both architectures, and the search-provider `Exec` line is validated before installation. The referenced `.install` and launcher scripts were not provided for audit, but nothing in this PKGBUILD indicates malicious behavior.
</details>
<evidence></evidence>
<summary>
No malicious behavior found; standard AUR binary package with pinned checksums.
</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- No malicious behavior found; standard AUR binary package with pinned checksums.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 18,883
  Completion Tokens: 4,977
  Total Tokens: 23,860
  Total Cost: $0.006937
  Execution Time: 45.52 seconds

Final Status: SAFE


No issues found.
