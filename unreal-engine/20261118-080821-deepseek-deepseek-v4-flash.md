---
package: unreal-engine
pkgver: 5.8.3
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 3f8f339d2184315a824bf6b8e30068212deac13a
prompt_tokens: 40290
completion_tokens: 8820
total_tokens: 49110
cost: 0.00521370
execution_time: 40.84
files_reviewed: 8
files_skipped: 2
maintainer_files: 10
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-11-18T08:08:21Z
file_verdicts:
  - file: 0002-adapt-android-setup-script.patch
    status: skipped
    summary: "Skipping binary file: 0002-adapt-android-setup-script.patch"
  - file: 0001-override-shared-target-build.patch
    status: safe
    summary: Benign build system patch, no security concerns.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata file, no malicious content.
  - file: 0003-disable-lumen-surface-cache-feedback-on-linux.patch
    status: safe
    summary: Benign platform config patch; no security issues.
  - file: ue5editor.svg
    status: skipped
    summary: "Skipping binary file: ue5editor.svg"
  - file: com.unrealengine.UE5Editor.desktop
    status: safe
    summary: Standard .desktop file with no security risks.
  - file: unreal-engine-5-pacman-cache.hook
    status: safe
    summary: Standard pacman cache cleanup hook, no security issues.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD for Unreal Engine; no malicious behavior.
  - file: unreal-engine.sh
    status: safe
    summary: Standard AUR helper script, no malicious behavior found.
  - file: unreal-engine.install
    status: safe
    summary: Standard group ownership management script for AUR package.
---

Materializing unreal-engine from local mirror...
Materialized unreal-engine
Analyzing unreal-engine AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
Analysis of the top-level / global scope (the only part executed during `makepkg --printsrcinfo`) reveals no dangerous operations. The only command substitutions present are `$(uname -m)`, `$(command -v tr)`, `$(echo ... | tr ...)`, and `$(find /usr/lib /usr/lib64 -name 'LLVMPolly.so' -print -quit 2>/dev/null)`. These are all standard, read-only commands that do not modify the system, download from the network, or execute untrusted payloads. Variable assignments (including the environment variable exports and the `source` array) and function definitions are also safe and conventional. The `prepare()`, `build()`, and `package()` functions are defined but are not invoked during `makepkg --printsrcinfo`, so their content is out of scope for this check. No obfuscated code, suspicious `eval`/`curl`/`wget` usage, or data exfiltration attempts exist in the top-level scope.
</details>
<evidence></evidence>
<summary>No dangerous top-level execution; safe to source.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous top-level execution; safe to source.
Reviewing the 10 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/10] Reviewing .SRCINFO...
[0/10] Reviewing .SRCINFO, 0001-override-shared-target-build.patch...
[0/10] Reviewing .SRCINFO, 0001-override-shared-target-build.patch, 0002-adapt-android-setup-script.patch...
[0/10] Reviewing .SRCINFO, 0001-override-shared-target-build.patch, 0002-adapt-android-setup-script.patch, 0003-disable-lumen-surface-cache-feedback-on-linux.patch...
[1/10] Reviewing .SRCINFO, 0001-override-shared-target-build.patch, 0003-disable-lumen-surface-cache-feedback-on-linux.patch...
! Reviewed 0002-adapt-android-setup-script.patch. Status: SKIPPED -- Skipping binary file: 0002-adapt-android-setup-script.patch
LLM auditresponse for 0001-override-shared-target-build.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
This patch modifies the Unreal Build Tool's C# source to force a shared build environment when the engine is installed (i.e., a packaged release). This is a typical packaging adjustment for AUR distributions where the engine is installed system-wide and program builds should reuse the shared environment rather than creating unique per-project environments. There is no obfuscated code, network requests, file exfiltration, or execution of untrusted content. The changes are straightforward logic checks on `Unreal.IsEngineInstalled()` and reassigning `TargetBuildEnvironment`. This is consistent with standard packaging practices.
</details>
<evidence>

</evidence>
<summary>Benign build system patch, no security concerns.</summary>
</security_assessment>

