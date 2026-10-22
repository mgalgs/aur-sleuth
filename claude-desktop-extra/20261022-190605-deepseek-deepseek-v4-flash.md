---
package: claude-desktop-extra
pkgver: 3.1623.4
pkgrel: 2
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 19807
completion_tokens: 5130
total_tokens: 24937
cost: 0.002736097
execution_time: 48.68
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-22T19:06:05Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata with pinned checksums; no malicious behavior detected.
  - file: claude-desktop-extra.install
    status: safe
    summary: Standard post-install script; no malicious, obfuscated, or exfiltration behavior found.
  - file: PKGBUILD
    status: safe
    summary: Standard prebuilt AUR package with pinned checksums; no malicious or obfuscated behavior found.
---

Materializing claude-desktop-extra from local mirror...
Materialized claude-desktop-extra
Analyzing claude-desktop-extra AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The top-level scope of this PKGBUILD contains only variable assignments (string and array declarations such as `pkgname=`, `depends=(...)`, `source_x86_64=(...)`, etc.) and a single function definition (`package() { ... }`).  

No command substitutions (`$(...)` or backtick executions), function invocations, or dangerous top-level commands (e.g. `curl`, `wget`, `eval`, `base64`) are present in the global scope.  

When `makepkg --printsrcinfo` sources this file, it executes the top-level code and then stops — it does **not** call the `package()` function or any other packaging step.  Thus no genuinely malicious code can execute during this specific gate.  All complex logic and shell operations are confined to the `package()` function, which is explicitly out of scope for this review.
</details>
<evidence>
</evidence>
<summary>Top-level code is entirely declarative. Safe for --printsrcinfo.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Top-level code is entirely declarative. Safe for --printsrcinfo.
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, PKGBUILD...
[0/3] Reviewing .SRCINFO, PKGBUILD, claude-desktop-extra.install...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This `.SRCINFO` file is standard AUR package metadata. It defines a prebuilt binary package (`claude-desktop-extra`) that fetches release tarballs from the project's own GitHub repository, with pinned `sha256sums` for both x86_64 and aarch64 builds. Dependencies and optional dependencies are ordinary runtime libraries and tools.

There are no signs of injected or obfuscated code, no unexpected network endpoints, no use of `eval`, `base64`, `curl|bash`, or similar patterns. The optdepends descriptions mention that the application may auto-download a checksum-verified Claude Code CLI and use bundled bridges for Computer Use, which is upstream application functionality rather than a supply-chain attack. Overall, this metadata does not deviate from normal AUR packaging practices.
</details>
<evidence>
</evidence>
<summary>
Standard AUR metadata with pinned checksums; no malicious behavior detected.</summary>
</security_assessment>

[1/3] Reviewing PKGBUILD, claude-desktop-extra.install...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata with pinned checksums; no malicious behavior detected.
LLM auditresponse for claude-desktop-extra.install:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a pacman install hook for the claude-desktop-extra package. It performs routine post-install operations: setting the SUID bit on the package's own chrome-sandbox binary, writing an AppArmor profile for the application, loading that profile with apparmor_parser, and refreshing desktop/icon caches. It also prints informational messages about optional dependencies and a legacy repository transition.

The file contains no suspicious network requests, no downloads or execution of remote code, no obfuscated or encoded commands, and no data exfiltration. The only system modifications are scoped to the package's own files (`/usr/lib/claude-desktop/chrome-sandbox`) and a well-documented AppArmor profile at `/etc/apparmor.d/claude-desktop`. The `flags=(unconfined)` profile is a known, legitimate pattern used by Chromium-based applications to allow user namespace sandboxing; while it is a security consideration, it is not malicious and matches the package's stated purpose.

The `_legacy_repo_note` function only greps `/etc/pacman.conf` and prints a suggestion; it does not modify the file or fetch anything. Overall, the script is consistent with standard packaging and post-install practices and shows no evidence of injected malicious code.
</details>
<evidence>
</evidence>
<summary>
Standard post-install script; no malicious, obfuscated, or exfiltration behavior found.
</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed claude-desktop-extra.install. Status: SAFE -- Standard post-install script; no malicious, obfuscated, or exfiltration behavior found.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard AUR packaging for a prebuilt application. It downloads architecture-specific tarballs from the maintainer's own GitHub releases with pinned sha256 checksums, installs the application tree under /usr/lib/claude-desktop, installs launcher/desktop/icon/search-provider files, and writes a small JSON release stamp for the app's update check. There is no obfuscation, no eval/base64/curl-to-sh pattern, no unexpected network destination, and no file operations outside the package's own install paths.

The only noteworthy items are normal for this class of package: a SUID chrome-sandbox (required by Chromium/Electron), a maintainer-built patched tarball rather than an official Anthropic artifact (which is the package's stated purpose: extra features for unsupported distros), and runtime behavior belonging to the upstream application itself, such as auto-downloading the Claude Code CLI. These are trust/hygiene considerations, not evidence of injected malicious behavior.
</details>
<evidence></evidence>
<summary>
Standard prebuilt AUR package with pinned checksums; no malicious or obfuscated behavior found.
</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard prebuilt AUR package with pinned checksums; no malicious or obfuscated behavior found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 19,807
  Completion Tokens: 5,130
  Total Tokens: 24,937
  Total Cost: $0.002736
  Execution Time: 48.68 seconds

Final Status: SAFE


No issues found.
