---
package: unreal-engine
pkgver: 5.8.2
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 171a316e053e9c4b28731ccb1aa63b1168550d3a
prompt_tokens: 40134
completion_tokens: 5563
total_tokens: 45697
cost: 0.00254044560
execution_time: 76.14
files_reviewed: 8
files_skipped: 2
maintainer_files: 10
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-13T07:27:08Z
file_verdicts:
  - file: 0002-adapt-android-setup-script.patch
    status: skipped
    summary: "Skipping binary file: 0002-adapt-android-setup-script.patch"
  - file: 0003-disable-lumen-surface-cache-feedback-on-linux.patch
    status: safe
    summary: Safe; standard driver workaround patch.
  - file: 0001-override-shared-target-build.patch
    status: safe
    summary: Patch adjusts build environment, no malicious behavior.
  - file: .SRCINFO
    status: safe
    summary: Standard metadata file, no security concerns.
  - file: ue5editor.svg
    status: skipped
    summary: "Skipping binary file: ue5editor.svg"
  - file: com.unrealengine.UE5Editor.desktop
    status: safe
    summary: Standard desktop entry file, no malicious content.
  - file: unreal-engine-5-pacman-cache.hook
    status: safe
    summary: Standard pacman hook to clean cache, no security issues.
  - file: unreal-engine.install
    status: safe
    summary: Standard group ownership management; no malicious behavior.
  - file: PKGBUILD
    status: safe
    summary: Legitimate Unreal Engine package with no malicious code.
  - file: unreal-engine.sh
    status: safe
    summary: Routine launcher script; no malicious activity detected.
---

Materializing unreal-engine from local mirror...
Materialized unreal-engine
Analyzing unreal-engine AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
Running `makepkg --printsrcinfo` sources only the top-level (global) scope of the PKGBUILD.  
The top-level code consists entirely of benign operations: variable assignments, conditional defaults for environment variables, a few system-command invocations (`uname -m`, `command -v tr`, `find /usr/lib…`, `/lib/ld-linux-x86-64.so.2 --help`), function definitions, and simple string processing.  
No network downloads, no obfuscated code, no execution of payloads, and no dangerous commands (curl, wget, eval, base64) appear at this scope.  
All potentially risky operations (git clone, wget, file modifications) are confined to `prepare()`, `build()`, and `package()`, which are **not** executed by `makepkg --printsrcinfo`.
</details>
<evidence></evidence>
<summary>Top-level scope contains no malicious code.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Top-level scope contains no malicious code.
Reviewing the 10 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/10] Reviewing .SRCINFO...
[0/10] Reviewing .SRCINFO, 0001-override-shared-target-build.patch...
[0/10] Reviewing .SRCINFO, 0001-override-shared-target-build.patch, 0002-adapt-android-setup-script.patch...
[0/10] Reviewing .SRCINFO, 0001-override-shared-target-build.patch, 0002-adapt-android-setup-script.patch, 0003-disable-lumen-surface-cache-feedback-on-linux.patch...
[1/10] Reviewing .SRCINFO, 0001-override-shared-target-build.patch, 0003-disable-lumen-surface-cache-feedback-on-linux.patch...
! Reviewed 0002-adapt-android-setup-script.patch. Status: SKIPPED -- Skipping binary file: 0002-adapt-android-setup-script.patch
LLM auditresponse for 0003-disable-lumen-surface-cache-feedback-on-linux.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a plain patch that modifies Unreal Engine's `LinuxEngine.ini` to disable two Lumen surface cache feedback settings. This is intended to work around a known GPU driver issue (VK\_ERROR\_DEVICE\_LOST) on recent NVIDIA drivers. The patch contains no executable code, no network requests, no obfuscation, and no file operations outside of its stated purpose. It follows standard packaging practices and presents no supply-chain risk.
</details>
<evidence></evidence>
<summary>Safe; standard driver workaround patch.</summary>
</security_assessment>

