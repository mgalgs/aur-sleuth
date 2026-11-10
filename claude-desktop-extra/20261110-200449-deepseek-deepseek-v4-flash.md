---
package: claude-desktop-extra
pkgver: 4.23118.1
pkgrel: 6
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 3f8f339d2184315a824bf6b8e30068212deac13a
prompt_tokens: 20591
completion_tokens: 3524
total_tokens: 24115
cost: 0.002515149
execution_time: 23.0
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-11-10T20:04:48Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata file, no security issues.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD, no malicious indicators found.
  - file: claude-desktop-extra.install
    status: safe
    summary: "Safe: standard install hooks, no malicious behavior"
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
This PKGBUILD contains only static variable definitions and comments in its global/top-level scope. There are no command substitutions, no function calls, no `eval`, `curl`, `wget`, base64 decoding, or any other code that could execute during the sourcing phase of `makepkg --printsrcinfo`. The `package()` function definition contains file operations (install, cp, chmod, cat, etc.) but those are never invoked by `makepkg --printsrcinfo`, which only sources the PKGBUILD without running any of the package functions. No obfuscated code, suspicious network requests, or data exfiltration mechanisms exist at the global scope.
</details>
<evidence></evidence>
<summary>No top-level executable code; static variable definitions only.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No top-level executable code; static variable definitions only.
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, PKGBUILD...
[0/3] Reviewing .SRCINFO, PKGBUILD, claude-desktop-extra.install...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This `.SRCINFO` file contains only metadata for the `claude-desktop-extra` AUR package: package name, version, description, dependencies, optional dependencies, source URLs, and SHA-256 checksums.  

All source tarballs are fetched from the project's own GitHub releases (`https://github.com/patrickjaja/claude-desktop-extra/releases/...`) with pinned version strings and verified via SHA-256 checksums. There are no obfuscated commands, no `curl|bash` patterns, no suspicious network destinations, no encoded or dynamic code execution, and no unexpected file operations. The optional dependencies are documented with clear, descriptive comments about their purpose.  

The file conforms to standard AUR packaging practices and contains no evidence of supply-chain compromise or malicious behavior.
</details>
<evidence></evidence>
<summary>Standard AUR metadata file, no security issues.</summary>
</security_assessment>

[1/3] Reviewing PKGBUILD, claude-desktop-extra.install...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata file, no security issues.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD for **claude-desktop-extra** is a standard AUR package that downloads prebuilt tarballs from the project's GitHub releases (HTTPS, with SHA256 checksums pinned). The `package()` function performs routine installation tasks:

- Extracting the tarball containing the official Claude Desktop runtime with maintainer-provided patches and CU bridges
- Setting SUID on `chrome-sandbox` (standard for Chromium sandboxing)
- Writing a small JSON release stamp (`cdb-release.json`) for in-app update detection
- Installing launcher script, desktop entry, icons, MIME types, udev rules, polkit policies, and licenses

There are no suspicious network requests (sources are GitHub releases of the same project), no obfuscated code, no use of `eval`/`base64`/`curl`/`wget` in unexpected contexts, and no attempts to exfiltrate data. The PKGBUILD verifies expected file presence and errors out if the tarball layout has changed. All operations are confined to the package installation directories (`$pkgdir`). The package is a binary redistribution with patches; the PKGBUILD itself does not inject any code and only copies files from the verified tarball. No supply-chain attack indicators are present.
</details>
<evidence></evidence>
<summary>Standard AUR PKGBUILD, no malicious indicators found.</summary>
</security_assessment>

[2/3] Reviewing claude-desktop-extra.install...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD, no malicious indicators found.
LLM auditresponse for claude-desktop-extra.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The script performs standard post-install and post-remove tasks expected for this package:
- Setting SUID (4755) on `chrome-sandbox` so Chromium&#x27;s sandbox works (standard practice for Chromium-based apps).
- Installing an AppArmor profile that allows unconfined user namespaces (same pattern as Chrome, VS Code, 1Password). The profile is only loaded on systems with AppArmor 4.0+.
- Refreshing desktop database and icon caches using `update-desktop-database` and `gtk-update-icon-cache`.
- Printing informational notes about optional Cowork VM dependencies and repository migration instructions.

All commands (`chown`, `chmod`, `cat`, `rm`, `apparmor_parser`, `grep`, `echo`) operate on the package&#x27;s own installed files or standard system caches. There is no obfuscated code, no network requests (only a printed URL for repository migration), no exfiltration of data, and no execution of fetched content. The script follows normal AUR packaging conventions.
</details>
<evidence></evidence>
<summary>Safe: standard install hooks, no malicious behavior</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed claude-desktop-extra.install. Status: SAFE -- Safe: standard install hooks, no malicious behavior
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 20,591
  Completion Tokens: 3,524
  Total Tokens: 24,115
  Total Cost: $0.002515
  Execution Time: 23.00 seconds

Final Status: SAFE


No issues found.
