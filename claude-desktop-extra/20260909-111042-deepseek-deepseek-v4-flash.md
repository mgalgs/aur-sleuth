---
package: claude-desktop-extra
pkgver: 1.49585.0
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 171a316e053e9c4b28731ccb1aa63b1168550d3a
prompt_tokens: 16491
completion_tokens: 3609
total_tokens: 20100
cost: 0.002100759654
execution_time: 503.78
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-09T11:10:41Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata file with pinned checksums; no security issues.
  - file: claude-desktop-extra.install
    status: safe
    summary: Standard install hook, no malicious behavior found.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR binary package, no malicious behavior detected.
---

Materializing claude-desktop-extra from local mirror...
Materialized claude-desktop-extra
Analyzing claude-desktop-extra AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains no top-level command substitutions, backtick expansions, or function invocations that would execute code during sourcing. All assignments are static strings or arrays. The `install` variable simply names a file (`claude-desktop-extra.install`) without triggering its execution. The `package()` function is defined but not called during `makepkg --printsrcinfo`. There is no malware, obfuscation, or data exfiltration in the global scope. The file is safe to source for metadata parsing.
</details>
<evidence></evidence>
<summary>No malicious top-level code.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious top-level code.
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, PKGBUILD...
[0/3] Reviewing .SRCINFO, PKGBUILD, claude-desktop-extra.install...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The `.SRCINFO` file is a standard metadata descriptor for the AUR package. It defines the package base, version, architecture, dependencies, and source URLs with pinned SHA-256 checksums. The sources are hosted on the package maintainer&#39;s own GitHub releases repository, which is consistent with a fork that provides additional features. There are no suspicious elements: no obfuscated code, no unexpected network destinations, no dangerous commands, and no file operations. The pinned checksums allow verification of the downloaded archives. This file contains only declarative metadata and poses no security threat.
</details>
<evidence></evidence>
<summary>Standard AUR metadata file with pinned checksums; no security issues.</summary>
</security_assessment>

[1/3] Reviewing PKGBUILD, claude-desktop-extra.install...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata file with pinned checksums; no security issues.
LLM auditresponse for claude-desktop-extra.install:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard pacman install hook for the `claude-desktop-extra` package. It performs routine post-install tasks: setting the SUID bit on the Chromium sandbox binary, writing an AppArmor profile to allow user namespaces (a common practice for Chromium-based apps on newer AppArmor versions), and refreshing desktop/icon caches. It also prints informational messages about optional dependencies (`cowork` VM) and a legacy repository rename. All file modifications are confined to the package's own installation paths (`/usr/lib/claude-desktop/`, `/etc/apparmor.d/`) and standard system caches. No network requests, obfuscated code, base64 decoding, or execution of untrusted content is present. The behavior exactly mirrors what the official Claude Desktop `.deb` postinst script does, and there is no evidence of injected malicious code.
</details>
<evidence></evidence>
<summary>Standard install hook, no malicious behavior found.</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed claude-desktop-extra.install. Status: SAFE -- Standard install hook, no malicious behavior found.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard AUR packaging practices for a pre-built binary package (`-bin` variant). The source is a pinned tarball from the maintainer&#39;s own GitHub releases, with a fixed SHA-256 checksum. No obfuscated code, no unexpected network requests, no eval/base64/curl-to-bash patterns, and no file operations outside the package&#39;s standard install paths (`/usr/lib/claude-desktop`, `/usr/bin`, `/usr/share`). The SUID bit on `chrome-sandbox` is expected for Chromium-based Electron apps.

The pre-built nature of the tarball means the user trusts the maintainer&#39;s build process, but the checksum pins the exact artifact and the PKGBUILD itself contains no malicious logic. This is a trust/hygiene consideration, not evidence of a supply-chain attack. The `.install` file referenced is not included for review, but referencing an install script is standard AUR practice.
</details>
<evidence></evidence>
<summary>Standard AUR binary package, no malicious behavior detected.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR binary package, no malicious behavior detected.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 16,491
  Completion Tokens: 3,609
  Total Tokens: 20,100
  Total Cost: $0.002101
  Execution Time: 503.78 seconds

Final Status: SAFE


No issues found.
