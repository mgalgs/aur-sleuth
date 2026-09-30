---
package: modrinth-enhanced
pkgver: 0.21.4
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 171a316e053e9c4b28731ccb1aa63b1168550d3a
prompt_tokens: 21959
completion_tokens: 10373
total_tokens: 32332
cost: 0.00298935
execution_time: 270.77
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-17T23:39:03Z
file_verdicts:
  - file: modrinth-enhanced.sh
    status: safe
    summary: Standard wrapper script, no security concerns.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata, no malicious content.
  - file: vblank-shim.c
    status: safe
    summary: Legitimate vblank shim with no malicious code.
  - file: PKGBUILD
    status: safe
    summary: Conventional from-source AUR package; pinned checksums, no malicious or obfuscated behavior.
---

Materializing modrinth-enhanced from local mirror...
Materialized modrinth-enhanced
Analyzing modrinth-enhanced AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
 <security_assessment>
<decision>SAFE</decision>
<details>
The global/top-level scope of this PKGBUILD was inspected for anything that would execute during `makepkg --printsrcinfo`. The only top-level statements are variable/array assignments, including a conditional that appends to `source` and `noextract` based on `$_base` and `$_upstream`; these do not download, execute, or exfiltrate anything at parse time. The potentially complex operations (git init/am/rebase, sed, cp, pnpm install, cargo fetch, node-gyp setup, and the launcher/binary packaging steps) are all inside `prepare()`/`build()`/`package()` functions, which are not executed by `makepkg --printsrcinfo`. The source URLs point to the package's own upstream GitHub repository (modrinth/code and Felitendo/Modrinth-Enhanced), and no top-level command substitution, `eval`, `curl|bash`, or remote-code execution pattern is present. A later full audit of the function bodies is still advisable, but nothing in the sourced top-level scope is dangerous for this command.
</details>
<evidence></evidence>
<summary>No top-level code in the PKGBUILD executes malicious operations during `makepkg --printsrcinfo`; only variable/array assignments are active at parse time.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No top-level code in the PKGBUILD executes malicious operations during `makepkg --printsrcinfo`; only variable/array assignments are active at parse time.
Reviewing the 4 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/4] Reviewing .SRCINFO...
[0/4] Reviewing .SRCINFO, PKGBUILD...
[0/4] Reviewing .SRCINFO, PKGBUILD, modrinth-enhanced.sh...
LLM auditresponse for modrinth-enhanced.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This script is a straightforward wrapper that preloads a shared library (`libwebkit-vblank-shim.so`) for the Modrinth Enhanced application. It conditionally sets the GTK backend to X11 when NVIDIA drivers are detected, then executes the main binary. All paths are absolute and within the package's own directory. There is no network activity, no obfuscated code, no file operations outside the package scope, and no execution of untrusted content. The use of `LD_PRELOAD` is expected for the stated purpose of the shim library. No supply-chain attack indicators are present.
</details>
<evidence></evidence>
<summary>Standard wrapper script, no security concerns.</summary>
</security_assessment>

[0/4] Reviewing .SRCINFO, PKGBUILD, modrinth-enhanced.sh, vblank-shim.c...
[1/4] Reviewing .SRCINFO, PKGBUILD, vblank-shim.c...
+ Reviewed modrinth-enhanced.sh. Status: SAFE -- Standard wrapper script, no security concerns.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard AUR `.SRCINFO` metadata file. It defines the package name, version, dependencies, and four source files with their respective SHA256 checksums. The sources are from GitHub (the upstream `modrinth/code` and the fork `Felitendo/Modrinth-Enhanced`) plus two local files (`vblank-shim.c`, `modrinth-enhanced.sh`). All checksums are pinned and not set to `SKIP`. No executable code, obfuscation, suspicious network destinations, or unusual operations are present. The fork is expected for a patched package. The file contains only declarative metadata and poses no security threat.
</details>
<evidence></evidence>
<summary>Standard AUR metadata, no malicious content.</summary>
</security_assessment>

[2/4] Reviewing PKGBUILD, vblank-shim.c...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata, no malicious content.
LLM auditresponse for vblank-shim.c:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a well-commented C source for an LD_PRELOAD shim that corrects NVIDIA driver deficiencies in WebKitGTK on GTK3. Its operations are fully transparent and serve the stated purpose: correcting monitor connector physical size, emulating vblank waits when the driver does not support them, and filling in missing refresh intervals in GTK frame timings. All intercepted functions (drmModeGetConnector, drmWaitVBlank, gdk_window_get_frame_clock) are intercepted for these specific fixes. The code uses standard techniques (dlsym, signal hooks, clock_nanosleep) and proactively removes itself from LD_PRELOAD to avoid affecting child processes. There is no evidence of malicious intent: no network requests, no exfiltration of data, no obfuscation, no execution of external code, and no tampering with system files outside the scope of the application’s graphics pipeline. The memory probing to locate a private GTK struct field is unusual but not malicious—it is a fragile hack, not a supply-chain attack.
</details>
<evidence></evidence>
<summary>Legitimate vblank shim with no malicious code.</summary>
</security_assessment>

[3/4] Reviewing PKGBUILD...
+ Reviewed vblank-shim.c. Status: SAFE -- Legitimate vblank shim with no malicious code.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD performs a from-source build of Modrinth Enhanced. The source archives come from the maintainer's own GitHub repo and the upstream modrinth/code repo, and the visible sha256sums are pinned with no SKIP entries. The git workflow in prepare() creates local commits from the extracted tarballs, applies patches with git am, and runs git rebase --onto; there is no git fetch or git pull from a mutable remote at build time, and the git reset --hard only resets the worktree to the commit created immediately beforehand. This matches the package comments about replaying upstream's own prepare.sh logic.

Build-time network access (pnpm install, cargo fetch, Gradle dependency downloads) is normal for this Node/Rust/Java stack and goes to the project's declared sources and standard registries. The sed version edits, the copy of .env.prod to .env, and the compilation of the vblank shim that the launcher preloads are all consistent with the package's stated purpose of a launcher without ads or telemetry, with Linux display fixes. No obfuscated code, no curl|bash pattern, no eval or base64 decoding, no exfiltration of local data, and no file writes outside the package's build and install paths appear in this file.

The only notable caveat is hygiene rather than malice: Gradle, pnpm, and cargo dependencies are resolved at build time without per-artifact checksum pinning, which is a reproducibility consideration but is standard practice for this ecosystem and does not indicate a supply-chain attack.
</details>
<evidence></evidence>
<summary>Conventional from-source AUR package; pinned checksums, no malicious or obfuscated behavior.</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Conventional from-source AUR package; pinned checksums, no malicious or obfuscated behavior.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 21,959
  Completion Tokens: 10,373
  Total Tokens: 32,332
  Total Cost: $0.002989
  Execution Time: 270.77 seconds

Final Status: SAFE


No issues found.
