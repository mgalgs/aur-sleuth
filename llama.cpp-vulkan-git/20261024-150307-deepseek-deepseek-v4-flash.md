---
package: llama.cpp-vulkan-git
pkgver: b11462.r9.42b021b4dc
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 13582
completion_tokens: 1774
total_tokens: 15356
cost: 0.001558830
execution_time: 28.0
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-24T15:03:06Z
file_verdicts:
  - file: llama.cpp.conf
    status: safe
    summary: Standard empty configuration variable, no threat.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR .SRCINFO with no malicious content.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR git package, no malicious behavior found.
  - file: llama.cpp.service
    status: safe
    summary: Standard systemd service file, no security issues.
---

Materializing llama.cpp-vulkan-git from local mirror...
Materialized llama.cpp-vulkan-git
Analyzing llama.cpp-vulkan-git AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The top-level scope of this PKGBUILD contains only variable assignments and array definitions. The only executable line is `: ${_llamacpp_build_universal:=false}`, which is a harmless parameter expansion with a no-op. There are no command substitutions, no calls to `curl`, `wget`, `eval`, or any other potentially dangerous commands at global scope. All operations that might execute network fetches or build steps are confined to `pkgver()`, `prepare()`, `build()`, and `package()` functions, which are not invoked by `makepkg --printsrcinfo`. Therefore, sourcing this PKGBUILD to print SRCINFO is safe.</details>
<evidence></evidence>
<summary>No dangerous code at top-level scope</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous code at top-level scope
Reviewing the 4 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/4] Reviewing .SRCINFO...
[0/4] Reviewing .SRCINFO, PKGBUILD...
[0/4] Reviewing .SRCINFO, PKGBUILD, llama.cpp.conf...
LLM auditresponse for llama.cpp.conf:
<security_assessment>
<decision>SAFE</decision>
<details>
The file contains a single configuration variable `LLAMA_ARGS` set to an empty string. There are no commands, network requests, file operations, or any other executable content. This is a standard configuration file and poses no security risk.
</details>
<evidence></evidence>
<summary>Standard empty configuration variable, no threat.</summary>
</security_assessment>

[0/4] Reviewing .SRCINFO, PKGBUILD, llama.cpp.conf, llama.cpp.service...
[1/4] Reviewing .SRCINFO, PKGBUILD, llama.cpp.service...
+ Reviewed llama.cpp.conf. Status: SAFE -- Standard empty configuration variable, no threat.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The .SRCINFO file is a standard Arch Linux package metadata file. It declares the package name, version, dependencies, source URLs, and checksums. The git source uses `SKIP` for the checksum, which is normal for VCS packages and not a security concern. The other two source files (configuration and systemd service) have explicit SHA256 checksums. No obfuscation, malicious commands, or data exfiltration is present. The URLs point to the official upstream repository (github.com/ggml-org/llama.cpp), which is expected for this package.
</details>
<evidence></evidence>
<summary>Standard AUR .SRCINFO with no malicious content.</summary>
</security_assessment>

[2/4] Reviewing PKGBUILD, llama.cpp.service...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR .SRCINFO with no malicious content.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD is a standard AUR `-git` package for `llama.cpp` with Vulkan support. It fetches the source from the official upstream repository (`https://github.com/ggml-org/llama.cpp.git`), which is expected. The checksum for the git source is `SKIP`, which is normal for VCS packages. The two auxiliary files (`llama.cpp.conf` and `llama.cpp.service`) have pinned SHA256 checksums, providing integrity verification.

The build process uses `cmake` with flags appropriate for the package (Vulkan, OpenSSL, RPC, etc.). The only user-configurable variable is `_llamacpp_cmakeopts`, which allows power users to pass additional CMake flags via environment variable — this is a common and safe pattern in AUR packaging. There are no network requests to untrusted hosts, no execution of downloaded code, no obfuscated commands, and no exfiltration of data. All file operations are confined to the package build directory and `$pkgdir`. Nothing in this file deviates from standard, legitimate packaging practices.
</details>
<evidence></evidence>
<summary>Standard AUR git package, no malicious behavior found.</summary>
</security_assessment>

[3/4] Reviewing llama.cpp.service...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR git package, no malicious behavior found.
LLM auditresponse for llama.cpp.service:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard systemd service unit for the llama.cpp server. It launches the `/usr/bin/llama-server` binary with arguments sourced from `/etc/conf.d/llama.cpp`. No unusual commands, network requests, obfuscation, or dangerous operations are present. The service configuration follows typical packaging practices and does not exhibit any supply-chain attack indicators.
</details>
<evidence></evidence>
<summary>Standard systemd service file, no security issues.</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed llama.cpp.service. Status: SAFE -- Standard systemd service file, no security issues.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 13,582
  Completion Tokens: 1,774
  Total Tokens: 15,356
  Total Cost: $0.001559
  Execution Time: 28.00 seconds

Final Status: SAFE


No issues found.
