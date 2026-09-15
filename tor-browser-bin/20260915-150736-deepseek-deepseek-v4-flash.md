---
package: tor-browser-bin
pkgver: 15.0.23
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 171a316e053e9c4b28731ccb1aa63b1168550d3a
prompt_tokens: 22096
completion_tokens: 12814
total_tokens: 34910
cost: 0.00415580592
execution_time: 410.39
files_reviewed: 6
files_skipped: 2
maintainer_files: 8
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 2
injection_attempts: 0
date: 2026-09-15T15:07:36Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard .gitignore for AUR build artifacts.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata file, no malicious content.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD, no evidence of malicious code.
  - file: tor-browser.desktop.in
    status: safe
    summary: Standard desktop entry file, no malicious content.
  - file: tor-browser.png
    status: skipped
    summary: "Skipping binary file: tor-browser.png"
  - file: tor-browser.svg
    status: skipped
    summary: "Skipping binary file: tor-browser.svg"
  - file: tor-browser.install
    status: safe
    summary: Standard .install file, no security issues.
  - file: tor-browser.in
    status: safe
    summary: Benign Tor Browser launcher; explicit AUR self-update only; no malicious behavior detected.
---

Materializing tor-browser-bin from local mirror...
Materialized tor-browser-bin
Analyzing tor-browser-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
 <security_assessment>
<decision>SAFE</decision>
<details>
Running `makepkg --printsrcinfo` sources the PKGBUILD and thus executes its top-level scope. The notable top-level executable code is: (1) `_archstr=$([[ "${CARCH}" ... ]] && echo -n ...)` which is a purely local test plus `echo`, and (2) the `sha256sums_i686`/`sha256sums_x86_64` assignments, which invoke `_dist_checksum` via command substitution. That function runs `curl --silent --fail` against `https://archive.torproject.org/tor-package-archive/torbrowser/${pkgver}/sha256sums-signed-build.txt` and `.../sha256sums-unsigned-build.txt`, pipes the combined text through `awk`, and stores the extracted checksum string as an array element.

