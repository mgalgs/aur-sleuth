---
package: claude-desktop-extra
pkgver: 2.42304.0
pkgrel: 2
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 18976
completion_tokens: 3452
total_tokens: 22428
cost: 0.002355080
execution_time: 38.17
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-16T23:04:17Z
file_verdicts:
  - file: claude-desktop-extra.install
    status: safe
    summary: Benign pacman install hook; standard sandbox, AppArmor, and cache integration only.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata with pinned checksums; no malicious behavior detected.
  - file: PKGBUILD
    status: safe
    summary: Standard binary PKGBUILD with pinned checksums; no malicious, obfuscated, or exfiltrating behavior found.
---

Materializing claude-desktop-extra from local mirror...
Materialized claude-desktop-extra
Analyzing claude-desktop-extra AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD only defines variables (pkgname, pkgver, etc.) and a `package()` function at the top level. There are no command substitutions, backtick executions, `eval` calls, or invocations of external commands (curl, wget, etc.) in the global scope that would execute when the file is sourced by `makepkg --printsrcinfo`. The source array assignments are simple strings; no download occurs at this stage. The `package()` function is not executed during `--printsrcinfo`. Therefore, sourcing this PKGBUILD is safe.</details>
<evidence></evidence>
<summary>No top-level code execution risks.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No top-level code execution risks.
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, PKGBUILD...
[0/3] Reviewing .SRCINFO, PKGBUILD, claude-desktop-extra.install...
LLM auditresponse for claude-desktop-extra.install:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard pacman install hook for claude-desktop-extra. Its actions are confined to package-specific system integration: setting the SUID bit on the package's own chrome-sandbox, writing an AppArmor userns allowlist profile for the application, reloading that profile with apparmor_parser, refreshing desktop/icon caches, and printing informational notes. These mirror the official Claude Desktop postinst behavior on Linux and are consistent with ordinary packaging practice for Chromium-based applications.

There is no evidence of malicious behavior: no network requests, no obfuscated or encoded commands, no data exfiltration, no unexpected file reads or writes outside the application's scope, and no execution of untrusted content. The apparmor profile writes to /etc/apparmor.d/ and modifies AppArmor policy, which is a security-relevant system change, but it is clearly scoped to the package and documented as matching standard practice used by Chrome, VS Code, and similar applications. The grep of /etc/pacman.conf only produces a migration notice. Overall, this is benign packaging integration, with only the expected security considerations that come from installing a SUID sandbox and an AppArmor unconfined profile for the application itself.
</details>
<evidence>
</evidence>
<summary>
Benign pacman install hook; standard sandbox, AppArmor, and cache integration only.</summary>
</security_assessment>

[1/3] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed claude-desktop-extra.install. Status: SAFE -- Benign pacman install hook; standard sandbox, AppArmor, and cache integration only.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard AUR `.SRCINFO` metadata file. It declares package metadata, dependencies, optional dependencies, source URLs, and SHA256 checksums. The source tarballs are fetched from the package's own GitHub releases page (`github.com/patrickjaja/claude-desktop-extra`), which matches the stated upstream URL. Both architecture-specific sources have pinned SHA256 checksums rather than `SKIP`, so no checksum verification is bypassed.

No executable code, obfuscation, unexpected network destinations, or file-modifying operations are present in this file. The optdepends descriptions mention application behavior such as auto-downloading a checksum-verified CLI and optional helper tools, but these are descriptive text only and not executed by the `.SRCINFO`. There are no red flags indicating a supply-chain attack.
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
This PKGBUILD is a straightforward binary package recipe. It fetches a pre-built tarball from the maintainer's own GitHub releases (the package's declared upstream), with pinned sha256 checksums for both x86_64 and aarch64, and installs it verbatim under `/usr/lib/claude-desktop`. The `package()` function uses only standard operations: `install`, `cp`, `chmod`, `cat` for the desktop entry, and `find`-driven icon installation. There are no `eval`, `base64`, obfuscated strings, curl-piped-to-shell, `git pull`/`reset --hard`, writes outside `$pkgdir`/`$srcdir`, or any network/exfiltration behavior. The SUID bit on `chrome-sandbox` is standard and required for Chromium-based applications, and the PKGBUILD includes defensive "fail if upstream layout changed" audits for the GNOME search-provider and MIME files.

Two trust considerations worth noting, neither of which is malicious: (1) the tarball ships a maintainer-patched `app.asar` and bundled binaries rather than building from upstream source — this is the package's stated purpose ("extra features") and the maintainer documents it transparently, but users are placing trust in the maintainer's release artifacts and should verify the release checksums; (2) an optdepends description mentions the app auto-downloading a "checksum-verified" Claude Code CLI at runtime — this is upstream application functionality, not injected code in this file. The referenced `.install` hook is not shown here, but re-asserting ownership/permissions on `chrome-sandbox` at install time is ordinary practice.
</details>
<evidence>
</evidence>
<summary>
Standard binary PKGBUILD with pinned checksums; no malicious, obfuscated, or exfiltrating behavior found.
</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard binary PKGBUILD with pinned checksums; no malicious, obfuscated, or exfiltrating behavior found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 18,976
  Completion Tokens: 3,452
  Total Tokens: 22,428
  Total Cost: $0.002355
  Execution Time: 38.17 seconds

Final Status: SAFE


No issues found.
