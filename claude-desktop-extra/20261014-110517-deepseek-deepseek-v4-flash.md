---
package: claude-desktop-extra
pkgver: 2.37337.1
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 18964
completion_tokens: 3290
total_tokens: 22254
cost: 0.002324504
execution_time: 30.15
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-14T11:05:17Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata with pinned checksums; no malicious behavior present.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR packaging with pinned checksums; no malicious behavior found.
  - file: claude-desktop-extra.install
    status: safe
    summary: "Standard install script: SUID sandbox, AppArmor profile, cache refresh. No malicious behavior."
---

Materializing claude-desktop-extra from local mirror...
Materialized claude-desktop-extra
Analyzing claude-desktop-extra AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
Sourcing this PKGBUILD to run `makepkg --printsrcinfo` is safe. The top-level scope consists only of static variable assignments (`pkgname`, `pkgver`, `depends`, `source`, `sha256sums`, etc.) and the `package()` function definition. There are no command substitutions, `eval` calls, network requests, or any other code that executes during sourcing. The `package()` function — which contains all the file-copying logic — only runs during the packaging step and is not invoked by `--printsrcinfo`. No evidence of malicious top-level execution exists.
</details>
<evidence></evidence>
<summary>PKGBUILD top-level is only static variable definitions; no dangerous code executes during sourcing.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- PKGBUILD top-level is only static variable definitions; no dangerous code executes during sourcing.
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, PKGBUILD...
[0/3] Reviewing .SRCINFO, PKGBUILD, claude-desktop-extra.install...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard AUR `.SRCINFO` metadata file for a repackaged prebuilt application. It declares the package name, version, dependencies, source tarballs from the package's own GitHub releases, and pinned SHA-256 checksums for both x86_64 and aarch64. No network endpoints other than the project's stated upstream release URL appear, and no code execution, obfuscation, or unexpected file operations are present.

The `provides`, `conflicts`, and `replaces` entries are normal packaging metadata for a distribution-style replacement of an existing application package. The optional dependencies and detailed optdepends descriptions are informational only. The pinned checksums are a positive supply-chain hygiene signal. Nothing in this file indicates malicious or dangerous behavior.
</details>
<evidence>
</evidence>
<summary>
Standard AUR metadata with pinned checksums; no malicious behavior present.
</summary>
</security_assessment>

[1/3] Reviewing PKGBUILD, claude-desktop-extra.install...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata with pinned checksums; no malicious behavior present.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a standard AUR packaging recipe for a prebuilt Electron-based application. It downloads a release tarball from the maintainer's own GitHub repository with pinned SHA256 checksums for both x86_64 and aarch64, then installs the contents into `/usr/lib/claude-desktop`, installs a launcher, desktop entry, icons, GNOME search provider files, and a MIME definition. This mirrors the layout of the upstream Claude Desktop `.deb` package and is consistent with ordinary AUR `-bin` style packaging.

The build/package functions contain no obfuscated code, no dynamic code execution, no suspicious network calls, and no exfiltration of local data. The `chmod 4755` on `chrome-sandbox` is the standard, expected SUID setup required by Chromium's sandbox and is commonly found in AUR packaging for Electron/Chromium applications. File copies, `install` commands, and the `find` loop for icons all operate within the package staging directory. The source is unpinned only in the sense that it is a specific release tarball with checksums (not a VCS branch); the GitHub destination is the package's own upstream repository, so this is not a supply-chain red flag.

The main consideration is that the binary tarball is produced by a third-party maintainer rather than Anthropic, so users are trusting that maintainer's build pipeline and release artifacts. That is a trust/hygiene consideration common to AUR packages, not evidence of injected malicious behavior. No genuinely dangerous or malicious behavior was found in this file.
</details>
<evidence>
</evidence>
<summary>
Standard AUR packaging with pinned checksums; no malicious behavior found.</summary>
</security_assessment>

[2/3] Reviewing claude-desktop-extra.install...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR packaging with pinned checksums; no malicious behavior found.
LLM auditresponse for claude-desktop-extra.install:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard pacman install script for the claude-desktop-extra package. It performs three routine post-install tasks: setting the SUID bit and ownership on the package's own chrome-sandbox binary (required for Chromium's setuid sandbox), installing an AppArmor profile that allowlists the application's user namespace usage, and refreshing desktop/icon caches. These are normal packaging behaviors for Electron/Chromium-based applications and do not constitute malicious activity.

The script contains no network requests, no downloads, no code execution from remote sources, no obfuscated or encoded commands, and no access to credentials or unrelated system files. It only modifies files within the package's own install paths and standard system cache directories. The `_legacy_repo_note` function merely prints informational messages to the user and does not modify `/etc/pacman.conf` or execute pacman. Overall, the file is consistent with legitimate packaging practices.
</details>
<evidence>
</evidence>
<summary>
Standard install script: SUID sandbox, AppArmor profile, cache refresh. No malicious behavior.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed claude-desktop-extra.install. Status: SAFE -- Standard install script: SUID sandbox, AppArmor profile, cache refresh. No malicious behavior.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 18,964
  Completion Tokens: 3,290
  Total Tokens: 22,254
  Total Cost: $0.002325
  Execution Time: 30.15 seconds

Final Status: SAFE


No issues found.
