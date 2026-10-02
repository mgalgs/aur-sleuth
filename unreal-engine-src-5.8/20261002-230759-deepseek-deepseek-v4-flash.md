---
package: unreal-engine-src-5.8
pkgver: 5.8.3
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 42272
completion_tokens: 6756
total_tokens: 49028
cost: 0.001561952
execution_time: 87.66
files_reviewed: 7
files_skipped: 2
maintainer_files: 9
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-02T23:07:59Z
file_verdicts:
  - file: 0002-adapt-android-setup-script.patch
    status: skipped
    summary: "Skipping binary file: 0002-adapt-android-setup-script.patch"
  - file: .SRCINFO
    status: safe
    summary: "SAFE: .SRCINFO metadata only, no executable content or suspicious indicators."
  - file: 0003-disable-lumen-surface-cache-feedback-on-linux.patch
    status: safe
    summary: "Safe patch: disables buggy GPU feature."
  - file: 0001-override-shared-target-build.patch
    status: safe
    summary: Legitimate patch for engine build environment.
  - file: ue5_8editor.svg
    status: skipped
    summary: "Skipping binary file: ue5_8editor.svg"
  - file: com.unrealengine.UE5_8Editor.desktop
    status: safe
    summary: Standard .desktop file, no security issues.
  - file: unreal-engine-5.8.sh
    status: safe
    summary: Standard AUR launcher script with no malicious indicators.
  - file: unreal-engine-src-5.8-pacman-cache.hook
    status: safe
    summary: Static pacman cache cleanup hook; no malicious behavior observed.
  - file: PKGBUILD
    status: safe
    summary: Legitimate PKGBUILD; no evidence of malicious code.
---

Materializing unreal-engine-src-5.8 from local mirror...
Materialized unreal-engine-src-5.8
Analyzing unreal-engine-src-5.8 AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The top-level global scope of this PKGBUILD contains only standard variable definitions, environment variable conditionals, compiler flag detection using local system commands (`find`, `uname`, `/lib/ld-linux-x86-64.so.2 --help`), and function definitions. No network requests (`curl`, `wget`, `git`) are executed at the top level – all potentially dangerous operations (cloning the Unreal Engine repository, downloading the SDK toolchain, running `Setup.sh`) are confined to the `prepare()` function, which is not executed by `makepkg --printsrcinfo`. There is no obfuscated code, no base64-encoded payloads, and no unexpected file operations that would execute during sourcing. The block that detects CPU microarchitecture via the dynamic linker is a standard introspection technique and does not exfiltrate data or download anything. Running `makepkg --printsrcinfo` on this PKGBUILD is safe.
</details>
<evidence>
</evidence>
<summary>Top-level scope is benign; no network or dangerous commands execute.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Top-level scope is benign; no network or dangerous commands execute.
Reviewing the 9 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/9] Reviewing .SRCINFO...
[0/9] Reviewing .SRCINFO, 0001-override-shared-target-build.patch...
[0/9] Reviewing .SRCINFO, 0001-override-shared-target-build.patch, 0002-adapt-android-setup-script.patch...
[0/9] Reviewing .SRCINFO, 0001-override-shared-target-build.patch, 0002-adapt-android-setup-script.patch, 0003-disable-lumen-surface-cache-feedback-on-linux.patch...
[1/9] Reviewing .SRCINFO, 0001-override-shared-target-build.patch, 0003-disable-lumen-surface-cache-feedback-on-linux.patch...
! Reviewed 0002-adapt-android-setup-script.patch. Status: SKIPPED -- Skipping binary file: 0002-adapt-android-setup-script.patch
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a `.SRCINFO` metadata file for an AUR package. It contains no executable code, only package metadata declarations: name, version, dependencies, source filenames, and checksums. All checksums are set to `SKIP`, which is a common and permitted practice in AUR packaging (especially for VCS or manually-managed sources); this is a trust/hygiene consideration, not evidence of malice. The source list includes packaging scripts, patches, a desktop entry, a pacman hook, and an SVG icon — all consistent with a normal package build. There are no network requests, no obfuscated commands, no file manipulation instructions, and nothing that deviates from standard packaging practice.
</details>
<evidence>
</evidence>
<summary>
SAFE: .SRCINFO metadata only, no executable content or suspicious indicators.</summary>
</security_assessment>

