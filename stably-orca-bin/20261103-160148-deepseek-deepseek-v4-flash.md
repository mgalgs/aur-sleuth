---
package: stably-orca-bin
pkgver: 1.4.247
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 13600
completion_tokens: 1841
total_tokens: 15441
cost: 0.001572662
execution_time: 18.93
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-11-03T16:01:47Z
file_verdicts:
  - file: stably-orca.desktop
    status: safe
    summary: Standard desktop entry; no malicious or suspicious content found.
  - file: PKGBUILD
    status: safe
    summary: Standard prebuilt-AppImage PKGBUILD; checksummed upstream GitHub source, no malicious behavior found.
  - file: .SRCINFO
    status: safe
    summary: Metadata only; sources pinned to official upstream release with checksums.
  - file: stably-orca.sh
    status: safe
    summary: Simple launcher wrapper for packaged AppRun; no malicious behavior found.
---

Materializing stably-orca-bin from local mirror...
Materialized stably-orca-bin
Analyzing stably-orca-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only standard top-level metadata: `pkgname`, `pkgver`, `pkgdesc`, `arch`, `url`, `license`, `depends`, `provides`, `conflicts`, `options`, and the `source`/`sha256sums`/`noextract` arrays. Sourcing this file executes no command substitutions, network requests, or shell pipelines at global scope. All checksums are pinned (no `SKIP`), and the single binary source points to the project's own GitHub release URL (`https://github.com/stablyai/orca/releases/download/v${pkgver}/orca-linux.AppImage`), which is the expected upstream location.

All operational code lives inside `prepare()` and `package()`, which `makepkg --printsrcinfo` does not invoke. Those functions merely chmod and run the AppImage with `--appimage-extract`, copy the extracted tree into `$pkgdir`, and install a wrapper script/desktop file/icon — ordinary packaging actions well within scope for the later full audit. Nothing in the file performs data exfiltration, obfuscated execution, or downloads from unexpected hosts during parsing.
</details>
<evidence>
</evidence>
<summary>Top-level scope is only static metadata; no code executes on source.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Top-level scope is only static metadata; no code executes on source.
Reviewing the 4 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/4] Reviewing .SRCINFO...
[0/4] Reviewing .SRCINFO, PKGBUILD...
[0/4] Reviewing .SRCINFO, PKGBUILD, stably-orca.desktop...
LLM auditresponse for stably-orca.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard XDG desktop entry for an Electron-based IDE. It contains only declarative metadata fields (`Name`, `Exec`, `Icon`, `Categories`, etc.) and no shell logic, network access, file operations, or encoded content.

`Exec=stably-orca %U` launches the package's own installed binary and passes a single URL argument in the standard way (`%U`). `StartupWMClass=orca` is normal window-manager association. Nothing here deviates from ordinary packaging practice, and there is no evidence of malicious behavior.
</details>
<evidence>
</evidence>
<summary>
Standard desktop entry; no malicious or suspicious content found.
</summary>
</security_assessment>

[0/4] Reviewing .SRCINFO, PKGBUILD, stably-orca.desktop, stably-orca.sh...
[1/4] Reviewing .SRCINFO, PKGBUILD, stably-orca.sh...
+ Reviewed stably-orca.desktop. Status: SAFE -- Standard desktop entry; no malicious or suspicious content found.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a conventional `-bin` PKGBUILD for an Electron application. The only remote source is the project's own GitHub release asset (`https://github.com/stablyai/orca/releases/download/v${pkgver}/orca-linux.AppImage`), consistent with the declared `url` and package purpose, and it is integrity-pinned with a real SHA-256 (not `SKIP`). The two local companion files (`stably-orca.sh`, `stably-orca.desktop`) are also checksummed. There are no downloads from unrelated hosts, no piping of remote content into a shell, no `eval`/base64/hex-obfuscated blobs, and no network or filesystem activity outside `$srcdir`/`$pkgdir`.

`prepare()` simply makes the AppImage executable and runs its built-in `--appimage-extract` to unpack the bundle — standard practice for AppImage packaging. `package()` copies the extracted tree into `/opt/stably-orca`, applies a recursive `chmod` to make it world-readable/traversable (a normal fix for AppImages shipping restrictive modes), installs the launcher wrapper, desktop file, and theme-aware icons, with a sensible failure if no icon is found. The explanatory comments are ordinary maintainer notes. Nothing here deviates from expected packaging behavior, and there is no evidence of data exfiltration, backdoors, or execution of attacker-controlled code.

Minor hygiene notes (not threats): the package pulls a prebuilt upstream binary (trust in upstream is required), and the recursive `chmod -R u+rwX,go+rX` on the installed tree is broad but scoped strictly to the package's own `/opt` directory.
</details>
<evidence>
</evidence>
<summary>
Standard prebuilt-AppImage PKGBUILD; checksummed upstream GitHub source, no malicious behavior found.
</summary>
</security_assessment>

[2/4] Reviewing .SRCINFO, stably-orca.sh...
+ Reviewed PKGBUILD. Status: SAFE -- Standard prebuilt-AppImage PKGBUILD; checksummed upstream GitHub source, no malicious behavior found.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is only a .SRCINFO metadata file. It declares the package source as an AppImage downloaded from the upstream project's official GitHub release URL and includes two local packaging files. All three sources have SHA-256 checksums, so there is no SKIP-checksum concern. The noextract option is normal for AppImage packages, and the dependencies are standard Electron/GTK runtime libraries. There are no executable commands, network requests beyond the declared upstream source, obfuscation, or system modifications in this file.
</details>
<evidence>
</evidence>
<summary>
Metadata only; sources pinned to official upstream release with checksums.
</summary>
</security_assessment>

[3/4] Reviewing stably-orca.sh...
+ Reviewed .SRCINFO. Status: SAFE -- Metadata only; sources pinned to official upstream release with checksums.
LLM auditresponse for stably-orca.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a minimal launcher wrapper for the Stably AI Orca Electron application. It does three things: exports `APPDIR=/opt/stably-orca` so the upstream `AppRun` script can locate its resources when the first argument is a flag, documents an optional Wayland override in comments, and `exec`s `/opt/stably-orca/AppRun` with `--disable-features=Vulkan` plus the user's arguments.

There is no network access, no downloading or executing of external content, no obfuscation or encoded payloads, no file manipulation outside the package's own install tree, and no privileged operations. The `exec` target is the packaged upstream entry point in `/opt`, which is consistent with the package's stated purpose (launching the bundled AppImage tree). The HTML entities (`&quot;`, `&apos;`) are artifacts of the input escaping, not part of the actual shell code. Nothing here deviates from ordinary packaging/launcher practice.
</details>
<evidence>
</evidence>
<summary>
Simple launcher wrapper for packaged AppRun; no malicious behavior found.
</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed stably-orca.sh. Status: SAFE -- Simple launcher wrapper for packaged AppRun; no malicious behavior found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 13,600
  Completion Tokens: 1,841
  Total Tokens: 15,441
  Total Cost: $0.001573
  Execution Time: 18.93 seconds

Final Status: SAFE


No issues found.
