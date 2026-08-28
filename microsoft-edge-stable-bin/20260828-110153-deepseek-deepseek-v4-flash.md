---
package: microsoft-edge-stable-bin
pkgver: 152.0.4191.53
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 3e318911529c43138ec6bdba0bfcb56907607021
prompt_tokens: 17632
completion_tokens: 2666
total_tokens: 20298
cost: 0.002034748184
execution_time: 94.21
files_reviewed: 6
files_skipped: 1
maintainer_files: 7
source_fetch: ok
upstream_files: 7
upstream_named_files: 0
unpinned_sources: 0
date: 2026-08-28T11:01:53Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata for Microsoft Edge; official source, pinned checksums, no malicious behavior.
  - file: Microsoft Standard Application License Terms - Standalone (free) Use Terms.pdf
    status: skipped
    summary: "Skipping binary file: Microsoft Standard Application License Terms - Standalone (free) Use Terms.pdf"
  - file: .gitignore
    status: safe
    summary: Standard .gitignore file with no malicious content.
  - file: .nvchecker.toml
    status: safe
    summary: Standard nvchecker config for version tracking.
  - file: microsoft-edge-stable.install
    status: safe
    summary: Standard post-install script with harmless informational notes.
  - file: microsoft-edge-stable.sh
    status: safe
    summary: Standard launcher script with no malicious behavior.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD for official Microsoft Edge binary package.
---

Cloning https://aur.archlinux.org/microsoft-edge-stable-bin.git...
Cloned microsoft-edge-stable-bin
Analyzing microsoft-edge-stable-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The commands `makepkg --nobuild --nodeps --noprepare` and `makepkg --printsrcinfo` will only download the sources and source the PKGBUILD's global scope and `pkgver()` function. The PKGBUILD contains no `pkgver()` function, and the global scope consists solely of variable assignments and array definitions — no command substitutions, backticks, `eval`, or other executable expressions. The source array points to an official Microsoft repository for the .deb file and local files (microsoft-edge-stable.sh and PDF) that are part of the package source; fetching these is safe and standard. No malicious behavior (data exfiltration, download-and-execute, etc.) can occur during this narrow gate.
</details>
<evidence></evidence>
<summary>Safe: no malicious code executed at source fetch or parse stage.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Safe: no malicious code executed at source fetch or parse stage.
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Reviewing the 7 file(s) in the AUR repository. The 7 downloaded file(s) are upstream content, outside the threat model, and are not read.
Reviewing the AUR repository's files...
[0/7] Reviewing .SRCINFO...
[0/7] Reviewing .SRCINFO, .gitignore...
[0/7] Reviewing .SRCINFO, .gitignore, .nvchecker.toml...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This `.SRCINFO` file is standard AUR package metadata for `microsoft-edge-stable-bin`. It describes a prebuilt Debian package fetched from Microsoft's official package repository (`packages.microsoft.com`), a small launcher shell script, and a license PDF. All three sources have pinned SHA-256 checksums, which is good packaging hygiene.

There is no evidence of injected malicious code. No network downloads from unexpected hosts, no obfuscated commands, no use of `eval`, `curl`, `wget`, or encoded payloads. The dependencies and optdepends are normal runtime requirements for a browser package. The file performs no build-time or install-time operations itself; it only declares metadata.

The use of Microsoft's official download URL is consistent with the package's stated purpose. Even though the package installs a proprietary browser, that is an upstream product decision, not a supply-chain attack. No red flags were found.
</details>
<evidence>
</evidence>
<summary>
Standard AUR metadata for Microsoft Edge; official source, pinned checksums, no malicious behavior.</summary>
</security_assessment>

[0/7] Reviewing .SRCINFO, .gitignore, .nvchecker.toml, Microsoft Standard Application License Terms - Standalone (free) Use Terms.pdf...
[1/7] Reviewing .gitignore, .nvchecker.toml, Microsoft Standard Application License Terms - Standalone (free) Use Terms.pdf...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata for Microsoft Edge; official source, pinned checksums, no malicious behavior.
[1/7] Reviewing .gitignore, .nvchecker.toml, Microsoft Standard Application License Terms - Standalone (free) Use Terms.pdf, PKGBUILD...
[2/7] Reviewing .gitignore, .nvchecker.toml, PKGBUILD...
! Reviewed Microsoft Standard Application License Terms - Standalone (free) Use Terms.pdf. Status: SKIPPED -- Skipping binary file: Microsoft Standard Application License Terms - Standalone (free) Use Terms.pdf
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `.gitignore` contains only standard git ignore patterns for common build artifacts (logs, zst archives, deb and rpm packages). There is no executable code, no network requests, no obfuscation, and no system modifications. It is a harmless file commonly found in packaging repositories and presents no security threat.
</details>
<evidence></evidence>
<summary>Standard .gitignore file with no malicious content.</summary>
</security_assessment>

