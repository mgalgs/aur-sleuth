---
package: units
pkgver: 2.27
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: c6a5a9f6b0e70545bff9fff8802c361e476b0a86
prompt_tokens: 16808
completion_tokens: 2612
total_tokens: 19420
cost: 0.00171497088
execution_time: 344.39
files_reviewed: 6
files_skipped: 0
maintainer_files: 6
source_fetch: ok
upstream_files: 71
upstream_named_files: 1
unpinned_sources: 1
injection_attempts: 0
date: 2026-09-02T23:35:41Z
file_verdicts:
  - file: 0000-pager.patch
    status: safe
    summary: Patch changes default pager, no security issues.
  - file: .nvchecker.toml
    status: safe
    summary: Standard nvchecker config; no security issues.
  - file: units_currency.service
    status: safe
    summary: Standard systemd service invoking package binary to update currency data; no malicious behavior found.
  - file: units_currency.timer
    status: safe
    summary: Benign systemd timer for daily currency database updates.
  - file: .SRCINFO
    status: safe
    summary: Standard package metadata; no malicious content.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD for GNU units, no malicious content.
---

Cloning https://aur.archlinux.org/units.git...
Cloned units
Analyzing units AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only standard variable assignments and function definitions. The `source` array points to official GNU FTP for the tarball and signature, plus local patches and systemd service files from the AUR repository. There are no command substitutions, backticks, or `pkgver()` definitions that execute code at parse time. The `prepare()`, `build()`, and `package()` functions are not run due to the `--nobuild` and `--noprepare` flags. No obfuscation, network requests outside the declared sources, or other dangerous constructs are present. The use of `SKIP` on the signature checksum is normal for detached signatures and does not affect safety of this step.
</details>
<evidence></evidence>
<summary>No malicious code in global scope or source fetching.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious code in global scope or source fetching.
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Note: 1 remote source(s) have no checksum (sha256sums=SKIP), so the fetched bytes are not verifiable and can change without any AUR update: https://ftp.gnu.org/gnu/units/units-2.27.tar.gz.sig
Note: the PKGBUILD names 1 file(s) in the downloaded sources (src/units-2.27/configure); they are upstream content and were not reviewed.
Reviewing the 6 file(s) in the AUR repository. The 71 downloaded file(s) are upstream content, outside the threat model, and are not read.
Reviewing the AUR repository's files...
[0/6] Reviewing .SRCINFO...
[0/6] Reviewing .SRCINFO, .nvchecker.toml...
[0/6] Reviewing .SRCINFO, .nvchecker.toml, 0000-pager.patch...
LLM auditresponse for 0000-pager.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
The patch modifies the default pager used by the `help` function from `/usr/bin/pager` (a Debian-specific path) to `less`, which is commonly available on Arch Linux systems. This is a straightforward configuration change with no security implications. There is no obfuscation, no network activity, no dangerous commands, and no deviation from standard packaging practices.
</details>
<evidence></evidence>
<summary>Patch changes default pager, no security issues.</summary>
</security_assessment>

[0/6] Reviewing .SRCINFO, .nvchecker.toml, 0000-pager.patch, PKGBUILD...
[1/6] Reviewing .SRCINFO, .nvchecker.toml, PKGBUILD...
+ Reviewed 0000-pager.patch. Status: SAFE -- Patch changes default pager, no security issues.
LLM auditresponse for .nvchecker.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `.nvchecker.toml` is a configuration file for `nvchecker`, a tool commonly used by AUR maintainers to automatically check for upstream version updates. It defines a version-checking rule for the `units` package: it fetches the directory listing from the official GNU FTP server (`ftp.gnu.org`) and uses a regex to extract version numbers from tarball filenames. There is no executable code, no obfuscation, no network requests to untrusted hosts, and no file operations or system modifications. This is a standard, benign packaging utility file.
</details>
<evidence></evidence>
<summary>Standard nvchecker config; no security issues.</summary>
</security_assessment>

[2/6] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed .nvchecker.toml. Status: SAFE -- Standard nvchecker config; no security issues.
[2/6] Reviewing .SRCINFO, PKGBUILD, units_currency.service...
LLM auditresponse for units_currency.service:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard systemd oneshot service unit for the `units` package. It declares a dependency on network-online.target and runs `/usr/bin/units_cur`, the package-provided binary that updates the currency rates database. There are no direct network fetches, no shell commands, no obfuscation, and no file manipulation beyond invoking the application's own updater binary.

The only minor hygiene note is that the service does not specify `User=` and therefore runs as root by default, and it lacks hardening options such as `ProtectSystem=`. This is a defense-in-depth consideration, not evidence of malicious behavior, and is consistent with how many AUR package systemd services are written.
</details>
<evidence>
</evidence>
<summary>
Standard systemd service invoking package binary to update currency data; no malicious behavior found.
</summary>
</security_assessment>

[2/6] Reviewing .SRCINFO, PKGBUILD, units_currency.service, units_currency.timer...
[3/6] Reviewing .SRCINFO, PKGBUILD, units_currency.timer...
+ Reviewed units_currency.service. Status: SAFE -- Standard systemd service invoking package binary to update currency data; no malicious behavior found.
LLM auditresponse for units_currency.timer:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard systemd timer unit for the `units` package. It schedules a daily update of the currency rates database using `OnCalendar=daily`, with `AccuracySec=12h` and `Persistent=true`. There are no ExecStart commands, no network operations, no file manipulation, and no suspicious code. The timer only defines scheduling metadata; the actual update command would be in a separate service unit. No malicious behavior is present.
</details>
<evidence>
</evidence>
<summary>
Benign systemd timer for daily currency database updates.</summary>
</security_assessment>

[4/6] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed units_currency.timer. Status: SAFE -- Benign systemd timer for daily currency database updates.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This `.SRCINFO` file is a standard package metadata descriptor for the AUR package `units`. It declares the upstream source as a tarball from the official GNU FTP site over HTTPS, along with a detached PGP signature, two systemd unit files for enabling live currency rate updates, and a patch. All sources have pinned SHA-256 checksums except the PGP signature file, where `SKIP` is normal practice. No executable code, obfuscation, or unexpected network destinations are present. The file is a passive metadata record and contains no commands or scripts.
</details>
<evidence></evidence>
<summary>Standard package metadata; no malicious content.</summary>
</security_assessment>

[5/6] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard package metadata; no malicious content.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD is a standard Arch package recipe for the GNU `units` utility. It downloads the source from the official GNU FTP mirror over HTTPS, verifies the tarball with a PGP signature (the `.sig` file has `SKIP` set because it's a detached signature, which is normal), and applies a small patch to enable a pager. The build uses `./configure` and `make`, and installation follows the standard pattern with `make DESTDIR="$pkgdir" install`. A systemd timer and service for periodic currency data updates are installed – these are legitimate features of the upstream application, not injected functionality. There are no suspicious network requests, obfuscated commands, unexpected file operations, or any behavior that deviates from ordinary packaging practices. The script contains no hidden or malicious code.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD for GNU units, no malicious content.</summary>
</security_assessment>

[6/6] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD for GNU units, no malicious content.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 16,808
  Completion Tokens: 2,612
  Total Tokens: 19,420
  Total Cost: $0.001715
  Execution Time: 344.39 seconds

Final Status: SAFE


No issues found.
