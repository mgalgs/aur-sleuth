---
package: unreal-engine-src-5.7
pkgver: 5.7.4
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 39830
completion_tokens: 7094
total_tokens: 46924
cost: 0.001512504
execution_time: 166.41
files_reviewed: 6
files_skipped: 1
maintainer_files: 7
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-02T23:11:11Z
file_verdicts:
  - file: 0001-override-shared-target-build.patch
    status: safe
    summary: Legitimate engine installation patch, no malicious code.
  - file: .SRCINFO
    status: safe
    summary: Standard .SRCINFO metadata with no executable or malicious content. Safe.
  - file: ue5_7editor.svg
    status: skipped
    summary: "Skipping binary file: ue5_7editor.svg"
  - file: PKGBUILD
    status: safe
    summary: Legitimate UE5 source build, no malicious behavior detected.
  - file: com.unrealengine.UE5_7Editor.desktop
    status: safe
    summary: Standard desktop entry file, no security issues.
  - file: unreal-engine-src-5.7-pacman-cache.hook
    status: safe
    summary: Standard pacman cache cleanup hook, no malicious behavior.
  - file: unreal-engine-5.7.sh
    status: safe
    summary: "Safe: standard launcher; placeholder checksum is dead code, no malicious behavior."
---

Materializing unreal-engine-src-5.7 from local mirror...
Materialized unreal-engine-src-5.7
Analyzing unreal-engine-src-5.7 AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD's top-level scope (the only code executed by `makepkg --printsrcinfo`) consists entirely of variable definitions, conditional environment-variable defaults, function definitions, and lightweight system introspection commands (`uname -m`, `command -v tr`, `find /usr/lib -name 'LLVMPolly.so'`, `ld-linux --help | grep`, and regex-on-${CFLAGS}). None of these perform network operations, download or execute external code, or exfiltrate data. All potentially dangerous operations (git clone, curl downloads, wget, `./Setup.sh`, BuildGraph) reside inside the `prepare()`, `build()`, and `package()` functions, which are **not** executed during `makepkg --printsrcinfo`. Therefore, sourcing this PKGBUILD to print its metadata is safe.
</details>
<evidence></evidence>
<summary>No malicious top-level code; unsafe operations are confined to functions not invoked.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious top-level code; unsafe operations are confined to functions not invoked.
Reviewing the 7 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/7] Reviewing .SRCINFO...
[0/7] Reviewing .SRCINFO, 0001-override-shared-target-build.patch...
[0/7] Reviewing .SRCINFO, 0001-override-shared-target-build.patch, PKGBUILD...
LLM auditresponse for 0001-override-shared-target-build.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
This patch modifies UnrealBuildTool's target build environment logic to default to a Shared environment when the engine is installed (`Unreal.IsEngineInstalled()`). This is a standard, expected modification for packaging Unreal Engine for a system-wide installation. There is no evidence of malicious behavior—no network requests, obfuscated code, file exfiltration, or backdoors. The patch is purely functional and serves the package's stated purpose.
</details>
<evidence></evidence>
<summary>Legitimate engine installation patch, no malicious code.</summary>
</security_assessment>

[0/7] Reviewing .SRCINFO, 0001-override-shared-target-build.patch, PKGBUILD, com.unrealengine.UE5_7Editor.desktop...
[1/7] Reviewing .SRCINFO, PKGBUILD, com.unrealengine.UE5_7Editor.desktop...
+ Reviewed 0001-override-shared-target-build.patch. Status: SAFE -- Legitimate engine installation patch, no malicious code.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard AUR .SRCINFO metadata file for the unreal-engine-src-5.7 package. It declares package metadata, dependencies, optdepends, and source filenames. All checksums are set to SKIP, which is a trust/hygiene concern but not malicious by itself and is common in AUR packaging. The file contains no executable code, no network fetch instructions, no obfuscation, and no file manipulation logic. The presence of wget, curl, git, openssh, and rsync as dependencies is normal for building/running Unreal Engine and does not indicate malicious behavior. There is no evidence of code injection, data exfiltration, backdoors, or any behavior outside standard packaging metadata.
</details>
<evidence>
</evidence>
<summary>
Standard .SRCINFO metadata with no executable or malicious content. Safe.</summary>
</security_assessment>

