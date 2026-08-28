---
package: mcpp-bin
pkgver: 2026.8.28.2
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 3e318911529c43138ec6bdba0bfcb56907607021
prompt_tokens: 10817
completion_tokens: 2421
total_tokens: 13238
cost: 0.001387481354
execution_time: 35.23
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: ok
upstream_files: 7
upstream_named_files: 2
unpinned_sources: 0
date: 2026-08-28T07:04:51Z
file_verdicts:
  - file: mcpp.sh
    status: safe
    summary: Standard launcher script, no security issues.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata file, no malicious content.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD, no malicious code.
---

Cloning https://aur.archlinux.org/mcpp-bin.git...
Cloned mcpp-bin
Analyzing mcpp-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD defines variables, source URLs from the project's own GitHub releases, and checksums. There is no code execution in the global scope or `pkgver()` (which is not defined, so it defaults to the static `pkgver` variable). The `source` arrays use standard HTTPS URLs and contain no malicious payloads. The `package()` function, which performs binary installation, is not executed during the `--nobuild --nodeps --noprepare` or `--printsrcinfo` commands. Thus, fetching sources and sourcing the PKGBUILD is safe.
</details>
<evidence></evidence>
<summary>No malicious code executes during source fetch.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious code executes during source fetch.
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Note: the PKGBUILD names 2 file(s) in the downloaded sources (src/mcpp-2026.8.28.2-linux-x86_64/bin/mcpp, src/mcpp-2026.8.28.2-linux-x86_64/registry/bin/xlings); they are upstream content and were not reviewed.
Reviewing the 3 file(s) in the AUR repository. The 7 downloaded file(s) are upstream content, outside the threat model, and are not read.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, PKGBUILD...
[0/3] Reviewing .SRCINFO, PKGBUILD, mcpp.sh...
LLM auditresponse for mcpp.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This launcher script is a straightforward wrapper that sets two environment variables (`MCPP_HOME` and `MCPP_VENDORED_XLINGS`) to appropriate paths, then executes the main binary from `/opt/mcpp/bin/mcpp`. It does not perform any network requests (no `curl`, `wget`, etc.), does not execute arbitrary code, does not use obfuscation, and does not modify system files. Everything is consistent with standard AUR packaging practices for a prebuilt binary package that needs to separate read-only installation files from per-user writable data. There is no evidence of malicious intent or supply‑chain attack indicators.
</details>
<evidence></evidence>
<summary>Standard launcher script, no security issues.</summary>
</security_assessment>

[1/3] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed mcpp.sh. Status: SAFE -- Standard launcher script, no security issues.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard .SRCINFO metadata file for a prebuilt binary AUR package. It declares dependencies (`git`), conflicts (`mcpp-m`, `mcpp`), arch-specific binary tarballs downloaded from the project's official GitHub releases over HTTPS, and pinned SHA-256 checksums for those tarballs. The `source = mcpp.sh` entry plus `sha256sums = SKIP` is a minor hygiene concern (the helper script is unverified), but it is common in AUR packages and not evidence of malice. There are no executable instructions, no network requests to unexpected hosts, no obfuscation, and no system modification commands. The file simply describes the package metadata; it cannot execute anything by itself.
</details>
<evidence></evidence>
<summary>Standard AUR metadata file, no malicious content.</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata file, no malicious content.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard AUR practices for prebuilt binary packages. Sources are downloaded from the official GitHub releases (`https://github.com/mcpp-community/mcpp/releases/download/v...`) with verified SHA-256 checksums for both architecture-specific tarballs. The `sha256sums` entry for the local `mcpp.sh` file is `SKIP`, which is normal for a file sourced from the same directory as the PKGBUILD and not downloaded remotely. No obfuscated code, suspicious network requests, dangerous commands (like `eval`, `curl|bash`, `git pull`), or unexpected system modifications are present. The package only installs the expected binaries, a launcher script, license, and documentation into standard locations (`/opt/mcpp`, `/usr/bin`, `/usr/share`). This is a clean, typical AUR package for a prebuilt upstream release.
</details>
<evidence></evidence>
<summary>Standard AUR PKGBUILD, no malicious code.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD, no malicious code.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 10,817
  Completion Tokens: 2,421
  Total Tokens: 13,238
  Total Cost: $0.001387
  Execution Time: 35.23 seconds

Final Status: SAFE


No issues found.
