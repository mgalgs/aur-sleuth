---
package: claude-desktop-extra
pkgver: 2.42304.2
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 19019
completion_tokens: 6463
total_tokens: 25482
cost: 0.002906995
execution_time: 77.92
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-19T11:02:33Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Package metadata only; pinned checksums and expected upstream sources; no malicious behavior found.
  - file: PKGBUILD
    status: safe
    summary: Standard pinned prebuilt package; no malicious behavior.
  - file: claude-desktop-extra.install
    status: safe
    summary: "Standard post-install hook: SUID sandbox, AppArmor allowlist, cache refresh; no malicious behavior."
---

Materializing claude-desktop-extra from local mirror...
Materialized claude-desktop-extra
Analyzing claude-desktop-extra AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only standard top-level variable definitions (pkgname, depends, source arrays with pinned checksums, etc.) and a single function definition `package() { ... }`. There are no command substitutions, backtick expansions, function calls, `eval` statements, or network operations in the global scope that would execute during `makepkg --printsrcinfo`. All file operations and privileged logic are safely encapsulated within the `package()` function, which is defined but not executed during this narrow gate. Therefore, sourcing this file poses no risk for the `--printsrcinfo` step.
</details>
<evidence></evidence>
<summary>No top-level execution risk detected.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No top-level execution risk detected.
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, PKGBUILD...
[0/3] Reviewing .SRCINFO, PKGBUILD, claude-desktop-extra.install...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard `.SRCINFO` metadata file for an Arch User Repository package. It only declares package metadata: description, version, dependencies, optional dependencies, source URLs, and SHA-256 checksums. There are no executable instructions, network operations, obfuscated content, or file-system modifications contained in this file.

The source tarballs are fetched from the maintainer's own GitHub releases page, which is consistent with the package's declared upstream URL (`https://github.com/patrickjaja/claude-desktop-extra`). Both `x86_64` and `aarch64` sources are pinned with concrete SHA-256 checksums rather than `SKIP`, which is good packaging hygiene. The optional dependencies and descriptions, while detailed, relate to the application's stated features (Computer Use, Cowork VM, Claude Code sandboxing, etc.) and do not indicate malicious behavior. No supply-chain red flags are present.
</details>
<evidence>
</evidence>
<summary>
Package metadata only; pinned checksums and expected upstream sources; no malicious behavior found.</summary>
</security_assessment>

[1/3] Reviewing PKGBUILD, claude-desktop-extra.install...
+ Reviewed .SRCINFO. Status: SAFE -- Package metadata only; pinned checksums and expected upstream sources; no malicious behavior found.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a standard prebuilt-binary AUR package. It fetches a tarball from the package maintainer's own GitHub releases for both x86_64 and aarch64, with pinned sha256 checksums for each architecture. The package() function only performs routine installation operations: copying the application tree into /usr/lib/claude-desktop, installing the launcher, desktop entry, icons, MIME data, and GNOME search provider files, plus setting the standard SUID bit on Chromium's chrome-sandbox.

No obfuscated code, encoded commands, eval usage, unexpected curl/wget downloads, or exfiltration behavior is present. The tarball is a prebuilt artifact from the maintainer's release page rather than official Anthropic infrastructure, and the GNOME search-provider layout is validated with explicit error checks; however, the source is pinned by checksum and matches the package's stated purpose. Nothing in this file indicates injected malicious code or supply-chain tampering.
</details>
<evidence>
</evidence>
<summary>
Standard pinned prebuilt package; no malicious behavior.
</summary>
</security_assessment>

[2/3] Reviewing claude-desktop-extra.install...
+ Reviewed PKGBUILD. Status: SAFE -- Standard pinned prebuilt package; no malicious behavior.
LLM auditresponse for claude-desktop-extra.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The script is a pacman .install hook that performs routine post-install/upgrade/remove maintenance: it sets a package-local chrome-sandbox to root-owned SUID 4755 (required for Chromium's setuid sandbox), writes and removes a package-specific AppArmor profile at /etc/apparmor.d/claude-desktop that allowlists this application for user namespaces, and refreshes desktop/icon caches. These operations are scoped to the package's own files and the package's own profile; no unrelated system files are modified.

The AppArmor profile uses flags=(unconfined), and the sandbox becomes SUID root; both are security-relevant, but they mirror the official Claude Desktop .deb postinst behavior and the standard pattern used by Chromium-based apps such as Chrome, VS Code, and 1Password. The script degrades gracefully and only invokes apparmor_parser when AppArmor is active. No network requests, downloads, encoded payloads, eval, base64, or data exfiltration appear anywhere in the file.

The only system file read is /etc/pacman.conf via grep, used solely to print a migration notice about the package rename; it does not alter pacman.conf and does not execute commands based on its contents. The informational notes about optional Cowork dependencies and the legacy repo are benign output. Overall this is ordinary packaging behavior, not evidence of an injected supply-chain attack.
</details>
<evidence>
</evidence>
<summary>
Standard post-install hook: SUID sandbox, AppArmor allowlist, cache refresh; no malicious behavior.
</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed claude-desktop-extra.install. Status: SAFE -- Standard post-install hook: SUID sandbox, AppArmor allowlist, cache refresh; no malicious behavior.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 19,019
  Completion Tokens: 6,463
  Total Tokens: 25,482
  Total Cost: $0.002907
  Execution Time: 77.92 seconds

Final Status: SAFE


No issues found.