[1/10] Reviewing .SRCINFO, 0001-override-shared-target-build.patch, 0003-disable-lumen-surface-cache-feedback-on-linux.patch, PKGBUILD...
[2/10] Reviewing .SRCINFO, 0001-override-shared-target-build.patch, PKGBUILD...
+ Reviewed 0003-disable-lumen-surface-cache-feedback-on-linux.patch. Status: SAFE -- Safe; standard driver workaround patch.
LLM auditresponse for 0001-override-shared-target-build.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a straightforward patch to the Unreal Build Tool’s target rules. It changes the default build environment from `Unique` to `Shared` when the engine is installed (`Unreal.IsEngineInstalled()`). This is a standard packaging adjustment, likely to avoid building a separate copy of the engine for each target program in an installed environment. No network requests, obfuscated code, file exfiltration, or unexpected system modifications are present. The changes are consistent with normal upstream build system modifications.
</details>
<evidence>
</evidence>
<summary>Patch adjusts build environment, no malicious behavior.</summary>
</security_assessment>

[2/10] Reviewing .SRCINFO, 0001-override-shared-target-build.patch, PKGBUILD, com.unrealengine.UE5Editor.desktop...
[3/10] Reviewing .SRCINFO, PKGBUILD, com.unrealengine.UE5Editor.desktop...
+ Reviewed 0001-override-shared-target-build.patch. Status: SAFE -- Patch adjusts build environment, no malicious behavior.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The `.SRCINFO` file is a metadata descriptor for the AUR package. It lists the package's upstream source (cdn.unrealengine.com, the official Epic Games CDN), dependencies, patches, and checksums. All sources have explicit SHA-256 checksums, and there are no skipped checksums or suspicious URLs. No executable code, obfuscated commands, or unexpected network destinations are present. This file is a standard, benign packaging descriptor.
</details>
<evidence></evidence>
<summary>Standard metadata file, no security concerns.</summary>
</security_assessment>

[3/10] Reviewing .SRCINFO, PKGBUILD, com.unrealengine.UE5Editor.desktop, ue5editor.svg...
[4/10] Reviewing PKGBUILD, com.unrealengine.UE5Editor.desktop, ue5editor.svg...
+ Reviewed .SRCINFO. Status: SAFE -- Standard metadata file, no security concerns.
[5/10] Reviewing PKGBUILD, com.unrealengine.UE5Editor.desktop...
! Reviewed ue5editor.svg. Status: SKIPPED -- Skipping binary file: ue5editor.svg
[5/10] Reviewing PKGBUILD, com.unrealengine.UE5Editor.desktop, unreal-engine-5-pacman-cache.hook...
LLM auditresponse for com.unrealengine.UE5Editor.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard Freedesktop.org desktop entry file for the Unreal Engine 5 Editor. It defines the application's name, icon, categories, and execution path. The `Exec` line points to the legitimate binary location within the package installation directory (`/opt/unreal-engine/Engine/Binaries/Linux/UE5Editor`), and the `Path` sets the working directory to the same location. There are no unusual commands, network requests, encoded payloads, or system modifications. The file contains only metadata for desktop integration.
</details>
<evidence></evidence>
<summary>Standard desktop entry file, no malicious content.</summary>
</security_assessment>

[5/10] Reviewing PKGBUILD, com.unrealengine.UE5Editor.desktop, unreal-engine-5-pacman-cache.hook, unreal-engine.install...
[6/10] Reviewing PKGBUILD, unreal-engine-5-pacman-cache.hook, unreal-engine.install...
+ Reviewed com.unrealengine.UE5Editor.desktop. Status: SAFE -- Standard desktop entry file, no malicious content.
LLM auditresponse for unreal-engine-5-pacman-cache.hook:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard pacman hook that runs `paccache` after installing or upgrading the `unreal-engine` package. `paccache` is a tool from the `pacman-contrib` package used to manage the package cache. The command `/usr/bin/paccache -rvk1 unreal-engine` removes all but the most recent cached version of the package (`-k1` keeps one version). This is a common and expected practice to save storage space. There is no obfuscation, network activity, or any other malicious behavior. The hook does nothing beyond its stated purpose.
</details>
<evidence></evidence>
<summary>Standard pacman hook to clean cache, no security issues.</summary>
</security_assessment>

