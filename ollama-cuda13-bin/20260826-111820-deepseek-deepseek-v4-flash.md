---
package: ollama-cuda13-bin
pkgbase: ollama-bin
pkgver: 0.33.0
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: bf65c6be33eadea3455007f8db36db9ddf76ab3c
prompt_tokens: 34785
completion_tokens: 4817
total_tokens: 39602
cost: 0.0036690094
execution_time: 240.65
files_reviewed: 13
files_skipped: 0
maintainer_files: 13
upstream_files: 63
upstream_named_files: 1
unpinned_sources: 0
date: 2026-08-26T11:18:19Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard .gitignore file, no malicious content.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata, no malicious content.
  - file: .nvchecker.toml
    status: safe
    summary: nvchecker config pointing to upstream ollama repo; benign and standard.
  - file: ollama-cuda.conf
    status: safe
    summary: Plain CUDA config file, no malicious content.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD for prebuilt Ollama binaries with pinned checksums.
  - file: ollama-cuda.service
    status: safe
    summary: Standard systemd service unit, no malicious content.
  - file: ollama-vulkan.conf
    status: safe
    summary: Configuration file for Vulkan support in Ollama. No malicious content.
  - file: ollama.conf
    status: safe
    summary: Configuration file with environment variables for Ollama.
  - file: ollama-vulkan.service
    status: safe
    summary: Standard systemd service configuration file with no security concerns.
  - file: sysusers.conf
    status: safe
    summary: Standard sysusers config for ollama service user.
  - file: ollama.service
    status: safe
    summary: Standard systemd service file with no malicious content.
  - file: tmpfiles.d
    status: safe
    summary: Standard tmpfiles.d configuration for data directory.
  - file: ollama.install
    status: safe
    summary: Standard capability-setting install script, no security issues.
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
The PKGBUILD defines only standard variable assignments and function definitions at the top level. There is no `pkgver()` function, and no top-level command substitution or arbitrary code execution. All source URLs point to the official ollama GitHub repository (`https://github.com/ollama/ollama`) or are local files bundled with the PKGBUILD. The `sha256sums` for all sources are provided and pinned to specific hashes (no SKIP). The architecture-specific binary tarballs are fetched from the official GitHub releases. No obfuscated code, suspicious network destinations, or dangerous commands (eval, base64, curl|bash, etc.) are present. Running `makepkg --nobuild --nodeps --noprepare` and `makepkg --printsrcinfo` will only fetch these sources and parse the PKGBUILD, which is safe.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD with pinned sources from official repo.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Standard PKGBUILD with pinned sources from official repo.
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Note: the PKGBUILD names 1 file(s) in the downloaded sources (src/bin/ollama); they are upstream content and were not reviewed.
Reviewing the 13 file(s) in the AUR repository. The 63 downloaded file(s) are upstream content, outside the threat model, and are not read.
Reviewing the AUR repository's files...
[0/13] Reviewing .SRCINFO...
[0/13] Reviewing .SRCINFO, .gitignore...
[0/13] Reviewing .SRCINFO, .gitignore, .nvchecker.toml...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard `.gitignore` used in AUR package repositories. It tells Git to ignore all files (`*`) and then whitelists specific file extensions and filenames that should be tracked (e.g., `.d`, `.conf`, `.service`, `.install`, `.gitignore`, `PKGBUILD`, `.SRCINFO`, `.nvchecker.toml`). There are no commands, network requests, or any executable logic present. The content is purely declarative and follows normal version-control practices. No security concerns.
</details>
<evidence></evidence>
<summary>Standard .gitignore file, no malicious content.</summary>
</security_assessment>

[0/13] Reviewing .SRCINFO, .gitignore, .nvchecker.toml, PKGBUILD...
[1/13] Reviewing .SRCINFO, .nvchecker.toml, PKGBUILD...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore file, no malicious content.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard AUR `.SRCINFO` file containing metadata for the ollama-bin package and its subpackages. All sources point to the official ollama GitHub repository (github.com/ollama/ollama) using HTTPS. Checksums are provided for all sources and are not set to SKIP. There are no executable commands, obfuscated content, or any indicators of malicious behavior. The file simply defines package metadata, dependencies, and source locations.
</details>
<evidence></evidence>
<summary>Standard AUR metadata, no malicious content.</summary>
</security_assessment>

[2/13] Reviewing .nvchecker.toml, PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata, no malicious content.
[2/13] Reviewing .nvchecker.toml, PKGBUILD, ollama-cuda.conf...
LLM auditresponse for .nvchecker.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a configuration for the `nvchecker` tool, which is used to check for the latest upstream releases. It defines a single entry `ollama-bin` that queries the GitHub repository `ollama/ollama` and uses the latest release, expecting a version prefix of `v`. This is a standard, benign packaging helper configuration. There are no network downloads, code execution, obfuscated strings, or any suspicious operations. The source is the project's official upstream GitHub repository, which is expected for this package. No security issues were found.
</details>
<evidence>
</evidence>
<summary>
nvchecker config pointing to upstream ollama repo; benign and standard.</summary>
</security_assessment>

