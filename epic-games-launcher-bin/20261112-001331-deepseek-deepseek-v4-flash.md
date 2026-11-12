---
package: epic-games-launcher-bin
pkgver: 0.115.0
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 3f8f339d2184315a824bf6b8e30068212deac13a
prompt_tokens: 9366
completion_tokens: 3391
total_tokens: 12757
cost: 0.00145332
execution_time: 25.56
files_reviewed: 2
files_skipped: 0
maintainer_files: 2
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-11-12T00:13:30Z
file_verdicts:
  - file: PKGBUILD
    status: safe
    summary: Standard binary repackage with pinned checksum; no malicious behavior.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata file, no malicious code.
---

Materializing epic-games-launcher-bin from local mirror...
Cloning https://aur.archlinux.org/epic-games-launcher-bin.git...
Cloned epic-games-launcher-bin
Analyzing epic-games-launcher-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD only contains top‑level variable assignments (pkgname, pkgver, source, etc.) and function definitions (prepare, package). No command substitutions, backticks, eval, wget, curl, or any code that executes at sourcing time. `makepkg --printsrcinfo` will simply parse these declarations and exit safely. The source URL points to the official Epic Games distribution server, which is expected for this package.
</details>
<evidence></evidence>
<summary>No global‑scope execution; only variable definitions.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No global‑scope execution; only variable definitions.
Reviewing the 2 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/2] Reviewing .SRCINFO...
[0/2] Reviewing .SRCINFO, PKGBUILD...
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD is standard for a binary repackaging of the official Epic Games Launcher. The source is downloaded from Epic's own distribution domain with a pinned SHA-256 checksum, ensuring integrity. The prepare and package functions only extract the .deb archive and install files into the package directory—no suspicious network requests, code execution, or system modifications beyond normal packaging operations. The wrapper script sets `EGL_DISABLE_SELF_UPDATE` to 1 by default, which is a reasonable packaging choice to prevent the launcher from overwriting itself. No obfuscated code, backdoors, or exfiltration mechanisms are present. The file follows standard AUR packaging practices and does not exhibit any genuinely malicious behavior.
</details>
<evidence>
</evidence>
<summary>Standard binary repackage with pinned checksum; no malicious behavior.</summary>
</security_assessment>

[1/2] Reviewing .SRCINFO...
+ Reviewed PKGBUILD. Status: SAFE -- Standard binary repackage with pinned checksum; no malicious behavior.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a `.SRCINFO` metadata file for the AUR package `epic-games-launcher-bin`. It contains no executable code (shell scripts, compilation commands, or similar). It purely defines package metadata: version, upstream URL, dependencies, and a pinned SHA256 checksum.

The upstream source is a pre-built `.deb` binary download from the official Epic Games domain (`epicgames.com`), and its integrity is verified by a pinned SHA256 checksum (`618adc...`). No malicious patterns are present: no obfuscated code, no external network requests beyond the declared upstream source, no dangerous commands (eval, curl|bash, base64 decoding, etc.), and no file system modifications outside standard packaging operations (dependencies are standard GTK/GLib libraries expected by an Electron/webview-based application). The dependencies listed are consistent with the expected runtime environment for the Epic Games Launcher.
</details>
<evidence></evidence>
<summary>Standard AUR metadata file, no malicious code.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata file, no malicious code.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 9,366
  Completion Tokens: 3,391
  Total Tokens: 12,757
  Total Cost: $0.001453
  Execution Time: 25.56 seconds

Final Status: SAFE


No issues found.
