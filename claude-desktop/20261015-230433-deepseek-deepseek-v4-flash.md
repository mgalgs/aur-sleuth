---
package: claude-desktop
pkgver: 2.42304.0
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 16568
completion_tokens: 2481
total_tokens: 19049
cost: 0.001959230
execution_time: 29.01
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-15T23:04:32Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard .gitignore file with no security concerns.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata with pinned checksums and official sources.
  - file: claude-desktop.sh
    status: safe
    summary: Benign launcher script, no security issues.
  - file: PKGBUILD
    status: safe
    summary: Standard repackaging of official Debian package, no malicious behavior found.
---

Materializing claude-desktop from local mirror...
Materialized claude-desktop
Analyzing claude-desktop AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD only contains standard variable and array assignments at the top level (pkgname, pkgver, depends, source, sha256sums, etc.). There are no command substitutions, backticks, eval, or any other executable constructs that would run during `makepkg --printsrcinfo`. All executable code is inside the `package()` function, which is not executed during the metadata parsing step. The source arrays reference legitimate upstream URLs and a local shell script, and the checksums are SHA-256 hashes. No malicious or suspicious behavior is present in the global scope.
</details>
<evidence></evidence>
<summary>No dangerous top-level code; all safe static assignments.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous top-level code; all safe static assignments.
Reviewing the 4 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/4] Reviewing .SRCINFO...
[0/4] Reviewing .SRCINFO, PKGBUILD...
[0/4] Reviewing .SRCINFO, PKGBUILD, .gitignore...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard `.gitignore` for an Arch User Repository (AUR) package. It lists build artifacts (`*.deb`, `*.pkg.tar*`, `src/`, `pkg/`) that should not be tracked by Git. There is no executable code, no network requests, no obfuscation, and no indication of malicious behavior. The file is purely a configuration file for version control hygiene.
</details>
<evidence></evidence>
<summary>Standard .gitignore file with no security concerns.</summary>
</security_assessment>

[1/4] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore file with no security concerns.
[1/4] Reviewing .SRCINFO, PKGBUILD, claude-desktop.sh...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This .SRCINFO file is standard AUR metadata for the `claude-desktop` package. It declares dependencies, source URLs (pointing to the official Anthropic download domain `downloads.claude.ai`), and SHA256 checksums for all sources. No suspicious network destinations, obfuscated content, or dangerous operations are present. All checksums are pinned (not set to SKIP), which is good practice for a binary package. The file contains no executable code — it is purely declarative metadata.
</details>
<evidence></evidence>
<summary>Standard AUR metadata with pinned checksums and official sources.</summary>
</security_assessment>

[2/4] Reviewing PKGBUILD, claude-desktop.sh...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata with pinned checksums and official sources.
LLM auditresponse for claude-desktop.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard Electron application launcher script. It reads optional user‑provided flags from `~/.config/claude-desktop-flags.conf`, auto‑detects a Wayland session to pass the appropriate Ozone switch, and then execs the main binary at a hardcoded path. There are no network requests, obfuscated code, or dangerous operations. All file reads are from user‑controlled locations, and the script performs no modifications to the system. The logic is clear and consistent with normal AUR packaging practices.
</details>
<evidence></evidence>
<summary>Benign launcher script, no security issues.</summary>
</security_assessment>

[3/4] Reviewing PKGBUILD...
+ Reviewed claude-desktop.sh. Status: SAFE -- Benign launcher script, no security issues.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a standard repackaging of Anthropic's official Debian package for Arch Linux. The file shows no evidence of malicious or dangerous behavior:

- **Source URLs** point exclusively to Anthropic's official download domain (`downloads.claude.ai`), with pinned versions and proper SHA256 checksums on all downloads.
- **No network fetch** beyond the declared source URLs — no `curl | bash`, no `git pull` or `git fetch` in `prepare()` or `package()` that would bypass the checksummed sources.
- **No obfuscation** — all operations are clearly documented with inline comments explaining every non-trivial command.
- **No exfiltration** — no access to `/etc/shadow`, SSH keys, environment variables, browser data, or any data outside the package's own installed files.
- **No backdoors or reverse shells**.
- The `setuid 4755` on `chrome-sandbox` is standard Chromium sandbox behavior, correctly documented.
- The compatibility symlinks for Cowork (virtiofsd, OVMF firmware) point to files owned by Arch's own packages (`edk2-ovmf`, `virtiofsd`) — legitimate inter-package compatibility, not injection.

The only file whose contents we cannot assess from this PKGBUILD alone is the `claude-desktop.sh` launcher script, but it is part of the package's declared source array with a checksum, and its presence as a helper script is normal and expected (it replaces a bare symlink with a Wayland-aware launcher). No red flags are present in the PKGBUILD itself.
</details>
<evidence></evidence>
<summary>Standard repackaging of official Debian package, no malicious behavior found.</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard repackaging of official Debian package, no malicious behavior found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 16,568
  Completion Tokens: 2,481
  Total Tokens: 19,049
  Total Cost: $0.001959
  Execution Time: 29.01 seconds

Final Status: SAFE


No issues found.
