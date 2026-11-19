---
package: tor-browser-bin
pkgver: 15.0.26
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 22552
completion_tokens: 11551
total_tokens: 34103
cost: 0.004154514
execution_time: 94.59
files_reviewed: 6
files_skipped: 2
maintainer_files: 8
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 2
injection_attempts: 0
date: 2026-10-22T19:04:27Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata; no security issues found.
  - file: .gitignore
    status: safe
    summary: Standard .gitignore with no security concerns.
  - file: tor-browser.desktop.in
    status: safe
    summary: Standard desktop entry file; no security issues.
  - file: tor-browser.install
    status: safe
    summary: Contains only user notifications, no malicious operations.
  - file: tor-browser.png
    status: skipped
    summary: "Skipping binary file: tor-browser.png"
  - file: tor-browser.svg
    status: skipped
    summary: "Skipping binary file: tor-browser.svg"
  - file: tor-browser.in
    status: safe
    summary: Legitimate launcher with opt‑in update function; no malice.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD, no malicious behavior detected.
---

Materializing tor-browser-bin from local mirror...
Materialized tor-browser-bin
Analyzing tor-browser-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD defines a function `_dist_checksum` that fetches checksums from the official Tor Project archive using `curl` during top-level command substitutions (`sha256sums_i686` and `sha256sums_x86_64`). This is standard packaging practice for this package — it contacts the project's own servers to verify the integrity of the downloaded archive later. No malicious commands, obfuscated code, or unexpected network destinations are present. All other top-level code consists solely of variable and function definitions, which pose no risk during `makepkg --printsrcinfo`.
</details>
<evidence></evidence>
<summary>Top-level code only contacts official Tor archive.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Top-level code only contacts official Tor archive.
Note: 2 remote source(s) have no checksum (sha256sums=SKIP), so the bytes are not verifiable: https://archive.torproject.org/tor-package-archive/torbrowser/15.0.26/tor-browser-linux-i686-15.0.26.tar.xz.asc, https://archive.torproject.org/tor-package-archive/torbrowser/15.0.26/tor-browser-linux-x86_64-15.0.26.tar.xz.asc
Reviewing the 8 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/8] Reviewing .SRCINFO...
[0/8] Reviewing .SRCINFO, .gitignore...
[0/8] Reviewing .SRCINFO, .gitignore, PKGBUILD...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.SRCINFO` metadata file for the `tor-browser-bin` AUR package. It declares package metadata, dependencies, upstream sources, and cryptographic verification hashes. All sources point to the official Tor Project archive (archive.torproject.org), which is the expected upstream for this package. The `SKIP` checksum entries are for detached PGP signature files (.asc) and are standard AUR practice—they are not evidence of malice. There is no executable code, no obfuscation, no network requests to unexpected hosts, and no behavior that deviates from normal packaging conventions.
</details>
<evidence></evidence>
<summary>Standard AUR metadata; no security issues found.</summary>
</security_assessment>

[0/8] Reviewing .SRCINFO, .gitignore, PKGBUILD, tor-browser.desktop.in...
[1/8] Reviewing .gitignore, PKGBUILD, tor-browser.desktop.in...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata; no security issues found.
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This `.gitignore` file is a standard configuration file for Git repositories, used to exclude build artifacts from version control. It lists patterns for directories (`pkg/`, `src/`), upstream source tarballs (`tor-browser-linux-*.tar.xz`, `tor-browser-linux-*.tar.xz.asc`), and compressed AUR packages (`tor-browser-*-*.pkg.tar*`). These are all normal and expected entries for an AUR-based package repository. No executable code, network operations, obfuscation, or other suspicious content exists in this file. It is a straightforward plain-text ignore list with no security implications.
</details>
<evidence></evidence>
<summary>Standard .gitignore with no security concerns.</summary>
</security_assessment>

[1/8] Reviewing .gitignore, PKGBUILD, tor-browser.desktop.in, tor-browser.in...
[2/8] Reviewing PKGBUILD, tor-browser.desktop.in, tor-browser.in...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore with no security concerns.
LLM auditresponse for tor-browser.desktop.in:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard desktop entry template (`.desktop.in`) used by the Tor Browser package. It defines the application metadata such as name, icon, MIME types, and the command to run (`tor-browser %u`). There are no network requests, no obfuscated code, no dangerous commands (eval, curl, wget, base64, etc.), no file operations outside of the expected launcher, and no indication of injected malicious behavior. It is a normal packaging file with no supply-chain attack indicators.
</details>
<evidence>
</evidence>
<summary>Standard desktop entry file; no security issues.</summary>
</security_assessment>

[3/8] Reviewing PKGBUILD, tor-browser.in...
+ Reviewed tor-browser.desktop.in. Status: SAFE -- Standard desktop entry file; no security issues.
[3/8] Reviewing PKGBUILD, tor-browser.in, tor-browser.install...
LLM auditresponse for tor-browser.install:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard Arch Linux package `.install` script that defines `post_install`, `post_upgrade`, and `post_remove` hooks. All three functions consist entirely of `echo` statements that print informational messages to the user. No commands are executed, no network requests are made, no file operations are performed outside of printing text, and there is no obfuscated or encoded content. The `post_remove` hook correctly prints a reminder for the user to manually remove their local copy of Tor Browser rather than automatically deleting it (which would be a destructive action running as root). The file conforms entirely to safe and standard packaging practices.
</details>
<evidence>
</evidence>
<summary>
Contains only user notifications, no malicious operations.
</summary>
</security_assessment>

[3/8] Reviewing PKGBUILD, tor-browser.in, tor-browser.install, tor-browser.png...
[4/8] Reviewing PKGBUILD, tor-browser.in, tor-browser.png...
+ Reviewed tor-browser.install. Status: SAFE -- Contains only user notifications, no malicious operations.
[4/8] Reviewing PKGBUILD, tor-browser.in, tor-browser.png, tor-browser.svg...
[5/8] Reviewing PKGBUILD, tor-browser.in, tor-browser.svg...
! Reviewed tor-browser.png. Status: SKIPPED -- Skipping binary file: tor-browser.png
[6/8] Reviewing PKGBUILD, tor-browser.in...
! Reviewed tor-browser.svg. Status: SKIPPED -- Skipping binary file: tor-browser.svg
LLM auditresponse for tor-browser.in:
<security_assessment>
<decision>SAFE</decision>
<details>
The script is a standard launcher for the Tor Browser AUR package. It provides options to launch the browser, refresh the local copy, erase the local copy, and optionally check for AUR updates via `--update`. The `--update` function downloads the official AUR snapshot tarball, extracts it, and runs `makepkg -si` if a newer version is found – this is an explicit, opt-in convenience feature that mirrors how AUR upgrades are normally performed. No obfuscation, hidden network destinations, data exfiltration, or backdoors are present. All operations are confined to the user's home directory or the package‑installed paths under `/opt`. The code is well‑structured and consistent with expected AUR packaging practices.
</details>
<evidence></evidence>
<summary>Legitimate launcher with opt‑in update function; no malice.</summary>
</security_assessment>

[7/8] Reviewing PKGBUILD...
+ Reviewed tor-browser.in. Status: SAFE -- Legitimate launcher with opt‑in update function; no malice.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a standard packaging file for tor-browser-bin. It downloads Tor Browser from the official archive.torproject.org over HTTPS and includes a PGP signing key (validpgpkeys) for signature verification. The dynamic checksum retrieval via curl from the same official source is consistent with the package’s integrity model and is not obfuscated or hidden. There are no occurrences of base64, eval, curl|bash, or any exfiltration or backdoor commands. The package() function copies the archive and installs icons, desktop files, and a wrapper script through standard substitution. No malicious or supply-chain attack patterns are present.  
</details>
<evidence></evidence>
<summary>Standard PKGBUILD, no malicious behavior detected.</summary>
</security_assessment>

[8/8] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD, no malicious behavior detected.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
(Skipped 2 files: tor-browser.png, tor-browser.svg)

API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 22,552
  Completion Tokens: 11,551
  Total Tokens: 34,103
  Total Cost: $0.004155
  Execution Time: 94.59 seconds

Final Status: SAFE


No issues found.


Audit Skips:

tor-browser.png: [SKIPPED] Skipping binary file: tor-browser.png

tor-browser.svg: [SKIPPED] Skipping binary file: tor-browser.svg
