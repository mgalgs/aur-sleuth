---
package: llama.cpp-cuda
pkgver: b10767
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e1aa01f19251c0ab5d086ae2b4a1ce353c3f844d
prompt_tokens: 17487
completion_tokens: 2994
total_tokens: 20481
cost: 0.002080025850
execution_time: 86.77
files_reviewed: 6
files_skipped: 0
maintainer_files: 6
source_fetch: ok
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-03T00:34:24Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: .gitignore with standard AUR packaging ignore pattern.
  - file: .nvchecker.toml
    status: safe
    summary: Standard version-checker config; no malicious content.
  - file: llama.cpp.conf
    status: safe
    summary: Standard config file, no malicious content.
  - file: .SRCINFO
    status: safe
    summary: Standard metadata, no security issues.
  - file: llama.cpp.service
    status: safe
    summary: Standard systemd unit, no security issues.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD, no security issues.
---

Cloning https://aur.archlinux.org/llama.cpp-cuda.git...
Cloned llama.cpp-cuda
Analyzing llama.cpp-cuda AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only static variable assignments and function definitions in its global scope. No command substitutions, function calls, or other executable expressions are evaluated at parse time. The `pkgver` is set as a global variable (no `pkgver()` function). The `source` array references an official tarball from the project&apos;s GitHub repository and two local configuration files, all with valid SHA-256 checksums. There is no code in the global scope or `pkgver()` that would execute or exfiltrate data during `makepkg --verifysource --nodeps` or `makepkg --printsrcinfo`. The `prepare()`, `build()`, and `package()` functions are not executed by these commands, so their content is out of scope for this gate.
</details>
<evidence></evidence>
<summary>Fetch and source are safe; no code execution during parsing.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Fetch and source are safe; no code execution during parsing.
Downloading sources...
makepkg --verifysource --nodeps successful
Reviewing the 6 file(s) in the AUR repository. The 0 downloaded file(s) are upstream content, outside the threat model, and are not read.
Reviewing the AUR repository's files...
[0/6] Reviewing .SRCINFO...
[0/6] Reviewing .SRCINFO, .gitignore...
[0/6] Reviewing .SRCINFO, .gitignore, .nvchecker.toml...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.gitignore` file for an AUR package repository. It ignores all files except the essential packaging files: `PKGBUILD`, `.SRCINFO`, `.gitignore`, `.nvchecker.toml`, `llama.cpp.conf`, and `llama.cpp.service`. There is no executable code, no network requests, no obfuscation, and no behavior that deviates from normal AUR packaging practices. No security issues present.
</details>
<evidence></evidence>
<summary>.gitignore with standard AUR packaging ignore pattern.</summary>
</security_assessment>

[1/6] Reviewing .SRCINFO, .nvchecker.toml...
+ Reviewed .gitignore. Status: SAFE -- .gitignore with standard AUR packaging ignore pattern.
[1/6] Reviewing .SRCINFO, .nvchecker.toml, PKGBUILD...
LLM auditresponse for .nvchecker.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard nvchecker configuration for the llama.cpp-cuda AUR package. It configures nvchecker to check for new versions by monitoring the official upstream Git repository (https://github.com/ggerganov/llama.cpp.git) and matching tags against the regex `b\d+` (e.g., "b1234"). There is no obfuscated code, no dangerous commands, no network requests outside the legitimate upstream, and no signs of supply-chain injection. This file is purely declarative and performs no actions on its own; it simply tells nvchecker where and how to look for new releases. No security issues detected.
</details>
<evidence></evidence>
<summary>Standard version-checker config; no malicious content.</summary>
</security_assessment>

[2/6] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed .nvchecker.toml. Status: SAFE -- Standard version-checker config; no malicious content.
[2/6] Reviewing .SRCINFO, PKGBUILD, llama.cpp.conf...
LLM auditresponse for llama.cpp.conf:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a simple configuration file that sets the `LLAMA_ARGS` environment variable to an empty string. It contains no executable code, network requests, obfuscation, or any other suspicious operations. The content is consistent with standard configuration practices for the llama.cpp package and poses no security risk.
</details>
<evidence></evidence>
<summary>Standard config file, no malicious content.</summary>
</security_assessment>

[2/6] Reviewing .SRCINFO, PKGBUILD, llama.cpp.conf, llama.cpp.service...
[3/6] Reviewing .SRCINFO, PKGBUILD, llama.cpp.service...
+ Reviewed llama.cpp.conf. Status: SAFE -- Standard config file, no malicious content.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The `.SRCINFO` file is a standard Arch Linux package metadata file used by AUR helpers. It declares dependencies, sources, and checksums for the `llama.cpp-cuda` package. All sources are fetched from the official upstream GitHub repository (`ggml-org/llama.cpp`) over HTTPS, and each source has a pinned SHA256 checksum (none are set to `SKIP`). The content contains only declarative metadata and does not include any executable code, network requests, obfuscation, or instructions that could be used to exfiltrate data, download/execute arbitrary code, or modify system files outside the normal packaging workflow. There is no evidence of malicious or suspicious behavior.
</details>
<evidence></evidence>
<summary>Standard metadata, no security issues.</summary>
</security_assessment>

[4/6] Reviewing PKGBUILD, llama.cpp.service...
+ Reviewed .SRCINFO. Status: SAFE -- Standard metadata, no security issues.
LLM auditresponse for llama.cpp.service:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard systemd service unit file for the llama.cpp server. It defines a service that runs `/usr/bin/llama-server` with arguments loaded from an environment file (`/etc/conf.d/llama.cpp`). The file contains no obfuscation, network requests, downloads, or unusual file operations. The `ExecReload` line uses a standard `kill` command to send a HUP signal. All paths and commands are expected for the package's intended functionality. No malicious or suspicious behavior is present.
</details>
<evidence></evidence>
<summary>Standard systemd unit, no security issues.</summary>
</security_assessment>

[5/6] Reviewing PKGBUILD...
+ Reviewed llama.cpp.service. Status: SAFE -- Standard systemd unit, no security issues.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD for `llama.cpp-cuda` follows standard Arch packaging practices. It downloads the official upstream source from `github.com/ggml-org/llama.cpp` with pinned version and valid SHA256 checksums. The build process uses `cmake` with flags specific to CUDA and CUDNN support, and the install step copies binaries, a license, config, and systemd service file into the package directory. There are no suspicious network requests (beyond the expected source download), no obfuscated commands, no execution of arbitrary downloaded code, and no exfiltration of system data. The use of `LLAMA_BUILD_EXTRA_ARGS` allows user-specified CMake flags, but this is a common pattern for AUR packages and does not constitute a supply-chain attack — the variable is not set by the PKGBUILD itself. The `source /etc/profile` line is a routine way to ensure CUDA environment variables are available. No genuinely malicious behavior is present.
</details>
<evidence></evidence>
<summary>Standard AUR PKGBUILD, no security issues.</summary>
</security_assessment>

[6/6] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD, no security issues.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 17,487
  Completion Tokens: 2,994
  Total Tokens: 20,481
  Total Cost: $0.002080
  Execution Time: 86.77 seconds

Final Status: SAFE


No issues found.
