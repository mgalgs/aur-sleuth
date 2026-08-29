---
package: llama.cpp-cuda
pkgver: b10679
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 3e318911529c43138ec6bdba0bfcb56907607021
prompt_tokens: 17543
completion_tokens: 2728
total_tokens: 20271
cost: 0.00198987348
execution_time: 90.89
files_reviewed: 6
files_skipped: 0
maintainer_files: 6
source_fetch: ok
upstream_files: 3506
upstream_named_files: 1
unpinned_sources: 0
date: 2026-08-28T23:11:24Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard metadata file, no security issues.
  - file: .gitignore
    status: safe
    summary: Standard .gitignore file, no malicious content.
  - file: llama.cpp.conf
    status: safe
    summary: Simple config file, no security issues.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD, no supply chain concerns.
  - file: llama.cpp.service
    status: safe
    summary: Standard systemd service unit, no security issues.
  - file: .nvchecker.toml
    status: safe
    summary: Standard nvchecker config, no security concerns.
---

Cloning https://aur.archlinux.org/llama.cpp-cuda.git...
Cloned llama.cpp-cuda
Analyzing llama.cpp-cuda AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD is a standard AUR package for llama.cpp with CUDA support. The top-level scope only contains variable definitions and array assignments (source, sha256sums, dependencies, etc.). There is no `pkgver()` function, no command substitutions, and no dangerous commands (eval, curl|bash, wget to unexpected hosts) that could execute during PKGBUILD sourcing or source fetching. The source URL points to the legitimate GitHub release tarball of ggml-org/llama.cpp. The `prepare()`, `build()`, and `package()` functions are defined but will not be executed due to `--nobuild` and `--noprepare` flags. The commands `makepkg --nobuild --nodeps --noprepare` and `makepkg --printsrcinfo` will only fetch the upstream tarball and optional config files, and source the PKGBUILD's global scope, which contains no malicious code. The file presents no supply-chain attack indicators for this scope.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD; safe to fetch and source.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Standard PKGBUILD; safe to fetch and source.
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Note: the PKGBUILD names 1 file(s) in the downloaded sources (src/llama.cpp-b10679/convert_hf_to_gguf.py); they are upstream content and were not reviewed.
Reviewing the 6 file(s) in the AUR repository. The 3506 downloaded file(s) are upstream content, outside the threat model, and are not read.
Reviewing the AUR repository's files...
[0/6] Reviewing .SRCINFO...
[0/6] Reviewing .SRCINFO, .gitignore...
[0/6] Reviewing .SRCINFO, .gitignore, .nvchecker.toml...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.SRCINFO` metadata file for the `llama.cpp-cuda` AUR package. It declares package metadata, dependencies, and source URLs. All sources point to the official `ggml-org/llama.cpp` GitHub repository at a specific tag (`b10679`). Checksums are provided for all source files. There are no executable commands, obfuscated content, or signs of malicious behavior. The file follows normal AUR packaging conventions.
</details>
<evidence></evidence>
<summary>Standard metadata file, no security issues.</summary>
</security_assessment>

[1/6] Reviewing .gitignore, .nvchecker.toml...
+ Reviewed .SRCINFO. Status: SAFE -- Standard metadata file, no security issues.
[1/6] Reviewing .gitignore, .nvchecker.toml, PKGBUILD...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard `.gitignore` file used in a git repository to specify intentionally untracked files. It lists patterns to ignore everything except the files that are explicitly whitelisted (`PKGBUILD`, `.SRCINFO`, `.gitignore`, `.nvchecker.toml`, `llama.cpp.conf`, `llama.cpp.service`). There is no code, no network requests, no obfuscation, no system modifications, or any other malicious or suspicious behavior. The file is consistent with normal AUR packaging practices and poses no security risk.
</details>
<evidence>
</evidence>
<summary>Standard .gitignore file, no malicious content.</summary>
</security_assessment>

[1/6] Reviewing .gitignore, .nvchecker.toml, PKGBUILD, llama.cpp.conf...
[2/6] Reviewing .nvchecker.toml, PKGBUILD, llama.cpp.conf...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore file, no malicious content.
LLM auditresponse for llama.cpp.conf:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a simple configuration file for llama.cpp, defining an environment variable `LLAMA_ARGS` set to an empty string. There is no executable code, no network requests, no file operations, no obfuscation, and no deviation from expected packaging practices. No security concerns are present.
</details>
<evidence></evidence>
<summary>Simple config file, no security issues.</summary>
</security_assessment>

[2/6] Reviewing .nvchecker.toml, PKGBUILD, llama.cpp.conf, llama.cpp.service...
[3/6] Reviewing .nvchecker.toml, PKGBUILD, llama.cpp.service...
+ Reviewed llama.cpp.conf. Status: SAFE -- Simple config file, no security issues.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD for `llama.cpp-cuda` follows standard AUR packaging practices. It fetches the upstream source from the official GitHub repository (`ggml-org/llama.cpp`) with a pinned tag and SHA256 checksums, so the source integrity is verifiable. The build process uses CMake with standard options, and the package installs files to expected system paths. The only notable deviation is sourcing `/etc/profile` in `build()` if `NVCC_CCBIN` is unset—this is a common pattern to ensure CUDA environment variables are available and does not constitute malicious behavior. The `LLAMA_BUILD_EXTRA_ARGS` environment variable allows user customization, but it is user-controlled and not an injection vector from the package. There is no obfuscated code, no unexpected network requests, no exfiltration, and no tampering with unrelated system files. The file is safe.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD, no supply chain concerns.</summary>
</security_assessment>

[4/6] Reviewing .nvchecker.toml, llama.cpp.service...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD, no supply chain concerns.
LLM auditresponse for llama.cpp.service:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard systemd service unit file for running the llama.cpp server. It defines a service that executes `/usr/bin/llama-server` with arguments sourced from an environment file. There are no network requests, code downloads, obfuscated commands, or any other malicious elements. The file follows normal packaging conventions for daemon management.
</details>
<evidence>
</evidence>
<summary>Standard systemd service unit, no security issues.</summary>
</security_assessment>

[5/6] Reviewing .nvchecker.toml...
+ Reviewed llama.cpp.service. Status: SAFE -- Standard systemd service unit, no security issues.
LLM auditresponse for .nvchecker.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a configuration file for `nvchecker`, a tool that monitors upstream releases. It defines a git source pointing to the official llama.cpp repository and an `include_regex` pattern to match version tags (e.g., `b123`). There is no executable code, no network requests to unexpected hosts, and no instructions that could lead to a supply-chain attack. It is purely declarative metadata with no security implications.
</details>
<evidence></evidence>
<summary>Standard nvchecker config, no security concerns.</summary>
</security_assessment>

[6/6] Reviewing ...
+ Reviewed .nvchecker.toml. Status: SAFE -- Standard nvchecker config, no security concerns.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 17,543
  Completion Tokens: 2,728
  Total Tokens: 20,271
  Total Cost: $0.001990
  Execution Time: 90.89 seconds

Final Status: SAFE


No issues found.
