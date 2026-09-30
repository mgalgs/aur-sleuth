---
package: equicord
pkgver: 1.0.137.r7648g1e353f3bd
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 171a316e053e9c4b28731ccb1aa63b1168550d3a
prompt_tokens: 17296
completion_tokens: 4161
total_tokens: 21457
cost: 0.00179326
execution_time: 62.18
files_reviewed: 5
files_skipped: 2
maintainer_files: 7
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 1
injection_attempts: 0
date: 2026-09-17T15:52:04Z
file_verdicts:
  - file: .gitignore
    status: skipped
    summary: "Skipping binary file: .gitignore"
  - file: LICENSE
    status: safe
    summary: License file, no security concerns.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata file with no malicious behavior detected.
  - file: equicord.png
    status: skipped
    summary: "Skipping binary file: equicord.png"
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD; no malicious code found.
  - file: equicord.sh
    status: safe
    summary: Safe launcher script for Discord mod, no malicious activity.
  - file: equicord.desktop
    status: safe
    summary: Standard desktop launcher; no injection, network, or obfuscation. Benign packaging metadata.
---

Materializing equicord from local mirror...
Materialized equicord
Analyzing equicord AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD's global scope contains only standard variable assignments (pkgname, pkgver, source, etc.) and function definitions (pkgver, _ensure_local_nvm, prepare, build, package). There are no command substitutions, backticks, or immediate function calls that could execute code during sourcing. The `source` array references remote files but these are not fetched or processed at this stage. All potentially hazardous operations (installing nvm, running pnpm, wget downloads) are confined to `prepare()` and `build()` functions, which are **not** invoked by `makepkg --printsrcinfo`. Thus, running this command is safe.
</details>
<evidence></evidence>
<summary>No dangerous execution at global scope.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous execution at global scope.
Note: 1 remote source(s) have no checksum (sha256sums=SKIP), so the bytes are not verifiable: discord-pkgbuild::https://gitlab.archlinux.org/archlinux/packaging/packages/discord/-/raw/main/PKGBUILD
Reviewing the 7 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/7] Reviewing .gitignore...
[0/7] Reviewing .gitignore, .SRCINFO...
[0/7] Reviewing .gitignore, .SRCINFO, LICENSE...
[0/7] Reviewing .gitignore, .SRCINFO, LICENSE, PKGBUILD...
[1/7] Reviewing .SRCINFO, LICENSE, PKGBUILD...
! Reviewed .gitignore. Status: SKIPPED -- Skipping binary file: .gitignore
LLM auditresponse for LICENSE:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a plain-text license (ISC-style) from Arch Linux Contributors. It contains only legal boilerplate and no executable code, instructions, or any content that could be interpreted as malicious. There are no network requests, file operations, obfuscation, or other suspicious patterns. This file poses no security threat.
</details>
<evidence>
</evidence>
<summary>License file, no security concerns.</summary>
</security_assessment>

[1/7] Reviewing .SRCINFO, LICENSE, PKGBUILD, equicord.desktop...
[2/7] Reviewing .SRCINFO, PKGBUILD, equicord.desktop...
+ Reviewed LICENSE. Status: SAFE -- License file, no security concerns.
LLM auditresponse for .SRCINFO:
 <security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard AUR `.SRCINFO` metadata file. It declares package metadata, dependencies, and source entries, and contains no executable code or commands.

The source entries point to the package&#39;s own upstream repository (Equicord/Equicord), the official Arch Linux Discord packaging PKGBUILD from GitLab, and local files (`equicord.desktop`, `equicord.png`, `equicord.sh`). The `git` source correctly uses `SKIP` checksums, which is normal for VCS sources. The remaining files have pinned sha512 checksums. There is no evidence of malicious behavior, suspicious network endpoints, obfuscated content, or dangerous file operations in this metadata file.
</details>
<evidence>
</evidence>
<summary>
Standard AUR metadata file with no malicious behavior detected.</summary>
</security_assessment>

