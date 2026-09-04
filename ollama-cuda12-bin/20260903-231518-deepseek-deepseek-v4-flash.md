---
package: ollama-cuda12-bin
pkgbase: ollama-bin
pkgver: 0.33.3
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 171a316e053e9c4b28731ccb1aa63b1168550d3a
prompt_tokens: 34663
completion_tokens: 4612
total_tokens: 39275
cost: 0.00348375006
execution_time: 144.12
files_reviewed: 13
files_skipped: 0
maintainer_files: 13
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-03T23:15:17Z
file_verdicts:
  - file: .nvchecker.toml
    status: safe
    summary: Safe nvchecker config for ollama updates.
  - file: .SRCINFO
    status: safe
    summary: Clean metadata from official upstream.
  - file: .gitignore
    status: safe
    summary: Standard .gitignore file, no security issues.
  - file: PKGBUILD
    status: safe
    summary: Standard binary package; no signs of malicious code.
  - file: ollama-vulkan.conf
    status: safe
    summary: Benign environment-variable configuration file for enabling Ollama Vulkan support. No security issues.
  - file: ollama-vulkan.service
    status: safe
    summary: Standard systemd service unit file; no security issues.
  - file: ollama.conf
    status: safe
    summary: Plain config file, no executable or malicious content.
  - file: ollama.install
    status: safe
    summary: Capability setting is legitimate; no signs of supply-chain attack.
  - file: ollama.service
    status: safe
    summary: Standard systemd service unit, no security issues.
  - file: sysusers.conf
    status: safe
    summary: Standard sysusers config for a dedicated service user.
  - file: tmpfiles.d
    status: safe
    summary: Standard tmpfiles.d config for application data directory.
  - file: ollama-cuda.conf
    status: safe
    summary: Safe configuration file with standard CUDA environment variables.
  - file: ollama-cuda.service
    status: safe
    summary: No security issues; standard service configuration.
---

ollama-cuda12-bin is built from ollama-bin
Materializing ollama-cuda12-bin from local mirror...
Materialized ollama-cuda12-bin
Analyzing ollama-cuda12-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only standard variable definitions, array assignments, and function definitions at the global scope. There are no command substitutions (`$()`, backticks), no function calls, and no dangerous commands (curl, wget, eval, etc.) that would execute during the sourcing step of `makepkg --printsrcinfo`. All executable code is confined within the `package_*` functions, which are not invoked during `--printsrcinfo`. The file is safe to parse for metadata.
</details>
<evidence></evidence>
<summary>No malicious top-level code; safe to parse.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious top-level code; safe to parse.
Reviewing the 13 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/13] Reviewing .SRCINFO...
[0/13] Reviewing .SRCINFO, .gitignore...
[0/13] Reviewing .SRCINFO, .gitignore, .nvchecker.toml...
LLM auditresponse for .nvchecker.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard configuration file for the `nvchecker` tool, which is used to automate version checking for upstream releases. It simply instructs `nvchecker` to monitor the official `ollama/ollama` GitHub repository for the latest release with a version prefix of &quot;v&quot;. There is no executable code, no network requests outside of the official upstream, no obfuscation, and no indication of malicious intent. The file follows expected packaging practices for such automation tools in AUR packages.
</details>
<evidence></evidence>
<summary>Safe nvchecker config for ollama updates.</summary>
</security_assessment>

[0/13] Reviewing .SRCINFO, .gitignore, .nvchecker.toml, PKGBUILD...
[1/13] Reviewing .SRCINFO, .gitignore, PKGBUILD...
+ Reviewed .nvchecker.toml. Status: SAFE -- Safe nvchecker config for ollama updates.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This `.SRCINFO` file is a standard metadata file for an Arch User Repository package. All source URLs point directly to the official ollama GitHub repository and its releases. Checksums are provided for every source (no `SKIP` entries), and the dependencies, conflicts, and subpackage structure are ordinary for a multi-platform binary package. There are no obfuscated strings, suspicious network destinations, or executable directives. The file contains only declarative information and poses no security risk.
</details>
<evidence></evidence>
<summary>Clean metadata from official upstream.</summary>
</security_assessment>

