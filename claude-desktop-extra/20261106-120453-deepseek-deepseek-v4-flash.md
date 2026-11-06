---
package: claude-desktop-extra
pkgver: 4.23118.0
pkgrel: 5
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 20433
completion_tokens: 6596
total_tokens: 27029
cost: 0.003059875
execution_time: 60.06
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-11-06T12:04:53Z
file_verdicts:
  - file: PKGBUILD
    status: safe
    summary: Clean PKGBUILD with pinned checksums and no malicious behavior.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata with pinned checksums and upstream GitHub sources; no malicious behavior found.
  - file: claude-desktop-extra.install
    status: safe
    summary: "Standard post-install scriptlet: sandbox permissions, AppArmor profile, cache refresh; no malicious behavior."
---

Materializing claude-desktop-extra from local mirror...
Materialized claude-desktop-extra
Analyzing claude-desktop-extra AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
Running `makepkg --printsrcinfo` on this PKGBUILD sources only the global/top-level scope. The file consists entirely of standard variable definitions (`pkgname`, `pkgver`, `pkgrel`, `depends`, `optdepends`, `source_x86_64`, `sha256sums_x86_64`, etc.), array assignments, and a `package()` function definition. No commands execute at the top level: there are no `$(...)` substitutions, backtick expansions, `eval`, `source`, `curl`, `wget`, or any other dangerous constructs in the global scope. The only variable expansion in a value is `"$pkgname"` on the `install` line, which resolves to a static string. The `package()` function body (which references `$srcdir`, runs `install`, `cp`, `chmod`, etc.) is defined but never invoked during `--printsrcinfo`. There is nothing in the global scope that would execute malicious or unexpected code.
</details>
<evidence></evidence>
<summary>No dangerous top-level code execution in PKGBUILD.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous top-level code execution in PKGBUILD.
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, PKGBUILD...
[0/3] Reviewing .SRCINFO, PKGBUILD, claude-desktop-extra.install...
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard AUR packaging practices for a pre-built binary Electron application. All source tarballs are downloaded from the maintainer's GitHub releases with pinned SHA256 checksums, ensuring integrity. The `package()` function installs files into the standard `/usr/lib/claude-desktop` directory tree and common system locations (applications, icons, MIME types, polkit actions, DBus services) — all within the package's own scope. The SUID bit on `chrome-sandbox` is standard for Chromium-based applications. The gnome-search-provider and MIME type installation include explicit verification checks against expected content, demonstrating careful packaging rather than blind trust. There are no obfuscated commands, no unexpected network requests, no data exfiltration, and no backdoor mechanisms. The code is transparent and well-documented.
</details>
<evidence></evidence>
<summary>Clean PKGBUILD with pinned checksums and no malicious behavior.</summary>
</security_assessment>

[1/3] Reviewing .SRCINFO, claude-desktop-extra.install...
+ Reviewed PKGBUILD. Status: SAFE -- Clean PKGBUILD with pinned checksums and no malicious behavior.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This `.SRCINFO` file is standard AUR package metadata. It declares dependencies, optdependencies, architecture-specific sources, and pinned SHA-256 checksums. The sources are tarballs hosted on the package author's own GitHub releases page, which is the expected upstream for this AUR package. The checksums are explicit values (not SKIP), so the downloaded artifacts are pinned and verifiable.

There is no code execution, no network requests beyond fetching the declared sources, no obfuscation, and no suspicious file operations. The optdepends entries describe legitimate optional runtime features (VM support, screenshot tools, credential storage backends, sandboxing utilities). The note about the app auto-downloading a checksum-verified Claude Code CLI is an upstream application behavior description, not a supply-chain vector in this packaging metadata. Nothing here deviates from ordinary packaging practice.
</details>
<evidence>
</evidence>
<summary>
Standard AUR metadata with pinned checksums and upstream GitHub sources; no malicious behavior found.
</summary>
</security_assessment>

[2/3] Reviewing claude-desktop-extra.install...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata with pinned checksums and upstream GitHub sources; no malicious behavior found.
LLM auditresponse for claude-desktop-extra.install:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard pacman install scriptlet for a packaged application. It performs three routine post-install actions: setting the SUID bit on the bundled chrome-sandbox binary, installing an AppArmor profile that allowlists the application for user namespaces, and refreshing desktop/icon caches. It also prints informational notes about optional dependencies and a repository rename. These actions mirror the official Claude Desktop `.deb` postinst behavior and are consistent with how Chromium-based and sandboxed desktop applications are packaged on Linux.

No malicious behavior is present: there are no network requests, no downloads, no encoded or obfuscated commands, no exfiltration of local data, and no tampering with unrelated system files. The script only modifies files within the application's own scope (`/etc/apparmor.d/claude-desktop`, `/usr/lib/claude-desktop/chrome-sandbox`) and runs cache refresh commands. The SUID sandbox and `flags=(unconfined)` AppArmor profile are security-relevant system modifications, but they are expected for this type of application and match upstream packaging; they are not evidence of a supply-chain attack.
</details>
<evidence>
</evidence>
<summary>
Standard post-install scriptlet: sandbox permissions, AppArmor profile, cache refresh; no malicious behavior.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed claude-desktop-extra.install. Status: SAFE -- Standard post-install scriptlet: sandbox permissions, AppArmor profile, cache refresh; no malicious behavior.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 20,433
  Completion Tokens: 6,596
  Total Tokens: 27,029
  Total Cost: $0.003060
  Execution Time: 60.06 seconds

Final Status: SAFE


No issues found.
