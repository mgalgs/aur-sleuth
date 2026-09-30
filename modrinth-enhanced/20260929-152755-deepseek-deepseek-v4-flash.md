---
package: modrinth-enhanced
pkgver: 0.21.6
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 22056
completion_tokens: 3391
total_tokens: 25447
cost: 0.0022003394
execution_time: 46.27
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-29T15:27:54Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard .SRCINFO metadata; no security issues found.
  - file: modrinth-enhanced.sh
    status: safe
    summary: Standard launch script, no security issues.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD with no malicious indicators.
  - file: vblank-shim.c
    status: safe
    summary: Legitimate display shim; no security issues.
---

Materializing modrinth-enhanced from local mirror...
Materialized modrinth-enhanced
Analyzing modrinth-enhanced AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
Running `makepkg --printsrcinfo` only sources the PKGBUILD's top-level scope. In this PKGBUILD, that scope contains only variable assignments, the `source` array definition, a checksum array, and a conditional that appends an additional source tarball when `_base` differs from `_upstream`. There are no top-level command substitutions, network fetches, downloads, execution of external payloads, or file-modifying commands.

The `prepare()`, `build()`, and `package()` functions contain more involved commands, but they do not run during `makepkg --printsrcinfo` and are therefore outside the scope of this specific safety gate. Nothing in the global scope poses an execution risk for this command.
</details>
<evidence></evidence>
<summary>
Top-level PKGBUILD code is limited to static variables and source definitions; safe to parse.
</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Top-level PKGBUILD code is limited to static variables and source definitions; safe to parse.
Reviewing the 4 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/4] Reviewing .SRCINFO...
[0/4] Reviewing .SRCINFO, PKGBUILD...
[0/4] Reviewing .SRCINFO, PKGBUILD, modrinth-enhanced.sh...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The `.SRCINFO` file is a standard AUR package metadata file. It declares the package name, version, dependencies, and sources—all from expected upstream locations (GitHub repositories for Modrinth-Enhanced and modrinth/code). Checksums are provided and pinned for all source files, including the `vblank-shim.c` and `modrinth-enhanced.sh` scripts. There is no executable code, obfuscated content, unexpected network requests, or any behavior that deviates from normal packaging practices. The file is safe.
</details>
<evidence>
</evidence>
<summary>Standard .SRCINFO metadata; no security issues found.</summary>
</security_assessment>

[0/4] Reviewing .SRCINFO, PKGBUILD, modrinth-enhanced.sh, vblank-shim.c...
[1/4] Reviewing PKGBUILD, modrinth-enhanced.sh, vblank-shim.c...
+ Reviewed .SRCINFO. Status: SAFE -- Standard .SRCINFO metadata; no security issues found.
LLM auditresponse for modrinth-enhanced.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard launch script that sets up environment variables (LD_PRELOAD) to preload a vblank shim library for the Modrinth Enhanced application. The library is in the package's own directory (/usr/lib/modrinth-enhanced/). It also adjusts the GDK backend for NVIDIA hardware. The script only executes the application binary with `exec`, with no network requests, no obfuscated code, no file manipulation outside its scope, and no other suspicious behavior. It is a typical packaging practice for applications that require preloaded libraries.
</details>
<evidence></evidence>
<summary>Standard launch script, no security issues.</summary>
</security_assessment>

[2/4] Reviewing PKGBUILD, vblank-shim.c...
+ Reviewed modrinth-enhanced.sh. Status: SAFE -- Standard launch script, no security issues.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard AUR packaging practices. All sources are pinned to specific tags with verified SHA-256 checksums. The build process applies patches from the maintainer's own repository using `git am` and `git rebase`, which is a legitimate approach for maintaining patched packages against an upstream that evolves. There are no unexpected network requests, no obfuscated code, no execution of attacker-controlled content, and no exfiltration of data. The file is consistent with its stated purpose of building a customized Modrinth App without telemetry.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD with no malicious indicators.</summary>
</security_assessment>

[3/4] Reviewing vblank-shim.c...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD with no malicious indicators.
LLM auditresponse for vblank-shim.c:
<security_assessment>
<decision>SAFE</decision>
<details>
The vblank-shim.c file is a well-structured LD_PRELOAD shim designed to correct display timing issues on NVIDIA GPUs with WebKitGTK. It performs three specific functions: (1) corrects the physical monitor size reported by the NVIDIA DRM connector to match GTK's values, enabling proper CRTC detection; (2) emulates blocking vblank waits when the NVIDIA driver does not support them; (3) fills in the monitor refresh interval on GTK3 frame timings that are left unset. All operations are confined to the graphics stack and do not involve network access, data exfiltration, or execution of untrusted code. The use of dynamic symbol resolution and environment variables for configuration is standard for such shims. No malicious, obfuscated, or supply-chain attack patterns are present.
</details>
<evidence></evidence>
<summary>Legitimate display shim; no security issues.</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed vblank-shim.c. Status: SAFE -- Legitimate display shim; no security issues.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 22,056
  Completion Tokens: 3,391
  Total Tokens: 25,447
  Total Cost: $0.002200
  Execution Time: 46.27 seconds

Final Status: SAFE


No issues found.
