---
package: tor-browser-bin
pkgver: 15.0.20
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 3e318911529c43138ec6bdba0bfcb56907607021
prompt_tokens: 22280
completion_tokens: 4544
total_tokens: 26824
cost: 0.00253829856
execution_time: 207.87
files_reviewed: 6
files_skipped: 2
maintainer_files: 8
source_fetch: ok
upstream_files: 6
upstream_named_files: 0
unpinned_sources: 2
date: 2026-08-30T03:03:46Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard .gitignore, no security concerns.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD with no malicious patterns.
  - file: .SRCINFO
    status: safe
    summary: Standard metadata file, no malicious content.
  - file: tor-browser.desktop.in
    status: safe
    summary: Standard desktop entry file; no malicious behavior detected.
  - file: tor-browser.png
    status: skipped
    summary: "Skipping binary file: tor-browser.png"
  - file: tor-browser.svg
    status: skipped
    summary: "Skipping binary file: tor-browser.svg"
  - file: tor-browser.in
    status: safe
    summary: "Safe: no evidence of malicious behavior."
  - file: tor-browser.install
    status: safe
    summary: Informational script, no malicious actions.
---

Cloning https://aur.archlinux.org/tor-browser-bin.git...
Cloned tor-browser-bin
Analyzing tor-browser-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The global scope of this PKGBUILD defines helper functions and variables, and sets source and checksum arrays. The only command executed during sourcing is the `_dist_checksum` function call within the sha256sums arrays, which fetches a SHA256 checksum file from the official Tor Project archive (`archive.torproject.org`). This is a normal and expected network request for integrity verification of the package's tarballs. No malicious payload is executed; the fetched data is only parsed to extract a checksum string. No other commands (eval, base64, curl|bash, etc.) are present in the global scope or pkgver(). The fetch and extraction of source tarballs from the official Tor Project archive is standard and safe. Therefore, running `makepkg --nobuild --nodeps --noprepare` and `makepkg --printsrcinfo` on this file is safe.
</details>
<evidence>
</evidence>
<summary>Global scope only fetches checksums from official Tor server.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Global scope only fetches checksums from official Tor server.
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Note: 2 remote source(s) have no checksum (sha256sums=SKIP), so the fetched bytes are not verifiable and can change without any AUR update: https://archive.torproject.org/tor-package-archive/torbrowser/15.0.20/tor-browser-linux-i686-15.0.20.tar.xz.asc, https://archive.torproject.org/tor-package-archive/torbrowser/15.0.20/tor-browser-linux-x86_64-15.0.20.tar.xz.asc
Reviewing the 8 file(s) in the AUR repository. The 6 downloaded file(s) are upstream content, outside the threat model, and are not read.
Reviewing the AUR repository's files...
[0/8] Reviewing .SRCINFO...
[0/8] Reviewing .SRCINFO, .gitignore...
[0/8] Reviewing .SRCINFO, .gitignore, PKGBUILD...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
The `.gitignore` file is a standard git configuration file that lists directories and file patterns to exclude from version control. It contains only build artifacts (pkg/, src/) and compressed package files (tor-browser-*.tar.xz, etc.). There is no executable code, network requests, obfuscation, or any other security-relevant content. This is a routine and expected file in an AUR repository.
</details>
<evidence></evidence>
<summary>Standard .gitignore, no security concerns.</summary>
</security_assessment>

[0/8] Reviewing .SRCINFO, .gitignore, PKGBUILD, tor-browser.desktop.in...
[1/8] Reviewing .SRCINFO, PKGBUILD, tor-browser.desktop.in...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore, no security concerns.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard AUR packaging practices for a binary package. The `_dist_checksum` function fetches SHA-256 checksums from the official Tor Project archive using `curl`, which is expected behavior for verifying the integrity of the downloaded binary. All file operations in `package()` are confined to installing standard desktop files, icons, and the application bundle into `/opt/`. There is no obfuscated code, unexpected network requests, or manipulation of system files outside the package scope. The SKIP checksums for `.asc` files are a routine choice (signature verification is handled via GPG keys). No evidence of malicious supply-chain injection is present.
</details>
<evidence>
</evidence>
<summary>Standard PKGBUILD with no malicious patterns.</summary>
</security_assessment>

