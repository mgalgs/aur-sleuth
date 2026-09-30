---
package: claude-desktop-extra
pkgver: 2.110.1
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 171a316e053e9c4b28731ccb1aa63b1168550d3a
prompt_tokens: 16449
completion_tokens: 3050
total_tokens: 19499
cost: 0.001997976694
execution_time: 65.79
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-17T11:02:03Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard metadata file with pinned checksums, no malicious content.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR binary PKGBUILD with no malicious code.
  - file: claude-desktop-extra.install
    status: safe
    summary: Standard pacman install hook, no malicious behavior.
---

Materializing claude-desktop-extra from local mirror...
Materialized claude-desktop-extra
Analyzing claude-desktop-extra AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only top-level variable definitions (package metadata, dependencies, source URLs, checksums) and a `package()` function definition. No code at global scope executes any commands, command substitutions, or function calls that could perform network requests, file operations, or execute untrusted payloads during `makepkg --printsrcinfo`. The `install` variable simply names the .install file, and the `source_*` arrays define standard download URLs with SHA256 checksums. Nothing in the global scope exhibits malicious behavior.
</details>
<evidence></evidence>
<summary>PKGBUILD global scope is safe; no top-level code execution.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- PKGBUILD global scope is safe; no top-level code execution.
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, PKGBUILD...
[0/3] Reviewing .SRCINFO, PKGBUILD, claude-desktop-extra.install...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.SRCINFO` metadata file for an AUR package. It declares package metadata, dependencies, and source URLs with pinned SHA-256 checksums. The source tarballs are fetched from the project's own GitHub releases (`github.com/patrickjaja/claude-desktop-extra`). There are no executable commands, obfuscated content, unexpected network destinations, or any other signs of malicious behavior. The file is a normal package descriptor with no security concerns.
</details>
<evidence></evidence>
<summary>Standard metadata file with pinned checksums, no malicious content.</summary>
</security_assessment>

[1/3] Reviewing PKGBUILD, claude-desktop-extra.install...
+ Reviewed .SRCINFO. Status: SAFE -- Standard metadata file with pinned checksums, no malicious content.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD is a standard Arch binary package wrapper. It downloads a pre-built tarball from the maintainer&#39;s own GitHub releases with pinned `sha256sums`, installs files to conventional locations (`/usr/lib/claude-desktop`, `/usr/bin`, `/usr/share/applications`, `/usr/share/icons`, `/usr/share/licenses`), and sets the required SUID bit on `chrome-sandbox`.  

No obfuscation, encoded commands, unexpected network requests (e.g., `curl|bash`, `wget` to an unrelated host), backdoors, data exfiltration, or modification of files outside the application&#39;s scope is present in the PKGBUILD content. The reference in `optdepends` to the app auto-downloading a CLI is a comment describing upstream application behavior, not a command executed by this PKGBUILD.  

A trust consideration: the tarball comes from a third-party maintainer (not the upstream Anthropic), so users rely on the maintainer&#39;s packaging integrity. However, the PKGBUILD itself contains no injected malicious code — it is a conventional, checksum-verified binary package recipe.
</details>
<evidence></evidence>
<summary>Standard AUR binary PKGBUILD with no malicious code.</summary>
</security_assessment>

[2/3] Reviewing claude-desktop-extra.install...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR binary PKGBUILD with no malicious code.
LLM auditresponse for claude-desktop-extra.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The install hook performs standard post-install, upgrade, and removal operations for a Chromium-based Electron application. It sets the SUID bit on the chrome-sandbox binary (required for the Chromium sandbox), writes an AppArmor profile that allowlists user namespace creation (standard practice for Chromium/Electron apps on AppArmor 4.0+ systems), refreshes desktop file and icon caches, and prints informational notes about optional dependencies and a repository rename. All operations are scoped to the package's own files and system integration points. There are no network requests, data exfiltration, obfuscated code, or execution of untrusted content. The script is consistent with the official Claude Desktop .deb postinst behavior and standard AUR packaging practices.
</details>
<evidence></evidence>
<summary>Standard pacman install hook, no malicious behavior.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed claude-desktop-extra.install. Status: SAFE -- Standard pacman install hook, no malicious behavior.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 16,449
  Completion Tokens: 3,050
  Total Tokens: 19,499
  Total Cost: $0.001998
  Execution Time: 65.79 seconds

Final Status: SAFE


No issues found.