[1/9] Reviewing .SRCINFO, 0001-override-shared-target-build.patch, 0003-disable-lumen-surface-cache-feedback-on-linux.patch, PKGBUILD...
[2/9] Reviewing 0001-override-shared-target-build.patch, 0003-disable-lumen-surface-cache-feedback-on-linux.patch, PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- SAFE: .SRCINFO metadata only, no executable content or suspicious indicators.
LLM auditresponse for 0003-disable-lumen-surface-cache-feedback-on-linux.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
This patch disables Lumen surface cache feedback on Linux to work around a known GPU driver bug (NVIDIA open kernel module 610.x / Blackwell) that causes device loss. The change is limited to the Linux engine configuration file and is purely a rendering configuration tweak. There is no network access, code execution, obfuscation, or any behavior that would indicate a supply-chain attack. The patch is consistent with upstream packaging practices and directly serves the application's purpose of preventing crashes on affected hardware.
</details>
<evidence>

</evidence>
<summary>Safe patch: disables buggy GPU feature.</summary>
</security_assessment>

[2/9] Reviewing 0001-override-shared-target-build.patch, 0003-disable-lumen-surface-cache-feedback-on-linux.patch, PKGBUILD, com.unrealengine.UE5_8Editor.desktop...
[3/9] Reviewing 0001-override-shared-target-build.patch, PKGBUILD, com.unrealengine.UE5_8Editor.desktop...
+ Reviewed 0003-disable-lumen-surface-cache-feedback-on-linux.patch. Status: SAFE -- Safe patch: disables buggy GPU feature.
LLM auditresponse for 0001-override-shared-target-build.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
This patch modifies UnrealBuildTool's `TargetRules.cs` to force a shared build environment when the engine is installed (`Unreal.IsEngineInstalled()`). The three small changes replace `TargetBuildEnvironment.Unique` returns with a conditional that returns `Shared` when running in an installed engine context. This is a standard packaging adjustment to ensure that the AUR-installed engine source builds correctly without requiring a unique environment per project. No suspicious network requests, obfuscated code, file operations, or system modifications are introduced. The patch is purely source-level logic changes to the build system, consistent with expected AUR packaging practices.
</details>
<evidence>
</evidence>
<summary>Legitimate patch for engine build environment.</summary>
</security_assessment>

[3/9] Reviewing 0001-override-shared-target-build.patch, PKGBUILD, com.unrealengine.UE5_8Editor.desktop, ue5_8editor.svg...
[4/9] Reviewing PKGBUILD, com.unrealengine.UE5_8Editor.desktop, ue5_8editor.svg...
+ Reviewed 0001-override-shared-target-build.patch. Status: SAFE -- Legitimate patch for engine build environment.
[4/9] Reviewing PKGBUILD, com.unrealengine.UE5_8Editor.desktop, ue5_8editor.svg, unreal-engine-5.8.sh...
[5/9] Reviewing PKGBUILD, com.unrealengine.UE5_8Editor.desktop, unreal-engine-5.8.sh...
! Reviewed ue5_8editor.svg. Status: SKIPPED -- Skipping binary file: ue5_8editor.svg
LLM auditresponse for com.unrealengine.UE5_8Editor.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard `.desktop` launcher for the Unreal Engine 5.8 Editor. It defines desktop integration metadata such as the application name, icon, comment, categories, and execution command. The `Exec` line runs `/usr/bin/unreal-engine-5.8 %F`, which is a wrapper script installed by the package. The `Path` is set to the expected installation directory under `/opt/unreal-engine-src-5.8/Engine/Binaries/Linux/`. There are no network requests, obfuscated code, dangerous commands, or any operations that could exfiltrate data or execute arbitrary code. This file is entirely benign and conforms to normal packaging practices.
</details>
<evidence></evidence>
<summary>Standard .desktop file, no security issues.</summary>
</security_assessment>

