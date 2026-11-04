---
package: llama-prism-cuda-git
pkgver: 0.0.0_b12128_d7b2896
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 15976
completion_tokens: 6270
total_tokens: 22246
cost: 0.002594956
execution_time: 36.72
files_reviewed: 5
files_skipped: 0
maintainer_files: 5
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-11-04T20:05:49Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard AUR .gitignore; no malicious or suspicious behavior found.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR .SRCINFO for a git package; no malicious behavior found.
  - file: llama-server-user.service
    status: safe
    summary: Hardened systemd service for GPU llama-server; no malicious or suspicious behavior found.
  - file: llama-server-system.service
    status: safe
    summary: Standard llama-server systemd unit with sandboxing; no malicious behavior found.
  - file: PKGBUILD
    status: safe
    summary: Standard -git package; no evidence of malicious or injected code.
---

Materializing llama-prism-cuda-git from local mirror...
Materialized llama-prism-cuda-git
Analyzing llama-prism-cuda-git AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
Running `makepkg --printsrcinfo` only sources the top-level scope of this PKGBUILD. The top-level content consists only of metadata variables, dependency arrays, a custom `DLAGENTS` assignment, the `source` array, and checksum values. None of these perform command substitution, download, execution, or data exfiltration at parse time.

The `DLAGENTS` line defines a shallow `git clone` command string for later source retrieval, but it is not executed while sourcing the PKGBUILD. The `prepare()`, `build()`, and `package()` functions contain the more substantive operations, but they are not invoked by `makepkg --printsrcinfo` and are outside the scope of this narrow gate. No top-level malicious code is present.
</details>
<evidence>
</evidence>
<summary>
Top-level PKGBUILD parsing is safe; no execution during printsrcinfo.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Top-level PKGBUILD parsing is safe; no execution during printsrcinfo.
Reviewing the 5 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/5] Reviewing .SRCINFO...
[0/5] Reviewing .SRCINFO, .gitignore...
[0/5] Reviewing .SRCINFO, .gitignore, PKGBUILD...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard `.gitignore` for an AUR git repository. It ignores all files except `.gitignore` itself and the required AUR metadata files (`PKGBUILD`, `.SRCINFO`, and `llama-server-*` sources). There is no executable code, no network activity, no obfuscation, and no file operations outside normal packaging. The content is consistent with ordinary AUR maintenance.
</details>
<evidence>
</evidence>
<summary>
Standard AUR .gitignore; no malicious or suspicious behavior found.</summary>
</security_assessment>

[1/5] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed .gitignore. Status: SAFE -- Standard AUR .gitignore; no malicious or suspicious behavior found.
[1/5] Reviewing .SRCINFO, PKGBUILD, llama-server-system.service...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard `.SRCINFO` metadata file for an AUR `-git` package. It declares a VCS source (`shallow_git://llama.cpp`) pointing to the package's own upstream repository, plus two systemd service files with pinned SHA-256 checksums. The `sha256sums = SKIP` entry applies only to the git source and is normal and required for VCS packages. No commands, hooks, network fetches outside the declared upstream, encoded payloads, or suspicious file operations are present. The content is consistent with ordinary packaging practice and contains no injected or malicious behavior.
</details>
<evidence>
</evidence>
<summary>
Standard AUR .SRCINFO for a git package; no malicious behavior found.</summary>
</security_assessment>

[1/5] Reviewing .SRCINFO, PKGBUILD, llama-server-system.service, llama-server-user.service...
[2/5] Reviewing PKGBUILD, llama-server-system.service, llama-server-user.service...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR .SRCINFO for a git package; no malicious behavior found.
LLM auditresponse for llama-server-user.service:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a systemd unit file that runs the llama-server binary from the llama.cpp project. It contains no malicious behavior: no network downloads, no obfuscated commands, no data exfiltration, and no unexpected file operations.

