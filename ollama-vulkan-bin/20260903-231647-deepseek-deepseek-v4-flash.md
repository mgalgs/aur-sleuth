---
package: ollama-vulkan-bin
pkgbase: ollama-bin
pkgver: 0.33.3
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 171a316e053e9c4b28731ccb1aa63b1168550d3a
prompt_tokens: 34570
completion_tokens: 4798
total_tokens: 39368
cost: 0.00343788144
execution_time: 71.48
files_reviewed: 13
files_skipped: 0
maintainer_files: 13
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-03T23:16:47Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard .gitignore for AUR package; no security issues.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata, no security issues.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD with pinned sources and checksums.
  - file: ollama-cuda.conf
    status: safe
    summary: Standard CUDA configuration file, no security issues.
  - file: ollama-cuda.service
    status: safe
    summary: Standard service unit file, no security issues.
  - file: .nvchecker.toml
    status: safe
    summary: Standard nvchecker config, no security issues.
  - file: ollama-vulkan.conf
    status: safe
    summary: Configuration file with no malicious content.
  - file: ollama-vulkan.service
    status: safe
    summary: Standard systemd service file, no malicious content.
  - file: ollama.conf
    status: safe
    summary: Standard configuration file, no security issues.
  - file: ollama.install
    status: safe
    summary: Standard install script; no malicious content.
  - file: ollama.service
    status: safe
    summary: Standard systemd service, no security issues.
  - file: sysusers.conf
    status: safe
    summary: Standard systemd sysusers config for service user.
  - file: tmpfiles.d
    status: safe
    summary: Standard tmpfiles.d snippet for service state directory.
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
The PKGBUILD contains only static variable assignments and array definitions at the top level. There are no command substitutions, function calls, or other executable constructs that would run during `makepkg --printsrcinfo`. All potentially dangerous operations (e.g., `cd`, `install`, `cp`, `for` loops) are confined to the `package_*()` functions, which are not executed during this parsing step. No network requests, file downloads, or system modifications are triggered at global scope.</details>
<evidence></evidence>
<summary>Top-level code is static; no execution risk during parsing.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Top-level code is static; no execution risk during parsing.
Reviewing the 13 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/13] Reviewing .SRCINFO...
[0/13] Reviewing .SRCINFO, .gitignore...
[0/13] Reviewing .SRCINFO, .gitignore, .nvchecker.toml...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard `.gitignore` for an AUR package repository. It ignores all files except those essential for packaging (like PKGBUILD, .SRCINFO, .install, .service, etc.). There is no executable code, network calls, obfuscation, or any other malicious behavior. It is purely a configuration file for version control.
</details>
<evidence></evidence>
<summary>Standard .gitignore for AUR package; no security issues.</summary>
</security_assessment>

[0/13] Reviewing .SRCINFO, .gitignore, .nvchecker.toml, PKGBUILD...
[1/13] Reviewing .SRCINFO, .nvchecker.toml, PKGBUILD...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore for AUR package; no security issues.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard AUR `.SRCINFO` metadata file for the `ollama-bin` package and its GPU variant subpackages (`ollama-cuda12-bin`, `ollama-cuda13-bin`, `ollama-vulkan-bin`). All source URLs point to the official `ollama/ollama` GitHub repository (`github.com/ollama/ollama`), with pinned version `0.33.3` and specific checksums (SHA256) for every source file. There are no skipped checksums, no mutable VCS sources, and no references to unknown or unrelated hosts. The file only declares metadata: package name, version, architecture, dependencies, conflicts, sources, and checksums. No executable code, obfuscated commands, or unusual operations are present. The content follows standard Arch Linux packaging conventions.
</details>
<evidence></evidence>
<summary>Standard AUR metadata, no security issues.</summary>
</security_assessment>

[1/13] Reviewing .SRCINFO, .nvchecker.toml, PKGBUILD, ollama-cuda.conf...
[2/13] Reviewing .nvchecker.toml, PKGBUILD, ollama-cuda.conf...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata, no security issues.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard AUR packaging practices for a prebuilt binary package. All source files are fetched from the official Ollama GitHub repository using pinned version tags (`v${pkgver}`), and SHA256 checksums are provided for every source entry. No obfuscated code, no inline network requests in `prepare()` or `build()` (there is no `build()` or `prepare()` defined), no `eval`, no `curl|bash`, and no unexpected system modifications. The package functions only install the prebuilt binaries and configuration files into the package directory. There is no evidence of malicious or injected code; the file is a clean, well-structured PKGBUILD.
</details>
<evidence></evidence>
<summary>Standard AUR PKGBUILD with pinned sources and checksums.</summary>
</security_assessment>