[5/9] Reviewing PKGBUILD, com.unrealengine.UE5_8Editor.desktop, unreal-engine-5.8.sh, unreal-engine-src-5.8-pacman-cache.hook...
[6/9] Reviewing PKGBUILD, unreal-engine-5.8.sh, unreal-engine-src-5.8-pacman-cache.hook...
+ Reviewed com.unrealengine.UE5_8Editor.desktop. Status: SAFE -- Standard .desktop file, no security issues.
LLM auditresponse for unreal-engine-5.8.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This script is a standard user‑side launcher for an AUR‑installed Unreal Engine 5.8. It creates required directories in the user&#39;s home, manages a Steam compatibility symlink, copies a desktop entry, and registers the engine with UnrealVersionSelector. All operations are local to the user&#39;s home and the installation path (`/opt/unreal-engine-src-5.8/`). The placeholder strings (`ChecksumPlaceholder`, `InstalledLocationPlaceholder`) are typical of packaging scripts that get substituted during PKGBUILD processing; they are not evidence of malice. There are no network requests, obfuscated code, or execution of untrusted content. The behaviour is entirely consistent with legitimate packaging and post‑install configuration of Unreal Engine.
</details>
<evidence>
</evidence>
<summary>Standard AUR launcher script with no malicious indicators.</summary>
</security_assessment>

[7/9] Reviewing PKGBUILD, unreal-engine-src-5.8-pacman-cache.hook...
+ Reviewed unreal-engine-5.8.sh. Status: SAFE -- Standard AUR launcher script with no malicious indicators.
LLM auditresponse for unreal-engine-src-5.8-pacman-cache.hook:
 <security_assessment>
<decision>SAFE</decision>
<details>
This is a pacman hook that runs the standard `paccache` utility from `pacman-contrib` after transactions involving the `unreal-engine-src-5.8` package. It removes older cached package versions, keeping only one, which is a normal storage-cleanup operation.

The command is static: `/usr/bin/paccache -rvk1 unreal-engine-src-5.8`. It does not download or execute anything from external hosts, does not use obfuscation, does not read or exfiltrate sensitive files, and does not modify system files outside the pacman cache. The use of `/bin/sh -c` is unnecessary but harmless here because the command line contains no user-controlled variables or shell expansion. There is no evidence of malicious behavior.
</details>
<evidence>
</evidence>
<summary>
Static pacman cache cleanup hook; no malicious behavior observed.</summary>
</security_assessment>

[8/9] Reviewing PKGBUILD...
+ Reviewed unreal-engine-src-5.8-pacman-cache.hook. Status: SAFE -- Static pacman cache cleanup hook; no malicious behavior observed.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD is a legitimate packaging script for the Unreal Engine source package. It clones the engine from Epic Games' official GitHub repository (pinned to tag `5.8.3-release`), downloads the SDK toolchain from the official `cdn.unrealengine.com` CDN, applies patches provided in the AUR source, and builds the engine using the upstream BuildGraph system.  

The only network fetch to a third-party host is an optional icon (`ue4editor.svg`) downloaded from the `EliverLara/candy-icons` GitHub repository when the user overrides the default logo (`UE_USE_DEFAULT_LOGO_AT_INSTALL=0`). This is a static SVG file—not executable code—and is used solely as a desktop icon. While this fetches from an untrusted source, it poses minimal risk and is not genuine evidence of a supply-chain attack.  

All other behaviors (clone/update with `git fetch` + `git reset --hard` to a fixed tag, SDK download, patch application, build execution, and installation) conform to standard AUR practices for building large source packages. No obfuscated code, command injection, exfiltration, backdoors, or unexpected system modifications were found. The use of `SKIP` checksums on local source files is a hygiene concern but not malicious.
</details>
<evidence></evidence>
<summary>Legitimate PKGBUILD; no evidence of malicious code.</summary>
</security_assessment>

[9/9] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Legitimate PKGBUILD; no evidence of malicious code.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
(Skipped 2 files: 0002-adapt-android-setup-script.patch, ue5_8editor.svg)

API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 42,272
  Completion Tokens: 6,756
  Total Tokens: 49,028
  Total Cost: $0.001562
  Execution Time: 87.66 seconds

Final Status: SAFE


No issues found.


Audit Skips:

0002-adapt-android-setup-script.patch: [SKIPPED] Skipping binary file: 0002-adapt-android-setup-script.patch

ue5_8editor.svg: [SKIPPED] Skipping binary file: ue5_8editor.svg
