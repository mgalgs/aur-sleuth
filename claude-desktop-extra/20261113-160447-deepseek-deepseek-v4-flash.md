---
package: claude-desktop-extra
pkgver: 5.11492.2
pkgrel: 2
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 3f8f339d2184315a824bf6b8e30068212deac13a
prompt_tokens: 20654
completion_tokens: 3505
total_tokens: 24159
cost: 0.00248976
execution_time: 34.02
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-11-13T16:04:46Z
file_verdicts:
  - file: claude-desktop-extra.install
    status: safe
    summary: Standard post-install hooks for sandbox and desktop integration.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD with pinned checksums; no malicious code.
  - file: .SRCINFO
    status: safe
    summary: Metadata-only PKGBUILD source info; pinned checksums, no malicious behavior found.
---

Materializing claude-desktop-extra from local mirror...
Materialized claude-desktop-extra
Analyzing claude-desktop-extra AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The global/top-level scope of this PKGBUILD only defines variables (package metadata, dependencies, architecture-specific source URLs with pinned SHA-256 checksums, and package options) and declares the `package()` function. No code executes during sourcing: there are no command substitutions, no external tool invocations (`curl`, `wget`, `eval`, `base64`, etc.), and no dynamic network requests. All potentially dangerous operations (file copying, permission changes, writing release stamps, installing desktop entries/system integration files) are confined inside the `package()` function body, which is **not** executed by `makepkg --printsrcinfo`. Therefore, running `makepkg --printsrcinfo` on this PKGBUILD is safe.
</details>
<evidence></evidence>
<summary>No top-level code execution risk.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No top-level code execution risk.
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, PKGBUILD...
[0/3] Reviewing .SRCINFO, PKGBUILD, claude-desktop-extra.install...
LLM auditresponse for claude-desktop-extra.install:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard pacman install hook for the `claude-desktop-extra` package. It performs three routine post-install actions that match upstream packaging conventions:

1.  **Chrome sandbox SUID fix** – grants the `chrome-sandbox` binary setuid root (4755) so Chromium's setuid sandbox functions. This is identical to what the official Debian/Ubuntu `.deb` postinst script does.
2.  **AppArmor profile for user namespaces** – writes an `unconfined` profile (with a `userns` rule) to `/etc/apparmor.d/claude-desktop` so that the application's namespace sandbox is allowed on systems where the kernel restricts unprivileged user namespaces. The code explicitly gates on AppArmor 4.0+ (`abi/4.0` feature file) and handles the case where AppArmor is inactive or the profile fails to parse (both errors are silenced with `|| true`). This pattern is standard for Chromium, VS Code, and other Electron-based apps.
3.  **Cache refreshes** – calls `update-desktop-database` and `gtk-update-icon-cache` so the launcher entry appears in the desktop environment.

Additionally, the script prints informational notes about optional Cowork VM dependencies and a legacy repository rename. There is no obfuscation, no unsolicited network access, no downloading or execution of remote code, and no manipulation of files outside the package's own scope (only `/usr/lib/claude-desktop/` and `/etc/apparmor.d/`). All operations are idempotent and guarded with `|| true` to avoid breaking the install on failure.

**Decision**: SAFE. The file contains only expected packaging logic for a desktop application that uses Chromium's sandbox and AppArmor.
</details>
<evidence></evidence>
<summary>Standard post-install hooks for sandbox and desktop integration.</summary>
</security_assessment>

[1/3] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed claude-desktop-extra.install. Status: SAFE -- Standard post-install hooks for sandbox and desktop integration.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard Arch packaging practices and contains no evidence of malicious or supply-chain attack code. The source is downloaded from the maintainer&#39;s own GitHub releases with pinned SHA256 checksums (not SKIP). All operations in the `package()` function are standard: extracting the tarball, installing the application tree, setting SUID on the Electron chrome-sandbox (required by Chromium), creating a desktop entry, icons, GNOME search provider files, MIME types, udev/polkit rules, and license file. There are no calls to `eval`, `curl | bash`, `wget`, base64 decoding, or any other obfuscated or risky constructs. The release stamp written to `resources/cdb-release.json` is a simple metadata file for the application&#39;s update-check feature, containing only the tag and format string — no data exfiltration. The optdepends text describes legitimate features of the upstream application (Claude Code CLI auto-download, Bluez, etc.) but no such operations are performed by this PKGBUILD itself. All file paths and permissions are appropriate for a system-installed application. No evidence of injected malicious code exists in this file.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD with pinned checksums; no malicious code.</summary>
</security_assessment>

[2/3] Reviewing .SRCINFO...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD with pinned checksums; no malicious code.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a metadata-only `.SRCINFO` describing the `claude-desktop-extra` package. It contains no executable code, no network requests, no file operations, and no obfuscated content. The source tarballs are fetched from the project's own GitHub releases for x86_64 and aarch64, and both have pinned SHA-256 checksums. The dependency and optdependency lists are ordinary packaging metadata related to the application's stated features (Computer Use, workspace VM, portal support, and optional CLI tooling). The use of prebuilt binaries is a trust/hygiene consideration, but not by itself evidence of malicious behavior.
</details>
<evidence></evidence>
<summary>
Metadata-only PKGBUILD source info; pinned checksums, no malicious behavior found.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed .SRCINFO. Status: SAFE -- Metadata-only PKGBUILD source info; pinned checksums, no malicious behavior found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 20,654
  Completion Tokens: 3,505
  Total Tokens: 24,159
  Total Cost: $0.002490
  Execution Time: 34.02 seconds

Final Status: SAFE


No issues found.
