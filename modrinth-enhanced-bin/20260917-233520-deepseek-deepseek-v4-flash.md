---
package: modrinth-enhanced-bin
pkgver: 0.21.4
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 171a316e053e9c4b28731ccb1aa63b1168550d3a
prompt_tokens: 19196
completion_tokens: 3230
total_tokens: 22426
cost: 0.00179592
execution_time: 46.78
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-17T23:35:19Z
file_verdicts:
  - file: PKGBUILD
    status: safe
    summary: No malicious content found; standard PKGBUILD.
  - file: vblank-shim.c
    status: safe
    summary: Clean vsync shim, no malicious behavior.
  - file: modrinth-enhanced.sh
    status: safe
    summary: "Standard launcher wrapper: safe environment setup and exec of the package's own binary."
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata file, no security issues.
---

Materializing modrinth-enhanced-bin from local mirror...
Materialized modrinth-enhanced-bin
Analyzing modrinth-enhanced-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD only contains standard variable declarations and array definitions at the global/top-level scope. There are no command substitutions, backtick evaluations, function calls, or any other executable statements that would run during the sourcing phase of `makepkg --printsrcinfo`. The `build()` and `package()` functions contain commands but these are only executed during the build or package phases, which are not triggered by `--printsrcinfo`. No malicious top-level code is present.
</details>
<evidence></evidence>
<summary>No dangerous top-level code in this PKGBUILD.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous top-level code in this PKGBUILD.
Reviewing the 4 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/4] Reviewing .SRCINFO...
[0/4] Reviewing .SRCINFO, PKGBUILD...
[0/4] Reviewing .SRCINFO, PKGBUILD, modrinth-enhanced.sh...
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a standard packaging procedure for a prebuilt binary from the project's own GitHub releases. It downloads a `.deb` asset and an additional C source file and shell script, all with pinned SHA-256 checksums. The `build()` function compiles a small shared library (`libwebkit-vblank-shim.so`) to address an NVIDIA/WebKitGTK timing issue — a legitimate fix. The `package()` function extracts the `.deb`, moves the binary, installs the shim and a wrapper script, and creates a symlink. There are no suspicious network requests, obfuscation, eval, data exfiltration, or backdoors. All operations serve the stated purpose of packaging the Modrinth-Enhanced launcher with Linux-specific fixes.
</details>
<evidence></evidence>
<summary>No malicious content found; standard PKGBUILD.</summary>
</security_assessment>

[0/4] Reviewing .SRCINFO, PKGBUILD, modrinth-enhanced.sh, vblank-shim.c...
[1/4] Reviewing .SRCINFO, modrinth-enhanced.sh, vblank-shim.c...
+ Reviewed PKGBUILD. Status: SAFE -- No malicious content found; standard PKGBUILD.
LLM auditresponse for vblank-shim.c:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a well-documented LD_PRELOAD shim that corrects display refresh rate reporting for NVIDIA drivers under GTK3/WebKitGTK. It operates entirely within the process it is loaded into, using standard system libraries (libdrm, GLib, pthread, dlfcn) and hooks only a few DRM and GTK functions to patch connector size, emulate vblank waits via `clock_nanosleep`, and fill in missing GTK frame timing intervals. No network operations, data exfiltration, obfuscated code, or unexpected system modifications are present. The shim removes itself from `LD_PRELOAD` for child processes (good practice) and reads environment variables only for debugging/configuration. The code is consistent with its stated purpose and shows no signs of malicious injection.
</details>
<evidence>

</evidence>
<summary>Clean vsync shim, no malicious behavior.</summary>
</security_assessment>

[2/4] Reviewing .SRCINFO, modrinth-enhanced.sh...
+ Reviewed vblank-shim.c. Status: SAFE -- Clean vsync shim, no malicious behavior.
LLM auditresponse for modrinth-enhanced.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard application launcher wrapper. It conditionally sets an environment variable and preloads a library from the package's own installation directory (`/usr/lib/modrinth-enhanced/libwebkit-vblank-shim.so`) to work around a known NVIDIA/vblank frame-rate issue, then `exec`s the package's own binary. The `LD_PRELOAD` is set to an absolute path inside the package's own lib directory, never to a remote or unexpected location, and the `exec` simply replaces the shell with the application binary. No network activity, obfuscation, file exfiltration, or system modification occurs.

The only environment interaction — checking for the NVIDIA DRM kernel module at `/sys/module/nvidia_drm` and setting `VBLANK_SHIM_GDK_BACKEND=x11` — is consistent with the stated purpose of the shim (enabling X11 backend under NVIDIA for webkit frame pacing) and manipulates only the application's own runtime environment. The script is a benign example of a typical AUR package wrapper.
</details>
<evidence>
</evidence>
<summary>
Standard launcher wrapper: safe environment setup and exec of the package's own binary.
</summary>
</security_assessment>

[3/4] Reviewing .SRCINFO...
+ Reviewed modrinth-enhanced.sh. Status: SAFE -- Standard launcher wrapper: safe environment setup and exec of the package's own binary.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard AUR .SRCINFO metadata file. It describes the package name, version, dependencies, source URLs, and verified sha256sums. All source URLs point to the upstream GitHub repository or local helper files, and every source has a pinned sha256 checksum (none are SKIP). There are no network requests, obfuscated code, or dangerous commands contained in this file—it is purely declarative metadata. No evidence of supply-chain injection or malicious behavior is present.</details>
<evidence></evidence>
<summary>Standard AUR metadata file, no security issues.</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata file, no security issues.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 19,196
  Completion Tokens: 3,230
  Total Tokens: 22,426
  Total Cost: $0.001796
  Execution Time: 46.78 seconds

Final Status: SAFE


No issues found.
