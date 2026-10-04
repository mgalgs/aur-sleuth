---
package: ollama-vulkan-bin
pkgbase: ollama-bin
pkgver: 0.35.1
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 34750
completion_tokens: 7833
total_tokens: 42583
cost: 0.001411648
execution_time: 179.63
files_reviewed: 13
files_skipped: 0
maintainer_files: 13
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-02T23:53:12Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard .gitignore with no security issues.
  - file: .nvchecker.toml
    status: safe
    summary: Standard nvchecker config for version tracking.
  - file: .SRCINFO
    status: safe
    summary: Benign AUR package metadata; all sources pinned from official ollama upstream with checksums.
  - file: ollama-cuda.conf
    status: safe
    summary: Plain CUDA environment configuration; no malicious behavior found. Safe.
  - file: ollama-cuda.service
    status: safe
    summary: Standard systemd environment file reference, no risk.
  - file: ollama-vulkan.conf
    status: safe
    summary: Benign configuration file, no security issues.
  - file: ollama.conf
    status: safe
    summary: Benign environment configuration file, no security issues.
  - file: ollama-vulkan.service
    status: safe
    summary: Minimal service stub with no malicious content.
  - file: ollama.install
    status: safe
    summary: Standard install script, no malicious code found.
  - file: ollama.service
    status: safe
    summary: Standard systemd service file; no malicious content.
  - file: sysusers.conf
    status: safe
    summary: Standard sysusers config, no malicious behavior.
  - file: tmpfiles.d
    status: safe
    summary: Standard tmpfiles.d configuration, no malicious content.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD with pinned checksums and official upstream sources; no malicious indicators.
---

ollama-vulkan-bin is built from ollama-bin
Materializing ollama-vulkan-bin from local mirror...
Materialized ollama-vulkan-bin
Analyzing ollama-vulkan-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD's global/top-level scope contains only standard variable and array assignments (pkgname, pkgver, source, sha256sums, etc.). There are no command substitutions, backticks, eval, curl, wget, or any other code execution during sourcing. The `_urlraw`, `source`, and `sha256sums` arrays reference upstream URLs from the official GitHub repository, but these are just string definitions—no fetching or execution occurs until `makepkg` downloads sources later. All package functions (package_ollama-bin, package_ollama-cuda12-bin, etc.) are defined but not executed during `makepkg --printsrcinfo`. Therefore, running this command is safe.
</details>
<evidence></evidence>
<summary>No dangerous code executes during sourcing.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous code executes during sourcing.
Reviewing the 13 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/13] Reviewing .SRCINFO...
[0/13] Reviewing .SRCINFO, .gitignore...
[0/13] Reviewing .SRCINFO, .gitignore, .nvchecker.toml...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This `.gitignore` file is a standard pattern used in AUR git repositories to track only essential files (PKGBUILD, .SRCINFO, install scripts, service files, and configuration) while ignoring all build artifacts and generated content. It contains no executable code, no network requests, no obfuscation, and no dangerous operations. It performs no system modifications or data exfiltration. The file is completely benign and follows normal packaging practices.
</details>
<evidence></evidence>
<summary>Standard .gitignore with no security issues.</summary>
</security_assessment>

[0/13] Reviewing .SRCINFO, .gitignore, .nvchecker.toml, PKGBUILD...
[1/13] Reviewing .SRCINFO, .nvchecker.toml, PKGBUILD...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore with no security issues.
LLM auditresponse for .nvchecker.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard nvchecker configuration for tracking upstream releases of the `ollama` project. It simply defines the source as GitHub, the repository as `ollama/ollama`, and instructs the tool to use the latest release with a version prefix of &quot;v&quot;. There is no executable code, no network requests outside of nvchecker&#39;s normal operation, and no obfuscation or dangerous behavior. This is a benign packaging helper file.
</details>
<evidence></evidence>
<summary>Standard nvchecker config for version tracking.</summary>
</security_assessment>

[2/13] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed .nvchecker.toml. Status: SAFE -- Standard nvchecker config for version tracking.
[2/13] Reviewing .SRCINFO, PKGBUILD, ollama-cuda.conf...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard AUR `.SRCINFO` metadata file for the `ollama-bin` package family. All sources point to the official upstream GitHub repository for ollama (github.com/ollama/ollama), either as raw files from tagged release v0.35.1 or release tarballs from the official releases page. Every source has a pinned `sha256sums` entry (no `SKIP` entries), and the package version, architecture, dependencies, and conflicts are all consistent with normal packaging practice. No network requests are made at build time beyond the declared sources, no scripts or executable code are embedded in this file, and there is no obfuscation, suspicious encoding, or any indication of injected malicious behavior. The file contains no commands at all, only declarative package metadata.
</details>
<evidence>
</evidence>
<summary>
Benign AUR package metadata; all sources pinned from official ollama upstream with checksums.</summary>
</security_assessment>

