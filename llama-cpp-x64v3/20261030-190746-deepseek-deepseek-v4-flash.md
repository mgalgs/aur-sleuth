---
package: llama-cpp-x64v3
pkgver: 0.6.0
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 13699
completion_tokens: 10317
total_tokens: 24016
cost: 0.003124303
execution_time: 73.91
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-30T19:07:46Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard AUR package metadata; no malicious or suspicious behavior detected.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD building official llama.cpp tag; no malicious behavior found.
  - file: llama-server-user.service
    status: safe
    summary: Hardened systemd service for llama-server; no malicious behavior found.
  - file: llama-server-system.service
    status: safe
    summary: Hardened systemd service for llama-server; no malicious behavior found.
---

Materializing llama-cpp-x64v3 from local mirror...
Materialized llama-cpp-x64v3
Analyzing llama-cpp-x64v3 AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only variable assignments (pkgname, pkgver, arrays like depends, source, etc.) and function definitions (build, package) in the global scope. No command substitutions (`$()`, backticks), no `eval`, `exec`, `curl`, `wget`, or other dangerous constructs are present in the top-level code. Since `makepkg --printsrcinfo` only sources the PKGBUILD and does not execute `pkgver()`, `prepare()`, `build()`, or `package()`, no malicious code would be run at this stage. The file is safe to parse for metadata extraction.
</details>
<evidence></evidence>
<summary>No dangerous top-level code executed during --printsrcinfo.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous top-level code executed during --printsrcinfo.
Reviewing the 4 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/4] Reviewing .SRCINFO...
[0/4] Reviewing .SRCINFO, PKGBUILD...
[0/4] Reviewing .SRCINFO, PKGBUILD, llama-server-system.service...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard AUR `.SRCINFO` metadata file. It declares the package `llama-cpp-x64v3`, its upstream project URL, dependencies, and source entries. The primary source is the project's own official upstream repository, `git+https://github.com/ggml-org/llama.cpp.git#tag=v0.6.0`, which is a normal and expected source for a packaging recipe. The two systemd service source files are also accompanied by `b2sums`, indicating checksum verification of non-VCS sources.

There is no obfuscated code, no suspicious network behavior, no encoded commands, no file operations, and no executable content in this file. It is purely declarative package metadata. Nothing here deviates from ordinary AUR packaging practices or shows evidence of a supply-chain attack.
</details>
<evidence>
</evidence>
<summary>
Standard AUR package metadata; no malicious or suspicious behavior detected.</summary>
</security_assessment>

[0/4] Reviewing .SRCINFO, PKGBUILD, llama-server-system.service, llama-server-user.service...
[1/4] Reviewing PKGBUILD, llama-server-system.service, llama-server-user.service...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR package metadata; no malicious or suspicious behavior detected.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a standard packaging recipe for building llama.cpp from the official upstream GitHub repository at a pinned release tag (`v0.6.0`). The build uses normal tooling (`cmake`, `ninja`, `npm ci --ignore-scripts` followed by `npm run build`) and installs files into `$pkgdir` with `cmake --install` and `install`. No unusual network destinations, no downloading of external binaries, no obfuscated commands, no `eval`/`base64`/`curl | bash`, and no modification of system files outside the package installation scope are present.

The included systemd unit files are installed into `/usr/lib/systemd/system` and `/usr/lib/systemd/user`, and `sed` performs a simple placeholder replacement (`%PKGVER%`) inside those installed unit files. This is routine packaging behavior, not suspicious. The `npm ci --ignore-scripts` flag is a good security practice because it avoids running arbitrary package install scripts. Overall, the file is consistent with legitimate AUR packaging and shows no evidence of supply-chain tampering.
</details>
<evidence>
</evidence>
<summary>
Standard AUR PKGBUILD building official llama.cpp tag; no malicious behavior found.</summary>
</security_assessment>

[2/4] Reviewing llama-server-system.service, llama-server-user.service...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD building official llama.cpp tag; no malicious behavior found.
LLM auditresponse for llama-server-user.service:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a systemd user service unit for llama.cpp's HTTP server. It launches the package's own `/usr/bin/llama-server` binary and applies a comprehensive set of standard systemd sandboxing/hardening options (ProtectSystem, ProtectHome, PrivateTmp, DeviceAllow for GPU devices, system call filtering, etc.). There are no network downloads, no shell/eval constructs, no encoded/obfuscated commands, and no file operations outside the application's expected runtime, config, and cache directories.

The `%PKGVER%` in the Documentation URL is a build-time package substitution placeholder, not an active command. The `EnvironmentFile=-%E/llama/server/environment.conf` optionally loads environment variables from the systemd configuration directory; this is normal configuration loading for a service unit and does not by itself indicate malicious behavior. If anything, the unit is security-hardening oriented rather than suspicious.
</details>
<evidence>
</evidence>
<summary>Hardened systemd service for llama-server; no malicious behavior found.</summary>
</security_assessment>

[3/4] Reviewing llama-server-system.service...
+ Reviewed llama-server-user.service. Status: SAFE -- Hardened systemd service for llama-server; no malicious behavior found.
LLM auditresponse for llama-server-system.service:
<security_assessment>
<decision>SAFE</decision>
<details>
This systemd unit only configures a service that launches the package's own `/usr/bin/llama-server` binary. It is heavily sandboxed with `DynamicUser=yes`, `NoNewPrivileges=yes`, `ProtectSystem=strict`, `ProtectHome=yes`, private namespaces, a closed device policy, and restrictive syscall and address-family filters. The GPU device allowances (`char-drm`, `char-kfd`, `char-nvidia`) are normal and expected for llama.cpp server backends, not evidence of malicious system modification.

I found no downloads, shell evaluation, obfuscation, credential access, or data exfiltration. `ExecStart`, `WorkingDirectory`, `StateDirectory`, `CacheDirectory`, and the optional `EnvironmentFile` are standard systemd service configuration. The `%PKGVER%` marker is an ordinary template placeholder. Nothing in this file deviates from normal packaging practice or indicates an injected supply-chain attack.
</details>
<evidence>
</evidence>
<summary>
Hardened systemd service for llama-server; no malicious behavior found.
</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed llama-server-system.service. Status: SAFE -- Hardened systemd service for llama-server; no malicious behavior found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 13,699
  Completion Tokens: 10,317
  Total Tokens: 24,016
  Total Cost: $0.003124
  Execution Time: 73.91 seconds

Final Status: SAFE


No issues found.