This behavior makes network connections at parse time, which is unusual and a supply-chain hygiene concern: the checksum is fetched from the same official Tor Project archive that hosts the tarballs, so it is self-referential rather than an independent pin, and `makepkg --printsrcinfo` will perform unexpected network I/O. However, it is not malicious by the stated criteria: the destination is the package's own upstream, no local data is sent anywhere, redirects are not followed, and the downloaded content is parsed as text and stored in a variable — never piped to a shell or executed. The `package()` function body (including the sed template substitutions) is not executed by `--printsrcinfo`, so it is out of scope for this narrow gate.
</details>
<evidence>
</evidence>
<summary>Top-level curl fetches official Tor checksums; no code execution or exfiltration.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Top-level curl fetches official Tor checksums; no code execution or exfiltration.
Note: 2 remote source(s) have no checksum (sha256sums=SKIP), so the bytes are not verifiable: https://archive.torproject.org/tor-package-archive/torbrowser/15.0.23/tor-browser-linux-i686-15.0.23.tar.xz.asc, https://archive.torproject.org/tor-package-archive/torbrowser/15.0.23/tor-browser-linux-x86_64-15.0.23.tar.xz.asc
Reviewing the 8 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/8] Reviewing .SRCINFO...
[0/8] Reviewing .SRCINFO, .gitignore...
[0/8] Reviewing .SRCINFO, .gitignore, PKGBUILD...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.gitignore` file for an AUR package build directory. It contains only four simple gitignore patterns to exclude build artifacts (`pkg/`, `src/`), source tarballs (`tor-browser-linux-*.tar.xz`, `tor-browser-linux-*.tar.xz.asc`), and the final compressed package (`tor-browser-*-*.pkg.tar*`). There is no executable code, network operations, obfuscation, or any behavior that could indicate a supply-chain attack.
</details>
<evidence>
</evidence>
<summary>Standard .gitignore for AUR build artifacts.</summary>
</security_assessment>

[0/8] Reviewing .SRCINFO, .gitignore, PKGBUILD, tor-browser.desktop.in...
[1/8] Reviewing .SRCINFO, PKGBUILD, tor-browser.desktop.in...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore for AUR build artifacts.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The .SRCINFO file is a declarative metadata file for the AUR package. It defines the package name, version, dependencies, sources, and checksums. All source URLs point to the official Tor Project archive (archive.torproject.org) for a specific version (15.0.23). Checksums are provided for the tarballs, and the .asc signature files have SKIP checksums (standard for GPG signatures, which are verified via the provided PGP key). There is no executable code, obfuscation, or any indication of malicious behavior. The file follows standard AUR packaging practices.
</details>
<evidence>
</evidence>
<summary>Standard AUR metadata file, no malicious content.</summary>
</security_assessment>

[1/8] Reviewing .SRCINFO, PKGBUILD, tor-browser.desktop.in, tor-browser.in...
[2/8] Reviewing PKGBUILD, tor-browser.desktop.in, tor-browser.in...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata file, no malicious content.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard AUR packaging practices for Tor Browser. It fetches the binary tarball and signature from the official Tor Project archive and verifies the signature via a PGP key. The only notable deviation from typical pinned checksums is the use of `_dist_checksum`, which dynamically fetches the SHA-256 sum from the same upstream source at build time. While this is a hygiene concern (no static checksum pinning), it is not malicious—the checksum is retrieved from the package's own declared upstream and used only for verification. All other operations (sed substitutions, file installation, icon installation) are standard. No obfuscated code, unexpected network destinations, or dangerous command patterns are present.
</details>
<evidence>
</evidence>
<summary>Standard AUR PKGBUILD, no evidence of malicious code.</summary>
</security_assessment>

[2/8] Reviewing PKGBUILD, tor-browser.desktop.in, tor-browser.in, tor-browser.install...
[3/8] Reviewing tor-browser.desktop.in, tor-browser.in, tor-browser.install...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD, no evidence of malicious code.
LLM auditresponse for tor-browser.desktop.in:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard freedesktop.org .desktop file used to register Tor Browser in the system application menu. It contains only metadata fields (Name, Exec, Icon, Categories, MimeType, Comment) and declares the application type. There are no executable commands, network requests, encoded data, or file operations beyond defining how the desktop environment launches the browser. The Exec line points to the expected `tor-browser` binary, and the MimeType list covers common web and document types. No security issues are present.
</details>
<evidence></evidence>
<summary>Standard desktop entry file, no malicious content.</summary>
</security_assessment>

[3/8] Reviewing tor-browser.desktop.in, tor-browser.in, tor-browser.install, tor-browser.png...
[4/8] Reviewing tor-browser.in, tor-browser.install, tor-browser.png...
+ Reviewed tor-browser.desktop.in. Status: SAFE -- Standard desktop entry file, no malicious content.
[4/8] Reviewing tor-browser.in, tor-browser.install, tor-browser.png, tor-browser.svg...
[5/8] Reviewing tor-browser.in, tor-browser.install, tor-browser.svg...
! Reviewed tor-browser.png. Status: SKIPPED -- Skipping binary file: tor-browser.png
[6/8] Reviewing tor-browser.in, tor-browser.install...
! Reviewed tor-browser.svg. Status: SKIPPED -- Skipping binary file: tor-browser.svg
LLM auditresponse for tor-browser.install:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard Arch Linux `.install` file for an AUR package. It contains only `post_install`, `post_upgrade`, and `post_remove` hooks that print informational messages to the user. There are no network requests, encoded commands, file modifications, or any other potentially malicious operations. The script simply echoes instructions about where the application data will be placed and how to manually remove it. No evidence of supply-chain attack or harmful behavior.
</details>
<evidence>
</evidence>
<summary>Standard .install file, no security issues.</summary>
</security_assessment>

[7/8] Reviewing tor-browser.in...
+ Reviewed tor-browser.install. Status: SAFE -- Standard .install file, no security issues.
LLM auditresponse for tor-browser.in:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a user-facing launcher and self-updater for the Tor Browser package. It extracts the browser from the locally installed `/opt` archive into the user's home directory, preserves browser profile data, and launches the browser. The `--update` option fetches the package's own AUR snapshot from the official `aur.archlinux.org` host and runs `makepkg -si` to install an updated version. This is explicit user-invoked AUR helper behavior, not an injected backdoor or hidden command.

No obfuscation, encoded payloads, data exfiltration, or unexpected network destinations were found. The script operates only within the package's own home-directory copy and the installed package data. The self-update path is a supply-chain consideration because AUR snapshots and PKGBUILDs are not cryptographically verified, but this is normal AUR workflow and does not constitute evidence of malicious code in this file.
</details>
<evidence>
</evidence>
<summary>Benign Tor Browser launcher; explicit AUR self-update only; no malicious behavior detected.</summary>
</security_assessment>

[8/8] Reviewing ...
+ Reviewed tor-browser.in. Status: SAFE -- Benign Tor Browser launcher; explicit AUR self-update only; no malicious behavior detected.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
(Skipped 2 files: tor-browser.png, tor-browser.svg)

API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 22,096
  Completion Tokens: 12,814
  Total Tokens: 34,910
  Total Cost: $0.004156
  Execution Time: 410.39 seconds

Final Status: SAFE


No issues found.


Audit Skips:

tor-browser.png: [SKIPPED] Skipping binary file: tor-browser.png

tor-browser.svg: [SKIPPED] Skipping binary file: tor-browser.svg
