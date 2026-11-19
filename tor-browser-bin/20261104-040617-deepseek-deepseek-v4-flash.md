---
package: tor-browser-bin
pkgver: 16.0
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 22631
completion_tokens: 7145
total_tokens: 29776
cost: 0.003359811
execution_time: 46.08
files_reviewed: 6
files_skipped: 2
maintainer_files: 8
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 2
injection_attempts: 0
date: 2026-11-04T04:06:17Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata from official Tor Project sources; no malicious behavior found.
  - file: .gitignore
    status: safe
    summary: Benign .gitignore file; no malicious or dangerous content detected.
  - file: tor-browser.desktop.in
    status: safe
    summary: Standard desktop entry file; no malicious content or suspicious behavior found.
  - file: tor-browser.install
    status: safe
    summary: Benign install scriptlet with informational echo messages only; no security issues found.
  - file: tor-browser.png
    status: skipped
    summary: "Skipping binary file: tor-browser.png"
  - file: tor-browser.svg
    status: skipped
    summary: "Skipping binary file: tor-browser.svg"
  - file: PKGBUILD
    status: safe
    summary: No malicious behavior; standard Tor Browser packaging with upstream checksum fetch.
  - file: tor-browser.in
    status: safe
    summary: "Safe: AUR launcher/updater confined to package paths, no malicious behavior."
---

Materializing tor-browser-bin from local mirror...
Materialized tor-browser-bin
Analyzing tor-browser-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
Running `makepkg --printsrcinfo` sources the PKGBUILD and executes only top-level code. The top-level code defines normal variables, source arrays, checksum arrays, and helper functions. No `eval`, `base64`, obfuscated strings, or payload execution is present.

The only notable top-level side effect is that the `sha256sums_x86_64` and `sha256sums_aarch64` assignments invoke the `_dist_checksum()` function, which performs `curl` requests to `https://archive.torproject.org/tor-package-archive/torbrowser/...`. This is a network request at parse time, but it contacts the package's official upstream over HTTPS and only retrieves checksum text for an `awk` filter. It does not download or execute code, and it does not exfiltrate local data. This is consistent with the package's own distribution workflow rather than malicious behavior.

Code inside `package()` and other functions is out of scope for this gate and does not run during `--printsrcinfo`. No genuine malicious behavior is present in the executed top-level scope.
</details>
<evidence>
</evidence>
<summary>
Top-level scope only fetches official checksums; no malicious code executed during printsrcinfo.
</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Top-level scope only fetches official checksums; no malicious code executed during printsrcinfo.
Note: 2 remote source(s) have no checksum (sha256sums=SKIP), so the bytes are not verifiable: https://archive.torproject.org/tor-package-archive/torbrowser/16.0/tor-browser-linux-x86_64-16.0.tar.xz.asc, https://archive.torproject.org/tor-package-archive/torbrowser/16.0/tor-browser-linux-aarch64-16.0.tar.xz.asc
Reviewing the 8 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/8] Reviewing .SRCINFO...
[0/8] Reviewing .SRCINFO, .gitignore...
[0/8] Reviewing .SRCINFO, .gitignore, PKGBUILD...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This `.SRCINFO` file is standard AUR package metadata for `tor-browser-bin`. It declares official upstream sources from `archive.torproject.org`, pinned version `16.0`, valid PGP signing keys, and SHA-256 checksums for the main tarballs. The `SKIP` checksums apply only to the detached `.asc` signature files, which is a common and acceptable practice since the main archives are checksum-verified and the signature files are auxiliary. There are no suspicious network destinations, no encoded/obfuscated commands, no unexpected file operations, and no deviation from normal packaging practices.
</details>
<evidence>
</evidence>
<summary>
Standard AUR metadata from official Tor Project sources; no malicious behavior found.</summary>
</security_assessment>

