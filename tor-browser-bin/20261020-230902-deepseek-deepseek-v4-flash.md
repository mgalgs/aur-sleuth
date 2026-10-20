---
package: tor-browser-bin
pkgver: 15.0.25
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 22640
completion_tokens: 15131
total_tokens: 37771
cost: 0.004814082
execution_time: 158.0
files_reviewed: 6
files_skipped: 2
maintainer_files: 8
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 2
injection_attempts: 0
date: 2026-10-20T23:09:01Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard .gitignore, no code, completely safe.
  - file: tor-browser.desktop.in
    status: safe
    summary: Standard desktop entry template, no security issues.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata, no malicious content.
  - file: tor-browser.install
    status: safe
    summary: File is a harmless install hook script.
  - file: tor-browser.png
    status: skipped
    summary: "Skipping binary file: tor-browser.png"
  - file: tor-browser.svg
    status: skipped
    summary: "Skipping binary file: tor-browser.svg"
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD, no injection or attack patterns.
  - file: tor-browser.in
    status: safe
    summary: Legitimate AUR wrapper, no malicious code
---

Materializing tor-browser-bin from local mirror...
Materialized tor-browser-bin
Analyzing tor-browser-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The global scope of this PKGBUILD contains a command substitution that triggers the `_dist_checksum` function, which performs a `curl` request. This happens when the PKGBUILD is sourced (e.g., during `makepkg --printsrcinfo`).

The target URL is the official Tor Project archive (`https://archive.torproject.org/...`), which is the package's own declared upstream. The function fetches a signed (or unsigned) checksum manifest and pipes it through `awk` to extract the specific hash for the current architecture and version. This hash is stored in the `sha256sums_i686`/`sha256sums_x86_64` arrays.

The downloaded content is processed by `awk` to extract a single field (the hash) and is **never executed**. The primary security anchor is the GPG signature verification (`.asc` file) against the pinned `validpgpkeys`, which occurs *after* the actual tarball download. Running `curl` against the project's own archive to fetch a checksum is a routine packaging practice, not a supply-chain attack. No other code in the global scope performs obfuscated commands, exfiltration, or unexpected file operations.
</details>
<evidence>
</evidence>
<summary>No malicious code executed in global scope.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious code executed in global scope.
Note: 2 remote source(s) have no checksum (sha256sums=SKIP), so the bytes are not verifiable: https://archive.torproject.org/tor-package-archive/torbrowser/15.0.25/tor-browser-linux-i686-15.0.25.tar.xz.asc, https://archive.torproject.org/tor-package-archive/torbrowser/15.0.25/tor-browser-linux-x86_64-15.0.25.tar.xz.asc
Reviewing the 8 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/8] Reviewing .SRCINFO...
[0/8] Reviewing .SRCINFO, PKGBUILD...
[0/8] Reviewing .SRCINFO, PKGBUILD, .gitignore...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard `.gitignore` file for use with Git version control. It lists patterns for files and directories that should not be tracked in the Git repository, including the `pkg/` and `src/` build directories, the upstream source tarballs (`tor-browser-linux-*.tar.xz`), and the resulting Arch Linux package file (`tor-browser-*-*.pkg.tar*`). There is no executable code or logic, no network requests, and no system modification commands present in this file. It is completely inert and follows standard packaging practices for ignoring build artifacts.
</details>
<evidence></evidence>
<summary>
Standard .gitignore, no code, completely safe.
</summary>
</security_assessment>

[1/8] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore, no code, completely safe.
[1/8] Reviewing .SRCINFO, PKGBUILD, tor-browser.desktop.in...
LLM auditresponse for tor-browser.desktop.in:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard FreeDesktop.org `.desktop.in` template for the Tor Browser application. It contains only metadata (Name, Type, Categories, MimeType, Comment) and the `Exec=tor-browser %u` line, which launches the upstream application. There are no scripts, network requests, encoded payloads, or any other executable logic. The file is entirely static markup used by the packaging system to generate a `.desktop` file. No security issues are present.
</details>
<evidence></evidence>
<summary>Standard desktop entry template, no security issues.</summary>
</security_assessment>

[1/8] Reviewing .SRCINFO, PKGBUILD, tor-browser.desktop.in, tor-browser.in...
[2/8] Reviewing .SRCINFO, PKGBUILD, tor-browser.in...
+ Reviewed tor-browser.desktop.in. Status: SAFE -- Standard desktop entry template, no security issues.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard AUR `.SRCINFO` metadata file. It is generated by `makepkg --printsrcinfo` and contains only declarative key-value pairs describing package metadata, dependencies, and upstream source URLs. There is no executable code, no scripting (bash, python, etc.), no obfuscated payloads, and no instructions that could exfiltrate data or modify the system.

