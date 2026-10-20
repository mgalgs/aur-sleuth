---
package: claude-desktop-extra
pkgver: 2.42304.2
pkgrel: 2
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 19058
completion_tokens: 5523
total_tokens: 24581
cost: 0.002739464
execution_time: 57.25
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-20T19:03:42Z
file_verdicts:
  - file: PKGBUILD
    status: safe
    summary: Standard AUR binary package with pinned checksums; no malicious behavior found.
  - file: .SRCINFO
    status: safe
    summary: Declarative AUR metadata with pinned checksums and no malicious behavior.
  - file: claude-desktop-extra.install
    status: safe
    summary: "Standard Chromium post-install hook: SUID sandbox, AppArmor profile, cache refresh; no malice."
---

Materializing claude-desktop-extra from local mirror...
Materialized claude-desktop-extra
Analyzing claude-desktop-extra AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only static variable assignments (package metadata, dependency lists, source URLs, checksums) and a function definition (`package()`) whose body never executes during `makepkg --printsrcinfo`.  
There are no command substitutions (`$(…)`), backtick executions, `eval`, `curl`, `wget`, or any other executable code at the top-level scope.  
All potential dynamic content (file operations, checks, `grep`) is confined inside the `package()` function, which is only executed during the packaging phase and is explicitly **not** run by `--printsrcinfo`.  

No risk arises from sourcing this PKGBUILD for metadata extraction.
</details>
<evidence></evidence>
<summary>No top-level executable code; only static definitions.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No top-level executable code; only static definitions.
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, PKGBUILD...
[0/3] Reviewing .SRCINFO, PKGBUILD, claude-desktop-extra.install...
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a standard Arch binary package. It downloads a prebuilt tarball from the maintainer's own GitHub releases over HTTPS, with pinned SHA-256 checksums for both x86_64 and aarch64. The `package()` function installs the application tree into `/usr/lib/claude-desktop`, adds a launcher, desktop entry, icons, a GNOME Shell search provider, and MIME data. Setting `chmod 4755` on `chrome-sandbox` is ordinary and required for Chromium-based Electron applications.

There is no obfuscated code, no `eval`/`base64`/`curl|bash`, no unexpected network behavior at build or install time, and no file operations outside the package directory and standard `/usr/share` locations. The package does ship a maintainer-patched `app.asar` in the upstream release tarball, which is exactly the stated purpose of this "extra features" package; it is a supply-chain consideration but the pinned checksums and standard packaging flow provide no evidence of injected malicious code.
</details>
<evidence>
</evidence>
<summary>
Standard AUR binary package with pinned checksums; no malicious behavior found.
</summary>
</security_assessment>

[1/3] Reviewing .SRCINFO, claude-desktop-extra.install...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR binary package with pinned checksums; no malicious behavior found.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The .SRCINFO file is standard AUR metadata for an unofficial repackaging of Claude Desktop. It declares pinned sha256 checksums for both x86_64 and aarch64 tarballs fetched over https from the maintainer's own GitHub releases page, which is the package's declared upstream. The dependency and optdepends lists are appropriate for an Electron-based application and its stated extra features (Computer Use, VM workspace, and so on). No code execution, obfuscated strings, unexpected network endpoints, or file-manipulating logic is present in this file; it contains only declarative packaging metadata. The optdepends text describing the app auto-downloading a checksum-verified Claude Code CLI describes upstream application behavior and is not itself a packaging-time attack. The only minor consideration is the normal trust assumption inherent in any AUR package that repackages a third-party binary release.
</details>
<evidence>
</evidence>
<summary>
Declarative AUR metadata with pinned checksums and no malicious behavior.</summary>
</security_assessment>

[2/3] Reviewing claude-desktop-extra.install...
+ Reviewed .SRCINFO. Status: SAFE -- Declarative AUR metadata with pinned checksums and no malicious behavior.
LLM auditresponse for claude-desktop-extra.install:
<security_assessment>
<decision>SAFE</decision>
<details>
This install script performs routine post-install operations for a Chromium-based desktop application. It sets the SUID bit on the package's own chrome-sandbox binary (matching the official Claude Desktop .deb postinst behavior), installs an AppArmor profile that allowlists the app for user namespaces, refreshes desktop/icon caches, and prints informational notes about optional dependencies and a repo rename. No network requests, no downloads, no obfuscated or encoded commands, and no eval/base64 usage are present.

The only file reads are a check of the package's own sandbox path and a read-only grep of /etc/pacman.conf to detect a legacy repo section. The SUID root bit and the "unconfined" AppArmor profile are security-relevant by nature, but they are standard, documented practices for Chromium-based apps on Linux and only affect the package's own files and a dedicated apparmor profile. This is expected packaging behavior, not injected malicious code.
</details>
<evidence>
</evidence>
<summary>
Standard Chromium post-install hook: SUID sandbox, AppArmor profile, cache refresh; no malice.
</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed claude-desktop-extra.install. Status: SAFE -- Standard Chromium post-install hook: SUID sandbox, AppArmor profile, cache refresh; no malice.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 19,058
  Completion Tokens: 5,523
  Total Tokens: 24,581
  Total Cost: $0.002739
  Execution Time: 57.25 seconds

Final Status: SAFE


No issues found.
