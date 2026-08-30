---
package: claude-desktop-extra
pkgver: 1.40609.0
pkgrel: 3
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 3e318911529c43138ec6bdba0bfcb56907607021
prompt_tokens: 16682
completion_tokens: 2063
total_tokens: 18745
cost: 0.00163717344
execution_time: 105.42
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: ok
upstream_files: 3054
upstream_named_files: 1
unpinned_sources: 0
date: 2026-08-30T23:03:25Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard metadata file, no malicious content.
  - file: claude-desktop-extra.install
    status: safe
    summary: Standard packaging script, no malicious behavior.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD with pinned checksums; no malicious indicators.
---

Cloning https://aur.archlinux.org/claude-desktop-extra.git...
Cloned claude-desktop-extra
Analyzing claude-desktop-extra AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The top-level scope of this PKGBUILD consists solely of variable assignments (pkgname, pkgver, depends, source arrays, checksums, etc.) and a `package()` function that will not be executed during `makepkg --nobuild --nodeps --noprepare`. There is no `pkgver()` function defined, no command substitutions in global scope, and no code that would execute dangerous operations at source time. The source tarballs are fetched from the maintainer's own GitHub releases with valid SHA-256 checksums; downloading and extracting them is the intended purpose of the fetch step. No malicious behavior is present in the scope that `makepkg` sources.</details>
<evidence>
</evidence>
<summary>No dangerous top-level code; standard PKGBUILD.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous top-level code; standard PKGBUILD.
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Note: the PKGBUILD names 1 file(s) in the downloaded sources (src/launcher/claude-desktop); they are upstream content and were not reviewed.
Reviewing the 3 file(s) in the AUR repository. The 3054 downloaded file(s) are upstream content, outside the threat model, and are not read.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, PKGBUILD...
[0/3] Reviewing .SRCINFO, PKGBUILD, claude-desktop-extra.install...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The `.SRCINFO` file is a standard AUR metadata file. It defines package metadata (name, version, dependencies) and sources tarballs from the project&#x2019;s own GitHub releases (`https://github.com/patrickjaja/claude-desktop-extra/releases/...`). Both source URLs have pinned SHA256 checksums (not `SKIP`), which provides integrity verification. There are no commands to execute, no network calls to unexpected hosts, no obfuscation, and no dangerous operations. The file is purely declarative and does not contain any executable code.
</details>
<evidence></evidence>
<summary>Standard metadata file, no malicious content.</summary>
</security_assessment>

[1/3] Reviewing PKGBUILD, claude-desktop-extra.install...
+ Reviewed .SRCINFO. Status: SAFE -- Standard metadata file, no malicious content.
LLM auditresponse for claude-desktop-extra.install:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard pacman `.install` hook for the `claude-desktop-extra` package. It performs expected post-installation tasks: setting SUID on the chrome-sandbox binary, installing an AppArmor profile to allow unconfined user namespace access (required for Chromium's sandbox on newer kernels), refreshing desktop and icon caches, and printing informational notes about optional Cowork VM dependencies and a legacy repository name migration. All operations are confined to the package's own files under `/usr/lib/claude-desktop/` and standard system configuration paths (`/etc/apparmor.d/`). There are no network requests, no data exfiltration, no obfuscated code, no downloads of external content, and no execution of untrusted code. The use of `chown`, `chmod`, `apparmor_parser`, `rm`, `update-desktop-database`, `gtk-update-icon-cache`, `echo`, and `grep` is entirely appropriate. Error output is suppressed and failures are made non-fatal (`2>/dev/null || true`), which aligns with robust packaging practices. No malicious behavior is present.
</details>
<evidence></evidence>
<summary>Standard packaging script, no malicious behavior.</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed claude-desktop-extra.install. Status: SAFE -- Standard packaging script, no malicious behavior.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard AUR packaging practices. It downloads a pre-built tarball from the maintainer&#x27;s GitHub releases with pinned SHA256 checksums, installs the Electron application files into `/usr/lib/claude-desktop`, sets the SUID bit on `chrome-sandbox` (required for Chromium sandboxing), and installs a launcher script, desktop entry, icons, and license. There are no obfuscated commands, no unexpected network requests, no base64-encoded data, and no execution of downloaded scripts during the build phase. The package only copies and sets permissions on files from the tarball. The only SUID is the standard Chromium sandbox. No malicious behavior is present.
</details>
<evidence>
</evidence>
<summary>Standard PKGBUILD with pinned checksums; no malicious indicators.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD with pinned checksums; no malicious indicators.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 16,682
  Completion Tokens: 2,063
  Total Tokens: 18,745
  Total Cost: $0.001637
  Execution Time: 105.42 seconds

Final Status: SAFE


No issues found.
