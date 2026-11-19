---
package: claude-desktop-extra
pkgver: 4.23118.1
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 20635
completion_tokens: 2514
total_tokens: 23149
cost: 0.002335333
execution_time: 34.76
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-11-10T00:11:50Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata file; no malicious content.
  - file: claude-desktop-extra.install
    status: safe
    summary: Standard install hook, no malicious behavior found.
  - file: PKGBUILD
    status: safe
    summary: Clean PKGBUILD with standard binary packaging.
---

Materializing claude-desktop-extra from local mirror...
Cloning https://aur.archlinux.org/claude-desktop-extra.git...
Cloned claude-desktop-extra
Analyzing claude-desktop-extra AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only standard variable and array definitions at the global/top-level scope: `pkgname`, `pkgver`, `pkgrel`, `arch`, `depends`, `source_*`, `sha256sums_*`, etc. There are no command substitutions, function calls, `eval`, `curl`, `wget`, or any executable code that would run during sourcing. The `package()` function is defined but only executes during the package step, not during `makepkg --printsrcinfo`. No dangerous top-level operations are present.
</details>
<evidence></evidence>
<summary>No dangerous top-level code; safe to source.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous top-level code; safe to source.
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, PKGBUILD...
[0/3] Reviewing .SRCINFO, PKGBUILD, claude-desktop-extra.install...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The `.SRCINFO` file is a metadata manifest. It declares package dependencies, optdepends, source URLs, and SHA256 checksums. The source tarballs are fetched from the project's own GitHub releases (`https://github.com/patrickjaja/claude-desktop-extra/releases/download/...`), which is standard and expected. Checksums are provided and pinned (not SKIP). No executable code, obfuscated commands, suspicious network destinations, or unexpected file operations are present. The content is entirely declarative and follows normal AUR packaging conventions.
</details>
<evidence></evidence>
<summary>Standard AUR metadata file; no malicious content.</summary>
</security_assessment>

[1/3] Reviewing PKGBUILD, claude-desktop-extra.install...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata file; no malicious content.
LLM auditresponse for claude-desktop-extra.install:
<security_assessment>
<decision>SAFE</decision>
<details>
This script is a standard pacman install hook that mirrors the official Claude Desktop `.deb` post-install behavior. It performs routine, package-scoped operations:

1. Sets the `chrome-sandbox` binary to SUID root (4755) — required by Chromium's setuid sandbox. This is identical to what the upstream Debian package does.
2. Writes an AppArmor profile for the `claude-desktop` binary with `flags=(unconfined)` (allow-listing the app for unprivileged user namespaces). This follows the same pattern as Chrome, VS Code, and 1Password — it only allows the app to use unprivileged user namespaces; it does not confine the application.
3. Refreshes the desktop-entry and icon caches (`update-desktop-database`, `gtk-update-icon-cache`) so the launcher entry appears immediately.
4. Prints informational messages about optional Cowork VM dependencies (printed, not executed) and a legacy repository rename notice.

No network requests, no downloads, no obfuscated code, no exfiltration, and no writes outside the package's own application scope are present. All file modifications target `/usr/lib/claude-desktop/chrome-sandbox` and `/etc/apparmor.d/claude-desktop` — both within the package's expected domain. The `usermod` example in the `_cowork_note` function is only printed as advice, never executed. The script is consistent with safe, ordinary packaging practice.
</details>
<evidence>
</evidence>
<summary>Standard install hook, no malicious behavior found.</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed claude-desktop-extra.install. Status: SAFE -- Standard install hook, no malicious behavior found.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard AUR PKGBUILD for a pre-built binary package. The source tarball is fetched from a pinned GitHub release URL (the maintainer's own repository) with a fixed SHA256 checksum, so integrity is verified at download time. The `package()` function performs normal installation operations: copying files from the tarball into the package directory, setting SUID on the required chrome-sandbox binary (standard Chromium sandbox behavior), installing launcher scripts, desktop entries, icons, MIME types, polkit policies, and license files. There are no obfuscated commands, no unexpected network requests at build time, no `eval`, `base64`, or `curl|bash` operations. The polkit policies for TPM and KVM access are opt-in features for virtual machine support, not backdoors. The release-stamp JSON file simply records the package version for the in-app update check. All operations serve the stated purpose of packaging Claude Desktop with extra features; nothing injects code, exfiltrates data, or deviates from ordinary AUR packaging practices.
</details>
<evidence></evidence>
<summary>Clean PKGBUILD with standard binary packaging.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Clean PKGBUILD with standard binary packaging.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 20,635
  Completion Tokens: 2,514
  Total Tokens: 23,149
  Total Cost: $0.002335
  Execution Time: 34.76 seconds

Final Status: SAFE


No issues found.