[1/10] Reviewing .SRCINFO, 0001-override-shared-target-build.patch, 0003-disable-lumen-surface-cache-feedback-on-linux.patch, PKGBUILD...
[2/10] Reviewing .SRCINFO, 0003-disable-lumen-surface-cache-feedback-on-linux.patch, PKGBUILD...
+ Reviewed 0001-override-shared-target-build.patch. Status: SAFE -- Benign build system patch, no security concerns.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a `.SRCINFO` metadata file for the `unreal-engine` AUR package. It contains only declarative key-value pairs defining package metadata such as version, architecture, dependencies, sources, and checksums. No executable code, scripts, or obfuscated content is present. All source files are provided with explicit SHA-256 checksums, and the tarball URL points to the official Epic Games CDN. The content is consistent with standard AUR packaging practices and does not exhibit any signs of a supply-chain attack.
</details>
<evidence>
</evidence>
<summary>Standard AUR metadata file, no malicious content.</summary>
</security_assessment>

[2/10] Reviewing .SRCINFO, 0003-disable-lumen-surface-cache-feedback-on-linux.patch, PKGBUILD, com.unrealengine.UE5Editor.desktop...
[3/10] Reviewing 0003-disable-lumen-surface-cache-feedback-on-linux.patch, PKGBUILD, com.unrealengine.UE5Editor.desktop...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata file, no malicious content.
LLM auditresponse for 0003-disable-lumen-surface-cache-feedback-on-linux.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard patch that modifies `Engine/Config/Linux/LinuxEngine.ini` to set two configuration options (`r.LumenScene.SurfaceCache.Feedback=0` and `r.Lumen.Reflections.SurfaceCacheFeedback=0`). The patch includes explanatory comments about why it is needed (avoiding GPU driver faults on Linux with NVIDIA open kernel modules). There is no obfuscation, no network access, no dangerous commands, no system modification beyond the scope of the game engine's own configuration. This is a routine and expected packaging adjustment for platform compatibility.
</details>
<evidence></evidence>
<summary>Benign platform config patch; no security issues.</summary>
</security_assessment>

