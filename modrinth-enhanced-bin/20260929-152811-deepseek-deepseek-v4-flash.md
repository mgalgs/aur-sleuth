---
package: modrinth-enhanced-bin
pkgver: 0.21.6
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 19200
completion_tokens: 3999
total_tokens: 23199
cost: 0.0020752074
execution_time: 58.82
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-29T15:28:10Z
file_verdicts:
  - file: modrinth-enhanced.sh
    status: safe
    summary: Standard wrapper script, no malicious content.
  - file: PKGBUILD
    status: safe
    summary: Standard binary AUR package, no malicious content.
  - file: .SRCINFO
    status: safe
    summary: Declarative metadata file, no security issues.
  - file: vblank-shim.c
    status: safe
    summary: Standard LD_PRELOAD shim, no malicious behavior.
---

Materializing modrinth-enhanced-bin from local mirror...
Materialized modrinth-enhanced-bin
Analyzing modrinth-enhanced-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD's global/top-level scope contains only static variable definitions (strings and arrays) and function definitions for `build()` and `package()`. There are no command substitutions, backtick executions, `eval`, `curl`, `wget`, or other dynamic operations that would execute during sourcing. The `source` array defines URLs as strings but does not fetch or run any content at parse time. Therefore, running `makepkg --printsrcinfo` is safe.
</details>
<evidence></evidence>
<summary>No malicious code in global scope.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious code in global scope.
Reviewing the 4 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/4] Reviewing .SRCINFO...
[0/4] Reviewing .SRCINFO, PKGBUILD...
[0/4] Reviewing .SRCINFO, PKGBUILD, modrinth-enhanced.sh...
LLM auditresponse for modrinth-enhanced.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
The script is a standard wrapper that conditionally preloads a library (`libwebkit-vblank-shim.so`) to manage vblank synchronization, particularly for NVIDIA GPUs. It checks an environment variable and sets `GDK_BACKEND` if the NVIDIA DRM module is present, then executes the main binary via `exec`. There are no network requests, obfuscated code, suspicious file operations, or attempts to exfiltrate data. The `LD_PRELOAD` usage is expected and benign when loading a library shipped with the same package. No security issues are present.
</details>
<evidence></evidence>
<summary>Standard wrapper script, no malicious content.</summary>
</security_assessment>

[0/4] Reviewing .SRCINFO, PKGBUILD, modrinth-enhanced.sh, vblank-shim.c...
[1/4] Reviewing .SRCINFO, PKGBUILD, vblank-shim.c...
+ Reviewed modrinth-enhanced.sh. Status: SAFE -- Standard wrapper script, no malicious content.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a straightforward, transparent packaging of a prebuilt binary from the maintainer's own GitHub repository. It downloads a specific .deb release with a pinned SHA256 checksum, compiles a small helper shared library (vblank-shim.c) to fix a display issue with NVIDIA drivers, and installs the application with a wrapper script. All operations are standard for an AUR binary package: extraction with bsdtar, moving files, and installing a launcher script. There are no network requests beyond the declared source, no obfuscated code, no dangerous commands (eval, base64, curl|bash), and no tampering with system files outside the package&#x27;s scope. The checksums are provided and verified. The PKGBUILD does exactly what it claims: it packages the Modrinth Enhanced launcher with a display-frequency shim.
</details>
<evidence></evidence>
<summary>Standard binary AUR package, no malicious content.</summary>
</security_assessment>

[2/4] Reviewing .SRCINFO, vblank-shim.c...
+ Reviewed PKGBUILD. Status: SAFE -- Standard binary AUR package, no malicious content.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a .SRCINFO metadata file for the modrinth-enhanced-bin AUR package. It declaratively specifies package metadata: pkgname, pkgver, dependencies, sources, and checksums. There is no executable code, no network requests at build time beyond standard source fetching, no obfuscation, and no suspicious commands. All source URIs point to the package's own upstream GitHub repository and are accompanied by explicit SHA256 checksums (no 'SKIP' entries). This is standard and benign behavior. No evidence of a supply-chain attack or malicious intent.
</details>
<evidence></evidence>
<summary>Declarative metadata file, no security issues.</summary>
</security_assessment>

[3/4] Reviewing vblank-shim.c...
+ Reviewed .SRCINFO. Status: SAFE -- Declarative metadata file, no security issues.
LLM auditresponse for vblank-shim.c:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a C source file for an LD_PRELOAD shared library intended to fix monitor refresh rate issues when running Modrinth Enhanced under GTK3 with NVIDIA drivers. It intercepts DRM and GTK functions to correct connector physical sizes, emulate vblank waits, and fill in missing frame timing intervals. The code is well-commented, performs no network requests, file writes outside its own process, or execution of untrusted code. It modifies environment variables benignly to remove its own preload from child processes and protect its own internal variables. There is no obfuscation, encoded payload, backdoor, or data exfiltration. The functionality is strictly limited to patching in-memory behaviors of the relevant libraries to improve display refresh rates, which is consistent with its stated purpose. Therefore, the file is safe and does not exhibit supply-chain attack behavior.
</details>
<evidence>
</evidence>
<summary>Standard LD_PRELOAD shim, no malicious behavior.</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed vblank-shim.c. Status: SAFE -- Standard LD_PRELOAD shim, no malicious behavior.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 19,200
  Completion Tokens: 3,999
  Total Tokens: 23,199
  Total Cost: $0.002075
  Execution Time: 58.82 seconds

Final Status: SAFE


No issues found.
