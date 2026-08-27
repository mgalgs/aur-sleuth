---
package: mullvad-browser-bin
pkgver: 15.0.20
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 3e318911529c43138ec6bdba0bfcb56907607021
prompt_tokens: 60142
completion_tokens: 3278
total_tokens: 63420
cost: 0.00489296528
execution_time: 64.97
files_reviewed: 6
files_skipped: 0
maintainer_files: 6
source_fetch: ok
upstream_files: 207
upstream_named_files: 0
unpinned_sources: 1
date: 2026-08-27T23:51:10Z
file_verdicts:
  - file: .hooks
    status: safe
    summary: A routine changelog extraction; no security issues.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata, no suspicious content.
  - file: mullvad-browser.desktop
    status: safe
    summary: Standard desktop entry file; no malicious content.
  - file: mullvad-browser.changelog
    status: safe
    summary: Plain text changelog, no executable content.
  - file: PKGBUILD
    status: safe
    summary: Standard prebuilt binary PKGBUILD, no malicious indicators.
  - file: mullvad-browser.sh
    status: safe
    summary: Benign browser launch script, no malicious content.
---

Cloning https://aur.archlinux.org/mullvad-browser-bin.git...
Cloned mullvad-browser-bin
Analyzing mullvad-browser-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD's global scope and source array are standard. The only downloads are from the official Tor Project distribution server (dist.torproject.org) and two local files (mullvad-browser.sh and .desktop). No top-level code execution occurs beyond sourcing the PKGBUILD. The `package()` function is not executed during the fetch step. No suspicious commands, obfuscation, or unexpected network destinations are present.
</details>
<evidence>
</evidence>
<summary>Standard PKGBUILD, no malicious code in scope.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Standard PKGBUILD, no malicious code in scope.
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Note: 1 remote source(s) have no checksum (sha256sums=SKIP), so the fetched bytes are not verifiable and can change without any AUR update: https://dist.torproject.org/mullvadbrowser/15.0.20/mullvad-browser-linux-x86_64-15.0.20.tar.xz.asc
Reviewing the 6 file(s) in the AUR repository. The 207 downloaded file(s) are upstream content, outside the threat model, and are not read.
Reviewing the AUR repository's files...
[0/6] Reviewing .SRCINFO...
[0/6] Reviewing .SRCINFO, .hooks...
[0/6] Reviewing .SRCINFO, .hooks, PKGBUILD...
LLM auditresponse for .hooks:
<security_assessment>
<decision>SAFE</decision>
<details>
The `.hooks` script is a straightforward packaging helper that sources the PKGBUILD to obtain `pkgver`, then extracts a changelog file from the upstream tarball (`mullvad-browser-linux-x86_64-$pkgver.tar.xz`) and renames it. There are no network requests, obfuscated code, dangerous commands, or any deviation from standard AUR packaging practices. The operations are limited to `tar` and `mv` on the package's own declared source, which is expected and benign.
</details>
<evidence>
</evidence>
<summary>A routine changelog extraction; no security issues.</summary>
</security_assessment>

[1/6] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed .hooks. Status: SAFE -- A routine changelog extraction; no security issues.
[1/6] Reviewing .SRCINFO, PKGBUILD, mullvad-browser.changelog...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard AUR `.SRCINFO` metadata file. It declares package metadata, dependencies, source URLs, PGP keys, and checksums. All source URLs point to the official Tor Project domain (`dist.torproject.org`), which is the legitimate upstream for Mullvad Browser. The checksums are provided for the main tarball and local scripts; the signature file correctly uses `SKIP` (standard practice for detached signatures). The PGP key is listed for verification. No suspicious network destinations, obfuscated commands, or unusual operations are present. The file is purely declarative and contains no executable code.
</details>
<evidence>
</evidence>
<summary>Standard AUR metadata, no suspicious content.</summary>
</security_assessment>

[1/6] Reviewing .SRCINFO, PKGBUILD, mullvad-browser.changelog, mullvad-browser.desktop...
[2/6] Reviewing PKGBUILD, mullvad-browser.changelog, mullvad-browser.desktop...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata, no suspicious content.
LLM auditresponse for mullvad-browser.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard Freedesktop.org `.desktop` entry file for the Mullvad Browser. It defines the application name, icon, category, MIME types, localized names, and desktop actions (new window, private window, profile manager). Each action invokes the `mullvad-browser` binary with appropriate command-line flags. There is no executable code, no network requests, no file manipulation, no obfuscation, and no deviation from expected packaging practices. The file contains only metadata and localized string data. No supply-chain attack indicators are present.
</details>
<evidence></evidence>
<summary>Standard desktop entry file; no malicious content.</summary>
</security_assessment>

[3/6] Reviewing PKGBUILD, mullvad-browser.changelog...
+ Reviewed mullvad-browser.desktop. Status: SAFE -- Standard desktop entry file; no malicious content.
[3/6] Reviewing PKGBUILD, mullvad-browser.changelog, mullvad-browser.sh...
LLM auditresponse for mullvad-browser.changelog:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a plain-text changelog for Mullvad Browser. It contains only structured version-release notes with bug references and build-system updates. There is no executable code, no obfuscated content, no network requests, no command invocations (curl, wget, eval, etc.), and no embedded scripts. The content is purely descriptive and poses no security threat.
</details>
<evidence></evidence>
<summary>Plain text changelog, no executable content.</summary>
</security_assessment>

[4/6] Reviewing PKGBUILD, mullvad-browser.sh...
+ Reviewed mullvad-browser.changelog. Status: SAFE -- Plain text changelog, no executable content.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD performs standard operations for a prebuilt binary AUR package: downloading the official upstream tarball from `dist.torproject.org`, verifying it via PGP (signing key specified), then extracting and installing files into `$pkgdir` with appropriate permissions. No obfuscated code, no unexpected network requests, and no execution of downloaded scripts during build (the tarball is simply extracted). The helper script and desktop file are sourced from the AUR repository itself with checksums provided. All file operations are confined to the package directory and follow normal packaging practices. The only potential supply-chain risk is reliance on the upstream tarball integrity, which is mitigated by GPG verification. No genuinely malicious behavior is present.
</details>
<evidence></evidence>
<summary>Standard prebuilt binary PKGBUILD, no malicious indicators.</summary>
</security_assessment>

[5/6] Reviewing mullvad-browser.sh...
+ Reviewed PKGBUILD. Status: SAFE -- Standard prebuilt binary PKGBUILD, no malicious indicators.
LLM auditresponse for mullvad-browser.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard launch script for Mullvad Browser. It sets environment variables (font config path, NVIDIA shader cache disable), reads optional user flags from a configuration file, and executes the main browser binary. There is no network activity, no obfuscation, no code execution beyond the intended application, and no attempt to exfiltrate data or modify system files. All operations are consistent with normal packaging practices for a browser.
</details>
<evidence></evidence>
<summary>Benign browser launch script, no malicious content.</summary>
</security_assessment>

[6/6] Reviewing ...
+ Reviewed mullvad-browser.sh. Status: SAFE -- Benign browser launch script, no malicious content.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 60,142
  Completion Tokens: 3,278
  Total Tokens: 63,420
  Total Cost: $0.004893
  Execution Time: 64.97 seconds

Final Status: SAFE


No issues found.