[4/10] Reviewing PKGBUILD, com.unrealengine.UE5Editor.desktop...
+ Reviewed 0003-disable-lumen-surface-cache-feedback-on-linux.patch. Status: SAFE -- Benign platform config patch; no security issues.
[4/10] Reviewing PKGBUILD, com.unrealengine.UE5Editor.desktop, ue5editor.svg...
[4/10] Reviewing PKGBUILD, com.unrealengine.UE5Editor.desktop, ue5editor.svg, unreal-engine-5-pacman-cache.hook...
[5/10] Reviewing PKGBUILD, com.unrealengine.UE5Editor.desktop, unreal-engine-5-pacman-cache.hook...
! Reviewed ue5editor.svg. Status: SKIPPED -- Skipping binary file: ue5editor.svg
LLM auditresponse for com.unrealengine.UE5Editor.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.desktop` file providing desktop integration metadata for the Unreal Engine 5 Editor. It defines the application's name, icon, categories, and the executable command (`/opt/unreal-engine/Engine/Binaries/Linux/UE5Editor %F`). There are no network requests, no encoded/obfuscated commands, no suspicious file operations, and no deviation from normal packaging practices. The file is benign.
</details>
<evidence></evidence>
<summary>Standard .desktop file with no security risks.</summary>
</security_assessment>

[5/10] Reviewing PKGBUILD, com.unrealengine.UE5Editor.desktop, unreal-engine-5-pacman-cache.hook, unreal-engine.install...
[6/10] Reviewing PKGBUILD, unreal-engine-5-pacman-cache.hook, unreal-engine.install...
+ Reviewed com.unrealengine.UE5Editor.desktop. Status: SAFE -- Standard .desktop file with no security risks.
LLM auditresponse for unreal-engine-5-pacman-cache.hook:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard pacman hook that cleans up old cached versions of the `unreal-engine` package after installation or upgrade. It runs `/usr/bin/paccache -rvk1 unreal-engine`, a routine utility from `pacman-contrib` that removes older package cache entries, keeping only the most recent one. There are no network requests, obfuscation, or unexpected commands. The hook is a normal maintenance operation to save disk space and does not introduce any security risk.
</details>
<evidence>
</evidence>
<summary>Standard pacman cache cleanup hook, no security issues.</summary>
</security_assessment>

[6/10] Reviewing PKGBUILD, unreal-engine-5-pacman-cache.hook, unreal-engine.install, unreal-engine.sh...
[7/10] Reviewing PKGBUILD, unreal-engine.install, unreal-engine.sh...
+ Reviewed unreal-engine-5-pacman-cache.hook. Status: SAFE -- Standard pacman cache cleanup hook, no security issues.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD builds the Unreal Engine from Epic Games' official source repository. All source downloads point to known, expected origins: the toolchain from `cdn.unrealengine.com` (with a pinned checksum), the engine source from `github.com/EpicGames/UnrealEngine` (via SSH), and a third-party QtCreator plugin from `github.com/fire-archive/QtCreatorSourceCodeAccess`. Patches and auxiliary files are local to the AUR package and have pinned checksums.

The one external download without a checksum is an optional icon SVG and license file fetched from `raw.githubusercontent.com/EliverLara/candy-icons` (on the master branch) when the user opts out of the default logo. This is a static image asset placed in `/usr/share/pixmaps/` and `/usr/share/UnrealEngine/`; it is never executed or interpreted as code. While the mutable branch reference is a reproducibility concern, it poses no genuine supply-chain risk because the content is inert.

All other operations—cloning, fetching tags, running Setup.sh, applying patches, building with BuildGraph, and installing files—are standard packaging steps for this engine. There is no obfuscated code, no data exfiltration, no backdoor, and no unexpected execution of untrusted content. The file is SAFE.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD for Unreal Engine; no malicious behavior.</summary>
</security_assessment>

[8/10] Reviewing unreal-engine.install, unreal-engine.sh...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD for Unreal Engine; no malicious behavior.
LLM auditresponse for unreal-engine.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This script is a standard AUR launch helper for Unreal Engine 5 Editor. It performs routine local file operations: creating directories, symlinks, copying a desktop file, and launching the application. All operations are confined to the user's home directory and system-installed desktop file locations. There are no network requests, no downloads, no obfuscated code, and no execution of external untrusted content. The placeholder strings (e.g., `InstalledLocationPlaceholder`, `ChecksumPlaceholder`) are expected to be replaced during packaging and are not indicators of malice. The typo `~/.cnfig/Epic/UnrealEngine/5.0/Intermediate/` is a packaging bug but not a security threat. The script's behavior is consistent with normal Unreal Engine setup and launching.
</details>
<evidence></evidence>
<summary>Standard AUR helper script, no malicious behavior found.</summary>
</security_assessment>

[9/10] Reviewing unreal-engine.install...
+ Reviewed unreal-engine.sh. Status: SAFE -- Standard AUR helper script, no malicious behavior found.
LLM auditresponse for unreal-engine.install:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard Arch Linux package install script (.install) for the unreal-engine AUR package. It manages a system group `unreal` to control access to the engine installation directory. The script reads the install prefix from a file or defaults to `/opt/unreal-engine`, then creates the group (if missing) and recursively changes group ownership of that directory. This is expected behavior for multi-user game engine installations. There is no network activity, no obfuscated code, no execution of untrusted content, no data exfiltration, and no backdoors. All commands (getent, groupadd, chgrp, groupdel) are standard system administration tools. The script does not accept arbitrary input or execute external resources. It is safe.
</details>
<evidence>
</evidence>
<summary>Standard group ownership management script for AUR package.</summary>
</security_assessment>

[10/10] Reviewing ...
+ Reviewed unreal-engine.install. Status: SAFE -- Standard group ownership management script for AUR package.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
(Skipped 2 files: 0002-adapt-android-setup-script.patch, ue5editor.svg)

API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 40,290
  Completion Tokens: 8,820
  Total Tokens: 49,110
  Total Cost: $0.005214
  Execution Time: 40.84 seconds

Final Status: SAFE


No issues found.


Audit Skips:

0002-adapt-android-setup-script.patch: [SKIPPED] Skipping binary file: 0002-adapt-android-setup-script.patch

ue5editor.svg: [SKIPPED] Skipping binary file: ue5editor.svg
