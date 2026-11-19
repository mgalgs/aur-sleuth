---
package: claude-desktop-extra
pkgver: 4.4212.0
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 19806
completion_tokens: 5752
total_tokens: 25558
cost: 0.002849210
execution_time: 38.6
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-30T11:04:51Z
file_verdicts:
  - file: claude-desktop-extra.install
    status: safe
    summary: Standard pacman install script configuring sandbox, AppArmor, and caches; no malicious behavior.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata with pinned checksums; no malicious behavior detected.
  - file: PKGBUILD
    status: safe
    summary: Clean, checksum-pinned PKGBUILD; standard install steps, no obfuscation or suspicious behavior.
---

Materializing claude-desktop-extra from local mirror...
Materialized claude-desktop-extra
Analyzing claude-desktop-extra AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The global/top-level scope of this PKGBUILD consists entirely of comments and variable definitions (strings and arrays using `=`, `=(…)`, and `=(“…”)`). No command substitutions (via `$(…)` or backticks), no `eval` statements, no `curl`, `wget`, `makepkg`, or any other external command invocations appear outside the defined functions.

The `sha256sums_*` entries are set to hash strings, not `SKIP`, but per the instructions `SKIP` checksums are also not relevant for this narrow gate. The operational logic (desktop entry creation, file installation, SUID setup, GNOME search provider configuration, MIME type registration) all resides inside the `package()` function. Since `makepkg --printsrcinfo` does **not** execute `package()`, `pkgver()`, or any build- or package-phase function, no code that could embed a malicious payload or perform dangerous operations is triggered by simply sourcing the PKGBUILD for metadata parsing.
</details>
<evidence></evidence>
<summary>No dangerous top-level execution found.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous top-level execution found.
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, PKGBUILD...
[0/3] Reviewing .SRCINFO, PKGBUILD, claude-desktop-extra.install...
LLM auditresponse for claude-desktop-extra.install:
<security_assessment>
<decision>SAFE</decision>
<details>
This install script performs standard, expected pacman post-install/upgrade/remove operations for a packaged desktop application. It sets the SUID bit on the package's own `chrome-sandbox` binary (required for Chromium's setuid sandbox), writes an AppArmor profile scoped to the application's own binary path, reloads that profile with `apparmor_parser`, and refreshes desktop/icon caches. These mirror the official Claude Desktop `.deb` postinst behavior and are normal packaging steps, not signs of a supply-chain attack.

There are no network requests, no downloads, no base64/hex decoding, no `eval`, and no obfuscated commands. The script only touches files within the package's own install scope (`/usr/lib/claude-desktop/chrome-sandbox` and `/etc/apparmor.d/claude-desktop`) plus routine cache refreshes. The `_legacy_repo_note` function only reads `/etc/pacman.conf` and prints informational messages; it does not modify system configuration. No data is exfiltrated, no remote code is executed, and nothing outside the application's expected operational scope is altered.
</details>
<evidence>
</evidence>
<summary>
Standard pacman install script configuring sandbox, AppArmor, and caches; no malicious behavior.</summary>
</security_assessment>

[1/3] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed claude-desktop-extra.install. Status: SAFE -- Standard pacman install script configuring sandbox, AppArmor, and caches; no malicious behavior.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard AUR `.SRCINFO` metadata file for a repackaged/feature-enhanced build of Claude Desktop. It declares two pinned tarball sources (x86_64 and aarch64) fetched over HTTPS from the package's own GitHub releases page, each with a concrete `sha256sums` value — no `SKIP` checksums, no VCS sources, and no build-time fetching of mutable content. The file contains only package metadata: description, version, dependencies, optdepends, license, and source/checksum declarations. There are no commands, scripts, network callbacks, or encoded payloads of any kind.

The optdepends entries reference upstream application features (e.g., QEMU/virtiofsd for the "Cowork" VM, ydotool for computer-use input, bubblewrap/socat for the Claude Code sandbox). These describe optional runtime dependencies for features the application itself provides, not injected malicious behavior. The note that the Cowork VM "shares $HOME into the guest" is an upstream product feature, not evidence of an AUR supply-chain attack.

The only consideration worth noting is that this package is distributed by a third-party maintainer's GitHub repository rather than Anthropic's official channel, which broadens the trust surface slightly; however, the pinned checksums mitigate tampering, and nothing in this `.SRCINFO` deviates from ordinary packaging practice. The referenced `claude-desktop-extra.install` script is not part of this file and cannot be assessed here.
</details>
<evidence>
</evidence>
<summary>
Standard AUR metadata with pinned checksums; no malicious behavior detected.</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata with pinned checksums; no malicious behavior detected.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard AUR packaging practice for a prebuilt binary package. The source is a release tarball from the maintainer's own GitHub repository (the package's declared upstream), pinned to a specific version tag `v4.4212.0` with hardcoded SHA-256 checksums for both `x86_64` and `aarch64`. There are no `SKIP` checksums, no `curl|bash`, no `eval`, no base64/hex-encoded blobs, and no obfuscation anywhere in the file.

The `package()` function performs only routine operations: installing the shipped app tree into `/usr/lib/claude-desktop`, setting SUID 4755 on `chrome-sandbox` (standard and required for Chromium/Electron sandboxing), writing a small release-stamp JSON, installing a launcher, desktop entry, icons, a GNOME Shell search provider, MIME definitions, and license file. The integrity checks in the GNOME Shell search-provider and MIME sections (failing the build if upstream layout changed) are hardening measures, not suspicious behavior. All writes are confined to `$pkgdir` and no post-install action touches anything outside the package scope.

The only notable supply-chain consideration is inherent to the package type: the tarball ships a third-party-patched `app.asar` built by the maintainer rather than the pristine Anthropic binary. This is the package's stated purpose ("extra features"), the tarball is checksum-pinned to a tagged release, and the PKGBUILD is fully transparent about what is patched and where. That is a trust/model consideration for the user, not evidence of injected malice in this file.
</details>
<evidence>
</evidence>
<summary>
Clean, checksum-pinned PKGBUILD; standard install steps, no obfuscation or suspicious behavior.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Clean, checksum-pinned PKGBUILD; standard install steps, no obfuscation or suspicious behavior.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 19,806
  Completion Tokens: 5,752
  Total Tokens: 25,558
  Total Cost: $0.002849
  Execution Time: 38.60 seconds

Final Status: SAFE


No issues found.
