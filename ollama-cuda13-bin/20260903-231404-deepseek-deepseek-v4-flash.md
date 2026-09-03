---
package: ollama-cuda13-bin
pkgbase: ollama-bin
pkgver: 0.33.3
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 171a316e053e9c4b28731ccb1aa63b1168550d3a
prompt_tokens: 34663
completion_tokens: 4761
total_tokens: 39424
cost: 0.00350740530
execution_time: 74.39
files_reviewed: 13
files_skipped: 0
maintainer_files: 13
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-03T23:14:03Z
file_verdicts:
  - file: .nvchecker.toml
    status: safe
    summary: Standard nvchecker config; no security issues.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata with pinned upstream sources and checksums; no security issues found.
  - file: .gitignore
    status: safe
    summary: Standard .gitignore file, no malicious content.
  - file: ollama-cuda.service
    status: safe
    summary: Standard service unit with optional environment file; no security issues.
  - file: ollama-cuda.conf
    status: safe
    summary: Static CUDA config file, no malicious content.
  - file: ollama-vulkan.service
    status: safe
    summary: Standard service unit configuration, no issues.
  - file: ollama-vulkan.conf
    status: safe
    summary: Safe configuration file for Ollama Vulkan.
  - file: ollama.conf
    status: safe
    summary: Safe configuration file with standard Ollama environment variables.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD with no malicious code.
  - file: ollama.service
    status: safe
    summary: Standard systemd service unit, no malicious content.
  - file: ollama.install
    status: safe
    summary: Standard install script with capability setting, no security issues.
  - file: sysusers.conf
    status: safe
    summary: Standard sysusers config; no malicious content.
  - file: tmpfiles.d
    status: safe
    summary: Standard tmpfiles.d entry for Ollama data directory.
---

ollama-cuda13-bin is built from ollama-bin
Materializing ollama-cuda13-bin from local mirror...
Materialized ollama-cuda13-bin
Analyzing ollama-cuda13-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD's top-level scope consists entirely of variable assignments (e.g., `pkgname=`, `source=()`, `sha256sums=()`) and function definitions (`package_ollama-bin()`, etc.). There are no command substitutions, backticks, `eval`, or any other executable constructs that would run during sourcing. All URLs are defined as plain strings, and no network requests or system-modifying operations are triggered at the top level. Therefore, running `makepkg --printsrcinfo` on this PKGBUILD is safe.
</details>
<evidence>
</evidence>
<summary>No malicious code in top-level scope.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious code in top-level scope.
Reviewing the 13 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/13] Reviewing .nvchecker.toml...
[0/13] Reviewing .nvchecker.toml, .SRCINFO...
[0/13] Reviewing .nvchecker.toml, .SRCINFO, .gitignore...
LLM auditresponse for .nvchecker.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard nvchecker configuration file. It instructs nvchecker to check the GitHub releases of the `ollama/ollama` repository for the latest release, using a version prefix of `v`. There is no embedded code, no suspicious URLs, no obfuscation, and no dangerous operations. The file is purely declarative and follows normal packaging practices for version tracking.
</details>
<evidence></evidence>
<summary>Standard nvchecker config; no security issues.</summary>
</security_assessment>

[1/13] Reviewing .SRCINFO, .gitignore...
+ Reviewed .nvchecker.toml. Status: SAFE -- Standard nvchecker config; no security issues.
[1/13] Reviewing .SRCINFO, .gitignore, PKGBUILD...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This `.SRCINFO` is standard AUR package metadata for `ollama-bin`. All sources point to the official Ollama GitHub repository or release assets, with pinned version tags (e.g. `v0.33.3`) and explicit SHA-256 checksums. The subpackages (`ollama-cuda12-bin`, `ollama-cuda13-bin`, `ollama-vulkan-bin`) merely declare dependencies, conflicts, and backup configuration files.

There is no code to execute here—no build scripts, no network calls, no obfuscation, and no suspicious file operations. The file only declares sources, checksums, dependencies, and package relationships. This matches normal packaging practice and shows no evidence of injected or malicious behavior.
</details>
<evidence>
</evidence>
<summary>
Standard AUR metadata with pinned upstream sources and checksums; no security issues found.
</summary>
</security_assessment>