[2/7] Reviewing .SRCINFO, PKGBUILD, equicord.desktop, equicord.png...
[3/7] Reviewing PKGBUILD, equicord.desktop, equicord.png...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata file with no malicious behavior detected.
[3/7] Reviewing PKGBUILD, equicord.desktop, equicord.png, equicord.sh...
[4/7] Reviewing PKGBUILD, equicord.desktop, equicord.sh...
! Reviewed equicord.png. Status: SKIPPED -- Skipping binary file: equicord.png
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a standard AUR packaging for the Equicord Discord client mod. The sources are fetched from the official Equicord GitHub repository and the Arch Linux GitLab (for a reference PKGBUILD to extract the Discord version). The build process downloads the official Discord binary from `dl.discordapp.net` (the legitimate upstream source), then builds the Equicord mod using pnpm and asar. The `sed` commands in `prepare()` disable the mod’s own update mechanism—a common practice when a package manager will handle updates instead. File ownership and permissions are set correctly with `install -Dm755` / `-Dm644`. There is no obfuscated code, no data exfiltration, no unexpected network hosts, and no evidence of a supply-chain attack. All operations serve the legitimate purpose of packaging Equicord for Arch Linux.
</details>
<evidence>
</evidence>
<summary>Standard AUR PKGBUILD; no malicious code found.</summary>
</security_assessment>

[5/7] Reviewing equicord.desktop, equicord.sh...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD; no malicious code found.
LLM auditresponse for equicord.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
The script is a launcher for the Equicord Discord client mod. It performs standard operations: creating a configuration directory, invoking a bundled bootstrapper to download the official Discord client from updates.discord.com, and replacing the `app.asar` file with a modded version from `/usr/share/equicord/`. There is no exfiltration of data, no obfuscation, no unexpected network requests, and no execution of code from untrusted sources. The use of an unset hash placeholder (`INSERT_HASH_HERE`) means the replacement always occurs, but that is the intended behavior of the mod and not a supply-chain attack.
</details>
<evidence></evidence>
<summary>Safe launcher script for Discord mod, no malicious activity.</summary>
</security_assessment>

[6/7] Reviewing equicord.desktop...
+ Reviewed equicord.sh. Status: SAFE -- Safe launcher script for Discord mod, no malicious activity.
LLM auditresponse for equicord.desktop:
 <security_assessment>
<decision>SAFE</decision>
<details>
This is a standard freedesktop `.desktop` launcher file for the Equicord package. It declares the application name, icon, category, and a single `Exec=/usr/bin/equicord` line, which runs the package's own installed binary with no arguments and no shell interpretation.

No injection vectors exist in this file: the Exec line contains no pipes, redirections, environment variable expansion, or tricks like `sh -c`; there are no URL `MimeType` handlers, no `TryExec` pointing at unexpected paths, and no references to curl/wget/base64 or any network destination. The `Path=/usr/bin` and `StartupWMClass=discord` fields are ordinary metadata consistent with a Discord client mod launcher. The `&apos;` in the Comment is the standard desktop-entry escape for an apostrophe and is harmless.
</details>
<evidence>
</evidence>
<summary>
Standard desktop launcher; no injection, network, or obfuscation. Benign packaging metadata.</summary>
</security_assessment>

[7/7] Reviewing ...
+ Reviewed equicord.desktop. Status: SAFE -- Standard desktop launcher; no injection, network, or obfuscation. Benign packaging metadata.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
(Skipped 2 files: .gitignore, equicord.png)

API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 17,296
  Completion Tokens: 4,161
  Total Tokens: 21,457
  Total Cost: $0.001793
  Execution Time: 62.18 seconds

Final Status: SAFE


No issues found.


Audit Skips:

.gitignore: [SKIPPED] Skipping binary file: .gitignore

equicord.png: [SKIPPED] Skipping binary file: equicord.png