All upstream source URLs point to the official Tor Project archive (`https://archive.torproject.org/`). The file specifies a PGP key (`validpgpkeys`) for verifying the authenticity of the downloaded tarballs, which is standard practice for packages distributing pre-built binaries. The use of `SKIP` for the checksums of the `.asc` signature files is normal, as `makepkg` can validate the tarball against the detached signature directly. No behavior deviates from standard, expected AUR packaging practices for a binary redistributed package.
</details>
<evidence>
</evidence>
<summary>Standard AUR metadata, no malicious content.</summary>
</security_assessment>

[2/8] Reviewing .SRCINFO, PKGBUILD, tor-browser.in, tor-browser.install...
[3/8] Reviewing PKGBUILD, tor-browser.in, tor-browser.install...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata, no malicious content.
LLM auditresponse for tor-browser.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `tor-browser.install` only contains shell function definitions (`post_install`, `post_upgrade`, `post_remove`) that print informational messages to the user. No dangerous commands (e.g., `curl`, `wget`, `eval`, `base64`), no file operations, no network requests, and no obfuscated code are present. The content is consistent with standard AUR `.install` scripts that provide user guidance on how to use the installed software. No evidence of a supply-chain attack or malicious behavior is found.
</details>
<evidence></evidence>
<summary>File is a harmless install hook script.</summary>
</security_assessment>

[3/8] Reviewing PKGBUILD, tor-browser.in, tor-browser.install, tor-browser.png...
[4/8] Reviewing PKGBUILD, tor-browser.in, tor-browser.png...
+ Reviewed tor-browser.install. Status: SAFE -- File is a harmless install hook script.
[5/8] Reviewing PKGBUILD, tor-browser.in...
! Reviewed tor-browser.png. Status: SKIPPED -- Skipping binary file: tor-browser.png
[5/8] Reviewing PKGBUILD, tor-browser.in, tor-browser.svg...
[6/8] Reviewing PKGBUILD, tor-browser.in...
! Reviewed tor-browser.svg. Status: SKIPPED -- Skipping binary file: tor-browser.svg
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a standard binary repackaging of Tor Browser for Arch Linux. It downloads the official tarball and its PGP signature from the Tor Project&#8217;s archive (`archive.torproject.org`), fetches the corresponding SHA-256 checksum from the same official source via a `curl` call, and verifies the PGP signature via the hardcoded signing key. The `package()` function performs routine operations: installing wrapper scripts, icons, a desktop file, and copying the tarball into `/opt/tor-browser/`.

No obfuscation, base64 encoded payloads, `eval` invocations, or downloads to unexpected hosts are present. The dynamic retrieval of `sha256sums` from the official archive is a known packaging strategy for this package and relies on the upstream infrastructure that the package is intended to use. All behavior is consistent with transparent, trustworthy AUR packaging.
</details>
<evidence>
</evidence>
<summary>Standard AUR PKGBUILD, no injection or attack patterns.</summary>
</security_assessment>

[7/8] Reviewing tor-browser.in...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD, no injection or attack patterns.
LLM auditresponse for tor-browser.in:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a shell script template (`.in` file) that is processed by the PKGBUILD to produce the `tor-browser` wrapper executable. It contains standard application helper functions: displaying notifications, comparing versions, refreshing a local copy of the Tor Browser from a system‑installed tarball, and an optional self‑update mechanism that fetches the latest PKGBUILD from the AUR and runs `makepkg -si`.

The self‑update feature (`_aur_update_`) downloads the AUR snapshot tarball from the official AUR URL and executes the retrieved PKGBUILD. While this introduces a trust dependency on the AUR repository and the downloaded code is not cryptographically verified, it is a design choice intended to automate the update process for the user. The behavior is not hidden, obfuscated, or unexpected given the package’s purpose. No data is exfiltrated, no code is fetched from unrelated hosts, and no dangerous constructs (e.g., `eval`, base‑64 decoding, backtick injection) are present. The removal of user‑data directories (`--erase`, `rm -rf` on `_TB_HOME_DIR_`) is an explicit user‑requested action.

All operations are consistent with the stated functionality of a convenience wrapper for Tor Browser. No genuinely malicious behavior—such as exfiltration, backdoors, or execution of attacker‑controlled payloads—is present.
</details>
<evidence></evidence>
<summary>Legitimate AUR wrapper, no malicious code</summary>
</security_assessment>

[8/8] Reviewing ...
+ Reviewed tor-browser.in. Status: SAFE -- Legitimate AUR wrapper, no malicious code
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
(Skipped 2 files: tor-browser.png, tor-browser.svg)

API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 22,640
  Completion Tokens: 15,131
  Total Tokens: 37,771
  Total Cost: $0.004814
  Execution Time: 158.00 seconds

Final Status: SAFE


No issues found.


Audit Skips:

tor-browser.png: [SKIPPED] Skipping binary file: tor-browser.png

tor-browser.svg: [SKIPPED] Skipping binary file: tor-browser.svg
