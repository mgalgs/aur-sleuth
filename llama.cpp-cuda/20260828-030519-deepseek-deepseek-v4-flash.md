---
package: llama.cpp-cuda
pkgver: b10665
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 3e318911529c43138ec6bdba0bfcb56907607021
prompt_tokens: 17525
completion_tokens: 2804
total_tokens: 20329
cost: 0.002049722598
execution_time: 91.3
files_reviewed: 6
files_skipped: 0
maintainer_files: 6
source_fetch: ok
upstream_files: 3501
upstream_named_files: 1
unpinned_sources: 0
date: 2026-08-28T03:05:18Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard gitignore, no security concerns.
  - file: .nvchecker.toml
    status: safe
    summary: Standard nvchecker config for upstream version tracking.
  - file: .SRCINFO
    status: safe
    summary: Standard package metadata file with pinned sources and checksums.
  - file: llama.cpp.conf
    status: safe
    summary: Standard config file without any malicious content.
  - file: llama.cpp.service
    status: safe
    summary: Standard systemd service unit file, no security issues.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD, no signs of malicious behavior.
---

Cloning https://aur.archlinux.org/llama.cpp-cuda.git...
Cloned llama.cpp-cuda
Analyzing llama.cpp-cuda AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD is a standard AUR package for llama.cpp-cuda. The global scope contains only variable definitions and array assignments, with no command substitutions, obfuscated code, or network requests beyond the declared upstream source. There is no `pkgver()` function. The `prepare()`, `build()`, and `package()` functions are not executed during the `makepkg --nobuild --nodeps --noprepare` and `makepkg --printsrcinfo` commands. The source array points to the official GitHub repository and local configuration files. No suspicious behavior is present that would execute during this narrow safety gate.
</details>
<evidence>
</evidence>
<summary>Safe: standard PKGBUILD, no malicious code executed.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Safe: standard PKGBUILD, no malicious code executed.
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Note: the PKGBUILD names 1 file(s) in the downloaded sources (src/llama.cpp-b10665/convert_hf_to_gguf.py); they are upstream content and were not reviewed.
Reviewing the 6 file(s) in the AUR repository. The 3501 downloaded file(s) are upstream content, outside the threat model, and are not read.
Reviewing the AUR repository's files...
[0/6] Reviewing .SRCINFO...
[0/6] Reviewing .SRCINFO, .gitignore...
[0/6] Reviewing .SRCINFO, .gitignore, .nvchecker.toml...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.gitignore` file for an AUR package repository. It ignores all files by default (wildcard `*`) and then whitelists the essential packaging files: `PKGBUILD`, `.SRCINFO`, `.gitignore`, `.nvchecker.toml`, and two configuration files (`llama.cpp.conf`, `llama.cpp.service`). No executable code, network requests, or system modifications are present. The file is purely a git ignore pattern list and poses no security risk.
</details>
<evidence>
</evidence>
<summary>Standard gitignore, no security concerns.</summary>
</security_assessment>

[0/6] Reviewing .SRCINFO, .gitignore, .nvchecker.toml, PKGBUILD...
[1/6] Reviewing .SRCINFO, .nvchecker.toml, PKGBUILD...
+ Reviewed .gitignore. Status: SAFE -- Standard gitignore, no security concerns.
LLM auditresponse for .nvchecker.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard nvchecker configuration file used to track upstream releases of the llama.cpp project. It specifies the official GitHub repository as the source and uses a regex to match version tags. No malicious or suspicious behavior is present.
</details>
<evidence>

</evidence>
<summary>Standard nvchecker config for upstream version tracking.</summary>
</security_assessment>

[1/6] Reviewing .SRCINFO, .nvchecker.toml, PKGBUILD, llama.cpp.conf...
[2/6] Reviewing .SRCINFO, PKGBUILD, llama.cpp.conf...
+ Reviewed .nvchecker.toml. Status: SAFE -- Standard nvchecker config for upstream version tracking.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.SRCINFO` metadata file for the `llama.cpp-cuda` AUR package. It contains only declarative packaging fields: package name, version, description, dependencies, source URLs, and checksums.

The source points to the official upstream repository (`github.com/ggml-org/llama.cpp`) pinned to a specific tag (`b10665`), and all three source items have SHA-256 checksums provided (none are `SKIP`). No executable code, network downloads outside the declared sources, obfuscation, or system-modification commands are present.

All dependencies are legitimate build/runtime requirements for the package's stated purpose (CUDA-accelerated LLaMA model inference). The file poses no security concerns.
</details>
<evidence></evidence>
<summary>Standard package metadata file with pinned sources and checksums.</summary>
</security_assessment>

[3/6] Reviewing PKGBUILD, llama.cpp.conf...
+ Reviewed .SRCINFO. Status: SAFE -- Standard package metadata file with pinned sources and checksums.
[3/6] Reviewing PKGBUILD, llama.cpp.conf, llama.cpp.service...
LLM auditresponse for llama.cpp.conf:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a simple configuration file for the llama.cpp application. It sets the environment variable `LLAMA_ARGS` to an empty string using HTML-escaped double quotes (`&quot;`). There is no executable code, no network requests, no file operations, and no obfuscation. The content is entirely benign and follows standard packaging practices for configuration files.
</details>
<evidence></evidence>
<summary>Standard config file without any malicious content.</summary>
</security_assessment>

[4/6] Reviewing PKGBUILD, llama.cpp.service...
+ Reviewed llama.cpp.conf. Status: SAFE -- Standard config file without any malicious content.
LLM auditresponse for llama.cpp.service:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard systemd service unit file for the llama.cpp server. It declares the service type, environment file, execution command, reload command, restart policy, and installation target. There are no suspicious network requests, obfuscated code, file operations, or dangerous commands. All paths are standard system locations (`/usr/bin/llama-server`, `/etc/conf.d/llama.cpp`). The `ExecReload` uses a standard kill signal. The content is entirely ordinary for a packaging service file.
</details>
<evidence></evidence>
<summary>Standard systemd service unit file, no security issues.</summary>
</security_assessment>

[5/6] Reviewing PKGBUILD...
+ Reviewed llama.cpp.service. Status: SAFE -- Standard systemd service unit file, no security issues.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD is clean and follows standard AUR packaging practices. All source tarballs have pinned SHA-256 checksums (no SKIP). No obfuscated code, suspicious network requests, eval, or unexpected file operations are present. The build process uses CMake normally, and the `LLAMA_BUILD_EXTRA_ARGS` environment variable is a user-controlled customization mechanism, not an injected attack. Sourcing `/etc/profile` for CUDA environment is reasonable. The only dependencies and sources relate to the upstream project.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD, no signs of malicious behavior.</summary>
</security_assessment>

[6/6] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD, no signs of malicious behavior.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 17,525
  Completion Tokens: 2,804
  Total Tokens: 20,329
  Total Cost: $0.002050
  Execution Time: 91.30 seconds

Final Status: SAFE


No issues found.
