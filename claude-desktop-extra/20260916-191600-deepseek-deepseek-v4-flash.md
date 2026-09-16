---
package: claude-desktop-extra
pkgver: 2.110.0
pkgrel: 2
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 171a316e053e9c4b28731ccb1aa63b1168550d3a
prompt_tokens: 16485
completion_tokens: 4702
total_tokens: 21187
cost: 0.002174676
execution_time: 265.41
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-16T19:16:00Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Metadata-only AUR file with no executable or malicious content.
  - file: claude-desktop-extra.install
    status: safe
    summary: Standard install hook, no security issues found.
  - file: PKGBUILD
    status: safe
    summary: Standard repackaging PKGBUILD with pinned checksums; no injected malicious behavior found.
---

Materializing claude-desktop-extra from local mirror...
Materialized claude-desktop-extra
Analyzing claude-desktop-extra AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only variable definitions, comments, and a `package()` function at the top level. No command substitutions, function calls, or any code that would execute during `makepkg --printsrcinfo`. All URLs and checksums are static string assignments. There is no risk of code execution during the sourcing phase.
</details>
<evidence></evidence>
<summary>No top-level code execution; printsrcinfo is safe.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No top-level code execution; printsrcinfo is safe.
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, claude-desktop-extra.install...
[0/3] Reviewing .SRCINFO, claude-desktop-extra.install, PKGBUILD...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The `.SRCINFO` file is a metadata descriptor for an AUR package. It contains only declarative fields: package name, description, version, dependencies, architecture, source URLs with explicit SHA256 checksums, and license. No executable code, scripts, or obfuscated content is present. The source URLs point to the maintainer's own GitHub releases, which is standard packaging practice for AUR packages that distribute prebuilt binaries. The checksums are pinned to specific hashes (not `SKIP`), providing integrity verification. There is no evidence of malicious or suspicious behavior.
</details>
<evidence>
</evidence>
<summary>Metadata-only AUR file with no executable or malicious content.</summary>
</security_assessment>

[1/3] Reviewing claude-desktop-extra.install, PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Metadata-only AUR file with no executable or malicious content.
LLM auditresponse for claude-desktop-extra.install:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard pacman install hook that mirrors the official Claude Desktop .deb post-install behavior. It performs three expected tasks:

1. Sets the chrome-sandbox binary to SUID root (4755), which is required for Chromium's setuid sandbox — identical to what Chrome, VS Code, and other Electron apps do on Linux.
2. Optionally writes an AppArmor profile (with `flags=(unconfined)` and `userns`) that allows the application to use unprivileged user namespaces on AppArmor 4.0+ systems. This is exactly the same pattern used by Chromium, VS Code, and 1Password; it only allowlists the application rather than confining it.
3. Refreshes desktop database and icon caches so the launcher entry appears correctly.

The file also prints informational notes about optional dependencies (Cowork VM) and a legacy repository rename. There are no network requests, obfuscated code, encoded commands, data exfiltration, backdoors, or any operations outside the package's own scope. All file operations target only the package's installed files or standard system caches. This is a perfectly normal and safe maintainer-provided install script.
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
The visible PKGBUILD repackages a prebuilt, patched Claude Desktop tarball from the maintainer&apos;s own GitHub releases. The x86_64 and aarch64 sources are HTTPS URLs pinned with concrete sha256 checksums (no SKIP), so the downloaded tarball content is verified at build time. The install() steps are standard packaging practice: copying the app tree into /usr/lib/claude-desktop, installing desktop entries, hicolor icons, and a launcher script, and setting mode 4755 on chrome-sandbox — the normal required SUID for Chromium/Electron sandboxes on Linux.

No eval, base64 decoding, curl|bash, post-build network fetches, writes outside $pkgdir, or obfuscated commands appear in the visible content. The optdepends notes describe upstream application behavior (e.g., Claude Code CLI auto-download at runtime, Cowork workspace VM optionally sharing $HOME) — those are product features of the application, not code injected by this package, and the package merely declares optional dependencies for them. The main trust consideration is inherent to the package&apos;s design: the tarball contains a prebuilt patched app.asar, so users rely on the maintainer&apos;s build and pinned checksums; this is normal for -bin-style repackaging and is not evidence of a supply-chain attack.
</details>
<evidence></evidence>
<summary>Standard repackaging PKGBUILD with pinned checksums; no injected malicious behavior found.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard repackaging PKGBUILD with pinned checksums; no injected malicious behavior found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 16,485
  Completion Tokens: 4,702
  Total Tokens: 21,187
  Total Cost: $0.002175
  Execution Time: 265.41 seconds

Final Status: SAFE


No issues found.