[1/8] Reviewing .gitignore, PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata from official Tor Project sources; no malicious behavior found.
[1/8] Reviewing .gitignore, PKGBUILD, tor-browser.desktop.in...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.gitignore` file for the tor-browser-bin AUR package. It excludes build artifacts (`pkg/`, `src/`), downloaded source archives (`tor-browser-linux-*.tar.xz`, `tor-browser-linux-*.tar.xz.asc`), and packaged output files (`tor-browser-*-*.pkg.tar*`). There are no commands, network operations, obfuscated code, or references to external hosts. The file only defines ignore patterns for Git and contains no security-relevant behavior.
</details>
<evidence>
</evidence>
<summary>
Benign .gitignore file; no malicious or dangerous content detected.
</summary>
</security_assessment>

[1/8] Reviewing .gitignore, PKGBUILD, tor-browser.desktop.in, tor-browser.in...
[2/8] Reviewing PKGBUILD, tor-browser.desktop.in, tor-browser.in...
+ Reviewed .gitignore. Status: SAFE -- Benign .gitignore file; no malicious or dangerous content detected.
LLM auditresponse for tor-browser.desktop.in:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard freedesktop.org desktop entry file for the Tor Browser package. It defines the application name, icon, categories, MIME types, and execution command. The `Exec` line simply launches `tor-browser %u`, which is the package's own browser binary. There are no network requests, encoded payloads, dangerous shell constructs, or file operations. No malicious or suspicious content is present.
</details>
<evidence>
</evidence>
<summary>
Standard desktop entry file; no malicious content or suspicious behavior found.</summary>
</security_assessment>

[2/8] Reviewing PKGBUILD, tor-browser.desktop.in, tor-browser.in, tor-browser.install...
[3/8] Reviewing PKGBUILD, tor-browser.in, tor-browser.install...
+ Reviewed tor-browser.desktop.in. Status: SAFE -- Standard desktop entry file; no malicious content or suspicious behavior found.
LLM auditresponse for tor-browser.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is an Arch Linux package install scriptlet for the `tor-browser-bin` package. It contains only `post_install`, `post_upgrade`, and `post_remove` functions that print informational messages to the user. There are no commands for downloading, executing, modifying system files, or exfiltrating data. The `rm -rf` mentioned is only printed as user guidance for manually removing the browser directory under `~/.local/opt/` and is not executed by the scriptlet itself. This is consistent with standard packaging practice.
</details>
<evidence>
</evidence>
<summary>
Benign install scriptlet with informational echo messages only; no security issues found.
</summary>
</security_assessment>

[4/8] Reviewing PKGBUILD, tor-browser.in...
+ Reviewed tor-browser.install. Status: SAFE -- Benign install scriptlet with informational echo messages only; no security issues found.
[4/8] Reviewing PKGBUILD, tor-browser.in, tor-browser.png...
[4/8] Reviewing PKGBUILD, tor-browser.in, tor-browser.png, tor-browser.svg...
[5/8] Reviewing PKGBUILD, tor-browser.in, tor-browser.svg...
! Reviewed tor-browser.png. Status: SKIPPED -- Skipping binary file: tor-browser.png
[6/8] Reviewing PKGBUILD, tor-browser.in...
! Reviewed tor-browser.svg. Status: SKIPPED -- Skipping binary file: tor-browser.svg
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard AUR packaging practices for a prebuilt binary package. It downloads the official Tor Browser tarball and its detached signature from archive.torproject.org, the project's own upstream host, and installs the tarball plus generated launcher and desktop files into the package directory. PGP verification is configured through `validpgpkeys`, and the `.asc` signature source is included.

The `_dist_checksum` function uses `curl` to fetch the upstream `sha256sums` file from the same official archive and extracts the expected checksum. This is a dynamic checksum rather than a locally pinned one, but it is fetched from the package's legitimate upstream and is not used to download or execute code. The `SKIP` checksum on the `.asc` file and the dynamic checksum approach are hygiene/reproducibility considerations, not evidence of malice.

No obfuscated code, suspicious network destinations, data exfiltration, backdoors, or unexpected execution of fetched content is present. The file is consistent with the package's stated purpose and does not show signs of an injected supply-chain attack.
</details>
<evidence>
</evidence>
<summary>
No malicious behavior; standard Tor Browser packaging with upstream checksum fetch.</summary>
</security_assessment>

[7/8] Reviewing tor-browser.in...
+ Reviewed PKGBUILD. Status: SAFE -- No malicious behavior; standard Tor Browser packaging with upstream checksum fetch.
LLM auditresponse for tor-browser.in:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a launcher/self-refresh wrapper for the tor-browser-bin AUR package. Its operations are confined to package-owned directories such as `~/.local/opt/&lt;pkg&gt;`, `~/.cache/tor-browser-tmpdata`, and temporary directories. It extracts the locally installed upstream archive, preserves Tor Browser profile data across refreshes, launches the browser, and optionally checks the official AUR cgit snapshot when the user explicitly passes `--update`.

The `_aur_update_` function downloads the package's own AUR snapshot over HTTPS and runs `makepkg -si` when a newer version is found. This is a standard AUR self-update pattern: it is transparent, user-invoked, and fetches from the package's expected upstream host rather than an unrelated or malicious endpoint. There is no obfuscation, no base64/eval tricks, no data exfiltration, and no tampering with system files outside the package's scope. The `rm -rf` targets are limited to the package installation directory, temporary directories, and directories explicitly selected by the user via `--dir`. No genuinely malicious behavior was found.
</details>
<evidence>
</evidence>
<summary>Safe: AUR launcher/updater confined to package paths, no malicious behavior.</summary>
</security_assessment>

[8/8] Reviewing ...
+ Reviewed tor-browser.in. Status: SAFE -- Safe: AUR launcher/updater confined to package paths, no malicious behavior.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
(Skipped 2 files: tor-browser.png, tor-browser.svg)

API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 22,631
  Completion Tokens: 7,145
  Total Tokens: 29,776
  Total Cost: $0.003360
  Execution Time: 46.08 seconds

Final Status: SAFE


No issues found.


Audit Skips:

tor-browser.png: [SKIPPED] Skipping binary file: tor-browser.png

tor-browser.svg: [SKIPPED] Skipping binary file: tor-browser.svg
