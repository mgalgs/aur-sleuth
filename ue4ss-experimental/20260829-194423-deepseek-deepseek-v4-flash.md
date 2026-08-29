---
package: ue4ss-experimental
pkgver: 3.0.1_1096_g013440ea
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 3e318911529c43138ec6bdba0bfcb56907607021
prompt_tokens: 15668
completion_tokens: 2701
total_tokens: 18369
cost: 0.00173448240
execution_time: 179.39
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: ok
upstream_files: 22
upstream_named_files: 1
unpinned_sources: 0
date: 2026-08-29T19:44:22Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata with pinned checksums and official upstream source; no security issues found.
  - file: .gitignore
    status: safe
    summary: Standard AUR .gitignore, no security issues.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD, no malicious code or injections.
  - file: ue4ss-install
    status: safe
    summary: Clean deployment script, no malicious behavior found.
---

Cloning https://aur.archlinux.org/ue4ss-experimental.git...
Cloned ue4ss-experimental
Analyzing ue4ss-experimental AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD defines global variables and the `latestver()` function but never calls it at the top level or inside `pkgver()`.  The `gh api` command inside `latestver()` is therefore not executed during `makepkg --nobuild --nodeps --noprepare`.  
The source array downloads a legitimate release from the project's official GitHub repository over HTTPS, and the `ue4ss-install` helper script comes with the package (checksum pinned). No obfuscation, dangerous commands, or unexpected network destinations are present in the executable scope.  
All potentially harmful activity is confined to `package()`, which is not run due to `--nobuild`/`--noprepare`.  
</details>
<evidence></evidence>
<summary>Safe to fetch sources and parse PKGBUILD.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Safe to fetch sources and parse PKGBUILD.
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Note: the PKGBUILD names 1 file(s) in the downloaded sources (src/ue4ss/LICENSE); they are upstream content and were not reviewed.
Reviewing the 4 file(s) in the AUR repository. The 22 downloaded file(s) are upstream content, outside the threat model, and are not read.
Reviewing the AUR repository's files...
[0/4] Reviewing .SRCINFO...
[0/4] Reviewing .SRCINFO, .gitignore...
[0/4] Reviewing .SRCINFO, .gitignore, PKGBUILD...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard AUR `.SRCINFO` metadata file for the `ue4ss-experimental` package. It declares package metadata, dependencies, build options, and two sources: an official release archive from the project's own GitHub releases page (`github.com/UE4SS-RE/RE-UE4SS`) and a local installer script (`ue4ss-install`). Both sources have pinned SHA-256 checksums, which is good supply-chain hygiene.

No suspicious commands, network endpoints, obfuscated content, or unusual file operations are present. The file only contains declarative packaging information. The upstream release archive is fetched from the project's official repository, which is expected for this kind of package. There is no evidence of injected malicious code or behavior that deviates from standard AUR packaging practices.
</details>
<evidence>
</evidence>
<summary>
Standard AUR metadata with pinned checksums and official upstream source; no security issues found.
</summary>
</security_assessment>

[1/4] Reviewing .gitignore, PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata with pinned checksums and official upstream source; no security issues found.
[1/4] Reviewing .gitignore, PKGBUILD, ue4ss-install...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This `.gitignore` file is a standard Git exclusion pattern used in many AUR packages. It ignores all files by default and then whitelists only the necessary packaging files (`.gitignore`, `.SRCINFO`, `PKGBUILD`, a deploy helper script `ue4ss-install`, and auxiliary files like install scripts, patches, and diffs). There is no obfuscated code, network requests, dangerous commands, or any deviation from normal packaging practices. The content is completely benign and serves only to manage version control visibility.
</details>
<evidence>
</evidence>
<summary>Standard AUR .gitignore, no security issues.</summary>
</security_assessment>

[2/4] Reviewing PKGBUILD, ue4ss-install...
+ Reviewed .gitignore. Status: SAFE -- Standard AUR .gitignore, no security issues.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard Arch packaging practices for a plugin that ships prebuilt Windows DLLs (x86\_64 PE files) for use under Wine/Proton.  

- **Source integrity**: The single `.zip` asset from the project's own GitHub releases has a pinned `sha256sum` (not `SKIP`), so the download is verified.  
- **No malicious operations**: The `package()` function only performs standard file installation (`install`, `cp`, `chmod`, `rm`) into `/usr/share/ue4ss` and `/usr/bin`. No network requests, code execution, obfuscated strings, or exfiltration.  
- **Helper function `latestver()`**: Defined but never called during `makepkg`; it is a manual convenience for the maintainer to determine the next version. It uses `gh api` to query GitHub’s public API – not hidden or injected.  
- **Second source `ue4ss-install`**: Its checksum is also pinned. The script itself is not visible here, but its presence and purpose (a helper to install the mod into a game directory) are normal for this type of package.  

No supply-chain attack indicators are present. The package is safe.
</details>
<evidence>
</evidence>
<summary>Standard AUR PKGBUILD, no malicious code or injections.</summary>
</security_assessment>

[3/4] Reviewing ue4ss-install...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD, no malicious code or injections.
LLM auditresponse for ue4ss-install:
<security_assessment>
<decision>SAFE</decision>
<details>
This script is a straightforward deployment utility for the UE4SS modding framework. It copies or symlinks files from a pacman-managed payload directory (`/usr/share/ue4ss`) into a game's Binary/Win64 folder. The script performs only standard file operations (`cp`, `ln`, `rm -rf` for uninstall) and system checks. There are no network requests, no obfuscated code, no downloads from external hosts, and no dangerous command execution outside the packaging scope. The uninstall function uses `rm -rf` but only on files that were previously deployed (tracked from the payload directory), and it prints warnings before removal. The script is well-documented and follows standard AUR helper practices.
</details>
<evidence></evidence>
<summary>Clean deployment script, no malicious behavior found.</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed ue4ss-install. Status: SAFE -- Clean deployment script, no malicious behavior found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 15,668
  Completion Tokens: 2,701
  Total Tokens: 18,369
  Total Cost: $0.001734
  Execution Time: 179.39 seconds

Final Status: SAFE


No issues found.
