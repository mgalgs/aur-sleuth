---
package: modrinth-enhanced-bin
pkgver: 0.21.4.r2
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 19221
completion_tokens: 3990
total_tokens: 23211
cost: 0.00127953504
execution_time: 67.91
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-19T07:14:53Z
file_verdicts:
  - file: modrinth-enhanced.sh
    status: safe
    summary: Standard launcher wrapper, no security issues.
  - file: vblank-shim.c
    status: safe
    summary: Legitimate refresh rate shim, no malicious code.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD with no malicious indicators.
  - file: .SRCINFO
    status: safe
    summary: .SRCINFO declares checked upstream binary and helper sources; no suspicious behavior.
---

Materializing modrinth-enhanced-bin from local mirror...
Materialized modrinth-enhanced-bin
Analyzing modrinth-enhanced-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD only contains variable definitions and arrays at the global scope. There are no command substitutions, backtick expansions, function calls, or any other executable code outside of the `build()` and `package()` functions. The source and checksum arrays are simple string assignments. Running `makepkg --printsrcinfo` will only source these definitions, which poses no risk.
</details>
<evidence></evidence>
<summary>No top-level code execution risk.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No top-level code execution risk.
Reviewing the 4 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/4] Reviewing .SRCINFO...
[0/4] Reviewing .SRCINFO, PKGBUILD...
[0/4] Reviewing .SRCINFO, PKGBUILD, modrinth-enhanced.sh...
LLM auditresponse for modrinth-enhanced.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
The script is a standard launcher wrapper provided with the Modrinth Enhanced package. It conditionally preloads a library (`libwebkit-vblank-shim.so`) to improve frame rate handling, adjusts the GDK backend to X11 when an NVIDIA DRM module is detected, and then executes the main application binary. All paths are absolute and reference files within the package's own installation directory (`/usr/lib/modrinth-enhanced/`). There are no network requests, obfuscated commands, dangerous operations (e.g., `eval`, `curl`, `base64`), or any behavior that could exfiltrate data or introduce backdoors. This is entirely consistent with legitimate packaging practices.
</details>
<evidence></evidence>
<summary>Standard launcher wrapper, no security issues.</summary>
</security_assessment>

[1/4] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed modrinth-enhanced.sh. Status: SAFE -- Standard launcher wrapper, no security issues.
[1/4] Reviewing .SRCINFO, PKGBUILD, vblank-shim.c...
LLM auditresponse for vblank-shim.c:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a legitimate LD_PRELOAD shim that corrects vblank timing issues for Modrinth Enhanced running under NVIDIA drivers with WebKitGTK and GTK3. It intercepts DRM and GTK functions to:
- Correct connector physical size reported by the NVIDIA driver to match GDK's report.
- Emulate vblank waits for drivers that do not support them.
- Fill in missing refresh intervals in GTK frame timings.

The code is transparent, well-documented, and contains no obfuscation, network requests, file exfiltration, backdoors, or other malicious behavior. It uses standard techniques for an LD_PRELOAD library (dlsym, hooking, environment variable handling). The removal of its own entry from LD_PRELOAD for child processes is a normal practice to avoid interfering with helper processes. The memory offset discovery for GTK frame timings is a fragile but non-malicious hack. There are no indicators of a supply-chain attack.
</details>
<evidence></evidence>
<summary>Legitimate refresh rate shim, no malicious code.</summary>
</security_assessment>

[2/4] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed vblank-shim.c. Status: SAFE -- Legitimate refresh rate shim, no malicious code.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard AUR packaging practices. The source is downloaded from the project&#39;s own GitHub releases with a pinned tag and a SHA256 checksum, ensuring integrity. The build process compiles a small C shim (vblank-shim.c) using standard flags and the package function extracts the .deb, relocates the binary, and installs the wrapper script and shared library. No obfuscated code, dangerous commands (eval, curl|bash, etc.), unexpected network requests, or data exfiltration patterns are present. The script modrinth-enhanced.sh is part of the package&#39;s own source, not an external untrusted payload. All operations are transparent and consistent with the stated purpose of providing a modified Modrinth launcher.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD with no malicious indicators.</summary>
</security_assessment>

[3/4] Reviewing .SRCINFO...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD with no malicious indicators.
LLM auditresponse for .SRCINFO:
 <security_assessment>
<decision>SAFE</decision>
<details>
This file is only an AUR metadata file (`.SRCINFO`); it contains no executable code, no network commands, no file operations, and no post-install logic. It declares a single upstream download from the project's own GitHub releases URL along with a helper C source and wrapper script.

All three sources have pinned SHA-256 checksums — none are `SKIP` — so there is no evidence of unpinned or altered download content. The `!strip`, `!debug`, and `noextract` options are consistent with normal packaging of a prebuilt `.deb`-based AUR package. Nothing here attempts to fetch, execute, or exfiltrate unusual data, and no obfuscation or misleading packaging is present. The file is consistent with a standard `-bin` package and is safe.
</details>
<evidence>
</evidence>
<summary>
.SRCINFO declares checked upstream binary and helper sources; no suspicious behavior.
</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed .SRCINFO. Status: SAFE -- .SRCINFO declares checked upstream binary and helper sources; no suspicious behavior.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 19,221
  Completion Tokens: 3,990
  Total Tokens: 23,211
  Total Cost: $0.001280
  Execution Time: 67.91 seconds

Final Status: SAFE


No issues found.