[1/13] Reviewing .SRCINFO, .gitignore, PKGBUILD, ollama-cuda.conf...
[2/13] Reviewing .gitignore, PKGBUILD, ollama-cuda.conf...
+ Reviewed .SRCINFO. Status: SAFE -- Clean metadata from official upstream.
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.gitignore` file used in AUR package repositories. It instructs Git to ignore all files except for those explicitly allowed (e.g., PKGBUILD, .SRCINFO, install scripts, configuration files, service files, and the nvchecker configuration). There is no malicious behavior, no obfuscation, no network requests, no file modifications outside the packaging scope, and no execution of arbitrary code. The file purely serves to manage version control exclusions, which is routine and expected.
</details>
<evidence>
</evidence>
<summary>Standard .gitignore file, no security issues.</summary>
</security_assessment>

[2/13] Reviewing .gitignore, PKGBUILD, ollama-cuda.conf, ollama-cuda.service...
[3/13] Reviewing PKGBUILD, ollama-cuda.conf, ollama-cuda.service...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore file, no security issues.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD is a standard binary package for Ollama. It downloads the official upstream release tarballs from GitHub with pinned SHA256 checksums, extracts them, and installs the binary and support files into the expected system paths. No obfuscated code, suspicious network requests, or unexpected system modifications are present. All operations (installing binaries, systemd units, configuration files, and license documentation) follow normal packaging practices. The use of `cp -P` and `install` are standard. There is no evidence of supply-chain attack or malicious intent.
</details>
<evidence></evidence>
<summary>Standard binary package; no signs of malicious code.</summary>
</security_assessment>

[3/13] Reviewing PKGBUILD, ollama-cuda.conf, ollama-cuda.service, ollama-vulkan.conf...
[4/13] Reviewing ollama-cuda.conf, ollama-cuda.service, ollama-vulkan.conf...
+ Reviewed PKGBUILD. Status: SAFE -- Standard binary package; no signs of malicious code.
LLM auditresponse for ollama-vulkan.conf:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a plain configuration file for the Ollama server. It sets two environment variables: `OLLAMA_VULKAN=1` to enable the experimental Vulkan backend, and `GGML_VK_VISIBLE_DEVICES=0,1,2,3` to select Vulkan GPU devices. The file contains only comments and simple `KEY=VALUE` assignments, with no commands, network operations, file manipulation, obfuscation, or any behavior that could constitute a supply-chain attack. It is consistent with standard, legitimate application configuration.
</details>
<evidence>
</evidence>
<summary>
Benign environment-variable configuration file for enabling Ollama Vulkan support. No security issues.</summary>
</security_assessment>

[4/13] Reviewing ollama-cuda.conf, ollama-cuda.service, ollama-vulkan.conf, ollama-vulkan.service...
[5/13] Reviewing ollama-cuda.conf, ollama-cuda.service, ollama-vulkan.service...
+ Reviewed ollama-vulkan.conf. Status: SAFE -- Benign environment-variable configuration file for enabling Ollama Vulkan support. No security issues.
LLM auditresponse for ollama-vulkan.service:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard systemd service unit file that loads environment variables from an optional file `/etc/ollama-vulkan.conf`. There is no executable code, no network requests, no file operations, and no obfuscation. It is a normal packaging practice for AUR packages that provide systemd services.
</details>
<evidence></evidence>
<summary>Standard systemd service unit file; no security issues.</summary>
</security_assessment>

[5/13] Reviewing ollama-cuda.conf, ollama-cuda.service, ollama-vulkan.service, ollama.conf...
[6/13] Reviewing ollama-cuda.conf, ollama-cuda.service, ollama.conf...
+ Reviewed ollama-vulkan.service. Status: SAFE -- Standard systemd service unit file; no security issues.
LLM auditresponse for ollama.conf:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a plain configuration file for the Ollama application, containing standard environment variable settings (OLLAMA_HOST, OLLAMA_KEEP_ALIVE, etc.). There is no executable code, no network requests, no obfuscation, and no system modifications. The content is purely declarative and follows typical configuration file patterns. No security concerns are present.
</details>
<evidence></evidence>
<summary>Plain config file, no executable or malicious content.</summary>
</security_assessment>

[7/13] Reviewing ollama-cuda.conf, ollama-cuda.service...
+ Reviewed ollama.conf. Status: SAFE -- Plain config file, no executable or malicious content.
[7/13] Reviewing ollama-cuda.conf, ollama-cuda.service, ollama.install...
LLM auditresponse for ollama.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The `ollama.install` file defines standard Arch Linux install hooks (`pre_install`, `post_install`, `pre_upgrade`, `post_upgrade`, `pre_remove`, `post_remove`). The only non-trivial action is in `post_install` and `post_upgrade`, which run `sudo setcap cap_perfmon+ep /usr/bin/ollama`. This sets the `cap_perfmon` Linux capability on the ollama binary, granting it permission to access performance monitoring counters. This is a legitimate and expected operation for a binary that may interface with hardware performance monitoring (e.g., GPU profiling). There are no network requests, downloads, obfuscated code, backdoors, or exfiltration attempts. The file is consistent with normal packaging practices and does not contain any injected malicious code.
</details>
<evidence>
</evidence>
<summary>Capability setting is legitimate; no signs of supply-chain attack.</summary>
</security_assessment>

[7/13] Reviewing ollama-cuda.conf, ollama-cuda.service, ollama.install, ollama.service...
[8/13] Reviewing ollama-cuda.conf, ollama-cuda.service, ollama.service...
+ Reviewed ollama.install. Status: SAFE -- Capability setting is legitimate; no signs of supply-chain attack.
LLM auditresponse for ollama.service:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard systemd service unit for the ollama application. It defines a service that runs the ollama binary with typical security hardening options (PrivateTmp, ProtectHome, ProtectSystem). The `AmbientCapabilities=CAP_PERFMON` is a legitimate capability for performance monitoring. There is no obfuscated code, no network requests, no file manipulation outside of expected scope, and no injection of malicious commands. The file follows normal packaging practices for a systemd service.
</details>
<evidence></evidence>
<summary>Standard systemd service unit, no security issues.</summary>
</security_assessment>

[8/13] Reviewing ollama-cuda.conf, ollama-cuda.service, ollama.service, sysusers.conf...
[9/13] Reviewing ollama-cuda.conf, ollama-cuda.service, sysusers.conf...
+ Reviewed ollama.service. Status: SAFE -- Standard systemd service unit, no security issues.
LLM auditresponse for sysusers.conf:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard systemd sysusers configuration file that creates a system group and user named &quot;ollama&quot; for the Ollama application. The user is set up with a home directory of /var/lib/ollama and a description &quot;ollama user&quot;. This is a common and expected practice for applications that need to run under a dedicated service account. There are no suspicious commands, network requests, obfuscated content, or any other signs of malicious activity. The file performs exactly one function: declaring system user/group creation metadata for systemd-sysusers.

Note: The `&quot;` entities are HTML encoding artifacts from the AUR display (the actual file would contain `"`). This has no security impact.
</details>
<evidence>
</evidence>
<summary>Standard sysusers config for a dedicated service user.</summary>
</security_assessment>

