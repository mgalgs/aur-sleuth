---
package: epic-games-launcher-bin
pkgver: 0.105.0
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 9414
completion_tokens: 2099
total_tokens: 11513
cost: 0.001238692
execution_time: 37.32
files_reviewed: 2
files_skipped: 0
maintainer_files: 2
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-28T19:04:45Z
file_verdicts:
  - file: PKGBUILD
    status: safe
    summary: Standard AUR binary package from official Epic source with pinned checksum; no malicious behavior found.
  - file: .SRCINFO
    status: safe
    summary: Declarative metadata only; official upstream source with pinned SHA256 checksum; no malicious behavior found.
---

Materializing epic-games-launcher-bin from local mirror...
Materialized epic-games-launcher-bin
Analyzing epic-games-launcher-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
Running `makepkg --printsrcinfo` only sources the global/top-level scope of this PKGBUILD. That scope contains only static variable and array assignments (pkgname, pkgver, source, sha256sums, etc.), with no command substitutions, no `eval`, no downloads, and no other executable statements. The source URL points to Epic Games' official content distribution host and a checksum is provided, though source fetching is irrelevant to this step anyway. The `prepare()` and `package()` functions contain the actual file operations, but they are not executed by `makepkg --printsrcinfo` and are out of scope for this narrow gate.
</details>
<evidence>
</evidence>
<summary>
Top-level scope is static; printsrcinfo execution is safe.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Top-level scope is static; printsrcinfo execution is safe.
Reviewing the 2 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/2] Reviewing .SRCINFO...
[0/2] Reviewing .SRCINFO, PKGBUILD...
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a standard AUR binary package. It downloads the official Epic Games Launcher AppImage from an Epic Games domain (`content-download-egs.distro.on.epicgames.com`) with a pinned version and commit, and includes a non-SKIP sha256 checksum. The prepare and package functions only extract the AppImage and install its contents into the package directory, which is normal packaging practice.

The generated wrapper script sets `EGL_DISABLE_SELF_UPDATE` by default and executes the installed launcher binary. There is no obfuscated code, no suspicious network access, no data exfiltration, and no modification of files outside the package scope. This is consistent with ordinary AUR packaging and does not show evidence of a supply-chain attack.
</details>
<evidence>
</evidence>
<summary>
Standard AUR binary package from official Epic source with pinned checksum; no malicious behavior found.
</summary>
</security_assessment>

[1/2] Reviewing .SRCINFO...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR binary package from official Epic source with pinned checksum; no malicious behavior found.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This .SRCINFO is a purely declarative metadata file for the epic-games-launcher-bin AUR package. It contains no executable code, shell commands, or build logic — it only declares package metadata, dependencies, and the source location.

The single source is the official Epic Games Launcher AppImage downloaded over HTTPS from Epic Games' own CDN (content-download-egs.distro.on.epicgames.com), which is the project's legitimate upstream. The sha256sums entry is pinned to a concrete hash rather than SKIP, providing integrity verification for the download. The `noextract` option for the AppImage and the 7zip makedepends are standard practice for repackaging AppImages into native packages.

There are no suspicious network endpoints, no obfuscated or encoded content, no dangerous commands, and nothing that deviates from normal AUR packaging practices. The optdepends entries (libsecret for keyring storage, xdg-utils for handling external links) describe normal application functionality. The lack of a conventional SPDX license identifier (LicenseRef-EpicGamesLauncher) is a licensing formalism issue, not a security concern.
</details>
<evidence>
</evidence>
<summary>
Declarative metadata only; official upstream source with pinned SHA256 checksum; no malicious behavior found.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed .SRCINFO. Status: SAFE -- Declarative metadata only; official upstream source with pinned SHA256 checksum; no malicious behavior found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 9,414
  Completion Tokens: 2,099
  Total Tokens: 11,513
  Total Cost: $0.001239
  Execution Time: 37.32 seconds

Final Status: SAFE


No issues found.
