---
package: modrinth-enhanced
pkgver: 0.21.4.r2
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 22052
completion_tokens: 3671
total_tokens: 25723
cost: 0.00138269376
execution_time: 50.33
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-19T07:12:55Z
file_verdicts:
  - file: modrinth-enhanced.sh
    status: safe
    summary: Standard launcher with LD_PRELOAD shim; no malicious behavior.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD for a forked app; no malicious behavior found.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata with pinned checksums and expected dependencies; no malicious behavior found.
  - file: vblank-shim.c
    status: safe
    summary: Clean LD_PRELOAD shim; no malicious behavior found.
---

Materializing modrinth-enhanced from local mirror...
Materialized modrinth-enhanced
Analyzing modrinth-enhanced AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD's global scope contains only standard variable definitions (pkgname, pkgver, source, sha256sums, etc.) and a conditional that appends to arrays. No dangerous commands like eval, curl, wget, or git operations are present at the top level. Since `makepkg --printsrcinfo` only sources the global scope and does not execute functions, there is no risk of malicious code execution during this step.
</details>
<evidence></evidence>
<summary>No dangerous top-level code; sourcing is safe.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous top-level code; sourcing is safe.
Reviewing the 4 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/4] Reviewing PKGBUILD...
[0/4] Reviewing PKGBUILD, modrinth-enhanced.sh...
[0/4] Reviewing PKGBUILD, modrinth-enhanced.sh, .SRCINFO...
LLM auditresponse for modrinth-enhanced.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
The script is a standard launcher for the Modrinth Enhanced application. It conditionally preloads a library (`libwebkit-vblank-shim.so`) from the package's own installation directory (`/usr/lib/modrinth-enhanced/`) using `LD_PRELOAD` — a common technique for injecting runtime workarounds. The script also adjusts the GDK backend to X11 when the NVIDIA DRM kernel module is detected, which is an expected compatibility fix. No network requests, obfuscated code, or dangerous system modifications are present. The script simply sets an environment variable and then executes the main application binary via `exec`. This is normal and safe packaging behavior.
</details>
<evidence></evidence>
<summary>Standard launcher with LD_PRELOAD shim; no malicious behavior.</summary>
</security_assessment>

[0/4] Reviewing PKGBUILD, modrinth-enhanced.sh, .SRCINFO, vblank-shim.c...
[1/4] Reviewing PKGBUILD, .SRCINFO, vblank-shim.c...
+ Reviewed modrinth-enhanced.sh. Status: SAFE -- Standard launcher with LD_PRELOAD shim; no malicious behavior.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard packaging practices for a forked project that applies patches on top of an upstream release. All sources are pinned via checksums (no SKIP), and the build process uses expected tools (git am, pnpm, cargo, gcc, tauri). The prepare() function applies patches from the forked tarball and rebases them onto the upstream tag – this is normal for a patch‑stack fork. The only network access in build() is for fetching dependency trees (npm, Gradle, Cargo), which is documented and inherent to the software. There is no obfuscated code, no unexpected curl/wget to execute arbitrary payloads, no exfiltration of system data, and no tampering with files outside the package’s own install paths. The vblank‑shim.c and wrapper script are part of the project’s stated purpose (Linux fixes). No supply‑chain attack indicators are present.
</details>
<evidence>
</evidence>
<summary>Standard PKGBUILD for a forked app; no malicious behavior found.</summary>
</security_assessment>

[2/4] Reviewing .SRCINFO, vblank-shim.c...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD for a forked app; no malicious behavior found.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard AUR .SRCINFO metadata file for the `modrinth-enhanced` package. It declares normal build dependencies (cargo, git, npm, pnpm, webkit2gtk, GTK3, etc.), runtime dependencies, and source tarballs fetched from the upstream project's GitHub releases (`Felitendo/Modrinth-Enhanced` and `modrinth/code`). All sources have pinned SHA-256 checksums, and no source uses a `SKIP` checksum. The `noextract` entry for the upstream code tarball is a normal packaging technique when the build script handles extraction itself.

There is no embedded script, no network exfiltration, no obfuscated command, and no unexpected file operation. The file is only package metadata; it contains no executable logic. The package description and dependency list are consistent with a desktop application built from source. No genuinely malicious or supply-chain indicators are present.
</details>
<evidence>
</evidence>
<summary>
Standard AUR metadata with pinned checksums and expected dependencies; no malicious behavior found.</summary>
</security_assessment>

[3/4] Reviewing vblank-shim.c...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata with pinned checksums and expected dependencies; no malicious behavior found.
LLM auditresponse for vblank-shim.c:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `vblank-shim.c` is a well-documented LD_PRELOAD shim that implements three targeted workarounds for NVIDIA driver and GTK3/WebKitGTK interactions: correcting DRM connector physical sizes, emulating blocking vblank waits when the driver lacks support, and filling in GTK3 frame timing refresh intervals. All intercepted functions (drmModeGetConnector, drmWaitVBlank, gdk_window_get_frame_clock) are used only for their stated purposes, with no extraneous operations. The `leave_ld_preload` constructor cleanly removes the shim from the environment after loading to prevent spreading to child processes—a standard practice for LD_PRELOAD helpers. There is no evidence of network requests, data exfiltration, obfuscated code, backdoors, or tampering with files outside the shim's own process memory. The code is transparent, modifiable at runtime through environment variables, and serves only to improve display refresh rate behavior for the target application.
</details>
<evidence></evidence>
<summary>Clean LD_PRELOAD shim; no malicious behavior found.</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed vblank-shim.c. Status: SAFE -- Clean LD_PRELOAD shim; no malicious behavior found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 22,052
  Completion Tokens: 3,671
  Total Tokens: 25,723
  Total Cost: $0.001383
  Execution Time: 50.33 seconds

Final Status: SAFE


No issues found.
