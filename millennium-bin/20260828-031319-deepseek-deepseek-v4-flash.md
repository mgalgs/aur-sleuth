---
package: millennium-bin
pkgver: 3.5.0_beta.2
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 3e318911529c43138ec6bdba0bfcb56907607021
prompt_tokens: 11078
completion_tokens: 2024
total_tokens: 13102
cost: 0.001340254356
execution_time: 43.81
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: ok
upstream_files: 9
upstream_named_files: 6
unpinned_sources: 3
date: 2026-08-28T03:13:18Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata, no malicious content.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR binary package; no malicious behavior detected.
  - file: millennium-bin.install
    status: safe
    summary: Standard AUR install script for a Steam addon; no malicious activity.
---

Cloning https://aur.archlinux.org/millennium-bin.git...
Cloned millennium-bin
Analyzing millennium-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD only contains static variable assignments and source array entries pointing to the official upstream GitHub repository (`SteamClientHomebrew/Millennium`). No top-level command substitutions, dangerous functions, or code that executes during sourcing. The `pkgver()` function is entirely commented out. The `verify()` and `package()` functions are only called during later build stages, which are not executed by the requested commands. All sources are fetched from the project’s own releases and raw content — expected behavior. No obfuscated or suspicious code is present.
</details>
<evidence></evidence>
<summary>No dangerous top-level code; safe to fetch sources.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous top-level code; safe to fetch sources.
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Note: 3 remote source(s) have no checksum (sha256sums=SKIP), so the fetched bytes are not verifiable and can change without any AUR update: https://github.com/SteamClientHomebrew/Millennium/releases/download/v3.5.0-beta.2/millennium-v3.5.0-beta.2-linux-x86_64.tar.gz, https://github.com/SteamClientHomebrew/Millennium/releases/download/v3.5.0-beta.2/millennium-v3.5.0-beta.2-linux-x86_64.sha256, https://raw.githubusercontent.com/SteamClientHomebrew/Millennium/refs/heads/main/LICENSE.md
Note: the PKGBUILD names 6 file(s) in the downloaded sources (src/usr/lib/millennium/libmillennium_bootstrap_hhx64.so, src/usr/lib/millennium/libmillennium_bootstrap_x86.so, src/usr/lib/millennium/libmillennium_hhx64.so and 3 more); they are upstream content and were not reviewed.
Reviewing the 3 file(s) in the AUR repository. The 9 downloaded file(s) are upstream content, outside the threat model, and are not read.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, PKGBUILD...
[0/3] Reviewing .SRCINFO, PKGBUILD, millennium-bin.install...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This .SRCINFO file is standard AUR package metadata for the `millennium-bin` package. It defines sources from the official GitHub releases of the Millennium project and a license file from the same repository. All SHA-256 checksums are set to `SKIP`, which is a common practice for binary packages and does not inherently indicate malicious behavior. The file contains no obfuscated code, suspicious network destinations, unexpected system modifications, or instructions that deviate from normal packaging practices. The metadata is consistent with the package's stated purpose as an open-source modding framework for Steam. No evidence of a supply-chain attack is present in this file.
</details>
<evidence>
</evidence>
<summary>Standard AUR metadata, no malicious content.</summary>
</security_assessment>

[1/3] Reviewing PKGBUILD, millennium-bin.install...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata, no malicious content.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard AUR packaging practices for a binary package. It downloads the upstream release tarball and its SHA256 checksum file from the official GitHub repository, and a LICENSE.md from the same project's raw GitHub content. The `verify()` function uses the official checksum file to verify integrity. The `package()` function installs the prebuilt shared libraries from the tarball into `/usr/lib/millennium` and the license file into the appropriate directory. There is no obfuscated code, no unexpected network requests, no dangerous commands, no exfiltration, and no system modifications outside the package's own installation path. The SKIP checksums are a maintainer choice and, per the provided guidelines, do not constitute evidence of malice.
</details>
<evidence></evidence>
<summary>Standard AUR binary package; no malicious behavior detected.</summary>
</security_assessment>

[2/3] Reviewing millennium-bin.install...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR binary package; no malicious behavior detected.
LLM auditresponse for millennium-bin.install:
<security_assessment>
<decision>SAFE</decision>
<details>
This script is a standard `.install` file for an AUR package (millennium-bin) that integrates with Steam. It performs three expected maintenance tasks:

1. **Removes legacy patches** – If a backup of the Steam launcher exists or if `/usr/bin/steam` still contains a `LD_PRELOAD` injection, it restores the original Steam launcher. This is cleanup of previous Millennium versions, not a supply‑chain attack.

2. **Creates a symlink** – Links the Millennium bootstrap library (`/usr/lib/millennium/libmillennium_bootstrap_x86.so`) into the Steam runtime directory as `libXtst.so.6`. This is how Millennium hooks into Steam’s process space; it is the declared purpose of the package.

3. **Enables remote debugging** – Touches a file under `~/.steam/steam/` to enable CEF remote debugging. This is an upstream Millennium feature.

All file operations are confined to Steam‑related paths (`/usr/bin/steam`, `~/.local/share/Steam/`, `~/.steam/steam/`). There are no network requests, obfuscated commands, encoded payloads, or attempts to access sensitive data. The script uses standard shell constructs (`grep`, `printf`, `ln`, `rm`, `touch`, `getent`) and no dangerous commands like `eval`, `curl`, or `wget`. The behavior is consistent with a legitimate Steam addon installer.
</details>
<evidence>
</evidence>
<summary>Standard AUR install script for a Steam addon; no malicious activity.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed millennium-bin.install. Status: SAFE -- Standard AUR install script for a Steam addon; no malicious activity.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 11,078
  Completion Tokens: 2,024
  Total Tokens: 13,102
  Total Cost: $0.001340
  Execution Time: 43.81 seconds

Final Status: SAFE


No issues found.
