---
package: ollama-cuda13-bin
pkgbase: ollama-bin
pkgver: 0.33.1
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 3e318911529c43138ec6bdba0bfcb56907607021
prompt_tokens: 34923
completion_tokens: 4684
total_tokens: 39607
cost: 0.003924448346
execution_time: 162.35
files_reviewed: 13
files_skipped: 0
maintainer_files: 13
source_fetch: ok
upstream_files: 63
upstream_named_files: 1
unpinned_sources: 0
date: 2026-08-28T03:10:14Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata, no malicious content.
  - file: .gitignore
    status: safe
    summary: Standard AUR .gitignore whitelisting packaging files; no malicious behavior detected.
  - file: .nvchecker.toml
    status: safe
    summary: Standard nvchecker config; no security issues.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD for official prebuilt binary, no malicious code.
  - file: ollama-cuda.service
    status: safe
    summary: Standard systemd service file, no security issues.
  - file: ollama-vulkan.conf
    status: safe
    summary: Static environment config enabling Vulkan; no malicious behavior found.
  - file: ollama-vulkan.service
    status: safe
    summary: Safe systemd service unit file with no malicious content.
  - file: ollama-cuda.conf
    status: safe
    summary: Configuration file with CUDA env vars; no malicious code.
  - file: ollama.install
    status: safe
    summary: Standard install script with benign capability setting.
  - file: ollama.conf
    status: safe
    summary: Standard Ollama configuration file, no security issues.
  - file: sysusers.conf
    status: safe
    summary: Standard sysusers config for ollama user.
  - file: ollama.service
    status: safe
    summary: Standard systemd service file, no malicious content.
  - file: tmpfiles.d
    status: safe
    summary: Standard tmpfiles.d directory creation, no security issues.
---

