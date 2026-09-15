---
package: ue4ss-experimental-zdev
pkgver: 3.0.1_1133_gb4cefa18
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 171a316e053e9c4b28731ccb1aa63b1168550d3a
prompt_tokens: 15933
completion_tokens: 6241
total_tokens: 22174
cost: 0.00134459780
execution_time: 106.64
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-13T19:06:04Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard .gitignore for AUR packaging; no issues.
  - file: .SRCINFO
    status: safe
    summary: Metadata-only AUR file with pinned HTTPS sources and checksums; no malicious behavior found.
  - file: ue4ss-install
    status: safe
    summary: Safe deployment helper for UE4SS payload.
  - file: PKGBUILD
    status: safe
    summary: Standard UE4SS packaging; pinned hashes and no malicious behavior found.
---

Materializing ue4ss-experimental-zdev from local mirror...
Materialized ue4ss-experimental-zdev
Analyzing ue4ss-experimental-zdev AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
 <security_assessment>
<decision>SAFE</decision>
<details>
`makepkg --printsrcinfo` sources the PKGBUILD but does not execute `pkgver()`, `prepare()`, `build()`, `package()`, or arbitrary helper functions. The top-level scope only contains standard metadata variable assignments and function definitions. No command substitutions, `eval`, `curl`, `wget`, encoded payloads, or file-modifying commands run while the PKGBUILD is sourced. The `latestver()` helper does invoke `gh api` against GitHub, but it is only a function body and is not called during `makepkg --printsrcinfo`. The `package()` function performs install/copy/remove operations, but it also does not run during this metadata-only step. The source URL and checksum state are not acted upon when printing srcinfo.
</details>
<evidence>
</evidence>
<summary>Safe: only definitions and assignments execute during metadata generation.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Safe: only definitions and assignments execute during metadata generation.
Reviewing the 4 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/4] Reviewing .SRCINFO...
[0/4] Reviewing .SRCINFO, .gitignore...
[0/4] Reviewing .SRCINFO, .gitignore, PKGBUILD...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.gitignore` file for an AUR package repository. It ignores all files by default and then whitelists specific files needed for the package (e.g., `PKGBUILD`, `.SRCINFO`, helper scripts, patches). There is no executable code, no network requests, no obfuscation, and no system modifications. The file is purely a git configuration file and does not exhibit any signs of malicious or dangerous behavior.
</details>
<evidence></evidence>
<summary>Standard .gitignore for AUR packaging; no issues.</summary>
</security_assessment>

[0/4] Reviewing .SRCINFO, .gitignore, PKGBUILD, ue4ss-install...
[1/4] Reviewing .SRCINFO, PKGBUILD, ue4ss-install...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore for AUR packaging; no issues.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is `.SRCINFO`, which is metadata describing the AUR package. It contains no executable code and performs no actions itself, so there is no direct attack surface in this file. The package source is downloaded from the official UE4SS GitHub releases URL over HTTPS, and both the release zip and the local `ue4ss-install` file have explicit sha256 checksums, which is standard and hygienic packaging practice. No network exfiltration, obfuscation, suspicious commands, or unexpected file operations are present.

The `ue4ss-install` helper script is referenced as a source file, but its contents are not visible in this file. Its checksum is pinned, which is good practice; however, as an AUR package, the maintainer supplies that script and it would normally be reviewed alongside the PKGBUILD. Nothing in the `.SRCINFO` metadata itself indicates malicious behavior.
</details>
<evidence>
</evidence>
<summary>
Metadata-only AUR file with pinned HTTPS sources and checksums; no malicious behavior found.</summary>
</security_assessment>

[2/4] Reviewing PKGBUILD, ue4ss-install...
+ Reviewed .SRCINFO. Status: SAFE -- Metadata-only AUR file with pinned HTTPS sources and checksums; no malicious behavior found.
LLM auditresponse for ue4ss-install:
<security_assessment>
<decision>SAFE</decision>
<details>
This script is a deployment helper for the UE4SS modding tool, which ships with a local payload directory (`/usr/share/ue4ss`). It copies or symlinks files from that directory into a user-specified game folder (`Binaries/Win64`), preserving user-edited config files unless `--force` is used. It also supports uninstallation by removing the deployed files.  

The script performs only standard file operations (`cp`, `ln`, `rm`, `find`, `install`, `chmod`) on the payload and target directories. It does not download any code, execute fetched content, use obfuscation, or access sensitive system paths. The only external command outside of coreutils is `compgen` for a warning check. There are no network requests, no `eval`/`base64`/`curl`/`wget`, and no attempts to exfiltrate data. The Proton/Wine override warning is informational and expected for UE4SS compatibility.  

The script is well-structured and aligns with standard AUR packaging practices—it simply automates the deployment of the pre-packaged payload. No evidence of malicious code was found.
</details>
<evidence></evidence>
<summary>Safe deployment helper for UE4SS payload.</summary>
</security_assessment>

[3/4] Reviewing PKGBUILD...
+ Reviewed ue4ss-install. Status: SAFE -- Safe deployment helper for UE4SS payload.
LLM auditresponse for PKGBUILD:
 <security_assessment>
<decision>SAFE</decision>
<details>
This is a standard AUR PKGBUILD for a package that ships the UE4SS Windows DLL mod loader for use under Wine/Proton. The source is a pinned asset from the project's own GitHub releases, and both the zip and the local `ue4ss-install` helper have explicit, non-SKIP sha256 checksums. The `latestver()` function queries the project's own GitHub API to derive a version string — a normal pattern for experimental/dev-channel AUR packages — and nothing from that lookup is executed.

The `package()` function only manipulates the staging directory `$pkgdir`: it copies the payload DLLs and helper script, sets permissions, installs the license, and removes documentation/README files from the game-folder payload to keep it clean. There is no eval, no base64/hex obfuscation, no curl-bash, no network access at build time beyond the declared source URL, no exfiltration of local data, and no modification of files outside `$pkgdir`. Minor hygiene notes only: `gh` is used in `latestver()` but not declared in `makedepends`, and the upstream `experimental` tag is a mutable ref — though the maintainer explains the append-only pinning strategy and the checksums are pinned. None of this constitutes malicious behavior.
</details>
<evidence>
</evidence>
<summary>
Standard UE4SS packaging; pinned hashes and no malicious behavior found.</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard UE4SS packaging; pinned hashes and no malicious behavior found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 15,933
  Completion Tokens: 6,241
  Total Tokens: 22,174
  Total Cost: $0.001345
  Execution Time: 106.64 seconds

Final Status: SAFE


No issues found.
