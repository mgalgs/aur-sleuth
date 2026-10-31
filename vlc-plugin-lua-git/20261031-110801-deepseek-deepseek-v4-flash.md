---
package: vlc-plugin-lua-git
pkgbase: vlc-git
pkgver: 4.0.0.r37650.g7bd9665
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 22517
completion_tokens: 2988
total_tokens: 25505
cost: 0.002592863
execution_time: 55.88
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-31T11:08:01Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard .gitignore for AUR repo; no suspicious content.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata; no malicious content.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR VLC git PKGBUILD, no evidence of malicious activity.
  - file: update-vlc-plugin-cache.hook
    status: safe
    summary: Standard VLC plugin cache updating hook. No issues.
---

vlc-plugin-lua-git is built from vlc-git
Materializing vlc-plugin-lua-git from local mirror...
Materialized vlc-plugin-lua-git
Analyzing vlc-plugin-lua-git AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The top-level (global) scope of this PKGBUILD contains only standard variable definitions (pkgname, pkgver, depends, source, etc.), an array assignment loop (iterating over `_optdeps`), and function definitions. No command substitutions, no downloads, and no code execution that could exfiltrate data or run untrusted payloads occurs during sourcing. The `eval` appearing inside `package_vlc-git()` is not executed because `--printsrcinfo` does not run package functions. No dangerous behavior at the global scope.
</details>
<evidence></evidence>
<summary>No malicious code at global scope.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious code at global scope.
Reviewing the 4 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/4] Reviewing .SRCINFO...
[0/4] Reviewing .SRCINFO, .gitignore...
[0/4] Reviewing .SRCINFO, .gitignore, PKGBUILD...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard `.gitignore` for an AUR git repository. It ignores all files (`*`) except `PKGBUILD`, `.SRCINFO`, and `.gitignore` itself. This is typical practice to ensure only the essential packaging files are tracked. There is no executable code, no network activity, no obfuscation, and no signs of malicious behaviour.
</details>
<evidence></evidence>
<summary>Standard .gitignore for AUR repo; no suspicious content.</summary>
</security_assessment>

[0/4] Reviewing .SRCINFO, .gitignore, PKGBUILD, update-vlc-plugin-cache.hook...
[1/4] Reviewing .SRCINFO, PKGBUILD, update-vlc-plugin-cache.hook...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore for AUR repo; no suspicious content.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This .SRCINFO file is standard AUR metadata for the vlc-git package and its split variant vlc-plugin-lua-git. It declares the upstream source as the official VideoLAN VLC git repository on GitHub, lists dependencies (both build-time and runtime), provides package conflicts, and references a hook file with a valid SHA-256 checksum. There is no obfuscated code, no embedded commands, no suspicious network destinations outside the official upstream, and no evidence of data exfiltration, backdoors, or other malicious behavior. The SKIP checksum on the VCS source is normal and expected for git-based packages.
</details>
<evidence></evidence>
<summary>Standard AUR metadata; no malicious content.</summary>
</security_assessment>

[2/4] Reviewing PKGBUILD, update-vlc-plugin-cache.hook...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata; no malicious content.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD for `vlc-git` and `vlc-plugin-lua-git` follows standard AUR packaging practices for a VCS package. The source is cloned from the official upstream VLC repository (`git+https://github.com/videolan/vlc.git`), which is expected. The `sha256sums` entry is `SKIP` for the git source, which is normal for VCS packages and not a security concern. The included hook file has a fixed checksum. The build process uses `./bootstrap`, `autoreconf`, `./configure`, `make`, and standard install steps. The only sed modifications adjust build environment commands (replacing `whoami` and `hostname` with fixed echo values), which is a common workaround for compatibility in packaging environments and not indicative of malicious intent. There are no obfuscated commands, no unexpected network requests (e.g., `curl`, `wget` to non-standard hosts), no base64 decoding, no eval of untrusted content, and no attempts to exfiltrate data or install backdoors. The package splits lua plugin files appropriately. No supply-chain attack indicators found.
</details>
<evidence></evidence>
<summary>Standard AUR VLC git PKGBUILD, no evidence of malicious activity.</summary>
</security_assessment>

[3/4] Reviewing update-vlc-plugin-cache.hook...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR VLC git PKGBUILD, no evidence of malicious activity.
LLM auditresponse for update-vlc-plugin-cache.hook:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard pacman hook file distributed with the vlc-plugin-lua-git package. It triggers after file operations (install, upgrade, remove) on the VLC plugins directory and runs `/usr/lib/vlc/vlc-cache-gen /usr/lib/vlc/plugins` to regenerate the plugin cache. This is a routine maintenance hook expected for VLC packages and contains no suspicious code, obfuscation, or supply-chain attack indicators. The command is from the vlc package itself and performs only cache regeneration.
</details>
<evidence></evidence>
<summary>Standard VLC plugin cache updating hook. No issues.</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed update-vlc-plugin-cache.hook. Status: SAFE -- Standard VLC plugin cache updating hook. No issues.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 22,517
  Completion Tokens: 2,988
  Total Tokens: 25,505
  Total Cost: $0.002593
  Execution Time: 55.88 seconds

Final Status: SAFE


No issues found.