[2/13] Reviewing .gitignore, PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata with pinned upstream sources and checksums; no security issues found.
[2/13] Reviewing .gitignore, PKGBUILD, ollama-cuda.conf...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard `.gitignore` file used to version control only specific files in the AUR repository. It ignores all files except those explicitly listed (e.g., `*.d`, `*.conf`, `*.service`, `*.install`, `.gitignore`, `PKGBUILD`, `.SRCINFO`, `.nvchecker.toml`). There is no executable code, network requests, obfuscation, or any behavior that deviates from normal packaging practices. No security issues.
</details>
<evidence></evidence>
<summary>Standard .gitignore file, no malicious content.</summary>
</security_assessment>

[2/13] Reviewing .gitignore, PKGBUILD, ollama-cuda.conf, ollama-cuda.service...
[3/13] Reviewing PKGBUILD, ollama-cuda.conf, ollama-cuda.service...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore file, no malicious content.
LLM auditresponse for ollama-cuda.service:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard systemd service unit with a single directive: `EnvironmentFile=-/etc/ollama-cuda.conf`. This is a normal and expected pattern for loading optional environment variables from a configuration file at runtime. The leading dash (`-`) indicates that the file may be absent without causing an error. There is no code execution, network access, obfuscation, or any other suspicious behavior. The file contains only this one line inside the `[Service]` section and is entirely benign.
</details>
<evidence></evidence>
<summary>Standard service unit with optional environment file; no security issues.</summary>
</security_assessment>

[4/13] Reviewing PKGBUILD, ollama-cuda.conf...
+ Reviewed ollama-cuda.service. Status: SAFE -- Standard service unit with optional environment file; no security issues.
[4/13] Reviewing PKGBUILD, ollama-cuda.conf, ollama-vulkan.conf...
LLM auditresponse for ollama-cuda.conf:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a plain configuration file that sets CUDA environment variables for the Ollama application. It contains no executable code, no obfuscation, no network requests, and no file operations. The variables are standard CUDA parameters (e.g., device visibility, cache settings, logging). There is no evidence of malicious behavior. It is a typical static configuration file used in AUR packages to tune application behavior.
</details>
<evidence></evidence>
<summary>Static CUDA config file, no malicious content.</summary>
</security_assessment>

[5/13] Reviewing PKGBUILD, ollama-vulkan.conf...
+ Reviewed ollama-cuda.conf. Status: SAFE -- Static CUDA config file, no malicious content.
[5/13] Reviewing PKGBUILD, ollama-vulkan.conf, ollama-vulkan.service...
LLM auditresponse for ollama-vulkan.service:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a systemd service unit snippet that specifies an environment file (`/etc/ollama-vulkan.conf`) to be loaded for the service. The hyphen prefix indicates the file is optional (does not cause failure if missing). This is standard systemd configuration and presents no security concerns.
</details>
<evidence>
</evidence>
<summary>Standard service unit configuration, no issues.</summary>
</security_assessment>

[5/13] Reviewing PKGBUILD, ollama-vulkan.conf, ollama-vulkan.service, ollama.conf...
[6/13] Reviewing PKGBUILD, ollama-vulkan.conf, ollama.conf...
+ Reviewed ollama-vulkan.service. Status: SAFE -- Standard service unit configuration, no issues.
LLM auditresponse for ollama-vulkan.conf:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard configuration file for the Ollama application. It sets environment variables to enable Vulkan support and specify visible GPU devices. No commands, network operations, obfuscation, or system modifications are present. The file contains only comments and environment variable assignments, consistent with normal packaging practices.
</details>
<evidence></evidence>
<summary>Safe configuration file for Ollama Vulkan.</summary>
</security_assessment>

[6/13] Reviewing PKGBUILD, ollama-vulkan.conf, ollama.conf, ollama.install...
[7/13] Reviewing PKGBUILD, ollama.conf, ollama.install...
+ Reviewed ollama-vulkan.conf. Status: SAFE -- Safe configuration file for Ollama Vulkan.
LLM auditresponse for ollama.conf:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `ollama.conf` contains only environment variable definitions for the Ollama LLM server. These are standard configuration options such as host binding, keep-alive time, context length, parallelism, and debug level. There is no executable code, no network requests, no obfuscation, and no attempt to modify system files or exfiltrate data. The content is entirely benign and represents typical application configuration.
</details>
<evidence>
</evidence>
<summary>Safe configuration file with standard Ollama environment variables.</summary>
</security_assessment>