[1/7] Reviewing .SRCINFO, PKGBUILD, com.unrealengine.UE5_7Editor.desktop, ue5_7editor.svg...
[2/7] Reviewing PKGBUILD, com.unrealengine.UE5_7Editor.desktop, ue5_7editor.svg...
+ Reviewed .SRCINFO. Status: SAFE -- Standard .SRCINFO metadata with no executable or malicious content. Safe.
[3/7] Reviewing PKGBUILD, com.unrealengine.UE5_7Editor.desktop...
! Reviewed ue5_7editor.svg. Status: SKIPPED -- Skipping binary file: ue5_7editor.svg
[3/7] Reviewing PKGBUILD, com.unrealengine.UE5_7Editor.desktop, unreal-engine-5.7.sh...
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a straightforward packaging of the official Unreal Engine source from Epic Games&#39; GitHub repository. All source downloads target legitimate, expected hosts: `github.com/EpicGames/UnrealEngine` (via SSH/HTTPS), `cdn.unrealengine.com` (Epic&#39;s toolchain CDN), and `raw.githubusercontent.com` (alternative icon from the candy-icons project). There is no obfuscation, base64‑encoded payloads, `eval`, `curl|bash`, or any attempt to exfiltrate data or install backdoors. The only minor non‑standard element is fetching an alternative icon via `wget` during `package()`, but this downloads a static SVG file – not executable code – and is cosmetic. All other operations (git clones, patching, building with upstream scripts, installing into `$pkgdir`) are standard AUR practices for a large source package. No evidence of injected malicious code or supply‑chain tampering was found.
</details>
<evidence>
</evidence>
<summary>Legitimate UE5 source build, no malicious behavior detected.</summary>
</security_assessment>

[3/7] Reviewing PKGBUILD, com.unrealengine.UE5_7Editor.desktop, unreal-engine-5.7.sh, unreal-engine-src-5.7-pacman-cache.hook...
[4/7] Reviewing com.unrealengine.UE5_7Editor.desktop, unreal-engine-5.7.sh, unreal-engine-src-5.7-pacman-cache.hook...
+ Reviewed PKGBUILD. Status: SAFE -- Legitimate UE5 source build, no malicious behavior detected.
LLM auditresponse for com.unrealengine.UE5_7Editor.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.desktop` file for the Unreal Engine 5.7 Editor. It contains only metadata (categories, comments, icon reference, executable path, etc.) and does not include any executable code, network requests, or suspicious operations. The `Exec` line points to `/usr/bin/unreal-engine-5.7 %F`, which is the expected installed binary. The `Path` directs to the Engine's Linux binaries directory. There are no signs of malicious injection, obfuscation, or deviation from normal packaging practices.
</details>
<evidence></evidence>
<summary>Standard desktop entry file, no security issues.</summary>
</security_assessment>

[5/7] Reviewing unreal-engine-5.7.sh, unreal-engine-src-5.7-pacman-cache.hook...
+ Reviewed com.unrealengine.UE5_7Editor.desktop. Status: SAFE -- Standard desktop entry file, no security issues.
LLM auditresponse for unreal-engine-src-5.7-pacman-cache.hook:
<security_assessment>
<decision>SAFE</decision>
<details>
The hook simply runs `paccache` to remove old cached versions of the unreal-engine-src-5.7 package after installation or upgrade, keeping only the most recent version. This is a standard and benign pacman hook pattern—no network requests, obfuscation, file exfiltration, or unexpected system modifications. The command is well-known and from the `pacman-contrib` package, which is listed as a dependency.
</details>
<evidence></evidence>
<summary>Standard pacman cache cleanup hook, no malicious behavior.</summary>
</security_assessment>

[6/7] Reviewing unreal-engine-5.7.sh...
+ Reviewed unreal-engine-src-5.7-pacman-cache.hook. Status: SAFE -- Standard pacman cache cleanup hook, no malicious behavior.
LLM auditresponse for unreal-engine-5.7.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard launcher script for an installed Unreal Engine package. It creates user-level config directories and symlinks, copies a .desktop file into the user's applications directory, optionally registers the engine with UnrealVersionSelector, and launches the editor. The operations used (`find`, `sed -i`, `touch`, `ln`, `gio launch`) are all consistent with normal packaging/launcher behavior.

The `ChecksumPlaceholder` comparison is unusual but not harmful: a SHA-256 digest can never equal the literal string `ChecksumPlaceholder`, so the inner `find`/`sed` block is effectively dead code as shipped. Even if the placeholder is intended to be substituted at package build time, the block would only patch the user's own `.desktop` file to point at the installed engine binary. There is no network activity, no obfuscation, no data exfiltration, and no execution of attacker-controlled code.
</details>
<evidence></evidence>
<summary>Safe: standard launcher; placeholder checksum is dead code, no malicious behavior.</summary>
</security_assessment>

[7/7] Reviewing ...
+ Reviewed unreal-engine-5.7.sh. Status: SAFE -- Safe: standard launcher; placeholder checksum is dead code, no malicious behavior.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
(Skipped 1 file: ue5_7editor.svg)

API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 39,830
  Completion Tokens: 7,094
  Total Tokens: 46,924
  Total Cost: $0.001513
  Execution Time: 166.41 seconds

Final Status: SAFE


No issues found.


Audit Skips:

ue5_7editor.svg: [SKIPPED] Skipping binary file: ue5_7editor.svg
