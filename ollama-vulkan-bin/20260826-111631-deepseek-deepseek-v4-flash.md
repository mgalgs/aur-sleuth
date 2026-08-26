---
package: ollama-vulkan-bin
pkgbase: ollama-bin
pkgver: 0.33.0
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: bf65c6be33eadea3455007f8db36db9ddf76ab3c
prompt_tokens: 34771
completion_tokens: 5368
total_tokens: 40139
cost: 0.0037588782
execution_time: 132.03
files_reviewed: 13
files_skipped: 0
maintainer_files: 13
upstream_files: 63
upstream_named_files: 1
unpinned_sources: 0
date: 2026-08-26T11:16:31Z
file_verdicts:
  - file: .nvchecker.toml
    status: safe
    summary: Standard nvchecker config, no malicious content.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata, no malicious content.
  - file: PKGBUILD
    status: safe
    summary: Clean PKGBUILD with pinned sources and no suspicious behavior.
  - file: ollama-cuda.conf
    status: safe
    summary: Safe configuration file with CUDA environment variables.
  - file: ollama-cuda.service
    status: safe
    summary: Standard systemd service file, no security concerns.
  - file: ollama-vulkan.conf
    status: safe
    summary: Benign environment configuration file for Ollama Vulkan support.
  - file: ollama.conf
    status: safe
    summary: Static config file with no executable or malicious content.
  - file: ollama-vulkan.service
    status: safe
    summary: Standard systemd service file, no security issues.
  - file: .gitignore
    status: safe
    summary: Standard .gitignore file; no security issues.
  - file: ollama.install
    status: safe
    summary: Standard capability setting; no malicious behavior.
  - file: ollama.service
    status: safe
    summary: Standard systemd service, no security concerns.
  - file: sysusers.conf
    status: safe
    summary: Standard sysusers config for service user.
  - file: tmpfiles.d
    status: safe
    summary: Standard tmpfiles.d configuration, no security issues.
---

ollama-vulkan-bin is built from ollama-bin
Cloning https://aur.archlinux.org/ollama-bin.git...
Cloned ollama-vulkan-bin
Analyzing ollama-vulkan-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD only contains variable assignments and package function definitions. No top-level code execution occurs beyond variable expansion in source URLs, all of which point to the project's official GitHub repository (github.com/ollama/ollama). No `pkgver()` function exists that could execute code during sourcing. The source array includes plain file names (local to the AUR repo) and official GitHub releases/raw content with valid checksums. No obfuscation, base64, eval, curl|bash, or other suspicious patterns are present. Commands inside `package_*()` functions are only executed during the packaging step, which is not triggered by `makepkg --nobuild --nodeps --noprepare` or `makepkg --printsrcinfo`. Therefore, running these two commands poses no security risk.
</details>
<evidence></evidence>
<summary>No malicious code; safe to fetch sources and parse.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious code; safe to fetch sources and parse.
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Note: the PKGBUILD names 1 file(s) in the downloaded sources (src/bin/ollama); they are upstream content and were not reviewed.
Reviewing the 13 file(s) in the AUR repository. The 63 downloaded file(s) are upstream content, outside the threat model, and are not read.
Reviewing the AUR repository's files...
[0/13] Reviewing .SRCINFO...
[0/13] Reviewing .SRCINFO, .gitignore...
[0/13] Reviewing .SRCINFO, .gitignore, .nvchecker.toml...
LLM auditresponse for .nvchecker.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard nvchecker configuration for checking the latest release of the ollama/ollama GitHub repository. It contains only declarative TOML keys (source, github, use_latest_release, prefix) and no executable commands, obfuscation, or suspicious patterns. It poses no security risk.
</details>
<evidence>
</evidence>
<summary>Standard nvchecker config, no malicious content.</summary>
</security_assessment>

[0/13] Reviewing .SRCINFO, .gitignore, .nvchecker.toml, PKGBUILD...
[1/13] Reviewing .SRCINFO, .gitignore, PKGBUILD...
+ Reviewed .nvchecker.toml. Status: SAFE -- Standard nvchecker config, no malicious content.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This `.SRCINFO` file is a standard AUR package metadata file for `ollama-vulkan-bin`. It declares package dependencies, sources, and checksums. All sources are pulled from the official ollama GitHub releases (`https://github.com/ollama/ollama/releases/download/v0.33.0/...`) and individual files from the raw content repository. Every source has a pinned SHA-256 checksum; none are set to `SKIP`. The file contains no executable code, no obfuscated strings, no suspicious network destinations, and no commands. It is a normal, correctly formatted AUR metadata file that follows packaging conventions. No evidence of malicious or dangerous behavior was found.
</details>
<evidence></evidence>
<summary>Standard AUR metadata, no malicious content.</summary>
</security_assessment>

