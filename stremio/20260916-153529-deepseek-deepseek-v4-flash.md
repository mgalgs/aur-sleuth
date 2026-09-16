---
package: stremio
pkgver: 4.4.183
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 171a316e053e9c4b28731ccb1aa63b1168550d3a
prompt_tokens: 12341
completion_tokens: 2263
total_tokens: 14604
cost: 0.00146877836
execution_time: 31.91
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-16T15:35:29Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard package metadata; all sources are from official upstream. No security issues found.
  - file: 010-stremio-do-not-download-server-js.patch
    status: safe
    summary: Patch removes a download step; no malicious behavior.
  - file: PKGBUILD
    status: safe
    summary: Clean PKGBUILD with verified sources, no malicious behavior.
---

Materializing stremio from local mirror...
Materialized stremio
Analyzing stremio AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only top-level variable and array definitions (pkgname, pkgver, arch, depends, source, sha256sums, etc.) and function definitions (prepare, build, package). No command substitutions, eval, external commands, or any executable code is present in the global scope. All potentially dangerous operations (git submodule init, patching, build, install) are confined to functions that are **not** executed by `makepkg --printsrcinfo`. Therefore sourcing this PKGBUILD for metadata parsing is safe.
</details>
<evidence>
</evidence>
<summary>No executable code in global scope; sourcing safe.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No executable code in global scope; sourcing safe.
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, 010-stremio-do-not-download-server-js.patch...
[0/3] Reviewing .SRCINFO, 010-stremio-do-not-download-server-js.patch, PKGBUILD...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This `.SRCINFO` file is a standard Arch Linux package metadata file. It declares the `stremio` package, its dependencies, and sources. All downloads come from the project's own upstream locations: `github.com/Stremio/stremio-shell`, `github.com/Ivshti/libmpv`, `github.com/itay-grudev/SingleApplication`, and `dl.strem.io` for the official `server.js` and `stremio.asar` artifacts. These are consistent with the package's declared purpose.

No malicious behavior, obfuscated content, suspicious commands, or unexpected network destinations are present. The `SKIP` checksums apply to VCS sources and are normal AUR practice. The committed `sha256sums` for the tarball, patch, and official downloadable artifacts are also appropriate. This file contains only metadata and does not execute any code.
</details>
<evidence>
</evidence>
<summary>
Standard package metadata; all sources are from official upstream. No security issues found.
</summary>
</security_assessment>

[1/3] Reviewing 010-stremio-do-not-download-server-js.patch, PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard package metadata; all sources are from official upstream. No security issues found.
LLM auditresponse for 010-stremio-do-not-download-server-js.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
This patch modifies a `release.makefile` to remove a target that downloads `server.js` via `wget` from a URL read from `server-url.txt`. The patch eliminates the download step and its inclusion in the `ALL` target and the `clean` target. This is a routine packaging adjustment to avoid fetching external code during build, which is common in AUR packages to improve reproducibility and security. There is no evidence of malicious behavior—the patch only removes functionality, it does not introduce any new commands, obfuscation, or dangerous operations.
</details>
<evidence></evidence>
<summary>Patch removes a download step; no malicious behavior.</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed 010-stremio-do-not-download-server-js.patch. Status: SAFE -- Patch removes a download step; no malicious behavior.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard AUR packaging practices. All sources originate from the project's official upstream (GitHub, dl.strem.io). The two VCS sources (`libmpv`, `SingleApplication`) have `SKIP` checksums, which is normal for git sources and not indicative of malice. The primary source (shell repo) and the pre-built server components (`server.js`, `stremio.asar`) have pinned SHA-256 sums, ensuring integrity. The `prepare()` function uses local submodule paths to avoid unnecessary network fetches and applies a patch that prevents the build system from re‑downloading `server.js` – a reproducibility improvement. The `build()` and `package()` functions run only the upstream `make` workflow and install files via `install` and symlinks. No obfuscated code, unexpected network requests, dangerous command injections, or data exfiltration are present. The file is consistent with the maintainer's stated purpose of packaging the Stremio media platform.
</details>
<evidence></evidence>
<summary>Clean PKGBUILD with verified sources, no malicious behavior.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Clean PKGBUILD with verified sources, no malicious behavior.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 12,341
  Completion Tokens: 2,263
  Total Tokens: 14,604
  Total Cost: $0.001469
  Execution Time: 31.91 seconds

Final Status: SAFE


No issues found.
