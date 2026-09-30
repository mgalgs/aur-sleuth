---
package: voxtype
pkgver: 1.1.0
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 19459
completion_tokens: 2741
total_tokens: 22200
cost: 0.002209922246
execution_time: 72.42
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 1
injection_attempts: 0
date: 2026-09-24T03:06:46Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Declarative metadata only; no malicious content detected.
  - file: voxtype.install
    status: safe
    summary: Standard install script, no malicious code.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD with no malicious indicators found.
---

Materializing voxtype from local mirror...
Materialized voxtype
Analyzing voxtype AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD's top-level scope contains only static variable definitions (package metadata, dependency lists, source URLs, checksums, PGP keys) and function declarations. There are no command substitutions, backticks, or any code that would execute external commands or network requests during sourcing. All variable assignments use simple string or array literals, with standard variable expansion in source URLs. No malicious code is present in the global scope that would execute during `makepkg --printsrcinfo`.

The prepare(), build(), check(), and package() functions contain shell commands, but those are not invoked during the printsrcinfo step.
</details>
<evidence></evidence>
<summary>No malicious top-level code; sourcing is safe.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious top-level code; sourcing is safe.
Note: 1 remote source(s) have no checksum (sha256sums=SKIP), so the bytes are not verifiable: voxtype-1.1.0.tar.gz.asc::https://github.com/peteonrails/voxtype/releases/download/v1.1.0/voxtype-1.1.0.tar.gz.asc
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, voxtype.install...
[0/3] Reviewing .SRCINFO, voxtype.install, PKGBUILD...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The `.SRCINFO` file is purely declarative metadata for an AUR package. It defines the package name, version, dependencies, source URLs, and checksums. No executable code, obfuscated strings, network requests, or system modifications are present in this file itself.  

The sources point to the official GitHub repository of the project (`peteonrails/voxtype`) and include a GPG signature file for verification, with two valid PGP keys listed. One checksum is provided for the tarball; the signature checksum is `SKIP` (standard practice for detached signatures). The dependencies and optional dependencies are appropriate for a voice-to-text application (audio servers, GPU acceleration, keyboard simulation tools).  

The file references an external `voxtype.install` script, but that script is not part of this file and cannot be assessed here. Based solely on the content of this `.SRCINFO`, there is no evidence of malicious or dangerous behavior.
</details>
<evidence></evidence>
<summary>Declarative metadata only; no malicious content detected.</summary>
</security_assessment>

[1/3] Reviewing voxtype.install, PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Declarative metadata only; no malicious content detected.
LLM auditresponse for voxtype.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard Arch Linux package install script for the voxtype application. It contains three main functions:

- `_detect_gpu()`: Reads local hardware information (via `/dev/dri` and `lspci`) and prints GPU acceleration recommendations. This is a user-facing informational feature, not data exfiltration. The output stays on the local console.
- `post_install()` and `post_upgrade()`: Display post-installation guidance (group membership, model download, daemon setup) and release notes. These are benign textual messages. They check for installed ONNX engine files under `/usr/lib/voxtype/` to inform the user, which is a normal package introspection.
- `post_remove()`: Removes `/usr/bin/voxtype`. While Arch Linux normally handles binary removal via pacman, explicitly deleting the file during removal is not malicious – it is redundant cleanup at worst and does not harm the system.

The script makes no network requests, does not download or execute any code from remote hosts, contains no obfuscation, no base64/hex encoding, no dangerous commands (eval, curl, wget, etc.), and does not attempt to exfiltrate data or modify system files outside the package’s own scope. All behavior is consistent with a legitimate, informative install script.
</details>
<evidence></evidence>
<summary>Standard install script, no malicious code.</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed voxtype.install. Status: SAFE -- Standard install script, no malicious code.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard Arch packaging practices for a Rust application. The source is fetched from the project&#x27;s official GitHub repository over HTTPS, with a pinned checksum on the tarball and a PGP signature file provided for verification (with defined validpgpkeys). The build process uses `cargo fetch --locked` followed by `cargo build --frozen`, which prevents any network access during the actual build — a good reproducibility and security practice. The conditional build for ONNX engines checks for the system package `onnxruntime` via `pacman -Q`, which is normal optional feature handling.

There is no obfuscated code, no unexpected network requests (no curl|bash, no wget to unknown hosts), no attempts to exfiltrate data, no backdoors, and no manipulation of files outside the package&#x27;s own install prefix. The clearing of compiler flags (`unset CFLAGS` etc.) is a standard workaround when upstream build systems (whisper.cpp) conflict with Arch&#x27;s hardening flags, not a malicious action. The file consistently performs legitimate packaging operations and shows no evidence of a supply-chain attack.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD with no malicious indicators found.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD with no malicious indicators found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 19,459
  Completion Tokens: 2,741
  Total Tokens: 22,200
  Total Cost: $0.002210
  Execution Time: 72.42 seconds

Final Status: SAFE


No issues found.