[1/13] Reviewing .SRCINFO, .gitignore, PKGBUILD, ollama-cuda.conf...
[2/13] Reviewing .gitignore, PKGBUILD, ollama-cuda.conf...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata, no malicious content.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard Arch packaging practices for a prebuilt binary package from the official upstream repository. All sources are fetched from the project's own GitHub releases and raw content URLs, with pinned version tags (v0.33.0) and explicit SHA256 checksums for every source file (none set to SKIP). The package functions only extract the provided tarball and install binaries, libraries, systemd service files, configuration files, and documentation into the package directory. No dynamic downloads, obfuscated code, suspicious network requests, or unexpected file manipulations are present. The split packages (`ollama-bin`, `ollama-cuda12-bin`, `ollama-cuda13-bin`, `ollama-vulkan-bin`) are correctly structured to provide different GPU backend variants. There is no evidence of supply-chain attack or malicious injection in this file.
</details>
<evidence></evidence>
<summary>Clean PKGBUILD with pinned sources and no suspicious behavior.</summary>
</security_assessment>

[2/13] Reviewing .gitignore, PKGBUILD, ollama-cuda.conf, ollama-cuda.service...
[3/13] Reviewing .gitignore, ollama-cuda.conf, ollama-cuda.service...
+ Reviewed PKGBUILD. Status: SAFE -- Clean PKGBUILD with pinned sources and no suspicious behavior.
LLM auditresponse for ollama-cuda.conf:
<security_assessment>
<decision>SAFE</decision>
<details>
The file "ollama-cuda.conf" contains only standard CUDA environment variable assignments (CUDA_VISIBLE_DEVICES, CUDA_DEVICE_ORDER, CUDA_CACHE_MAXSIZE, etc.). There are no executable commands, no network requests, no obfuscated code, and no suspicious file operations. The configuration is consistent with what one would expect for optimizing CUDA support in an application like Ollama. The paths for cache and log are plausible system paths. No evidence of a supply-chain attack or malicious behavior is present.</details>
<evidence></evidence>
<summary>Safe configuration file with CUDA environment variables.</summary>
</security_assessment>

[4/13] Reviewing .gitignore, ollama-cuda.service...
+ Reviewed ollama-cuda.conf. Status: SAFE -- Safe configuration file with CUDA environment variables.
[4/13] Reviewing .gitignore, ollama-cuda.service, ollama-vulkan.conf...
LLM auditresponse for ollama-cuda.service:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `ollama-cuda.service` is a simple systemd service unit that only sets an `EnvironmentFile` directive pointing to `/etc/ollama-cuda.conf` (with the `-` prefix to tolerate missing files). This is a standard configuration mechanism used to inject environment variables into a service. There are no commands, network access, file modifications, or any other operations—malicious or otherwise. The content is entirely benign and consistent with normal packaging practices.
</details>
<evidence>
</evidence>
<summary>Standard systemd service file, no security concerns.</summary>
</security_assessment>

[4/13] Reviewing .gitignore, ollama-cuda.service, ollama-vulkan.conf, ollama-vulkan.service...
[5/13] Reviewing .gitignore, ollama-vulkan.conf, ollama-vulkan.service...
+ Reviewed ollama-cuda.service. Status: SAFE -- Standard systemd service file, no security concerns.
LLM auditresponse for ollama-vulkan.conf:
<security_assessment>
<decision>SAFE</decision>
<details>
This configuration file simply sets environment variables (`OLLAMA_VULKAN=1` and `GGML_VK_VISIBLE_DEVICES=0,1,2,3`) to enable and configure the Vulkan backend for the Ollama application. There are no commands, scripts, network operations, obfuscation, or any behavior that could be considered malicious. The file is a standard configuration snippet commonly provided with AUR packages to adjust application settings. It poses no security risk.
</details>
<evidence>
</evidence>
<summary>
Benign environment configuration file for Ollama Vulkan support.
</summary>
</security_assessment>

[5/13] Reviewing .gitignore, ollama-vulkan.conf, ollama-vulkan.service, ollama.conf...
[6/13] Reviewing .gitignore, ollama-vulkan.service, ollama.conf...
+ Reviewed ollama-vulkan.conf. Status: SAFE -- Benign environment configuration file for Ollama Vulkan support.
LLM auditresponse for ollama.conf:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a static configuration file for Ollama, setting environment variables with constant values. There are no commands, scripts, network requests, or any executable logic. All entries are standard Ollama configuration parameters (host, timeouts, memory limits, etc.) and present no security concerns. The host is set to a local address, which is expected for a local LLM service.
</details>
<evidence></evidence>
<summary>Static config file with no executable or malicious content.</summary>
</security_assessment>

