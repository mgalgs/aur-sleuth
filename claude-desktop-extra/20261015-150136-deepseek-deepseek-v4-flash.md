---
package: claude-desktop-extra
pkgver: 2.37337.1
pkgrel: 4
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 18967
completion_tokens: 3468
total_tokens: 22435
cost: 0.002357173
execution_time: 39.65
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-15T15:01:36Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: SRCINFO metadata only; pinned checksums and official repo; no malicious behavior.
  - file: claude-desktop-extra.install
    status: safe
    summary: Standard Chromium sandbox setup and cache refresh; no malicious behavior observed.
  - file: PKGBUILD
    status: safe
    summary: "Standard AUR package: pinned checksums, no malicious code, no suspicious network activity."
---

Materializing claude-desktop-extra from local mirror...
Materialized claude-desktop-extra
Analyzing claude-desktop-extra AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only standard variable definitions (pkgname, pkgver, arch, depends, source arrays, checksums, etc.) and a `package()` function body. No code outside function definitions executes commands or performs any operations. All assignments are static strings or simple variable interpolations (like `${pkgver}`) that do not invoke subprocesses. There are no global-level command substitutions, backtick expressions, or dangerous function calls (curl, wget, eval, etc.). Therefore, sourcing this PKGBUILD for `makepkg --printsrcinfo` is safe.
</details>
<evidence></evidence>
<summary>No global-level code executes; only static variable assignments.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No global-level code executes; only static variable assignments.
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, claude-desktop-extra.install...
[0/3] Reviewing .SRCINFO, claude-desktop-extra.install, PKGBUILD...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is `.SRCINFO`, which is purely packaging metadata for an Arch User Repository package. It contains no executable code, no network requests, no file operations, and no obfuscated content. The package downloads prebuilt tarballs from the maintainer's own GitHub releases (`github.com/patrickjaja/claude-desktop-extra`), which is consistent with the package's stated purpose, and both architecture-specific sources have pinned SHA-256 checksums.

The `optdepends` entries describe optional runtime components such as QEMU, ydotool, bubblewrap, or gnome-keyring, which are normal supporting dependencies for this kind of desktop application and are not suspicious. There is no evidence of injected malicious behavior, data exfiltration, or execution of untrusted code outside the normal packaging flow. The actual tarball contents cannot be audited from this metadata file alone, but nothing in `.SRCINFO` itself indicates a supply-chain attack.
</details>
<evidence>
</evidence>
<summary>
SRCINFO metadata only; pinned checksums and official repo; no malicious behavior.</summary>
</security_assessment>

[1/3] Reviewing claude-desktop-extra.install, PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- SRCINFO metadata only; pinned checksums and official repo; no malicious behavior.
LLM auditresponse for claude-desktop-extra.install:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard pacman install hook for a Chromium-based application. It performs three routine tasks: setting the app's own `chrome-sandbox` binary to SUID root (matching the official Claude Desktop postinst behavior), writing an AppArmor profile under `/etc/apparmor.d/` to allow user-namespace sandboxing on newer AppArmor systems, and refreshing desktop/icon caches. All of these operations are scoped to the package itself or to standard system integration points for a GUI application.

There is no obfuscated code, no network download, no `eval` or decoding, no exfiltration of user data, and no tampering with unrelated files. The script reads `/etc/pacman.conf` only to emit a user-facing rename notice during a package transition. Writing `flags=(unconfined)` in the AppArmor profile is a recognized, non-malicious pattern used by other Chromium-based packages to permit namespaces without confining the app; it does widen the local attack surface somewhat, but it is not evidence of a supply-chain attack. This file is consistent with ordinary packaging practices.
</details>
<evidence></evidence>
<summary>
Standard Chromium sandbox setup and cache refresh; no malicious behavior observed.</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed claude-desktop-extra.install. Status: SAFE -- Standard Chromium sandbox setup and cache refresh; no malicious behavior observed.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows ordinary AUR packaging practices. It fetches a versioned, checksummed tarball from the maintainer's own GitHub releases page (`github.com/patrickjaja/claude-desktop-extra`), which matches the declared package URL. Both `sha256sums_x86_64` and `sha256sums_aarch64` are pinned rather than `SKIP`, so the downloaded artifact is verified against a fixed digest. The build/package functions contain no `eval`, `base64`, `curl|bash`, obfuscation, reverse shell, or data exfiltration behavior.

The `package()` function installs files into the package directory, sets the standard Electron `chrome-sandbox` SUID bit (required for Chromium's sandbox and common in Electron packages), and installs a launcher, desktop entry, icons, GNOME Shell search provider files, MIME definitions, and the license. These operations are all within the package's own install scope. The search-provider and MIME files are checked for existence and expected content, with errors if the upstream layout changes, which is defensive rather than malicious.

The only notable consideration is a trust/hygiene matter: this is a pre-patched, prebuilt binary tarball maintained by a third party rather than an official Anthropic build, so integrity ultimately depends on the maintainer's release process and the pinned checksums. There is no evidence of injected malicious code in this PKGBUILD itself.
</details>
<evidence>
</evidence>
<summary>
Standard AUR package: pinned checksums, no malicious code, no suspicious network activity.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR package: pinned checksums, no malicious code, no suspicious network activity.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 18,967
  Completion Tokens: 3,468
  Total Tokens: 22,435
  Total Cost: $0.002357
  Execution Time: 39.65 seconds

Final Status: SAFE


No issues found.