[2/8] Reviewing .SRCINFO, tor-browser.desktop.in...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD with no malicious patterns.
[2/8] Reviewing .SRCINFO, tor-browser.desktop.in, tor-browser.in...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The .SRCINFO file is a standard Arch Linux package metadata file for the tor-browser-bin package. It contains no executable code, no obfuscated content, and no unexpected network requests. All source URLs point to the official Tor Project archive (archive.torproject.org). The checksums are provided for the main tarballs, and the SKIP entries for the .asc signature files are standard practice for detached signatures. The validpgpkey is the known Tor Browser signing key. There is no evidence of malicious behavior; the file is consistent with legitimate packaging practices.
</details>
<evidence></evidence>
<summary>Standard metadata file, no malicious content.</summary>
</security_assessment>

[2/8] Reviewing .SRCINFO, tor-browser.desktop.in, tor-browser.in, tor-browser.install...
[3/8] Reviewing tor-browser.desktop.in, tor-browser.in, tor-browser.install...
+ Reviewed .SRCINFO. Status: SAFE -- Standard metadata file, no malicious content.
LLM auditresponse for tor-browser.desktop.in:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard freedesktop.org desktop entry file for the Tor Browser package. It defines the application name, executable command (`tor-browser %u`), icon, categories, MIME types, and comment. No suspicious network requests, file operations, obfuscated code, or execution of untrusted content are present. The file conforms to normal packaging practices for a .desktop launcher.
</details>
<evidence></evidence>
<summary>Standard desktop entry file; no malicious behavior detected.</summary>
</security_assessment>

[3/8] Reviewing tor-browser.desktop.in, tor-browser.in, tor-browser.install, tor-browser.png...
[4/8] Reviewing tor-browser.in, tor-browser.install, tor-browser.png...
+ Reviewed tor-browser.desktop.in. Status: SAFE -- Standard desktop entry file; no malicious behavior detected.
[4/8] Reviewing tor-browser.in, tor-browser.install, tor-browser.png, tor-browser.svg...
[5/8] Reviewing tor-browser.in, tor-browser.install, tor-browser.svg...
! Reviewed tor-browser.png. Status: SKIPPED -- Skipping binary file: tor-browser.png
[6/8] Reviewing tor-browser.in, tor-browser.install...
! Reviewed tor-browser.svg. Status: SKIPPED -- Skipping binary file: tor-browser.svg
LLM auditresponse for tor-browser.in:
<security_assessment>
<decision>SAFE</decision>
<details>The script is a standard launcher and optional updater for Tor Browser from the AUR. It extracts the browser tarball to the user's home directory and runs it. The `_aur_update_` function fetches the PKGBUILD from the AUR and runs `makepkg -si` if a newer version is found. This self-update mechanism downloads and executes code from a community repository without integrity verification, which is a hygiene concern (unpinned source, no checksums) but not genuinely malicious. The script does not exfiltrate data, execute obfuscated commands, install backdoors, or tamper with system files. All network requests go to the package's own AUR source, which is expected for an AUR package. The behavior is consistent with typical AUR helper scripts and upstream packaging conventions.</details>
<evidence></evidence>
<summary>Safe: no evidence of malicious behavior.</summary>
</security_assessment>

[7/8] Reviewing tor-browser.install...
+ Reviewed tor-browser.in. Status: SAFE -- Safe: no evidence of malicious behavior.
LLM auditresponse for tor-browser.install:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard Arch Linux package install script (`.install`) for the `tor-browser-bin` AUR package. It defines three functions: `post_install`, `post_upgrade`, and `post_remove`. Each function only prints informational messages to the user, such as reminding them that the browser will be extracted on first run or that they need to manually remove a directory. There are no commands that execute external programs (no `curl`, `wget`, `eval`, `bash`, etc.), no file system modifications, no network requests, and no obfuscated or encoded code. The content is entirely benign and follows expected packaging conventions for informing users about package behavior.
</details>
<evidence></evidence>
<summary>Informational script, no malicious actions.</summary>
</security_assessment>

[8/8] Reviewing ...
+ Reviewed tor-browser.install. Status: SAFE -- Informational script, no malicious actions.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
(Skipped 2 files: tor-browser.png, tor-browser.svg)

API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 22,280
  Completion Tokens: 4,544
  Total Tokens: 26,824
  Total Cost: $0.002538
  Execution Time: 207.87 seconds

Final Status: SAFE


No issues found.


Audit Skips:

tor-browser.png: [SKIPPED] Skipping binary file: tor-browser.png

tor-browser.svg: [SKIPPED] Skipping binary file: tor-browser.svg