[9/13] Reviewing ollama-cuda.conf, ollama-cuda.service, sysusers.conf, tmpfiles.d...
[10/13] Reviewing ollama-cuda.conf, ollama-cuda.service, tmpfiles.d...
+ Reviewed sysusers.conf. Status: SAFE -- Standard sysusers config for a dedicated service user.
LLM auditresponse for tmpfiles.d:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a systemd tmpfiles.d configuration snippet that creates the directory `/var/lib/ollama` with the specified owner, group, and permissions. This is a standard packaging practice for applications that require a dedicated data directory. There is no malicious content, no network activity, no obfuscation, and no unexpected system modifications.
</details>
<evidence></evidence>
<summary>Standard tmpfiles.d config for application data directory.</summary>
</security_assessment>

[11/13] Reviewing ollama-cuda.conf, ollama-cuda.service...
+ Reviewed tmpfiles.d. Status: SAFE -- Standard tmpfiles.d config for application data directory.
LLM auditresponse for ollama-cuda.conf:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a plain environment configuration file. It sets CUDA-related environment variables (e.g., CUDA_VISIBLE_DEVICES, CUDA_DEVICE_ORDER, etc.) that are standard for GPU compute workloads, specifically for Ollama. There are no commands, scripts, network operations, or any executable content. It does not download, execute, or obfuscate anything. The variables are legitimate CUDA tuning parameters and do not represent any supply-chain attack vector. The file is exactly what it appears to be: a configuration snippet to be sourced or applied as environment settings.
</details>
<evidence></evidence>
<summary>Safe configuration file with standard CUDA environment variables.</summary>
</security_assessment>

[12/13] Reviewing ollama-cuda.service...
+ Reviewed ollama-cuda.conf. Status: SAFE -- Safe configuration file with standard CUDA environment variables.
LLM auditresponse for ollama-cuda.service:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a systemd service unit snippet for the ollama-cuda12-bin package. It only sets an optional environment file directive (`EnvironmentFile=-/etc/ollama-cuda.conf`). There are no commands, no network operations, no file modifications, no obfuscation, and no deviation from standard packaging practices. The content is entirely benign.
</details>
<evidence></evidence>
<summary>No security issues; standard service configuration.</summary>
</security_assessment>

[13/13] Reviewing ...
+ Reviewed ollama-cuda.service. Status: SAFE -- No security issues; standard service configuration.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 34,663
  Completion Tokens: 4,612
  Total Tokens: 39,275
  Total Cost: $0.003484
  Execution Time: 144.12 seconds

Final Status: SAFE


No issues found.
