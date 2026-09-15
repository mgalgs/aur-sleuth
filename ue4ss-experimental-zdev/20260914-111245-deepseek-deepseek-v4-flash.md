---
package: ue4ss-experimental-zdev
pkgver: 3.0.1_1135_gf6d5f942
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 171a316e053e9c4b28731ccb1aa63b1168550d3a
prompt_tokens: 15943
completion_tokens: 7276
total_tokens: 23219
cost: 0.002702039970
execution_time: 147.18
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-14T11:12:45Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard AUR .gitignore file, no security issues.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata file; no security issues found.
  - file: PKGBUILD
    status: safe
    summary: Legitimate UE4SS packaging PKGBUILD; no malicious code or behavior found.
  - file: ue4ss-install
    status: safe
    summary: Local UE4SS deploy/uninstall helper; no network, obfuscation, or malicious behavior found.
---

Materializing ue4ss-experimental-zdev from local mirror...
Materialized ue4ss-experimental-zdev
Analyzing ue4ss-experimental-zdev AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
The top-level scope of this PKGBUILD contains only standard variable definitions, array assignments, and function declarations. No code executes at load time beyond the string substitution in `_verstr` and parsing of static data. The `latestver()` and `package()` functions are defined but not invoked during `makepkg --printsrcinfo`, so their contents (including the `gh api` call in `latestver()`) are out of scope for this gate. There are no top-level command substitutions, external network calls, or obfuscated payloads that would execute when the PKGBUILD is sourced. Therefore, running `makepkg --printsrcinfo` is safe.

<security_assessment>
<decision>SAFE</decision>
<details>
The top-level scope of this PKGBUILD contains only standard variable definitions, array assignments, and function declarations. No code executes at load time beyond the string substitution in `_verstr` and parsing of static data. The `latestver()` and `package()` functions are defined but not invoked during `makepkg --printsrcinfo`, so their contents (including the `gh api` call in `latestver()`) are out of scope for this gate. There are no top-level command substitutions, external network calls, or obfuscated payloads that would execute when the PKGBUILD is sourced. Therefore, running `makepkg --printsrcinfo` is safe.
</details>
<evidence></evidence>
<summary>No top-level execution risk; safe to parse.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No top-level execution risk; safe to parse.
Reviewing the 4 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/4] Reviewing .SRCINFO...
[0/4] Reviewing .SRCINFO, .gitignore...
[0/4] Reviewing .SRCINFO, .gitignore, PKGBUILD...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.gitignore` file for an AUR repository. It instructs Git to ignore everything by default, then whitelists essential packaging files (`.gitignore`, `.SRCINFO`, `PKGBUILD`), the deploy helper script (`ue4ss-install`), and auxiliary files (`*.install`, `*.patch`, `*.diff`). There are no executable commands, network requests, obfuscated code, or any other malicious behaviors. The file is completely benign and serves only to control version‑control inclusion.
</details>
<evidence></evidence>
<summary>Standard AUR .gitignore file, no security issues.</summary>
</security_assessment>

[1/4] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed .gitignore. Status: SAFE -- Standard AUR .gitignore file, no security issues.
[1/4] Reviewing .SRCINFO, PKGBUILD, ue4ss-install...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The .SRCINFO file contains only standard package metadata for an AUR package: name, version, dependencies, source URLs, and checksums. The primary source archive is downloaded from the official UE4SS GitHub releases page, which is the expected upstream location for this project. The second source is a local file (`ue4ss-install`) that would be defined in the PKGBUILD. Both sources have SHA-256 checksums provided, adding integrity verification. There is no obfuscated code, no suspicious network destinations, no dangerous commands, and no deviation from normal AUR packaging practices. The provided `sha256sums` are fixed, which is a good security practice. The file itself is metadata only and does not execute any code.
</details>
<evidence></evidence>
<summary>Standard AUR metadata file; no security issues found.</summary>
</security_assessment>

[2/4] Reviewing PKGBUILD, ue4ss-install...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata file; no security issues found.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows normal AUR packaging practice. It downloads the UE4SS zDEV experimental release from the project's official GitHub releases over HTTPS, with pinned sha256 checksums for both the archive and the local `ue4ss-install` helper file. The `package()` function only copies the downloaded payload into `$pkgdir`, installs the license, removes documentation files that are considered unwanted in a game folder, and installs the helper script with standard permissions.

The `latestver()` helper queries the GitHub API to determine the newest available experimental asset name. It does not download or execute remote code; it only parses release metadata. No obfuscation, suspicious encoding, dangerous shell constructs, or writes outside `$pkgdir`/`$srcdir` are present. The behavior is consistent with the stated purpose of packaging a Windows DLL mod loader for UE4SS, and nothing indicates a supply-chain attack.
</details>
<evidence></evidence>
<summary>
Legitimate UE4SS packaging PKGBUILD; no malicious code or behavior found.</summary>
</security_assessment>

[3/4] Reviewing ue4ss-install...
+ Reviewed PKGBUILD. Status: SAFE -- Legitimate UE4SS packaging PKGBUILD; no malicious code or behavior found.
LLM auditresponse for ue4ss-install:
 <security_assessment>
<decision>SAFE</decision>
<details>
The script is a local installer helper for the packaged UE4SS payload. It copies or symlinks files from the package-owned directory `/usr/share/ue4ss` into a user-specified game `Binaries/Win64` directory, preserves user-edited config files by default, and provides an uninstall mode that removes the payload's top-level entries from the target directory.

No network requests, downloads, obfuscated/encoded commands, `eval`, `base64`, `curl`, or `wget` are present. The destructive `rm -rf` appears only in the user-invoked uninstall path, is scoped to top-level payload entries that already exist in the user-supplied target directory, and prints a warning that user-added mods/config under those paths may be deleted. This is consistent with the stated purpose of the script and is not evidence of a supply-chain attack.

The provided transcript appears truncated or syntactically garbled in places, likely due to formatting/rendering artifacts, but the visible logic shows no injection, exfiltration, backdoor, or unexpected remote execution. The operations are limited to the package payload and the explicitly given target directory.
</details>
<evidence></evidence>
<summary>Local UE4SS deploy/uninstall helper; no network, obfuscation, or malicious behavior found.</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed ue4ss-install. Status: SAFE -- Local UE4SS deploy/uninstall helper; no network, obfuscation, or malicious behavior found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 15,943
  Completion Tokens: 7,276
  Total Tokens: 23,219
  Total Cost: $0.002702
  Execution Time: 147.18 seconds

Final Status: SAFE


No issues found.