[3/13] Reviewing PKGBUILD, ollama-cuda.conf...
+ Reviewed .nvchecker.toml. Status: SAFE -- nvchecker config pointing to upstream ollama repo; benign and standard.
[3/13] Reviewing PKGBUILD, ollama-cuda.conf, ollama-cuda.service...
LLM auditresponse for ollama-cuda.conf:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `ollama-cuda.conf` is a plain environment configuration file for CUDA settings, intended for use with the Ollama application. It contains standard CUDA environment variables (e.g., `CUDA_VISIBLE_DEVICES`, `CUDA_DEVICE_ORDER`, `CUDA_CACHE_PATH`) that tune GPU behavior and caching. No executable code, network requests, obfuscation, or file manipulation is present. The designated paths (`/var/cache/cuda`, `/var/log/cuda.log`) are typical system-wide locations; they do not indicate a security threat. The file poses nothing that deviates from standard packaging practice or introduces supply-chain risk.
</details>
<evidence>
</evidence>
<summary>
Plain CUDA config file, no malicious content.
</summary>
</security_assessment>

[3/13] Reviewing PKGBUILD, ollama-cuda.conf, ollama-cuda.service, ollama-vulkan.conf...
[4/13] Reviewing PKGBUILD, ollama-cuda.service, ollama-vulkan.conf...
+ Reviewed ollama-cuda.conf. Status: SAFE -- Plain CUDA config file, no malicious content.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD is a standard multi-split package that fetches prebuilt Ollama binaries from the official GitHub releases. All source files have pinned SHA256 checksums (none are set to SKIP), ensuring download integrity. The package functions simply extract and install binaries, configuration files, systemd services, and documentation into the appropriate directories. There are no obfuscated commands, unexpected network requests, eval/base64 usage, or any code that deviates from normal packaging practices. The only "network activity" is fetching the package's own declared upstream tarballs from `https://github.com/ollama/ollama/releases`, which is expected. No evidence of malicious injection, data exfiltration, or backdoor behavior.
</details>
<evidence></evidence>
<summary>Standard AUR PKGBUILD for prebuilt Ollama binaries with pinned checksums.</summary>
</security_assessment>

[4/13] Reviewing PKGBUILD, ollama-cuda.service, ollama-vulkan.conf, ollama-vulkan.service...
[5/13] Reviewing ollama-cuda.service, ollama-vulkan.conf, ollama-vulkan.service...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD for prebuilt Ollama binaries with pinned checksums.
LLM auditresponse for ollama-cuda.service:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard systemd service unit that loads environment variables from `/etc/ollama-cuda.conf` (with the `-` prefix to tolerate a missing file). There is no executable code, no network activity, no obfuscation, and no deviation from normal packaging practices. The configuration file path is conventional and expected for this type of service.
</details>
<evidence></evidence>
<summary>Standard systemd service unit, no malicious content.</summary>
</security_assessment>

[5/13] Reviewing ollama-cuda.service, ollama-vulkan.conf, ollama-vulkan.service, ollama.conf...
[6/13] Reviewing ollama-vulkan.conf, ollama-vulkan.service, ollama.conf...
+ Reviewed ollama-cuda.service. Status: SAFE -- Standard systemd service unit, no malicious content.
LLM auditresponse for ollama-vulkan.conf:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a simple configuration file setting environment variables for Ollama with Vulkan support. It contains only two lines: `OLLAMA_VULKAN=1` and `GGML_VK_VISIBLE_DEVICES=0,1,2,3`. There is no executable code, no network requests, no obfuscation, and no system manipulation. It is a standard packaging configuration file intended to enable Vulkan for the Ollama server.
</details>
<evidence></evidence>
<summary>Configuration file for Vulkan support in Ollama. No malicious content.</summary>
</security_assessment>

[6/13] Reviewing ollama-vulkan.conf, ollama-vulkan.service, ollama.conf, ollama.install...
[7/13] Reviewing ollama-vulkan.service, ollama.conf, ollama.install...
+ Reviewed ollama-vulkan.conf. Status: SAFE -- Configuration file for Vulkan support in Ollama. No malicious content.
LLM auditresponse for ollama.conf:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard configuration file for the Ollama application. It contains environment variable assignments (e.g., `OLLAMA_HOST`, `OLLAMA_DEBUG`, `OLLAMA_FLASH_ATTENTION`) that control the behavior of the local LLM server. There are no commands, no network requests, no file operations, and no obfuscated code. The content is purely declarative and follows expected packaging practices for an application configuration file.
</details>
<evidence></evidence>
<summary>Configuration file with environment variables for Ollama.</summary>
</security_assessment>