ollama-cuda13-bin is built from ollama-bin
Cloning https://aur.archlinux.org/ollama-bin.git...
Cloned ollama-cuda13-bin
Analyzing ollama-cuda13-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only variable declarations and function definitions. There are no command substitutions, backticks, or other executable code in the global scope that would run during `makepkg --nobuild --nodeps --noprepare`. The source array points to GitHub (the project's own upstream) and local files. Package functions (`package_*`) are not executed during this step. No dangerous commands (curl, eval, base64, etc.) appear in the top-level code. Fetching and extracting these sources is standard behavior and poses no immediate security risk.
</details>
<evidence></evidence>
<summary>No dangerous code in global scope; safe to fetch sources.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous code in global scope; safe to fetch sources.
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Note: the PKGBUILD names 1 file(s) in the downloaded sources (src/bin/ollama); they are upstream content and were not reviewed.
Reviewing the 13 file(s) in the AUR repository. The 63 downloaded file(s) are upstream content, outside the threat model, and are not read.
Reviewing the AUR repository's files...
[0/13] Reviewing .SRCINFO...
[0/13] Reviewing .SRCINFO, .nvchecker.toml...
[0/13] Reviewing .SRCINFO, .nvchecker.toml, .gitignore...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This .SRCINFO file is a standard metadata descriptor for an Arch User Repository (AUR) package. It defines the package base and subpackages, lists sources from the official Ollama GitHub repository, and provides specific SHA256 checksums for all files. There are no obfuscated commands, suspicious network requests, or any executable content. The file adheres to normal AUR packaging conventions and does not indicate any supply-chain attack or malicious behavior.
</details>
<evidence></evidence>
<summary>Standard AUR metadata, no malicious content.</summary>
</security_assessment>

[1/13] Reviewing .nvchecker.toml, .gitignore...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata, no malicious content.
[1/13] Reviewing .nvchecker.toml, .gitignore, PKGBUILD...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.gitignore` file used in an AUR package repository. It whitelists packaging-related files such as PKGBUILD, .SRCINFO, .install scripts, service files, configuration files, and the nvchecker configuration while ignoring everything else. There are no network operations, no command execution, no obfuscation, and no file modification behavior. The content is consistent with normal AUR repository maintenance and contains no security concerns.
</details>
<evidence>

</evidence>
<summary>
Standard AUR .gitignore whitelisting packaging files; no malicious behavior detected.</summary>
</security_assessment>

[1/13] Reviewing .nvchecker.toml, .gitignore, PKGBUILD, ollama-cuda.conf...
[2/13] Reviewing .nvchecker.toml, PKGBUILD, ollama-cuda.conf...
+ Reviewed .gitignore. Status: SAFE -- Standard AUR .gitignore whitelisting packaging files; no malicious behavior detected.
LLM auditresponse for .nvchecker.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `.nvchecker.toml` is a standard configuration file for `nvchecker`, a tool used to monitor upstream releases. It specifies the source as GitHub, the repository `ollama/ollama`, and instructs to use the latest release with a version prefix of `v`. There is no code, no network requests, no obfuscation, and no potential for malicious activity. It is a simple, declarative configuration file for automating version checks, which is a normal part of AUR package maintenance.
</details>
<evidence>
</evidence>
<summary>Standard nvchecker config; no security issues.</summary>
</security_assessment>

[2/13] Reviewing .nvchecker.toml, PKGBUILD, ollama-cuda.conf, ollama-cuda.service...
[3/13] Reviewing PKGBUILD, ollama-cuda.conf, ollama-cuda.service...
+ Reviewed .nvchecker.toml. Status: SAFE -- Standard nvchecker config; no security issues.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD is a standard AUR package for the `ollama` prebuilt binary. It downloads the official release tarball, LICENSE, and README from the project's own GitHub repository (`github.com/ollama/ollama`). All source checksums are explicitly provided and pinned (no `SKIP`). The `package_*()` functions only copy files from the extracted tarball into the package directory, install systemd unit files, configuration files, and documentation — all routine packaging operations. No obfuscated code, dangerous commands (eval, curl|bash, base64 decoding), unexpected network requests, or system modifications outside the package scope are present. The file is consistent with legitimate packaging practices and contains no evidence of malicious or supply-chain attack behavior.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD for official prebuilt binary, no malicious code.</summary>
</security_assessment>

[4/13] Reviewing ollama-cuda.conf, ollama-cuda.service...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD for official prebuilt binary, no malicious code.
[4/13] Reviewing ollama-cuda.conf, ollama-cuda.service, ollama-vulkan.conf...
LLM auditresponse for ollama-cuda.service:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `ollama-cuda.service` is a standard systemd service unit that loads environment variables from `/etc/ollama-cuda.conf`. This is a normal and expected packaging practice for configuring service environments. There are no commands, downloads, obfuscated code, or any suspicious operations present.</details>
<evidence></evidence>
<summary>Standard systemd service file, no security issues.</summary>
</security_assessment>

[4/13] Reviewing ollama-cuda.conf, ollama-cuda.service, ollama-vulkan.conf, ollama-vulkan.service...
[5/13] Reviewing ollama-cuda.conf, ollama-vulkan.conf, ollama-vulkan.service...
+ Reviewed ollama-cuda.service. Status: SAFE -- Standard systemd service file, no security issues.
LLM auditresponse for ollama-vulkan.conf:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a plain environment configuration file for the Ollama server. It enables an experimental Vulkan backend via `OLLAMA_VULKAN=1` and sets a GPU device list for the Vulkan runtime. There are no commands, network operations, file modifications, or encoded payloads. The content is limited to two static environment variable assignments and comments, which is consistent with standard packaging configuration files. No security issues or supply-chain red flags are present.
</details>
<evidence>
</evidence>
<summary>
Static environment config enabling Vulkan; no malicious behavior found.</summary>
</security_assessment>

[5/13] Reviewing ollama-cuda.conf, ollama-vulkan.conf, ollama-vulkan.service, ollama.conf...
[6/13] Reviewing ollama-cuda.conf, ollama-vulkan.service, ollama.conf...
+ Reviewed ollama-vulkan.conf. Status: SAFE -- Static environment config enabling Vulkan; no malicious behavior found.
LLM auditresponse for ollama-vulkan.service:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard systemd service unit that loads environment variables from an optional configuration file (`/etc/ollama-vulkan.conf`). There are no commands, no network operations, no file modifications, and no obfuscation. This is normal packaging practice for applications that require environment configuration. No security issues present.
</details>
<evidence></evidence>
<summary>Safe systemd service unit file with no malicious content.</summary>
</security_assessment>

[6/13] Reviewing ollama-cuda.conf, ollama-vulkan.service, ollama.conf, ollama.install...
[7/13] Reviewing ollama-cuda.conf, ollama.conf, ollama.install...
+ Reviewed ollama-vulkan.service. Status: SAFE -- Safe systemd service unit file with no malicious content.
LLM auditresponse for ollama-cuda.conf:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a plain configuration file for setting CUDA environment variables to optimize Ollama performance. It only contains environment variable assignments such as `CUDA_VISIBLE_DEVICES`, `CUDA_DEVICE_ORDER`, `CUDA_LAUNCH_BLOCKING`, `CUDA_MODULE_LOADING`, `CUDA_CACHE_MAXSIZE`, `CUDA_CACHE_PATH`, and `CUDA_LOG_FILE`. There are no executable commands, network requests, obfuscated code, or any operations that could be considered malicious. The file's sole purpose is to provide configuration parameters for the CUDA runtime and does not perform any actions on the system. It is consistent with standard packaging practices for a CUDA-aware application.
</details>
<evidence>

</evidence>
<summary>Configuration file with CUDA env vars; no malicious code.</summary>
</security_assessment>

[8/13] Reviewing ollama.conf, ollama.install...
+ Reviewed ollama-cuda.conf. Status: SAFE -- Configuration file with CUDA env vars; no malicious code.
[8/13] Reviewing ollama.conf, ollama.install, ollama.service...
LLM auditresponse for ollama.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `ollama.install` is a standard Arch Linux install script containing the usual pre/post hooks. The only functional action is in `post_install` and `post_upgrade`, which run `sudo setcap cap_perfmon+ep /usr/bin/ollama`. This grants the `cap_perfmon` capability to the ollama binary, allowing it to access hardware performance monitoring counters, which is a legitimate requirement for a GPU-accelerated application like ollama. There are no network requests, obfuscated code, unexpected file operations, or any other indicators of malicious behavior. The use of `sudo` is unusual but harmless since install scripts typically run as root anyway. The file presents no supply-chain attack risk.
</details>
<evidence></evidence>
<summary>Standard install script with benign capability setting.</summary>
</security_assessment>

[8/13] Reviewing ollama.conf, ollama.install, ollama.service, sysusers.conf...
[9/13] Reviewing ollama.conf, ollama.service, sysusers.conf...
+ Reviewed ollama.install. Status: SAFE -- Standard install script with benign capability setting.
LLM auditresponse for ollama.conf:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a plain configuration file for the Ollama application, setting environment variables such as the host address, timeout values, model loading parameters, and debugging options. There is no executable code, no network requests, no file operations, and no obfuscation. The only variable of note, `OLLAMA_HOST`, points to a localhost address (`http://127.0.0.1:11434`), which is the default and expected behavior for a local AI inference server. No supply chain attack indicators are present.
</details>
<evidence></evidence>
<summary>Standard Ollama configuration file, no security issues.</summary>
</security_assessment>

[10/13] Reviewing ollama.service, sysusers.conf...
+ Reviewed ollama.conf. Status: SAFE -- Standard Ollama configuration file, no security issues.
[10/13] Reviewing ollama.service, sysusers.conf, tmpfiles.d...
LLM auditresponse for sysusers.conf:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard systemd sysusers configuration file used to create a system group and user for the ollama service. The syntax `g ollama - -` creates a group named ollama, and `u! ollama - &quot;ollama user&quot; /var/lib/ollama` creates a system user (the `!` indicates a system account) with a comment and home directory. There are no unusual commands, network requests, or obfuscation. This is a legitimate and expected packaging practice for services that run under their own dedicated user.
</details>
<evidence>
</evidence>
<summary>Standard sysusers config for ollama user.</summary>
</security_assessment>

[11/13] Reviewing ollama.service, tmpfiles.d...
+ Reviewed sysusers.conf. Status: SAFE -- Standard sysusers config for ollama user.
LLM auditresponse for ollama.service:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard systemd service unit for the Ollama application. It defines a service that runs `/usr/bin/ollama serve` with a dedicated user and group, sets environment variables, and applies security hardening such as `PrivateTmp=yes`, `ProtectHome=yes`, and `ProtectSystem=full`. There are no network requests, obfuscated commands, unusual file operations, or any signs of malicious code. The configuration aligns with normal packaging practices for a local LLM server.
</details>
<evidence></evidence>
<summary>Standard systemd service file, no malicious content.</summary>
</security_assessment>

[12/13] Reviewing tmpfiles.d...
+ Reviewed ollama.service. Status: SAFE -- Standard systemd service file, no malicious content.
LLM auditresponse for tmpfiles.d:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a systemd tmpfiles.d configuration entry that creates a directory `/var/lib/ollama` with ownership `ollama:ollama` and permissions `0755`. This is a standard and expected practice for applications that require a persistent data directory. There is no malicious or suspicious content—no network requests, obfuscated code, file operations beyond creating a directory, or any deviation from normal packaging conventions.
</details>
<evidence>
</evidence>
<summary>Standard tmpfiles.d directory creation, no security issues.</summary>
</security_assessment>

[13/13] Reviewing ...
+ Reviewed tmpfiles.d. Status: SAFE -- Standard tmpfiles.d directory creation, no security issues.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 34,923
  Completion Tokens: 4,684
  Total Tokens: 39,607
  Total Cost: $0.003924
  Execution Time: 162.35 seconds

Final Status: SAFE


No issues found.
