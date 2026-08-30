---
package: ue4ss-experimental-zdev
pkgver: 3.0.1_1100_g4375e5bb
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 3e318911529c43138ec6bdba0bfcb56907607021
prompt_tokens: 15970
completion_tokens: 3038
total_tokens: 19008
cost: 0.00177778944
execution_time: 124.08
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: ok
upstream_files: 361
upstream_named_files: 1
unpinned_sources: 0
date: 2026-08-30T07:22:12Z
file_verdicts:
  - file: PKGBUILD
    status: safe
    summary: Legitimate AUR PKGBUILD with pinned checksums.
  - file: .gitignore
    status: safe
    summary: Standard .gitignore for AUR packaging; no security concerns.
  - file: ue4ss-install
    status: safe
    summary: Clean deployment script with no malicious behavior.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata file, no malicious content.
---

Cloning https://aur.archlinux.org/ue4ss-experimental-zdev.git...
Cloned ue4ss-experimental-zdev
Analyzing ue4ss-experimental-zdev AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
Running `makepkg --nobuild --nodeps --noprepare` and `makepkg --printsrcinfo` is safe for this PKGBUILD. The global/top-level scope only contains variable assignments and the `source` array definition; there are no top-level command substitutions, external downloads, or code-execution hooks that would run while the PKGBUILD is sourced. The `latestver()` function is defined but not invoked by these commands, since there is no `pkgver()` function and `pkgver` is a static variable.

The only fetched source is the official upstream GitHub release archive from `github.com/UE4SS-RE/RE-UE4SS`, which is the package's own project URL. The second source, `ue4ss-install`, is a local file from the AUR repository and is only fetched/copied, not executed during this gate. Both entries have explicit sha256 checksums. No `prepare()`, `build()`, or `package()` code runs under the specified flags, so their contents are not in scope for this narrow safety gate. Nothing here indicates malicious behavior during source fetching or PKGBUILD sourcing.
</details>
<evidence>
</evidence>
<summary>
Safe: only official upstream source fetched; no top-level or pkgver execution.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Safe: only official upstream source fetched; no top-level or pkgver execution.
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Note: the PKGBUILD names 1 file(s) in the downloaded sources (src/ue4ss/LICENSE); they are upstream content and were not reviewed.
Reviewing the 4 file(s) in the AUR repository. The 361 downloaded file(s) are upstream content, outside the threat model, and are not read.
Reviewing the AUR repository's files...
[0/4] Reviewing .SRCINFO...
[0/4] Reviewing .SRCINFO, .gitignore...
[0/4] Reviewing .SRCINFO, .gitignore, PKGBUILD...
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard AUR packaging practices. It downloads the package's own upstream source from the official GitHub releases URL, with pinned SHA256 checksums for both the binary archive and the helper script. The `package()` function copies files to the target directory, removes some documentation, and installs a script to `/usr/bin`. The `latestver()` function uses `gh api` to query GitHub for version detection, which is a typical helper for maintainers and not executed during build unless explicitly invoked. There is no obfuscated code, no suspicious network requests, no execution of unchecked or attacker-controlled content, and no unexpected system modifications. The file is consistent with its stated purpose.
</details>
<evidence></evidence>
<summary>Legitimate AUR PKGBUILD with pinned checksums.</summary>
</security_assessment>

[0/4] Reviewing .SRCINFO, .gitignore, PKGBUILD, ue4ss-install...
[1/4] Reviewing .SRCINFO, .gitignore, ue4ss-install...
+ Reviewed PKGBUILD. Status: SAFE -- Legitimate AUR PKGBUILD with pinned checksums.
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This `.gitignore` file is a standard configuration file used by Git to specify intentionally untracked files. It follows a common pattern for AUR package repositories: ignore everything by default (`*`), then whitelist only the essential files needed to build and maintain the package (`.gitignore` itself, `.SRCINFO`, `PKGBUILD`, a helper script `ue4ss-install`, and auxiliary files like `*.install`, `*.patch`, `*.diff`). There are no network requests, obfuscated code, dangerous commands, or any behavior that deviates from typical packaging practices. It is purely a version control configuration file and poses no security risk.
</details>
<evidence></evidence>
<summary>Standard .gitignore for AUR packaging; no security concerns.</summary>
</security_assessment>

[2/4] Reviewing .SRCINFO, ue4ss-install...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore for AUR packaging; no security concerns.
LLM auditresponse for ue4ss-install:
<security_assessment>
<decision>SAFE</decision>
<details>
The script `ue4ss-install` is a packaging helper that deploys the UE4SS modding payload from a system directory (`/usr/share/ue4ss`) into a game's `Binaries/Win64` folder. It performs only local file operations (`cp`, `ln`, `rm`, `install`, `find`) and does not make any network requests, fetch remote code, or read sensitive system files. The script includes standard safety warnings (e.g., checking target directory exists, warning if no `.exe` found, preserving user config on re-deploy). The `uninstall` function removes files that match the payload's top-level entries, which is expected cleanup behavior for a deployment script. There are no obfuscated commands, encoded payloads, or suspicious data exfiltration. The logic is consistent with the stated purpose of managing a game mod installation within a Wine/Proton prefix.
</details>
<evidence></evidence>
<summary>Clean deployment script with no malicious behavior.</summary>
</security_assessment>

[3/4] Reviewing .SRCINFO...
+ Reviewed ue4ss-install. Status: SAFE -- Clean deployment script with no malicious behavior.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard .SRCINFO metadata file for an AUR package. It declares a source archive from the official UE4SS GitHub releases page and a local file (`ue4ss-install`) with pinned SHA256 checksums. There are no executable instructions, obfuscated content, or attempts to perform network requests beyond the declared upstream source. Dependencies and optional dependencies are normal for the package type. No red flags or malicious behavior are present.
</details>
<evidence>
</evidence>
<summary>Standard AUR metadata file, no malicious content.</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata file, no malicious content.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 15,970
  Completion Tokens: 3,038
  Total Tokens: 19,008
  Total Cost: $0.001778
  Execution Time: 124.08 seconds

Final Status: SAFE


No issues found.