[7/13] Reviewing ollama-vulkan.service, ollama.conf, ollama.install, ollama.service...
[8/13] Reviewing ollama-vulkan.service, ollama.install, ollama.service...
+ Reviewed ollama.conf. Status: SAFE -- Configuration file with environment variables for Ollama.
LLM auditresponse for ollama-vulkan.service:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `ollama-vulkan.service` is a systemd service unit snippet that sets an `EnvironmentFile` directive pointing to `/etc/ollama-vulkan.conf`. The leading `-` indicates the file is optional (no error if missing). This is a standard packaging practice for applications that require environment configuration. There is no obfuscation, no network requests, no file manipulation outside the package's own scope, and no evidence of malicious code. The content is perfectly ordinary and serves only to load environment variables for the ollama-vulkan service.
</details>
<evidence></evidence>
<summary>Standard systemd service configuration file with no security concerns.</summary>
</security_assessment>

[9/13] Reviewing ollama.install, ollama.service...
+ Reviewed ollama-vulkan.service. Status: SAFE -- Standard systemd service configuration file with no security concerns.
[9/13] Reviewing ollama.install, ollama.service, sysusers.conf...
LLM auditresponse for sysusers.conf:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard systemd sysusers configuration file intended to create a dedicated system group and user for the ollama service. The first line creates the group `ollama`, and the second creates a locked (no login) user `ollama` with a home directory at `/var/lib/ollama` and a description. This is a common and expected practice for services that need to run under a non‑privileged user account. There is no malicious code, no network requests, no obfuscation, no file operations beyond the sysusers specification, and no deviation from normal packaging or system administration procedures.
</details>
<evidence>
</evidence>
<summary>Standard sysusers config for ollama service user.</summary>
</security_assessment>

[9/13] Reviewing ollama.install, ollama.service, sysusers.conf, tmpfiles.d...
[10/13] Reviewing ollama.install, ollama.service, tmpfiles.d...
+ Reviewed sysusers.conf. Status: SAFE -- Standard sysusers config for ollama service user.
LLM auditresponse for ollama.service:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard systemd service unit for the Ollama application. It launches the `/usr/bin/ollama serve` binary with typical security hardening options (`PrivateTmp=yes`, `ProtectHome=yes`, `ProtectSystem=full`) and runs as a dedicated `ollama` user. The `AmbientCapabilities=CAP_PERFMON` is a legitimate capability for performance monitoring, which may be needed for GPU or hardware acceleration. No suspicious commands, network requests, obfuscation, or unexpected operations are present. The file conforms to normal packaging practices for a systemd service.
</details>
<evidence></evidence>
<summary>Standard systemd service file with no malicious content.</summary>
</security_assessment>

[11/13] Reviewing ollama.install, tmpfiles.d...
+ Reviewed ollama.service. Status: SAFE -- Standard systemd service file with no malicious content.
LLM auditresponse for tmpfiles.d:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a systemd tmpfiles.d configuration file that instructs the system to create the directory `/var/lib/ollama` with owner `ollama`, group `ollama`, and permissions `0755`. This is a standard and expected packaging practice for ensuring the application data directory exists with correct ownership and permissions. There is no obfuscation, no network activity, no code execution, and no deviation from normal packaging conventions.
</details>
<evidence>
</evidence>
<summary>Standard tmpfiles.d configuration for data directory.</summary>
</security_assessment>

[12/13] Reviewing ollama.install...
+ Reviewed tmpfiles.d. Status: SAFE -- Standard tmpfiles.d configuration for data directory.
LLM auditresponse for ollama.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `ollama.install` is a standard Arch Linux package install script that executes during package installation, upgrade, and removal. It contains only stub functions (`pre_install`, `pre_upgrade`, `pre_remove`, `post_remove`) and two calls to set a Linux capability on the ollama binary.

In the `post_install` and `post_upgrade` hooks, the command `sudo setcap cap_perfmon+ep /usr/bin/ollama` grants the `cap_perfmon` capability to the ollama binary. This is a legitimate administrative action to allow the application to use performance monitoring features when run by non-root users. It does not fetch any external resources, execute arbitrary code, modify unrelated system files, or exfiltrate data.

There is no obfuscated or encoded content, no network requests, and no behavior that deviates from expected packaging practices. The script is safe.
</details>
<evidence></evidence>
<summary>Standard capability-setting install script, no security issues.</summary>
</security_assessment>

[13/13] Reviewing ...
+ Reviewed ollama.install. Status: SAFE -- Standard capability-setting install script, no security issues.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 34,785
  Completion Tokens: 4,817
  Total Tokens: 39,602
  Total Cost: $0.003669
  Execution Time: 240.65 seconds

Final Status: SAFE


No issues found.
