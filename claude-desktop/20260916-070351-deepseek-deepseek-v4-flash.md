---
package: claude-desktop
pkgver: 2.110.0
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 171a316e053e9c4b28731ccb1aa63b1168550d3a
prompt_tokens: 16614
completion_tokens: 6176
total_tokens: 22790
cost: 0.002566561396
execution_time: 184.38
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-16T07:03:50Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard .gitignore with no security issues.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata with official sources and pinned checksums; no malicious behavior found.
  - file: PKGBUILD
    status: safe
    summary: Standard repackaging PKGBUILD, no malicious behavior.
  - file: claude-desktop.sh
    status: safe
    summary: Standard benign Electron launcher; reads user flags, detects Wayland, no malicious behavior found.
---

Materializing claude-desktop from local mirror...
Materialized claude-desktop
Analyzing claude-desktop AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only standard variable assignments, arrays, and a `package()` function definition. There are no top-level command substitutions, `eval` calls, network requests, or any code that would execute when the file is sourced. The global scope is entirely composed of static definitions for package metadata, dependencies, source URLs, and checksums. Nothing in this scope can perform actions such as downloading, executing, or exfiltrating data. Running `makepkg --printsrcinfo` will safely parse this PKGBUILD without triggering any malicious behavior.
</details>
<evidence></evidence>
<summary>No top-level code execution; safe to parse.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No top-level code execution; safe to parse.
Reviewing the 4 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/4] Reviewing .SRCINFO...
[0/4] Reviewing .SRCINFO, .gitignore...
[0/4] Reviewing .SRCINFO, .gitignore, PKGBUILD...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard `.gitignore` file that prevents build artifacts (`.deb`, `.pkg.tar*`, `src/`, `pkg/`) from being committed to the AUR repository. It contains no executable code, network requests, or any suspicious operations. The content is entirely benign and follows normal AUR packaging conventions.
</details>
<evidence></evidence>
<summary>Standard .gitignore with no security issues.</summary>
</security_assessment>

[1/4] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore with no security issues.
[1/4] Reviewing .SRCINFO, PKGBUILD, claude-desktop.sh...
LLM auditresponse for .SRCINFO:
 <security_assessment>
<decision>SAFE</decision>
<details>
This `.SRCINFO` file is standard AUR package metadata for `claude-desktop`. It declares a proprietary desktop application from Anthropic, with sources fetched from the official `downloads.claude.ai` domain using pinned sha256 checksums. No SKIP checksums are used, and no suspicious URLs, executables, or build-time commands are present.

All dependencies and optdepends are legitimate system libraries and supporting packages (GTK, Qt portals, QEMU utilities) appropriate for a desktop Electron-style application with local VM-based Cowork features. There is no evidence of obfuscation, unexpected network behavior, or deviation from ordinary packaging practices.
</details>
<evidence>
</evidence>
<summary>
Standard AUR metadata with official sources and pinned checksums; no malicious behavior found.</summary>
</security_assessment>

[2/4] Reviewing PKGBUILD, claude-desktop.sh...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata with official sources and pinned checksums; no malicious behavior found.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard AUR packaging practices for repackaging an official upstream .deb. The source is pinned to the official Anthropic download domain (downloads.claude.ai) with hardcoded sha256sums (none set to SKIP). All operations in `package()` are routine: extracting the .deb payload, replacing the wrapper script (with a provided launcher found in the AUR repo), setting the setuid bit on the Chromium sandbox (standard for Electron packages), removing Debian-specific files, and creating compatibility symlinks for the Cowork VM feature. No obfuscated code, no unexpected network requests, no exfiltration, and no execution of unverified content at build time. The file is consistent with legitimate packaging.
</details>
<evidence></evidence>
<summary>Standard repackaging PKGBUILD, no malicious behavior.</summary>
</security_assessment>

[3/4] Reviewing claude-desktop.sh...
+ Reviewed PKGBUILD. Status: SAFE -- Standard repackaging PKGBUILD, no malicious behavior.
LLM auditresponse for claude-desktop.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard Electron launcher wrapper. It reads user-provided flags from an optional `claude-desktop-flags.conf` in the user's XDG config directory, detects a Wayland session from environment variables, and execs the packaged binary at the absolute path `/usr/lib/claude-desktop/claude-desktop` with the collected arguments.

The config parsing is done defensively: lines are read with `while read`, comments are stripped, whitespace-only lines are skipped, and fields are split into a Bash array that is later expanded only as quoted array elements (`"${flags[@]}"`). There is no `eval`, no command substitution, no unquoted expansion, so no command injection is possible. The config file lives under the user's own `$XDG_CONFIG_HOME`, so it offers no escalation path that an attacker would not already need. Passing the user-supplied flags as arguments to the application is the script's intended purpose.

The script performs no network access, no downloads, no encoded or obfuscated content, no writes to system directories, and no tampering with unrelated files. The only minor note is that the user-controlled flags file could in principle pass Chromium switches that weaken sandboxing (e.g., remote-debugging or `--no-sandbox`) to the Electron app; that is an intentional launcher feature and requires the user to knowingly add such flags, so it is not a security issue for the package itself.
</details>
<evidence>
</evidence>
<summary>Standard benign Electron launcher; reads user flags, detects Wayland, no malicious behavior found.</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed claude-desktop.sh. Status: SAFE -- Standard benign Electron launcher; reads user flags, detects Wayland, no malicious behavior found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 16,614
  Completion Tokens: 6,176
  Total Tokens: 22,790
  Total Cost: $0.002567
  Execution Time: 184.38 seconds

Final Status: SAFE


No issues found.