[7/13] Reviewing PKGBUILD, ollama.conf, ollama.install, ollama.service...
[8/13] Reviewing PKGBUILD, ollama.install, ollama.service...
+ Reviewed ollama.conf. Status: SAFE -- Safe configuration file with standard Ollama environment variables.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard AUR packaging practices for the Ollama project. It downloads prebuilt binaries and supporting files from the official GitHub releases page, pins checksums for all sources, and installs them into the expected system directories. The subpackages for CUDA 12, CUDA 13, and Vulkan are standard split-package patterns. There is no obfuscated code, no unexpected network requests beyond fetching the declared upstream sources, no dangerous command usage, and no evidence of exfiltration, backdoors, or supply-chain injection. The file is safe.
</details>
<evidence></evidence>
<summary>Standard AUR PKGBUILD with no malicious code.</summary>
</security_assessment>

[8/13] Reviewing PKGBUILD, ollama.install, ollama.service, sysusers.conf...
[9/13] Reviewing ollama.install, ollama.service, sysusers.conf...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD with no malicious code.
LLM auditresponse for ollama.service:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard systemd service unit for the Ollama AI model serving application. It defines the service execution (`/usr/bin/ollama serve`), sets the working directory and environment variables for the ollama user, and includes typical security hardening options such as `PrivateTmp=yes`, `ProtectHome=yes`, and `ProtectSystem=full`. The `AmbientCapabilities=CAP_PERFMON` capability is used for performance monitoring, which is legitimate for GPU-accelerated workloads. There are no suspicious commands, network requests, obfuscated code, or data exfiltration. The file follows standard packaging practices for systemd services.
</details>
<evidence></evidence>
<summary>Standard systemd service unit, no malicious content.</summary>
</security_assessment>

[9/13] Reviewing ollama.install, ollama.service, sysusers.conf, tmpfiles.d...
[10/13] Reviewing ollama.install, sysusers.conf, tmpfiles.d...
+ Reviewed ollama.service. Status: SAFE -- Standard systemd service unit, no malicious content.
LLM auditresponse for ollama.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `ollama.install` is a standard Arch Linux install script for the `ollama-cuda13-bin` package. It contains only the required pacman hooks and a single action: `sudo setcap cap_perfmon+ep /usr/bin/ollama` in `post_install` and `post_upgrade`. This sets the `cap_perfmon` capability on the ollama binary, which is a standard Linux capability allowing performance monitoring. This is a legitimate packaging practice, likely needed for the application to access hardware performance counters (e.g., for GPU-related metrics). No suspicious network requests, obfuscation, dangerous commands, or exfiltration attempts are present. The script is minimal and performs no actions outside the scope of the package.
</details>
<evidence></evidence>
<summary>Standard install script with capability setting, no security issues.</summary>
</security_assessment>

[11/13] Reviewing sysusers.conf, tmpfiles.d...
+ Reviewed ollama.install. Status: SAFE -- Standard install script with capability setting, no security issues.
LLM auditresponse for sysusers.conf:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard systemd sysusers configuration snippet. It creates a system group `ollama` and a system user `ollama` with the home directory `/var/lib/ollama`. This is a normal and expected practice for daemon packages that need a dedicated service user. There are no commands, network requests, obfuscation, or any other dangerous operations. The `&amp;quot;` HTML entity likely represents a double quote character (artifact of display encoding) and does not affect the file&#x27;s security. The file is purely declarative and does not introduce any supply chain risk.
</details>
<evidence></evidence>
<summary>Standard sysusers config; no malicious content.</summary>
</security_assessment>

[12/13] Reviewing tmpfiles.d...
+ Reviewed sysusers.conf. Status: SAFE -- Standard sysusers config; no malicious content.
LLM auditresponse for tmpfiles.d:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard systemd tmpfiles.d configuration snippet. It creates the directory `/var/lib/ollama` with appropriate ownership and permissions for the Ollama application. This is a normal packaging practice to ensure the runtime data directory exists. No malicious content or unexpected behavior is present.
</details>
<evidence>
</evidence>
<summary>Standard tmpfiles.d entry for Ollama data directory.</summary>
</security_assessment>

[13/13] Reviewing ...
+ Reviewed tmpfiles.d. Status: SAFE -- Standard tmpfiles.d entry for Ollama data directory.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 34,663
  Completion Tokens: 4,761
  Total Tokens: 39,424
  Total Cost: $0.003507
  Execution Time: 74.39 seconds

Final Status: SAFE


No issues found.
