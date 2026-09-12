---
package: microsoft-edge-stable-bin
pkgver: 152.0.4191.66
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 171a316e053e9c4b28731ccb1aa63b1168550d3a
prompt_tokens: 17541
completion_tokens: 2669
total_tokens: 20210
cost: 0.00195066354
execution_time: 31.23
files_reviewed: 6
files_skipped: 1
maintainer_files: 7
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-05T11:03:26Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Benign .gitignore file with no malicious content.
  - file: Microsoft Standard Application License Terms - Standalone (free) Use Terms.pdf
    status: skipped
    summary: "Skipping binary file: Microsoft Standard Application License Terms - Standalone (free) Use Terms.pdf"
  - file: .nvchecker.toml
    status: safe
    summary: Standard nvchecker config for upstream version tracking.
  - file: PKGBUILD
    status: safe
    summary: Standard Microsoft Edge AUR package with pinned checksums; no malicious behavior found.
  - file: .SRCINFO
    status: safe
    summary: Standard .SRCINFO metadata file with no security issues.
  - file: microsoft-edge-stable.install
    status: safe
    summary: No security issues; standard install notifications.
  - file: microsoft-edge-stable.sh
    status: safe
    summary: Simple Edge launcher reading user flags; no malicious behavior found.
---

Materializing microsoft-edge-stable-bin from local mirror...
Materialized microsoft-edge-stable-bin
Analyzing microsoft-edge-stable-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD only contains standard variable definitions (pkgname, pkgver, source, checksums, etc.) and a package() function definition. No top-level code executes commands or performs any action when sourced. The source URLs point to the official Microsoft repository. There is no obfuscated code, command substitutions, or other mechanisms that would execute during `makepkg --printsrcinfo`. Therefore, running this command is safe.
</details>
<evidence></evidence>
<summary>No dangerous global code in PKGBUILD.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous global code in PKGBUILD.
Reviewing the 7 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/7] Reviewing .SRCINFO...
[0/7] Reviewing .SRCINFO, .gitignore...
[0/7] Reviewing .SRCINFO, .gitignore, .nvchecker.toml...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
The `.gitignore` file contains only standard ignore patterns for build artifacts (log files, package archives). There is no executable code, no network activity, no obfuscation, and no deviation from normal packaging practices. No security issues are present.</details>
<evidence></evidence>
<summary>Benign .gitignore file with no malicious content.</summary>
</security_assessment>

[0/7] Reviewing .SRCINFO, .gitignore, .nvchecker.toml, Microsoft Standard Application License Terms - Standalone (free) Use Terms.pdf...
[1/7] Reviewing .SRCINFO, .nvchecker.toml, Microsoft Standard Application License Terms - Standalone (free) Use Terms.pdf...
+ Reviewed .gitignore. Status: SAFE -- Benign .gitignore file with no malicious content.
[2/7] Reviewing .SRCINFO, .nvchecker.toml...
! Reviewed Microsoft Standard Application License Terms - Standalone (free) Use Terms.pdf. Status: SKIPPED -- Skipping binary file: Microsoft Standard Application License Terms - Standalone (free) Use Terms.pdf
[2/7] Reviewing .SRCINFO, .nvchecker.toml, PKGBUILD...
LLM auditresponse for .nvchecker.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a configuration for nvchecker, a tool used to monitor upstream version updates. It defines how to fetch the latest version of `microsoft-edge-stable-bin` by parsing the official Microsoft repository's Packages file with a regex. The URL points to packages.microsoft.com, which is the legitimate upstream source for Microsoft Edge. There is no suspicious code, network request to an unexpected host, obfuscation, or any other malicious behavior. The file is entirely benign and follows standard AUR package version checking practices.
</details>
<evidence>
</evidence>
<summary>Standard nvchecker config for upstream version tracking.</summary>
</security_assessment>

[2/7] Reviewing .SRCINFO, .nvchecker.toml, PKGBUILD, microsoft-edge-stable.install...
[3/7] Reviewing .SRCINFO, PKGBUILD, microsoft-edge-stable.install...
+ Reviewed .nvchecker.toml. Status: SAFE -- Standard nvchecker config for upstream version tracking.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard packaging practices for a prebuilt binary package. It downloads the Microsoft Edge stable `.deb` package from Microsoft&apos;s official repository (`packages.microsoft.com`) with pinned SHA-256 checksums, which is the expected and legitimate source for this software. The `package()` function extracts the package contents, resizes icon images with ImageMagick, installs a launcher script and license file, and cleans up temporary logo files. There is no obfuscated code, no unexpected network access at build time, no execution of downloaded scripts, and no modification of files outside the package&apos;s own installation paths.