[2/7] Reviewing .gitignore, .nvchecker.toml, PKGBUILD, microsoft-edge-stable.install...
[3/7] Reviewing .nvchecker.toml, PKGBUILD, microsoft-edge-stable.install...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore file with no malicious content.
LLM auditresponse for .nvchecker.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `.nvchecker.toml` is a configuration file for the `nvchecker` tool, which is commonly used in AUR packages to automatically detect new upstream versions. It defines a Regex source that scrapes the official Microsoft Edge Stable repository's `Packages` metadata file to extract version numbers. The URL (`https://packages.microsoft.com/repos/edge/dists/stable/main/binary-amd64/Packages`) is the legitimate upstream source for Microsoft Edge Debian packages. The regex pattern is normal and serves only to parse version information. There is no evidence of malicious behavior such as obfuscated code, unexpected network destinations, or dangerous operations. This is a standard packaging helper script.
</details>
<evidence></evidence>
<summary>Standard nvchecker config for version tracking.</summary>
</security_assessment>

[3/7] Reviewing .nvchecker.toml, PKGBUILD, microsoft-edge-stable.install, microsoft-edge-stable.sh...
[4/7] Reviewing PKGBUILD, microsoft-edge-stable.install, microsoft-edge-stable.sh...
+ Reviewed .nvchecker.toml. Status: SAFE -- Standard nvchecker config for version tracking.
LLM auditresponse for microsoft-edge-stable.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard `.install` script used by Arch Linux packages. It defines colored output helpers (msg_blue, note) and then calls `post_install()` and `post_upgrade()` which only print informational messages to the user: where to put custom flags and the launcher command name. There are no network operations, no downloads, no execution of fetched code, no file modifications, no obfuscation, and no interaction with system configuration. The script performs exactly the expected packaging behavior for a binary package. No evidence of supply-chain attack or malicious intent.
</details>
<evidence></evidence>
<summary>Standard post-install script with harmless informational notes.</summary>
</security_assessment>

[5/7] Reviewing PKGBUILD, microsoft-edge-stable.sh...
+ Reviewed microsoft-edge-stable.install. Status: SAFE -- Standard post-install script with harmless informational notes.
LLM auditresponse for microsoft-edge-stable.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This shell script is a standard launcher for Microsoft Edge that reads user-specified flags from a configuration file in `~/.config/microsoft-edge-stable-flags.conf`. There are no downloads, no execution of external code beyond the legitimate Edge binary, no obfuscated commands, and no unexpected system modifications. The script only reads a local user-controlled file and passes its contents as command-line arguments—this is the intended purpose and does not represent a supply-chain attack. The use of `cat` and `exec` is normal for such launcher scripts.
</details>
<evidence>
</evidence>
<summary>Standard launcher script with no malicious behavior.</summary>
</security_assessment>

[6/7] Reviewing PKGBUILD...
+ Reviewed microsoft-edge-stable.sh. Status: SAFE -- Standard launcher script with no malicious behavior.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD downloads from Microsoft's official repository with pinned checksums. The package() function performs standard extraction, sets the SUID bit on the sandbox (expected for Chromium-based browsers), resizes icons, and installs necessary files. There is no obfuscated code, no unexpected network requests, no eval or base64 usage, and no file operations outside the package's own scope. All operations are normal for packaging a prebuilt binary browser.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD for official Microsoft Edge binary package.</summary>
</security_assessment>

[7/7] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD for official Microsoft Edge binary package.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
(Skipped 1 file: Microsoft Standard Application License Terms - Standalone (free) Use Terms.pdf)

API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 17,632
  Completion Tokens: 2,666
  Total Tokens: 20,298
  Total Cost: $0.002035
  Execution Time: 94.21 seconds

Final Status: SAFE


No issues found.


Audit Skips:

Microsoft Standard Application License Terms - Standalone (free) Use Terms.pdf: [SKIPPED] Skipping binary file: Microsoft Standard Application License Terms - Standalone (free) Use Terms.pdf
