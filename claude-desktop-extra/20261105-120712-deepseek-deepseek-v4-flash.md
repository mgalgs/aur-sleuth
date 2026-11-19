---
package: claude-desktop-extra
pkgver: 4.16336.0
pkgrel: 4
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 20280
completion_tokens: 4746
total_tokens: 25026
cost: 0.002709252
execution_time: 51.15
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-11-05T12:07:12Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata with pinned checksums; no malicious code present.
  - file: claude-desktop-extra.install
    status: safe
    summary: Standard install hook, no security issues found.
  - file: PKGBUILD
    status: safe
    summary: Transparent repackaging with pinned checksums; no malicious behavior found.
---

Materializing claude-desktop-extra from local mirror...
Materialized claude-desktop-extra
Analyzing claude-desktop-extra AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD's global/top-level scope contains only standard variable assignments (pkgname, pkgver, pkgrel, arch, depends, source arrays, etc.) and the definition of the `package()` function. No command substitutions, function calls, or dangerous commands (eval, curl, wget, base64 decoding, etc.) execute during sourcing. The `install` variable is a plain string assignment referencing `$pkgname.install` — this is normal packaging syntax that resolves at parse time to a filename string, not an execution. All potentially risky logic resides inside `package()`, which is NOT invoked by `makepkg --printsrcinfo`. No top-level code exfiltrates data, downloads payloads, or modifies the system.
</details>
<evidence></evidence>
<summary>No malicious code executes during sourcing.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious code executes during sourcing.
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, PKGBUILD...
[0/3] Reviewing .SRCINFO, PKGBUILD, claude-desktop-extra.install...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This `.SRCINFO` file is standard AUR package metadata. It declares dependencies, optional dependencies, source archives, and pinned `sha256sums` for both `x86_64` and `aarch64`. The source archives are fetched from the maintainer's own GitHub releases page for the package project, which is the normal relationship for an AUR package. There are no suspicious commands, no network requests executed by this file, no encoded or obfuscated content, and no file operations beyond what packaging metadata normally describes.

Two items are worth noting as hygiene/trust considerations rather than evidence of malice: the package ships a prebuilt binary from a third-party fork rather than Anthropic's official distribution, and one `optdepends` description mentions that the application auto-downloads a checksum-verified CLI at runtime. These may warrant user attention, but the `.SRCINFO` itself contains no injected malicious behavior and the declared sources are checksum-pinned to the package's own upstream releases. Nothing here meets the threshold for an UNSAFE decision.
</details>
<evidence>
</evidence>
<summary>
Standard AUR metadata with pinned checksums; no malicious code present.</summary>
</security_assessment>

[1/3] Reviewing PKGBUILD, claude-desktop-extra.install...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata with pinned checksums; no malicious code present.
LLM auditresponse for claude-desktop-extra.install:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard pacman install hook script for the `claude-desktop-extra` AUR package. All operations are routine packaging tasks:

- Setting the SUID bit on the `chrome-sandbox` binary (necessary for Chromium's sandbox, exactly as the official upstream .deb postinst does).
- Writing a static AppArmor profile to allow the application to use unprivileged user namespaces (a common pattern for Chrome, VS Code, and others on AppArmor 4.0+ systems). The profile is hardcoded and loaded only if AppArmor is active.
- Refreshing desktop database and icon caches so the launcher entry appears.
- Printing informational messages about optional dependencies and a legacy repo rename to stdout.

No network requests, no data exfiltration, no obfuscated code, no execution of untrusted content, no unexpected file operations outside the package's own scope. The script follows standard Arch packaging practices.
</details>
<evidence></evidence>
<summary>Standard install hook, no security issues found.</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed claude-desktop-extra.install. Status: SAFE -- Standard install hook, no security issues found.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD is a standard repackaging of a patched prebuilt Claude Desktop binary. It downloads a tarball from the maintainer's own GitHub releases (the declared upstream for this AUR package) with pinned SHA-256 checksums for both x86_64 and aarch64, then installs that tree into /usr/lib/claude-desktop, installs launcher, desktop entry, icons, MIME types, GNOME search-provider files, sets SUID on chrome-sandbox (normal for Electron applications), writes a small release-stamp JSON, and installs the upstream license. There is no obfuscation, no eval/base64/curl-piped-to-shell, no build-time network fetch beyond the declared source, no writes outside $pkgdir, and no exfiltration or data collection logic.

Two transparency considerations are worth noting but are not threats. First, the tarball is a third-party patched build (app.asar plus Computer Use bridges), so users are trusting the maintainer's build artifact as well as the official upstream; the pinned checksums are good hygiene, but the supply-chain trust boundary is the GitHub release tarball. Second, the package installs a polkit action and ships (disabled, not activated) a udev rule and a root helper for opt-in TPM access — an unusual system modification, but it is explicitly disclosed in comments, not enabled by the package, and serves the application's stated Computer Use/Cowork functionality. These are trust and hygiene topics, not evidence of injected malicious code.
</details>
<evidence>
</evidence>
<summary>
Transparent repackaging with pinned checksums; no malicious behavior found.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Transparent repackaging with pinned checksums; no malicious behavior found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 20,280
  Completion Tokens: 4,746
  Total Tokens: 25,026
  Total Cost: $0.002709
  Execution Time: 51.15 seconds

Final Status: SAFE


No issues found.
