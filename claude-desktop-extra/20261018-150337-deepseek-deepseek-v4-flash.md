---
package: claude-desktop-extra
pkgver: 2.42304.0
pkgrel: 5
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 19050
completion_tokens: 4574
total_tokens: 23624
cost: 0.002566018
execution_time: 45.58
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-18T15:03:36Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata with pinned checksums; no malicious or suspicious content found.
  - file: claude-desktop-extra.install
    status: safe
    summary: Standard pacman install hook; benign sandbox, AppArmor, and cache handling only.
  - file: PKGBUILD
    status: safe
    summary: Standard repackaged Electron app with pinned checksums; no malicious or suspicious operations found.
---

Materializing claude-desktop-extra from local mirror...
Materialized claude-desktop-extra
Analyzing claude-desktop-extra AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD file is structured entirely as standard top-level variable assignments (pkgname, pkgver, depends, source, sha256sums, etc.) and a single function definition (`package()`). `makepkg --printsrcinfo` only sources the file, which executes the top-level scope. There are no command substitutions ($(...) or backticks), no calls to external programs (curl, wget, eval, base64), no file operations, and no network requests initiated at the top level. All build logic and file installation commands are contained within the `package()` function, which is **not executed** during the `--printsrcinfo` step. Therefore, sourcing this PKGBUILD for metadata parsing poses no risk.
</details>
<evidence>
</evidence>
<summary>No top-level code execution risks found</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No top-level code execution risks found
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, claude-desktop-extra.install...
[0/3] Reviewing .SRCINFO, claude-desktop-extra.install, PKGBUILD...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This .SRCINFO file is standard AUR packaging metadata for the `claude-desktop-extra` package. It declares the package name, version, dependencies, optional dependencies, architecture-specific sources, and pinned SHA-256 checksums. The sources are fetched over HTTPS from the project's own GitHub releases page, which is the expected upstream location for this package, and the checksums are pinned rather than skipped. No suspicious network destinations, obfuscated code, dangerous commands, or unexpected file operations are present.

Optional dependencies reference legitimate supporting tools (QEMU, OVMF, nodejs, bubblewrap, socat, ydotool, etc.) that align with the package's described functionality (Computer Use, Cowork VM, Claude Code shell sandbox). The optdepends notes about auto-downloading a checksum-verified CLI describe upstream application behavior, not a packaging attack. Overall, this is a conventional and transparent AUR packaging file with no evidence of injected malicious behavior.
</details>
<evidence>
</evidence>
<summary>
Standard AUR metadata with pinned checksums; no malicious or suspicious content found.</summary>
</security_assessment>

[1/3] Reviewing claude-desktop-extra.install, PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata with pinned checksums; no malicious or suspicious content found.
LLM auditresponse for claude-desktop-extra.install:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard pacman `.install` hook for a prebuilt Chromium-based application. It performs three routine tasks: (1) sets `chrome-sandbox` to SUID root (`chown root:root` and `chmod 4755`), which is the normal and expected requirement for Chromium's setuid sandbox; (2) writes a fixed AppArmor profile to `/etc/apparmor.d/claude-desktop` and loads it via `apparmor_parser` only if AppArmor 4.0 is present and active; and (3) refreshes desktop/icon caches. These are legitimate packaging operations that mirror the official upstream `.deb` postinst behavior.

No malicious behavior is present. There are no network requests, no downloads, no obfuscated/encoded commands, no `eval`/`base64` usage, and no file access outside the package's own install paths or its own AppArmor profile. The script only reads `/etc/pacman.conf` to print a rename/transition notice, which is a benign maintainer convenience. The SUID bit and the AppArmor profile are config changes tied directly to the application's stated functionality (Chromium sandboxing) and are normal for this type of package. This is not a supply-chain attack.
</details>
<evidence>
</evidence>
<summary>
Standard pacman install hook; benign sandbox, AppArmor, and cache handling only.</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed claude-desktop-extra.install. Status: SAFE -- Standard pacman install hook; benign sandbox, AppArmor, and cache handling only.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a standard repackaging of the official Claude Desktop Linux build with maintainer-provided patches. It downloads a prebuilt tarball from the package maintainer&#39;s own GitHub Releases page with pinned `sha256sums` for both x86_64 and aarch64, which is a normal AUR distribution pattern. The `package()` function only performs routine install operations: copying the application tree to `/usr/lib/claude-desktop`, installing a launcher, desktop entry, icons, GNOME search provider files, MIME definitions, and the license. Setting the setuid bit on `chrome-sandbox` is required for Electron/Chromium sandboxing and is standard practice for such packages.

No malicious behavior was found: there is no `eval`, `base64`, obfuscated encoding, unexpected network fetching at build/install time, or exfiltration of local data. The `install=` hook file is referenced but not inspected here; based on the comments it handles routine post-install tasks such as re-asserting chrome-sandbox ownership/perms. The only notable hygiene consideration is that the package distributes a maintainer-patched `app.asar`, so users are trusting the maintainer&#39;s build artifacts — but the pinned checksums and transparent comments about the patching process are consistent with legitimate AUR packaging rather than evidence of an attack.
</details>
<evidence>
</evidence>
<summary>
Standard repackaged Electron app with pinned checksums; no malicious or suspicious operations found.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard repackaged Electron app with pinned checksums; no malicious or suspicious operations found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 19,050
  Completion Tokens: 4,574
  Total Tokens: 23,624
  Total Cost: $0.002566
  Execution Time: 45.58 seconds

Final Status: SAFE


No issues found.
