---
package: claude-desktop-extra
pkgver: 2.42304.0
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 18971
completion_tokens: 4980
total_tokens: 23951
cost: 0.002632721
execution_time: 48.4
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-15T23:09:28Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata with pinned checksums; no malicious or suspicious content found.
  - file: PKGBUILD
    status: safe
    summary: Normal AUR prebuilt package with pinned hashes, standard Electron sandbox setup, no malicious behavior.
  - file: claude-desktop-extra.install
    status: safe
    summary: Safe. Standard install hook; SUID sandbox, AppArmor profile, cache refresh.
---

Materializing claude-desktop-extra from local mirror...
Materialized claude-desktop-extra
Analyzing claude-desktop-extra AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only standard variable assignments (pkgname, pkgver, pkgdesc, arch, depends, optdepends, source, checksums, etc.) and the definition of the `package()` function. There are no command substitutions, arithmetic expansions, or any other executable code in the global/top-level scope. Since `makepkg --printsrcinfo` only sources the PKGBUILD and does not execute function bodies, no dangerous code can run during this step. The `install` variable is set to a simple string, and all source URLs are standard GitHub release URLs. No obfuscated code, network requests, or data exfiltration attempts are present at the top level.
</details>
<evidence></evidence>
<summary>No dangerous top-level code detected.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous top-level code detected.
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing PKGBUILD...
[0/3] Reviewing PKGBUILD, .SRCINFO...
[0/3] Reviewing PKGBUILD, .SRCINFO, claude-desktop-extra.install...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This .SRCINFO file contains only standard AUR package metadata: package description, version, dependencies, source URLs, and sha256 checksums. The sources point to the project&#39;s own GitHub releases (patrickjaja/claude-desktop-extra), and both architecture-specific tarballs have pinned sha256 hashes. No commands, scripts, eval/base64/curl usage, or file operations are present in this metadata file.

The optdepends descriptions mention application-level behavior such as the app auto-downloading a checksum-verified Claude Code CLI and invoking tools like bubblewrap, socat, and ydotool. These are stated upstream functionality descriptions, not code in this file, and do not constitute injected malicious behavior. There are no obfuscated strings, unexpected network destinations, or exfiltration indicators.
</details>
<evidence>
</evidence>
<summary>
Standard AUR metadata with pinned checksums; no malicious or suspicious content found.</summary>
</security_assessment>

[1/3] Reviewing PKGBUILD, claude-desktop-extra.install...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata with pinned checksums; no malicious or suspicious content found.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a normal AUR prebuilt-binary package. It downloads a tarball from the maintainer's own GitHub releases URL using the standard `source` array, with pinned sha256 checksums for both x86_64 and aarch64. The `package()` function only installs that tarball's contents into `/usr/lib/claude-desktop`, installs a launcher, desktop entry, icons, GNOME search provider files, MIME data, and the upstream license. There are no suspicious commands such as `eval`, `base64`, `curl` piping to a shell, or unexpected network fetches during build or install.

Setting `chmod 4755` on `chrome-sandbox` is standard for Chromium-based Electron applications and is not malicious; the accompanying `.install` hook is described as re-asserting root ownership and mode at install time. Shipping a pre-patched `app.asar` is the stated purpose of this package and is not itself evidence of a supply-chain attack in the PKGBUILD. The only minor considerations are that the package distributes a prebuilt patched application rather than building from source, and a SUID helper is installed, but both are consistent with the package's declared purpose and with ordinary Electron packaging practices.
</details>
<evidence></evidence>
<summary>
Normal AUR prebuilt package with pinned hashes, standard Electron sandbox setup, no malicious behavior.
</summary>
</security_assessment>

[2/3] Reviewing claude-desktop-extra.install...
+ Reviewed PKGBUILD. Status: SAFE -- Normal AUR prebuilt package with pinned hashes, standard Electron sandbox setup, no malicious behavior.
LLM auditresponse for claude-desktop-extra.install:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard pacman `.install` hook for a Chromium/Electron-based desktop application. It performs three routine tasks: (1) sets SUID root (4755) on the bundled `chrome-sandbox` binary — the well-known, documented requirement for Chromium's setuid sandbox, mirroring the official .deb postinst; (2) writes and loads an AppArmor profile with `flags=(unconfined)` plus a `userns` rule, gated on AppArmor 4.0 ABI presence — the same pattern used by Chrome, VS Code, and 1Password to permit unprivileged user namespaces; and (3) refreshes desktop/icon caches. The profile is a static heredoc with no variable interpolation, the sandbox chmod is guarded by a file-existence check, and the profile is cleanly removed on uninstall.

No network requests, no downloads, no remote code execution, no obfuscation, and no file access outside the package's own scope. The `grep` of `/etc/pacman.conf` is read-only and only triggers an informational rename notice, and the AppArmor removal touches only the package's own profile. The SUID sandbox bit and the unconfined AppArmor flag are inherent security considerations of upstream's sandbox design, but they are exactly what the application requires and are consistent with ordinary packaging for this class of software.
</details>
<evidence></evidence>
<summary>Safe. Standard install hook; SUID sandbox, AppArmor profile, cache refresh.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed claude-desktop-extra.install. Status: SAFE -- Safe. Standard install hook; SUID sandbox, AppArmor profile, cache refresh.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 18,971
  Completion Tokens: 4,980
  Total Tokens: 23,951
  Total Cost: $0.002633
  Execution Time: 48.40 seconds

Final Status: SAFE


No issues found.
