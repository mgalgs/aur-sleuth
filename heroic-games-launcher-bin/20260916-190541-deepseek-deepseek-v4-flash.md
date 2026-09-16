---
package: heroic-games-launcher-bin
pkgver: 2.22.3
pkgrel: 2
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 171a316e053e9c4b28731ccb1aa63b1168550d3a
prompt_tokens: 7636
completion_tokens: 2210
total_tokens: 9846
cost: 0.001012704
execution_time: 75.49
files_reviewed: 2
files_skipped: 0
maintainer_files: 2
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-16T19:05:41Z
file_verdicts:
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD with no security issues.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata; official upstream source; pinned checksum; no malicious behavior detected.
---

Materializing heroic-games-launcher-bin from local mirror...
Materialized heroic-games-launcher-bin
Analyzing heroic-games-launcher-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only standard top-level variable assignments (pkgver, pkgrel, sha256sums, pkgname, pkgdesc, arch, url, license, source, noextract, depends, optdepends, provides, conflicts) and the definition of the package() function. There are no command substitutions, function calls, eval, or other executable statements at the global scope that would run during `makepkg --printsrcinfo`. The package() function is not invoked during this step. The source URL points to the official GitHub release of Heroic Games Launcher, which is expected. No evidence of malicious top-level code exists.
</details>
<evidence>
</evidence>
<summary>Safe, no malicious top-level code.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Safe, no malicious top-level code.
Reviewing the 2 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/2] Reviewing .SRCINFO...
[0/2] Reviewing .SRCINFO, PKGBUILD...
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD is a standard Arch Linux package recipe. It downloads a signed `.pacman` archive from the official GitHub releases page of Heroic Games Launcher (`https://github.com/Heroic-Games-Launcher/HeroicGamesLauncher/releases/download/v${pkgver}/Heroic-${pkgver}-linux-x64.pacman`), checks its SHA-256 checksum (pinned to a specific value), and extracts it into the package directory. The only operation in `package()` is extracting the archive and creating a symlink. There are no network requests to unexpected hosts, no obfuscated code, no dangerous commands (eval, base64, curl|bash), and no manipulation of files outside the application scope. All dependencies and optional dependencies are standard for a Linux desktop application built on Electron. This file does not exhibit any supply-chain attack indicators; it follows normal AUR and packaging practices.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD with no security issues.</summary>
</security_assessment>

[1/2] Reviewing .SRCINFO...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD with no security issues.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard `.SRCINFO` metadata file for the `heroic-games-launcher-bin` AUR package. It contains only declarative package metadata: name, version, description, URL, architecture, license, dependencies, and source/checksum entries. There are no scripts, functions, or executable code present.

The single source is the official upstream GitHub release (`https://github.com/Heroic-Games-Launcher/HeroicGamesLauncher/releases/download/v2.22.3/Heroic-2.22.3-linux-x64.pacman`), which is the project's own distribution channel, and it is accompanied by a pinned `sha256sums` value rather than `SKIP`. Dependencies (gtk3, nss, alsa-lib, libcups, etc.) are typical runtime libraries for an Electron/GTK-based application, and optdepends (gamemode, gamescope, mangohud, rsync) are standard gaming integrations relevant to a game launcher.

No suspicious network requests, obfuscated code, dangerous commands, or unexpected file operations appear anywhere in this file. The use of a prebuilt `.pacman` binary is consistent with the `-bin` package convention and the binary originates from the package's own upstream. Nothing here deviates from normal packaging practices.
</details>
<evidence>
</evidence>
<summary>
Standard AUR metadata; official upstream source; pinned checksum; no malicious behavior detected.
</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata; official upstream source; pinned checksum; no malicious behavior detected.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 7,636
  Completion Tokens: 2,210
  Total Tokens: 9,846
  Total Cost: $0.001013
  Execution Time: 75.49 seconds

Final Status: SAFE


No issues found.
