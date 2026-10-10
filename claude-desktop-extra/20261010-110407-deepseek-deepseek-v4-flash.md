---
package: claude-desktop-extra
pkgver: 2.31226.1
pkgrel: 2
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 18901
completion_tokens: 2776
total_tokens: 21677
cost: 0.0038840475
execution_time: 24.1
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-10T11:04:06Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata with pinned checksums; no malicious or dangerous behavior found.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR binary packaging with pinned checksums; no malicious or dangerous behavior found.
  - file: claude-desktop-extra.install
    status: safe
    summary: Standard pacman install hook; no malicious behavior or suspicious operations found.
---

Materializing claude-desktop-extra from local mirror...
Materialized claude-desktop-extra
Analyzing claude-desktop-extra AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD&#39;s top-level scope consists entirely of standard variable definitions (pkgname, pkgver, depends, source arrays, etc.) and a shell comment block. There are no command substitutions, no eval/curl/wget calls, no function invocations, and no other executable code that would run when the file is sourced by `makepkg --printsrcinfo`. The package() function is defined but never invoked during this parsing step. No genuinely malicious activity can occur while sourcing this file.</details>
<evidence></evidence>
<summary>No executable top-level code beyond variable definitions.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No executable top-level code beyond variable definitions.
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, PKGBUILD...
[0/3] Reviewing .SRCINFO, PKGBUILD, claude-desktop-extra.install...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This `.SRCINFO` file is standard AUR package metadata. It declares a package that repackages an upstream release tarball from the same GitHub repository (`patrickjaja/claude-desktop-extra`) that hosts the package. Both `x86_64` and `aarch64` source tarballs include pinned SHA-256 checksums, which is good hygiene and provides integrity verification for the downloaded artifacts.

The dependency and optional dependency lists are consistent with packaging an Electron-based desktop application and its optional companion features (VM support, sandboxing, desktop portal helpers). The `optdepends` descriptions mention that the application may download a checksum-verified Claude Code CLI at runtime; this is upstream application behavior described in metadata, not a command executed by the PKGBUILD. There is no obfuscated code, no suspicious network fetch, no `eval`/`base64`/`curl|bash`, and no file system modification outside normal packaging scope in this file.
</details>
<evidence>
</evidence>
<summary>
Standard AUR metadata with pinned checksums; no malicious or dangerous behavior found.</summary>
</security_assessment>

[1/3] Reviewing PKGBUILD, claude-desktop-extra.install...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata with pinned checksums; no malicious or dangerous behavior found.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard AUR binary packaging practices. It downloads a prebuilt tarball from the maintainer's GitHub releases with pinned sha256sums, then installs the application tree, launcher, desktop entry, icons, MIME data, and GNOME Shell search provider files into the package directory. The setuid bit on chrome-sandbox is the normal Chromium/Electron sandbox requirement and is restored by the package install hook.

No suspicious behavior was found: there is no eval, base64 decoding, curl/wget piping to a shell, unexpected network calls, obfuscated commands, or access to sensitive local data. The build/install steps only copy files from the declared source tarball into the package. The main supply-chain consideration is that this is a prebuilt binary package assembled by the AUR maintainer rather than built from source, but that is a trust/hygiene concern, not evidence of malice, especially with pinned checksums. The referenced `.install` hook is not included in this file and would warrant separate review.
</details>
<evidence>
</evidence>
<summary>
Standard AUR binary packaging with pinned checksums; no malicious or dangerous behavior found.
</summary>
</security_assessment>

[2/3] Reviewing claude-desktop-extra.install...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR binary packaging with pinned checksums; no malicious or dangerous behavior found.
LLM auditresponse for claude-desktop-extra.install:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard pacman install hook for the `claude-desktop-extra` package. It performs expected post-install tasks: setting the SUID bit on the package's own `chrome-sandbox` binary, writing an AppArmor profile under `/etc/apparmor.d/claude-desktop`, refreshing desktop and icon caches, and printing optional dependency and repository migration notes. There is no network activity, no encoded or obfuscated commands, no exfiltration of local data, and no execution of code fetched from an external source.

The AppArmor profile uses `flags=(unconfined)` to allow the application to use user namespaces; this matches a known pattern used by Chromium-based applications and is a system configuration choice rather than a supply-chain attack. Setting `chrome-sandbox` to mode 4755 is also the standard and necessary Chromium sandbox setup. The script only touches files within the package's own installation paths and standard cache locations. No behavior outside the normal packaging workflow was found.
</details>
<evidence></evidence>
<summary>
Standard pacman install hook; no malicious behavior or suspicious operations found.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed claude-desktop-extra.install. Status: SAFE -- Standard pacman install hook; no malicious behavior or suspicious operations found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 18,901
  Completion Tokens: 2,776
  Total Tokens: 21,677
  Total Cost: $0.003884
  Execution Time: 24.10 seconds

Final Status: SAFE


No issues found.