[6/13] Reviewing .gitignore, ollama-vulkan.service, ollama.conf, ollama.install...
[7/13] Reviewing .gitignore, ollama-vulkan.service, ollama.install...
+ Reviewed ollama.conf. Status: SAFE -- Static config file with no executable or malicious content.
LLM auditresponse for ollama-vulkan.service:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard systemd service unit file snippet. It declares an optional environment file (`EnvironmentFile=-/etc/ollama-vulkan.conf`), which is a routine and safe practice in systemd services. There is no executable code, no network activity, no obfuscation, and no deviation from expected packaging patterns. The file presents no security concerns.
</details>
<evidence></evidence>
<summary>Standard systemd service file, no security issues.</summary>
</security_assessment>

[7/13] Reviewing .gitignore, ollama-vulkan.service, ollama.install, ollama.service...
[8/13] Reviewing .gitignore, ollama.install, ollama.service...
+ Reviewed ollama-vulkan.service. Status: SAFE -- Standard systemd service file, no security issues.
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.gitignore` file for an AUR package repository. It ignores all files except those explicitly listed (e.g., `PKGBUILD`, `*.install`, `*.service`, `.SRCINFO`), which is a normal practice to keep the repository clean and avoid committing generated or unnecessary files. There is no code execution, no network requests, no obfuscation, and no indication of malicious behavior. The file is purely a configuration file for Git.
</details>
<evidence></evidence>
<summary>Standard .gitignore file; no security issues.</summary>
</security_assessment>

[8/13] Reviewing .gitignore, ollama.install, ollama.service, sysusers.conf...
[9/13] Reviewing ollama.install, ollama.service, sysusers.conf...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore file; no security issues.
LLM auditresponse for ollama.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `ollama.install` contains a standard Arch Linux package install script. It only sets the `cap_perfmon` capability on the Ollama binary during post-install and post-upgrade steps. This capability allows access to performance monitoring hardware, which is legitimate for an AI server application. The use of `sudo` is redundant (pacman runs these scripts as root) but not malicious. There are no network requests, obfuscated code, file exfiltration, or backdoor behavior. The file is entirely consistent with normal packaging practices.
</details>
<evidence></evidence>
<summary>Standard capability setting; no malicious behavior.</summary>
</security_assessment>

[9/13] Reviewing ollama.install, ollama.service, sysusers.conf, tmpfiles.d...
[10/13] Reviewing ollama.service, sysusers.conf, tmpfiles.d...
+ Reviewed ollama.install. Status: SAFE -- Standard capability setting; no malicious behavior.
LLM auditresponse for ollama.service:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard systemd service unit for the Ollama LLM application. The file defines a service that runs `/usr/bin/ollama serve` with documented environment variables, a dedicated user/group (`ollama`), and standard hardening options such as `PrivateTmp=yes`, `ProtectHome=yes`, and `ProtectSystem=full`. The only capability granted, `CAP_PERFMON`, is a known requirement for GPU performance monitoring and aligns with the application's stated purpose. There are no network requests, downloads, obfuscated code, or unexpected file operations. The service file follows normal packaging practices and contains no evidence of a supply-chain attack.
</details>
<evidence></evidence>
<summary>Standard systemd service, no security concerns.</summary>
</security_assessment>

[11/13] Reviewing sysusers.conf, tmpfiles.d...
+ Reviewed ollama.service. Status: SAFE -- Standard systemd service, no security concerns.
LLM auditresponse for sysusers.conf:
<security_assessment>
<decision>SAFE</decision>
<details>
The file contains standard systemd sysusers configuration that creates a system group and user named "ollama". The user is created with no specific UID (random assignment), the default group, a comment of "ollama user", and a home directory of /var/lib/ollama. This is a typical and expected practice for packages that need a dedicated system user to run a service. There is no malicious code, network requests, obfuscation, or unexpected operations. The `&amp;quot;` sequences appear to be an HTML entity encoding artifact from how the file content was provided; in the actual file these would be double quotes, which is normal for the GECOS field. No security issues detected.
</details>
<evidence></evidence>
<summary>Standard sysusers config for service user.</summary>
</security_assessment>

[12/13] Reviewing tmpfiles.d...
+ Reviewed sysusers.conf. Status: SAFE -- Standard sysusers config for service user.
LLM auditresponse for tmpfiles.d:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `tmpfiles.d` is a valid systemd tmpfiles.d configuration snippet. It uses the `Q` directive to ensure the directory `/var/lib/ollama` exists with the specified owner (`ollama`) and permissions (`0755`). This is standard packaging practice for creating runtime or data directories with restricted access. There is no execution of arbitrary code, no network access, and no manipulation of files outside the package’s intended scope. The content aligns with the expected behavior of the Ollama application.
</details>
<evidence></evidence>
<summary>Standard tmpfiles.d configuration, no security issues.</summary>
</security_assessment>

[13/13] Reviewing ...
+ Reviewed tmpfiles.d. Status: SAFE -- Standard tmpfiles.d configuration, no security issues.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 34,771
  Completion Tokens: 5,368
  Total Tokens: 40,139
  Total Cost: $0.003759
  Execution Time: 132.03 seconds

Final Status: SAFE


No issues found.
