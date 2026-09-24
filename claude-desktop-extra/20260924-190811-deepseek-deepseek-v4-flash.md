---
package: claude-desktop-extra
pkgver: 2.7032.0
pkgrel: 2
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 17610
completion_tokens: 4755
total_tokens: 22365
cost: 0.00198572640
execution_time: 47.66
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-24T19:08:11Z
file_verdicts:
  - file: claude-desktop-extra.install
    status: safe
    summary: Standard install hook; no malicious content found.
  - file: PKGBUILD
    status: safe
    summary: Standard prebuilt Electron repackaging with pinned checksums; no malicious behavior found.
  - file: .SRCINFO
    status: safe
    summary: Metadata-only AUR file; pinned checksums, HTTPS upstream, standard Electron deps. No malicious behavior found.
---

Materializing claude-desktop-extra from local mirror...
Materialized claude-desktop-extra
Analyzing claude-desktop-extra AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only standard top-level variable definitions (`pkgname`, `pkgver`, `depends`, `source`, `sha256sums`, etc.), a function definition for `package()`, and comments. No command substitutions, `eval`, `curl`, `wget`, `base64` decoding, or other code execution is present in the global scope that would be triggered by sourcing the file with `makepkg --printsrcinfo`. The `package()` function body, while containing several operations (file copies, permissions, desktop entry creation), is not executed during this step — it will be reviewed separately in the full audit. There is no risk of malicious execution from simply parsing this PKGBUILD for metadata.
</details>
<evidence></evidence>
<summary>No malicious top-level code in PKGBUILD.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious top-level code in PKGBUILD.
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, PKGBUILD...
[0/3] Reviewing .SRCINFO, PKGBUILD, claude-desktop-extra.install...
LLM auditresponse for claude-desktop-extra.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The script performs standard packaging operations: setting SUID on the chrome-sandbox binary, writing an AppArmor profile for unconfined user namespace access (common for Chromium-based applications), and refreshing desktop/icon caches. It also prints informational messages about optional Cowork VM dependencies and a legacy repo migration notice.  

All operations are scoped to the package's own files (`/usr/lib/claude-desktop/chrome-sandbox`, `/etc/apparmor.d/claude-desktop`) and standard system cache directories. There are no network requests, no downloads, no obfuscated code, no use of `eval`, `base64`, `curl`, or `wget`. The script follows the same pattern as the official Claude Desktop .deb postinst. No evidence of malicious or supply-chain attack behavior was found.
</details>
<evidence></evidence>
<summary>Standard install hook; no malicious content found.</summary>
</security_assessment>

[1/3] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed claude-desktop-extra.install. Status: SAFE -- Standard install hook; no malicious content found.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a standard repackaging of a prebuilt Claude Desktop tarball from the maintainer's GitHub releases. The source URLs point to the package's own upstream project and both x86_64 and aarch64 tarballs have pinned sha256 checksums. There is no `SKIP`, no `curl|bash`, no `eval`, no base64/hex obfuscation, and no network activity outside the `source` array.

The `package()` function only unpacks and installs the tarball contents into `/usr/lib/claude-desktop`, installs the launcher, desktop entry, icons, and GNOME search provider files, and sets the standard Chromium `chrome-sandbox` SUID bit. The grep-based checks on the search-provider service are defensive validation of upstream layout, not malicious. There are no file operations outside the package directory, no unrelated system modifications, and no indication of injected backdoors or data exfiltration. Trusting the maintainer's prebuilt binaries is a supply-chain consideration, but the PKGBUILD itself follows normal AUR packaging practice and is not malicious.
</details>
<evidence>
</evidence>
<summary>
Standard prebuilt Electron repackaging with pinned checksums; no malicious behavior found.
</summary>
</security_assessment>

[2/3] Reviewing .SRCINFO...
+ Reviewed PKGBUILD. Status: SAFE -- Standard prebuilt Electron repackaging with pinned checksums; no malicious behavior found.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This .SRCINFO file is pure package metadata — it contains no executable code, no functions, no network calls, and no file operations. It declares a dependency list typical of an Electron-based desktop application (GTK, NSS, libsecret, xdg-desktop-portal, etc.) and defines one source tarball per architecture (x86_64, aarch64), each fetched over HTTPS from the project's own GitHub releases (github.com/patrickjaja/claude-desktop-extra). Both artifacts have pinned SHA256 checksums, so the exact downloaded content is fixed as long as the release tag is not rewritten.

The one legitimate supply-chain consideration is trust model: the package distributes a prebuilt binary repackaged by the AUR maintainer rather than an official Anthropic-signed build, so users place trust in the maintainer's build/release pipeline. This is an ordinary, openly declared AUR pattern for wrapping upstream binaries ("for distros upstream does not ship") and is not evidence of injected malicious code. There is no obfuscation, no suspicious host, no unpinned/mutable source, and nothing that deviates from standard packaging practice, so the file is SAFE.
</details>
<evidence>
</evidence>
<summary>
Metadata-only AUR file; pinned checksums, HTTPS upstream, standard Electron deps. No malicious behavior found.
</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed .SRCINFO. Status: SAFE -- Metadata-only AUR file; pinned checksums, HTTPS upstream, standard Electron deps. No malicious behavior found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 17,610
  Completion Tokens: 4,755
  Total Tokens: 22,365
  Total Cost: $0.001986
  Execution Time: 47.66 seconds

Final Status: SAFE


No issues found.