[2/13] Reviewing .nvchecker.toml, PKGBUILD, ollama-cuda.conf, ollama-cuda.service...
[3/13] Reviewing .nvchecker.toml, ollama-cuda.conf, ollama-cuda.service...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD with pinned sources and checksums.
LLM auditresponse for ollama-cuda.conf:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a simple CUDA environment configuration file. It sets environment variables for CUDA device visibility, order, caching, and logging. There is no executable code, no network requests, no obfuscation, and no system modifications beyond defining environment variables. All variables are standard CUDA configuration options. No malicious behavior is present.
</details>
<evidence></evidence>
<summary>Standard CUDA configuration file, no security issues.</summary>
</security_assessment>

[3/13] Reviewing .nvchecker.toml, ollama-cuda.conf, ollama-cuda.service, ollama-vulkan.conf...
[4/13] Reviewing .nvchecker.toml, ollama-cuda.service, ollama-vulkan.conf...
+ Reviewed ollama-cuda.conf. Status: SAFE -- Standard CUDA configuration file, no security issues.
LLM auditresponse for ollama-cuda.service:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard systemd service unit file that loads environment variables from an optional configuration file (`/etc/ollama-cuda.conf`). The `-` prefix on the `EnvironmentFile` path makes it optional, which is a normal and safe practice. There is no obfuscated code, network requests, file operations, or any other behavior that could indicate a supply chain attack. The file is minimal and purely declarative.
</details>
<evidence></evidence>
<summary>Standard service unit file, no security issues.</summary>
</security_assessment>

[4/13] Reviewing .nvchecker.toml, ollama-cuda.service, ollama-vulkan.conf, ollama-vulkan.service...
[5/13] Reviewing .nvchecker.toml, ollama-vulkan.conf, ollama-vulkan.service...
+ Reviewed ollama-cuda.service. Status: SAFE -- Standard service unit file, no security issues.
LLM auditresponse for .nvchecker.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `nvchecker` configuration file used by AUR maintainers to automatically detect new upstream releases. It specifies the GitHub repository `ollama/ollama` and instructs `nvchecker` to fetch the latest release with a version prefix `v`. There is no executable code, no network exfiltration, no obfuscation, and no deviation from normal packaging practices. The file is purely declarative and poses no security threat.
</details>
<evidence></evidence>
<summary>Standard nvchecker config, no security issues.</summary>
</security_assessment>

[5/13] Reviewing .nvchecker.toml, ollama-vulkan.conf, ollama-vulkan.service, ollama.conf...
[6/13] Reviewing ollama-vulkan.conf, ollama-vulkan.service, ollama.conf...
+ Reviewed .nvchecker.toml. Status: SAFE -- Standard nvchecker config, no security issues.
LLM auditresponse for ollama-vulkan.conf:
<security_assessment>
<decision>SAFE</decision>
<details>
This file (ollama-vulkan.conf) contains only two environment variable assignments to enable experimental Vulkan support for Ollama and specify visible GPU devices. There is no executable code, no network operations, no file manipulation, and no obfuscation. It is a standard configuration file used to set runtime options for the Ollama server. No supply-chain attack indicators are present.
</details>
<evidence></evidence>
<summary>Configuration file with no malicious content.</summary>
</security_assessment>

[7/13] Reviewing ollama-vulkan.service, ollama.conf...
+ Reviewed ollama-vulkan.conf. Status: SAFE -- Configuration file with no malicious content.
[7/13] Reviewing ollama-vulkan.service, ollama.conf, ollama.install...
LLM auditresponse for ollama-vulkan.service:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard systemd service unit file. It contains only a `[Service]` section with an `EnvironmentFile` directive pointing to `/etc/ollama-vulkan.conf` with a leading `-` (indicating the file is optional). There are no dangerous commands, network requests, obfuscated code, or any other signs of malicious behavior. This is a normal packaging practice.
</details>
<evidence></evidence>
<summary>Standard systemd service file, no malicious content.</summary>
</security_assessment>

