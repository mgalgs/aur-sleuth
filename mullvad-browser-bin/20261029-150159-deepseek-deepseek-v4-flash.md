---
package: mullvad-browser-bin
pkgver: 16.0
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 54364
completion_tokens: 3566
total_tokens: 57930
cost: 0.005596136
execution_time: 49.72
files_reviewed: 6
files_skipped: 0
maintainer_files: 6
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 1
injection_attempts: 0
date: 2026-10-29T15:01:59Z
file_verdicts:
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD with no malicious indicators.
  - file: .hooks
    status: safe
    summary: Standard extraction helper, no malicious behavior.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata file, no malicious content.
  - file: mullvad-browser.changelog
    status: safe
    summary: Changelog file, no executable code.
  - file: mullvad-browser.desktop
    status: safe
    summary: Standard .desktop file with no malicious content.
  - file: mullvad-browser.sh
    status: safe
    summary: Simple wrapper script, no malicious code.
---

Materializing mullvad-browser-bin from local mirror...
Materialized mullvad-browser-bin
Analyzing mullvad-browser-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The global/top-level scope of this PKGBUILD contains only standard variable assignments (pkgname, pkgver, source, sha256sums, etc.) and a function definition (`package()`). There are no command substitutions, arithmetic expansions, eval statements, system commands, or file sourcing operations that would execute during `makepkg --printsrcinfo`. All potentially active code resides inside the `package()` function body, which does not execute during this metadata-printing step. The remote source URLs and SKIP checksums noted in the file are standard packaging conventions and do not execute anything at source time.
</details>
<evidence></evidence>
<summary>No dangerous code executed during source parsing.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous code executed during source parsing.
Note: 1 remote source(s) have no checksum (sha256sums=SKIP), so the bytes are not verifiable: https://dist.torproject.org/mullvadbrowser/16.0/mullvad-browser-linux-x86_64-16.0.tar.xz.asc
Reviewing the 6 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/6] Reviewing .SRCINFO...
[0/6] Reviewing .SRCINFO, .hooks...
[0/6] Reviewing .SRCINFO, .hooks, PKGBUILD...
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard AUR packaging practices for a prebuilt binary package. It downloads the Mullvad Browser release from the official Tor Project mirror (`dist.torproject.org`), verifies the GPG signature against the Tor Browser Developers key, and provides SHA-256 checksums for the tarball and auxiliary files. The `package()` function performs routine installation steps: copying the browser archive contents to `/opt/mullvad-browser/`, adjusting file permissions, creating configuration files (`distribution.ini`, `vendor.js`), and installing desktop files and icons. There is no obfuscated code, no unexpected network requests (all sources point to the project's own upstream), no exfiltration of local data, and no execution of attacker-controlled code. The use of `SKIP` for the `.asc` file is standard—the signature is validated by GPG, not by checksum. The file is a typical, well-maintained AUR package.

All operations are confined to the package's own installation paths (`$pkgdir/opt/mullvad-browser/`, `/usr/bin`, `/usr/share`). The `find` command with `-execdir chmod` is a normal permission-fix step and not suspicious. No backdoors, credential theft, or system tampering are present.
</details>
<evidence></evidence>
<summary>Standard AUR PKGBUILD with no malicious indicators.</summary>
</security_assessment>

[1/6] Reviewing .SRCINFO, .hooks...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD with no malicious indicators.
[1/6] Reviewing .SRCINFO, .hooks, mullvad-browser.changelog...
LLM auditresponse for .hooks:
<security_assessment>
<decision>SAFE</decision>
<details>
The script sources the PKGBUILD to obtain the package version, then extracts only the `ChangeLog.txt` file from the upstream tarball and renames it. This is a routine packaging helper that prepares a changelog for the package. No network requests, obfuscated code, or dangerous operations outside the expected workflow are present.
</details>
<evidence></evidence>
<summary>Standard extraction helper, no malicious behavior.</summary>
</security_assessment>

[2/6] Reviewing .SRCINFO, mullvad-browser.changelog...
+ Reviewed .hooks. Status: SAFE -- Standard extraction helper, no malicious behavior.
[2/6] Reviewing .SRCINFO, mullvad-browser.changelog, mullvad-browser.desktop...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The `.SRCINFO` file is a metadata file that describes the package sources, checksums, dependencies, and other packaging information for the AUR. It does not contain any executable code or instructions. All source URLs point to the official Tor Project distribution server (`dist.torproject.org`), which is the expected upstream for Mullvad Browser. The PGP key for verification is provided, and the checksums are present (with `SKIP` only for the signature file, which is standard practice). There are no suspicious network requests, obfuscated values, or dangerous operations. The file's sole purpose is to document package metadata for the AUR build system.
</details>
<evidence></evidence>
<summary>Standard AUR metadata file, no malicious content.</summary>
</security_assessment>

[3/6] Reviewing mullvad-browser.changelog, mullvad-browser.desktop...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata file, no malicious content.
[3/6] Reviewing mullvad-browser.changelog, mullvad-browser.desktop, mullvad-browser.sh...
LLM auditresponse for mullvad-browser.changelog:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a changelog documenting version history and bug fix descriptions for the Mullvad Browser project. It contains no executable code, no obfuscation, no network requests, no file operations, and no system modifications. There are no suspicious patterns such as curl, wget, eval, base64, or exec in the visible content. The omitted portion is described as standard boilerplate and does not raise concerns. The file is purely documentation and poses no security risk.
</details>
<evidence></evidence>
<summary>Changelog file, no executable code.</summary>
</security_assessment>

[4/6] Reviewing mullvad-browser.desktop, mullvad-browser.sh...
+ Reviewed mullvad-browser.changelog. Status: SAFE -- Changelog file, no executable code.
LLM auditresponse for mullvad-browser.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.desktop` file for the Mullvad Browser application. It defines a desktop launcher with three actions: open a new window, open a private window, and open the profile manager. All `Exec` entries call the `mullvad-browser` binary with expected command-line flags (`--new-window`, `--private-window`, `--ProfileManager`). There is no code, no execution of remote resources, no obfuscation, and no system manipulation beyond what a normal desktop entry does. The extensive localization strings are standard upstream content from the Firefox/Mullvad Browser project. No evidence of supply-chain compromise or malicious behavior exists in this file.
</details>
<evidence></evidence>
<summary>Standard .desktop file with no malicious content.</summary>
</security_assessment>

LLM auditresponse for mullvad-browser.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This script is a standard wrapper used by the Mullvad Browser package. It reads optional user flags from a configuration file (`$XDG_CONFIG_HOME/mullvad-browser-flags.conf`), sets environment variables for fonts and disables Nvidia shader cache, and then executes the main browser binary (`/opt/mullvad-browser/mullvadbrowser`). There is no network access, no obfuscated code, no file exfiltration, and no system modifications beyond normal application setup. The script adheres to expected packaging practice for a browser launcher.
</details>
<evidence></evidence>
<summary>Simple wrapper script, no malicious code.</summary>
</security_assessment>

[5/6] Reviewing mullvad-browser.sh...
+ Reviewed mullvad-browser.desktop. Status: SAFE -- Standard .desktop file with no malicious content.
[6/6] Reviewing ...
+ Reviewed mullvad-browser.sh. Status: SAFE -- Simple wrapper script, no malicious code.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 54,364
  Completion Tokens: 3,566
  Total Tokens: 57,930
  Total Cost: $0.005596
  Execution Time: 49.72 seconds

Final Status: SAFE


No issues found.