[2/13] Reviewing .SRCINFO, PKGBUILD, ollama-cuda.conf, ollama-cuda.service...
[3/13] Reviewing PKGBUILD, ollama-cuda.conf, ollama-cuda.service...
+ Reviewed .SRCINFO. Status: SAFE -- Benign AUR package metadata; all sources pinned from official ollama upstream with checksums.
LLM auditresponse for ollama-cuda.conf:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a plain environment configuration snippet for CUDA-related Ollama optimization. It only sets CUDA environment variables such as device selection, module loading behavior, cache size, and cache/log paths. There are no commands, no network operations, no code execution, no obfuscation, and no file manipulation. The configured paths (`/var/cache/cuda`, `/var/log/cuda.log`) are system directories that would only be writable by privileged processes; this is a permissions consideration, not evidence of malicious behavior. The content is consistent with an ordinary CUDA tuning configuration file.
</details>
<evidence>
</evidence>
<summary>
Plain CUDA environment configuration; no malicious behavior found. Safe.</summary>
</security_assessment>

[3/13] Reviewing PKGBUILD, ollama-cuda.conf, ollama-cuda.service, ollama-vulkan.conf...
[4/13] Reviewing PKGBUILD, ollama-cuda.service, ollama-vulkan.conf...
+ Reviewed ollama-cuda.conf. Status: SAFE -- Plain CUDA environment configuration; no malicious behavior found. Safe.
LLM auditresponse for ollama-cuda.service:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard systemd service unit file for the ollama-cuda service. It loads environment variables from an optional configuration file via `EnvironmentFile=-/etc/ollama-cuda.conf`. The leading dash (`-`) means the file may not exist, which is a normal and safe practice. There are no commands, no network operations, no obfuscation, or any other suspicious content. The file is minimal and adheres to expected packaging conventions.
</details>
<evidence>
</evidence>
<summary>Standard systemd environment file reference, no risk.</summary>
</security_assessment>

[4/13] Reviewing PKGBUILD, ollama-cuda.service, ollama-vulkan.conf, ollama-vulkan.service...
[5/13] Reviewing PKGBUILD, ollama-vulkan.conf, ollama-vulkan.service...
+ Reviewed ollama-cuda.service. Status: SAFE -- Standard systemd environment file reference, no risk.
LLM auditresponse for ollama-vulkan.conf:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `ollama-vulkan.conf` is a simple environment configuration file for the Ollama application. It sets two environment variables: `OLLAMA_VULKAN=1` to enable Vulkan support, and `GGML_VK_VISIBLE_DEVICES=0,1,2,3` to specify which GPU devices to use. There are no commands, no network requests, no obfuscation, no file operations, and no system modifications. This is a standard configuration file and contains no malicious or suspicious content.
</details>
<evidence></evidence>
<summary>Benign configuration file, no security issues.</summary>
</security_assessment>

[5/13] Reviewing PKGBUILD, ollama-vulkan.conf, ollama-vulkan.service, ollama.conf...
[6/13] Reviewing PKGBUILD, ollama-vulkan.service, ollama.conf...
+ Reviewed ollama-vulkan.conf. Status: SAFE -- Benign configuration file, no security issues.
LLM auditresponse for ollama.conf:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a simple configuration file for the Ollama application, setting environment variables like OLLAMA_HOST, OLLAMA_KEEP_ALIVE, etc. There are no executable commands, no network requests, no obfuscated code, and no file operations. The use of HTML-escaped double quotes (&amp;quot;) is a common formatting artifact in AUR files and is not suspicious. The configuration is standard and harmless.
</details>
<evidence></evidence>
<summary>Benign environment configuration file, no security issues.</summary>
</security_assessment>

[6/13] Reviewing PKGBUILD, ollama-vulkan.service, ollama.conf, ollama.install...
[7/13] Reviewing PKGBUILD, ollama-vulkan.service, ollama.install...
+ Reviewed ollama.conf. Status: SAFE -- Benign environment configuration file, no security issues.
LLM auditresponse for ollama-vulkan.service:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a systemd service unit containing only a `[Service]` section with an `EnvironmentFile=-/etc/ollama-vulkan.conf` directive. The leading dash indicates the environment file is optional. There is no `ExecStart` or any other directive that would cause execution of any code. No network requests, file downloads, obfuscation, or dangerous operations are present. This is a standard packaging pattern for defining environment variables for a service.
</details>
<evidence></evidence>
<summary>Minimal service stub with no malicious content.</summary>
</security_assessment>

[8/13] Reviewing PKGBUILD, ollama.install...
+ Reviewed ollama-vulkan.service. Status: SAFE -- Minimal service stub with no malicious content.
[8/13] Reviewing PKGBUILD, ollama.install, ollama.service...
LLM auditresponse for ollama.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `ollama.install` is a standard Arch Linux install script for the ollama-vulkan-bin package. It contains six functions (pre_install, post_install, pre_upgrade, post_upgrade, pre_remove, post_remove) with minimal operations. The only non-trivial action is `sudo setcap cap_perfmon+ep /usr/bin/ollama` in post_install and post_upgrade, which grants the ollama binary the `cap_perfmon` capability (allowing performance monitoring events). This is a legitimate and expected capability for an application like ollama (which runs AI models and may need performance counters). The `sudo` prefix is redundant (pacman install scripts run as root) but harmless. There are no network requests, obfuscated code, suspicious downloads, or any operations that deviate from standard packaging practices. The file is safe.
</details>
<evidence></evidence>
<summary>Standard install script, no malicious code found.</summary>
</security_assessment>

