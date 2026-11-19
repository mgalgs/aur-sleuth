---
package: claude-desktop
pkgver: 4.16336.0
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 16880
completion_tokens: 2467
total_tokens: 19347
cost: 0.001985074
execution_time: 32.37
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-11-04T04:03:36Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard .gitignore excluding build artifacts; no security concerns.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata with pinned official sources; no malicious behavior detected.
  - file: PKGBUILD
    status: safe
    summary: Standard repackaging of official Anthropic .deb with pinned checksums; no malicious behavior found.
  - file: claude-desktop.sh
    status: safe
    summary: Benign launcher script; reads optional flags and starts the packaged application.
---

Materializing claude-desktop from local mirror...
Materialized claude-desktop
Analyzing claude-desktop AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The top-level scope of this PKGBUILD contains only variable and array definitions (e.g., `pkgname`, `pkgver`, `depends`, `source`, `sha256sums`) and a commented header. There are no function calls, command substitutions, `eval` invocations, or any other code that would execute during `makepkg --printsrcinfo`. The `package()` function is defined but not called during this step. No dangerous operations occur at parse time.
</details>
<evidence></evidence>
<summary>No top-level executable code; safe to parse.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No top-level executable code; safe to parse.
Reviewing the 4 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/4] Reviewing .SRCINFO...
[0/4] Reviewing .SRCINFO, .gitignore...
[0/4] Reviewing .SRCINFO, .gitignore, PKGBUILD...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard `.gitignore` for an AUR package repository. It only lists build artifacts (downloaded `.deb` files, built `*.pkg.tar*` packages, and makepkg's `src/` and `pkg/` working directories) so they are not committed or pushed to the AUR. There are no commands, no network access, no obfuscation, and no file operations outside the normal packaging workflow. Nothing in the content is malicious or suspicious.
</details>
<evidence>
</evidence>
<summary>
Standard .gitignore excluding build artifacts; no security concerns.</summary>
</security_assessment>

[0/4] Reviewing .SRCINFO, .gitignore, PKGBUILD, claude-desktop.sh...
[1/4] Reviewing .SRCINFO, PKGBUILD, claude-desktop.sh...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore excluding build artifacts; no security concerns.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This .SRCINFO is a standard AUR package metadata file, not an executable script. It contains only package declarations: name, version, description, dependencies, and source entries, all consistent with a normal packaging workflow.

The source URLs point to Anthropic's official domain (`downloads.claude.ai`) for the upstream Debian packages, and both the local helper script (`claude-desktop.sh`) and the architecture-specific `.deb` files have pinned SHA-256 checksums, providing integrity verification. Dependencies (GTK, ALSA, libsecret, etc.) are typical for an Electron-based desktop application, and the optional `qemu-system`/`edk2` entries align with the described "Cowork" local VM feature. There is no obfuscated content, no suspicious network fetching, no post-install code execution, and no deviation from ordinary AUR practices. The file is safe.
</details>
<evidence>
</evidence>
<summary>
Standard AUR metadata with pinned official sources; no malicious behavior detected.</summary>
</security_assessment>

[2/4] Reviewing PKGBUILD, claude-desktop.sh...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata with pinned official sources; no malicious behavior detected.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD repackages Anthropic's official Debian package for Arch: it downloads the upstream `.deb` from the vendor's own domain (`downloads.claude.ai`), verifies pinned SHA-256 checksums for both architectures, and extracts only the `data.tar.xz` payload into the package directory. No network requests beyond the declared sources, no `eval`, `base64`, `curl | bash`, or obfuscated commands. The `source` array also includes a local `claude-desktop.sh` launcher, but its content is not shown here; the `install` usage is a standard packaging operation and not inherently suspicious.

The remaining operations are ordinary packaging mechanics: replacing `/usr/bin/claude-desktop` with a launcher, explicitly setting the `chrome-sandbox` setuid bit (standard for Chromium-based packages and clearly documented), removing Debian-specific lintian files, and creating symlinks so the app's hardcoded Debian paths for virtiofsd and OVMF firmware resolve on Arch. These symlinks are scoped to files owned by the package's own declared dependencies and serve the application's stated purpose. There is no evidence of data exfiltration, backdoors, or tampering with unrelated system files.

One minor hygiene note: the `claude-desktop.sh` helper script shipped in the AUR repo is not audited in this file, so it should be reviewed separately for correctness. This does not change the assessment of the PKGBUILD itself.
</details>
<evidence>
</evidence>
<summary>
Standard repackaging of official Anthropic .deb with pinned checksums; no malicious behavior found.</summary>
</security_assessment>

[3/4] Reviewing claude-desktop.sh...
+ Reviewed PKGBUILD. Status: SAFE -- Standard repackaging of official Anthropic .deb with pinned checksums; no malicious behavior found.
LLM auditresponse for claude-desktop.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard shell launcher for an Electron-based application. It reads optional user flags from a configuration file under the user's own config directory, detects a Wayland session, and then `exec`s the packaged application binary at `/usr/lib/claude-desktop/claude-desktop`. There are no network requests, no downloads, no eval or encoded payloads, and no file modifications outside reading a user-controlled flags file. The flags file parsing is plain shell word-splitting and does not execute or source the file contents.
</details>
<evidence></evidence>
<summary>Benign launcher script; reads optional flags and starts the packaged application.</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed claude-desktop.sh. Status: SAFE -- Benign launcher script; reads optional flags and starts the packaged application.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 16,880
  Completion Tokens: 2,467
  Total Tokens: 19,347
  Total Cost: $0.001985
  Execution Time: 32.37 seconds

Final Status: SAFE


No issues found.