The `chmod 4755` on `msedge-sandbox` is the standard setuid sandbox mechanism used by Chromium-based browsers and is expected upstream behavior, not evidence of a supply-chain attack. The use of `bsdtar`, `install`, `magick`, and `rm` is consistent with ordinary AUR packaging. No genuinely malicious or suspicious behavior was found.
</details>
<evidence>
</evidence>
<summary>
Standard Microsoft Edge AUR package with pinned checksums; no malicious behavior found.
</summary>
</security_assessment>

[3/7] Reviewing .SRCINFO, PKGBUILD, microsoft-edge-stable.install, microsoft-edge-stable.sh...
[4/7] Reviewing .SRCINFO, microsoft-edge-stable.install, microsoft-edge-stable.sh...
+ Reviewed PKGBUILD. Status: SAFE -- Standard Microsoft Edge AUR package with pinned checksums; no malicious behavior found.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard .SRCINFO metadata file for the AUR package microsoft-edge-stable-bin. It lists upstream sources from the official Microsoft repository, a helper shell script, and a license PDF, each with a pinned sha256sum. No executable code, obfuscation, network requests, or system modifications are present in this file itself. The sources and dependencies are appropriate for the package. The SKIP checksum issue is not present; all sources have valid sha256sums. No indication of supply chain attack.
</details>
<evidence></evidence>
<summary>Standard .SRCINFO metadata file with no security issues.</summary>
</security_assessment>

[5/7] Reviewing microsoft-edge-stable.install, microsoft-edge-stable.sh...
+ Reviewed .SRCINFO. Status: SAFE -- Standard .SRCINFO metadata file with no security issues.
LLM auditresponse for microsoft-edge-stable.install:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard Arch Linux package install script (`.install`). It defines helper functions for colored output and contains a `post_install()` function that prints informational notes to the user about configuration file location and the launcher command name. The `post_upgrade()` function simply calls `post_install()`. There are no network requests, file manipulations, code execution, data exfiltration, or any other forms of malicious or suspicious behavior. The script performs only benign user-facing notifications.
</details>
<evidence>
</evidence>
<summary>No security issues; standard install notifications.</summary>
</security_assessment>

[6/7] Reviewing microsoft-edge-stable.sh...
+ Reviewed microsoft-edge-stable.install. Status: SAFE -- No security issues; standard install notifications.
LLM auditresponse for microsoft-edge-stable.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a simple launcher script for Microsoft Edge stable. It sets a default for `XDG_CONFIG_HOME`, optionally reads a user-owned flags configuration file, and then `exec`s the Edge binary with those flags plus any command-line arguments. There are no network downloads, no encoded or obfuscated content, no writes to system locations, and no execution of attacker-controlled external code. The configuration file is read from the user's own `~/.config` directory, which is standard behavior for such wrapper scripts.

The unquoted `$EDGE_USER_FLAGS` intentionally relies on word splitting to pass multiple flags, which could in theory expand glob characters from the config file, but this is a minor robustness concern rather than evidence of malice. The script performs no actions outside the scope of launching the installed browser.
</details>
<evidence>
</evidence>
<summary>
Simple Edge launcher reading user flags; no malicious behavior found.
</summary>
</security_assessment>

[7/7] Reviewing ...
+ Reviewed microsoft-edge-stable.sh. Status: SAFE -- Simple Edge launcher reading user flags; no malicious behavior found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
(Skipped 1 file: Microsoft Standard Application License Terms - Standalone (free) Use Terms.pdf)

API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 17,541
  Completion Tokens: 2,669
  Total Tokens: 20,210
  Total Cost: $0.001951
  Execution Time: 31.23 seconds

Final Status: SAFE


No issues found.


Audit Skips:

Microsoft Standard Application License Terms - Standalone (free) Use Terms.pdf: [SKIPPED] Skipping binary file: Microsoft Standard Application License Terms - Standalone (free) Use Terms.pdf