[8/13] Reviewing PKGBUILD, ollama.install, ollama.service, sysusers.conf...
[9/13] Reviewing PKGBUILD, ollama.service, sysusers.conf...
+ Reviewed ollama.install. Status: SAFE -- Standard install script, no malicious code found.
LLM auditresponse for ollama.service:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard systemd service unit for the Ollama application. It defines normal service behavior: launches `/usr/bin/ollama serve` under a dedicated user/group, sets environment variables, and applies security hardening such as `PrivateTmp`, `ProtectHome`, and `ProtectSystem=full`. There are no network requests, no obfuscated commands, no unauthorized file operations, and no deviation from expected packaging practices for a system service. The `AmbientCapabilities=CAP_PERFMON` is a legitimate capability for performance monitoring, which aligns with the application's purpose (AI model serving). No supply-chain attack indicators present.
</details>
<evidence>
</evidence>
<summary>Standard systemd service file; no malicious content.</summary>
</security_assessment>

[9/13] Reviewing PKGBUILD, ollama.service, sysusers.conf, tmpfiles.d...
[10/13] Reviewing PKGBUILD, sysusers.conf, tmpfiles.d...
+ Reviewed ollama.service. Status: SAFE -- Standard systemd service file; no malicious content.
LLM auditresponse for sysusers.conf:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard systemd sysusers configuration file that defines a system group and user for the ollama service. The first line creates a group named "ollama" with no specified GID. The second line creates a user "ollama" (with `!` meaning create if not existing), assigns an automatically generated UID, sets the GECOS field to "ollama user", and specifies `/var/lib/ollama` as the home directory. There are no network operations, obfuscated code, or unexpected system modifications. This file follows standard packaging practices for creating dedicated service users and poses no security threat.
</details>
<evidence></evidence>
<summary>Standard sysusers config, no malicious behavior.</summary>
</security_assessment>

[11/13] Reviewing PKGBUILD, tmpfiles.d...
+ Reviewed sysusers.conf. Status: SAFE -- Standard sysusers config, no malicious behavior.
LLM auditresponse for tmpfiles.d:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a systemd tmpfiles configuration snippet that creates the `/var/lib/ollama` directory with mode 0755 and ownership `ollama:ollama` at boot. This is a standard and expected practice for setting up runtime directories for a service. There is no network activity, code execution, obfuscation, or any other malicious behavior. The file is purely declarative and follows normal packaging conventions for creating service state directories.
</details>
<evidence></evidence>
<summary>Standard tmpfiles.d configuration, no malicious content.</summary>
</security_assessment>

[12/13] Reviewing PKGBUILD...
+ Reviewed tmpfiles.d. Status: SAFE -- Standard tmpfiles.d configuration, no malicious content.
LLM auditresponse for PKGBUILD:
 <security_assessment>
<decision>SAFE</decision>
<details>
The visible PKGBUILD content shows standard Arch packaging practice for the official `ollama/ollama` project. All source files are fetched from the project&apos;s own GitHub repository (`https://github.com/ollama/ollama`) or its raw content/release endpoints, which is expected and legitimate. The tarballs and auxiliary files (LICENSE, README, systemd units, configs) all have pinned SHA-256 checksums in the `sha256sums`, `sha256sums_x86_64`, and `sha256sums_aarch64` arrays — none are set to `SKIP`, so the sources are verified at build time.

The package functions (`package_ollama-bin`, `package_ollama-cuda12-bin`, `package_ollama-cuda13-bin`, `package_ollama-vulkan-bin`) only perform ordinary operations: installing prebuilt binaries into `/usr/bin` and `/usr/lib/ollama/`, installing systemd service units, configuration files, sysusers/tmpfiles configs, and creating the `/var/lib/ollama` model directory. All file writes target `${pkgdir}` (the package staging directory) and there is no use of `eval`, `base64`, `curl|bash`, obfuscated strings, or any network operations at build/install time beyond the declared source downloads.

The provided content is truncated mid-function, so the `ollama.install` script and service file contents are not visible for full review. However, nothing in the visible code exhibits malicious or suspicious behavior, and the file is consistent with a legitimate binary-package PKGBUILD for ollama.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD with pinned checksums and official upstream sources; no malicious indicators.</summary>
</security_assessment>

[13/13] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD with pinned checksums and official upstream sources; no malicious indicators.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 34,750
  Completion Tokens: 7,833
  Total Tokens: 42,583
  Total Cost: $0.001412
  Execution Time: 179.63 seconds

Final Status: SAFE


No issues found.