[7/10] Reviewing PKGBUILD, unreal-engine.install...
+ Reviewed unreal-engine-5-pacman-cache.hook. Status: SAFE -- Standard pacman hook to clean cache, no security issues.
[7/10] Reviewing PKGBUILD, unreal-engine.install, unreal-engine.sh...
LLM auditresponse for unreal-engine.install:
<security_assessment>
<decision>SAFE</decision>
<details>
This `.install` script is a standard post-installation hook for an Arch Linux package. It creates a system group `unreal`, ensures the engine installation directory is group-owned by that group, and removes the group on package removal. All operations are confined to legitimate system administration tasks: reading a local config file (`/usr/share/unreal-engine/install-prefix`), creating/deleting a group, and changing file ownership. There are no network requests, obfuscated code, execution of fetched content, or manipulation of data outside the package&#39;s own scope. The script follows normal packaging practices for multi-user applications that require group-based permissions.
</details>
<evidence></evidence>
<summary>Standard group ownership management; no malicious behavior.</summary>
</security_assessment>

[8/10] Reviewing PKGBUILD, unreal-engine.sh...
+ Reviewed unreal-engine.install. Status: SAFE -- Standard group ownership management; no malicious behavior.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard AUR packaging practices for Unreal Engine. It clones the official upstream source, applies patches, runs the engine&#39;s own Setup.sh and BuildGraph scripts, and installs the compiled output. There are no hidden network requests to unknown hosts, no obfuscated code, and no attempts to exfiltrate data or execute untrusted payloads.

The only external fetch outside the engine&#39;s own domains is an optional alternative desktop icon downloaded from `raw.githubusercontent.com/EliverLara/candy-icons`. This is a static SVG file (not code) and the download is gated by a user-configurable flag. While fetching from a mutable branch is a hygiene concern, it does not execute the downloaded content and is not evidence of a supply-chain attack. All other sources are pinned with sha256 checksums or come from the official Epic Games repository.
</details>
<evidence></evidence>
<summary>Legitimate Unreal Engine package with no malicious code.</summary>
</security_assessment>

[9/10] Reviewing unreal-engine.sh...
+ Reviewed PKGBUILD. Status: SAFE -- Legitimate Unreal Engine package with no malicious code.
LLM auditresponse for unreal-engine.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
The script is a straightforward launcher for Unreal Engine 5. It performs routine setup tasks: verifying the user is not root, creating Steam-related symlinks and required directories (including a typo directory `~/.cnfig/` which appears to be a harmless mistake), copying a desktop file to the user's local applications, and launching the editor. The checksum and path placeholders are intended to be replaced during packaging and pose no risk in themselves. There are no network requests, no execution of fetched code, no obfuscation, and no attempts to exfiltrate or tamper with system files. All operations are confined to the user's home directory and standard application paths, consistent with normal packaging behavior.
</details>
<evidence>
</evidence>
<summary>Routine launcher script; no malicious activity detected.</summary>
</security_assessment>

[10/10] Reviewing ...
+ Reviewed unreal-engine.sh. Status: SAFE -- Routine launcher script; no malicious activity detected.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
(Skipped 2 files: 0002-adapt-android-setup-script.patch, ue5editor.svg)

API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 40,134
  Completion Tokens: 5,563
  Total Tokens: 45,697
  Total Cost: $0.002540
  Execution Time: 76.14 seconds

Final Status: SAFE


No issues found.


Audit Skips:

0002-adapt-android-setup-script.patch: [SKIPPED] Skipping binary file: 0002-adapt-android-setup-script.patch

ue5editor.svg: [SKIPPED] Skipping binary file: ue5editor.svg