The file is actually an example of well-hardened packaging. It applies extensive systemd sandboxing (ProtectSystem=strict, ProtectHome=tmpfs, PrivateTmp, PrivateIPC, RestrictNamespaces, SystemCallFilter with @system-service, etc.) and uses DevicePolicy=closed with narrowly scoped DeviceAllow rules for GPU devices (/dev/dri, /dev/kfd, /dev/nvidia*) — exactly what a CUDA/HIP inference server needs. The `EnvironmentFile=-%E/llama/server/environment.conf` is optional (the `-` prefix) and merely allows runtime configuration of the server itself. The `%PKGVER%` placeholder in the Documentation URL is a normal packaging template substitution and poses no risk.

No injected code, no unexpected network hosts, no bypass of the declared source, and no deviation from standard packaging practice for a GPU-accelerated service.
</details>
<evidence>
</evidence>
<summary>
Hardened systemd service for GPU llama-server; no malicious or suspicious behavior found.
</summary>
</security_assessment>

[3/5] Reviewing PKGBUILD, llama-server-system.service...
+ Reviewed llama-server-user.service. Status: SAFE -- Hardened systemd service for GPU llama-server; no malicious or suspicious behavior found.
LLM auditresponse for llama-server-system.service:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a systemd unit for running the upstream `llama-server` binary. It contains standard service setup: `ExecStart` invokes `/usr/bin/llama-server`, and the surrounding options are typical systemd sandboxing (`ProtectSystem=strict`, `PrivateTmp=yes`, `NoNewPrivileges=yes`, `RestrictAddressFamilies`, `SystemCallFilter`, etc.). The `DeviceAllow` entries expose only GPU-related device nodes (`/dev/dri`, `/dev/kfd`, NVIDIA devices), which matches the package's stated purpose of running llama.cpp with CUDA/HIP backends.

There is no evidence of malicious or injected behavior: no network fetching, no encoded or obfuscated commands, no `eval`/`base64`/`curl`/`wget`, no exfiltration of local data, and no tampering with unrelated system files. The optional `EnvironmentFile` under `/etc/llama/server/environment.conf` is a normal administrator configuration hook. The `%PKGVER%` placeholder and systemd specifiers such as `%D`, `%S`, `%C`, and `%E` are packaging/specifier syntax, not commands. The unit is consistent with legitimate packaging practices.
</details>
<evidence></evidence>
<summary>Standard llama-server systemd unit with sandboxing; no malicious behavior found.</summary>
</security_assessment>

[4/5] Reviewing PKGBUILD...
+ Reviewed llama-server-system.service. Status: SAFE -- Standard llama-server systemd unit with sandboxing; no malicious behavior found.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows normal AUR VCS packaging practices for a `-git` package. It clones the package's own upstream PrismML llama.cpp repository over HTTPS using a custom shallow DLAGENT, then builds it with `npm ci`, `npm run build`, and CMake. The `SKIP` checksum applies to the git source and is expected for VCS builds; the bundled systemd service files do have pinned checksums.

The `prepare()` function only repairs the directory layout caused by the custom DLAGENT, moving the cloned repository into `$srcdir`. The `rm -rf` is scoped to `$srcdir` and is not touching unrelated system paths. The `package()` function installs only the built application and service files into `$pkgdir`. There is no obfuscated code, no `eval`/`base64`/`curl`/`wget` misuse, no exfiltration, and no execution of code from unexpected hosts. The unpinned tag and SKIP checksum are minor reproducibility/hygiene concerns, not evidence of a supply-chain attack.
</details>
<evidence></evidence>
<summary>
Standard -git package; no evidence of malicious or injected code.</summary>
</security_assessment>

[5/5] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard -git package; no evidence of malicious or injected code.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 15,976
  Completion Tokens: 6,270
  Total Tokens: 22,246
  Total Cost: $0.002595
  Execution Time: 36.72 seconds

Final Status: SAFE


No issues found.