[8/13] Reviewing ollama.conf, ollama.install...
+ Reviewed ollama-vulkan.service. Status: SAFE -- Standard systemd service file, no malicious content.
[8/13] Reviewing ollama.conf, ollama.install, ollama.service...
LLM auditresponse for ollama.conf:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a plain configuration file for the Ollama application, containing environment variable settings like OLLAMA_HOST, OLLAMA_KEEP_ALIVE, OLLAMA_LOAD_TIMEOUT, etc. There is no executable code, no network requests, no obfuscation, no file operations, and no system modifications. The settings are consistent with the expected behavior of a local LLM server. No security issues are present.
</details>
<evidence></evidence>
<summary>Standard configuration file, no security issues.</summary>
</security_assessment>

[8/13] Reviewing ollama.conf, ollama.install, ollama.service, sysusers.conf...
[9/13] Reviewing ollama.install, ollama.service, sysusers.conf...
+ Reviewed ollama.conf. Status: SAFE -- Standard configuration file, no security issues.
LLM auditresponse for ollama.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard Arch Linux package install script (`.install`). It contains only the usual lifecycle hooks (`pre_install`, `post_install`, etc.). The only substantive action is applying the `cap_perfmon` capability to the `/usr/bin/ollama` binary via `setcap` in `post_install` and `post_upgrade`. This capability allows the ollama process to use performance monitoring hardware, which is consistent with the application's purpose (running AI models). While `sudo` is unnecessary in pacman post-install scripts (they run as root), it is not malicious. No other dangerous operations, network requests, or obfuscated code are present. The file poses no supply-chain risk.
</details>
<evidence></evidence>
<summary>Standard install script; no malicious content.</summary>
</security_assessment>

[9/13] Reviewing ollama.install, ollama.service, sysusers.conf, tmpfiles.d...
[10/13] Reviewing ollama.service, sysusers.conf, tmpfiles.d...
+ Reviewed ollama.install. Status: SAFE -- Standard install script; no malicious content.
LLM auditresponse for ollama.service:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard systemd service unit for the Ollama application. It defines the service to run `/usr/bin/ollama serve` with appropriate security hardening options: `PrivateTmp=yes`, `ProtectHome=yes`, and `ProtectSystem=full`. The `AmbientCapabilities=CAP_PERFMON` is a capability needed by the application for performance monitoring, which is an upstream functionality choice and not a sign of malice. There is no obfuscated code, unexpected network requests, file exfiltration, or any deviation from normal packaging practices. The file only configures the service environment and does not perform any actions itself.
</details>
<evidence></evidence>
<summary>Standard systemd service, no security issues.</summary>
</security_assessment>

[11/13] Reviewing sysusers.conf, tmpfiles.d...
+ Reviewed ollama.service. Status: SAFE -- Standard systemd service, no security issues.
LLM auditresponse for sysusers.conf:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard systemd sysusers configuration file. It creates a system group `ollama` and a system user `ollama` with the home directory `/var/lib/ollama`. This is a routine and expected packaging practice for services that need a dedicated user/group, and does not contain any malicious or suspicious behavior. There are no network requests, obfuscated code, or dangerous commands.
</details>
<evidence></evidence>
<summary>Standard systemd sysusers config for service user.</summary>
</security_assessment>

[12/13] Reviewing tmpfiles.d...
+ Reviewed sysusers.conf. Status: SAFE -- Standard systemd sysusers config for service user.
LLM auditresponse for tmpfiles.d:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard systemd tmpfiles configuration snippet that creates a volatile state directory for the ollama service. The `Q` type creates the directory with specified permissions (0755) and ownership (ollama:ollama), and cleans it on boot. There is no suspicious or malicious behavior—only a routine packaging step for storing application data.
</details>
<evidence></evidence>
<summary>Standard tmpfiles.d snippet for service state directory.</summary>
</security_assessment>

[13/13] Reviewing ...
+ Reviewed tmpfiles.d. Status: SAFE -- Standard tmpfiles.d snippet for service state directory.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 34,570
  Completion Tokens: 4,798
  Total Tokens: 39,368
  Total Cost: $0.003438
  Execution Time: 71.48 seconds

Final Status: SAFE


No issues found.
