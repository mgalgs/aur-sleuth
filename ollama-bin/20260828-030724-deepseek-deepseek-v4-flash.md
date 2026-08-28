---
package: ollama-bin
pkgver: 0.33.1
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 3e318911529c43138ec6bdba0bfcb56907607021
prompt_tokens: 34802
completion_tokens: 5287
total_tokens: 40089
cost: 0.004020585856
execution_time: 217.71
files_reviewed: 13
files_skipped: 0
maintainer_files: 13
source_fetch: ok
upstream_files: 63
upstream_named_files: 1
unpinned_sources: 0
date: 2026-08-28T03:07:23Z
file_verdicts:
  - file: .nvchecker.toml
    status: safe
    summary: Benign nvchecker configuration file.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata, no security issues.
  - file: ollama-cuda.conf
    status: safe
    summary: Safe configuration file for CUDA environment variables.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR binary PKGBUILD with no malicious indicators.
  - file: ollama-cuda.service
    status: safe
    summary: Standard systemd service file; no malicious content found.
  - file: ollama-vulkan.conf
    status: safe
    summary: Simple environment config file, no malicious content.
  - file: .gitignore
    status: safe
    summary: A standard gitignore file with no malicious content.
  - file: ollama.conf
    status: safe
    summary: Plain configuration file, no security concerns.
  - file: ollama.install
    status: safe
    summary: Standard install script with capability setting
  - file: ollama.service
    status: safe
    summary: Standard systemd service unit, no malicious content.
  - file: ollama-vulkan.service
    status: safe
    summary: Standard systemd service file, no security issues.
  - file: sysusers.conf
    status: safe
    summary: Standard sysusers.d configuration; no malicious content.
  - file: tmpfiles.d
    status: safe
    summary: Standard tmpfiles configuration, no security issues.
---

Cloning https://aur.archlinux.org/ollama-bin.git...
Cloned ollama-bin
Analyzing ollama-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is safe to process with `makepkg --nobuild --nodeps --noprepare` and `makepkg --printsrcinfo`. The file contains only standard top-level variable assignments and `package_*()` function definitions. There is no `pkgver()` function and no top-level command substitution, `eval`, `curl|bash`, or other code that would execute during sourcing or source fetching. The `package_*()` functions are not executed by these commands, so their contents are out of scope for this narrow gate.

All `source` entries point to the upstream Ollama GitHub repository (raw.githubusercontent.com for LICENSE/README and github.com releases for the prebuilt binary tarballs), which is the package's declared upstream. The arch-specific binary tarball URLs are versioned and come from the official releases page. SHA-256 checksums are provided for all sources, including the per-architecture tarballs. There are no unexpected hosts, no obfuscated content, and no evidence of malicious behavior in the fetch/source phase.
</details>
<evidence>

</evidence>
<summary>
Safe: standard upstream sources and checksums; no executable malicious code during fetch or sourcing.
</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Safe: standard upstream sources and checksums; no executable malicious code during fetch or sourcing.
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
The file `.nvchecker.toml` is a standard configuration file for the `nvchecker` tool, which is used to track upstream releases. It specifies the GitHub repository `ollama/ollama` and instructs the tool to use the latest release with a version prefix `v`. There is no executable code, no network requests executed directly by this file (the tool itself handles queries to GitHub), and no obfuscation or suspicious behavior. This is a normal packaging helper file and poses no security risk.
</details>
<evidence></evidence>
<summary>Benign nvchecker configuration file.</summary>
</security_assessment>

[0/13] Reviewing .SRCINFO, .gitignore, .nvchecker.toml, PKGBUILD...
[1/13] Reviewing .SRCINFO, .gitignore, PKGBUILD...
+ Reviewed .nvchecker.toml. Status: SAFE -- Benign nvchecker configuration file.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The `.SRCINFO` file is a metadata descriptor for the Arch User Repository package `ollama-bin`. It contains no executable code, no shell commands, and no obfuscated strings. All sources reference the official upstream project at `github.com/ollama/ollama` with a pinned version tag (`v0.33.1`). The binary tarballs are fetched from the project's own GitHub releases, and checksums are provided (not SKIP). Configuration files, systemd units, and install scripts are sourced from the same repository. There is no evidence of malicious activity such as data exfiltration, unexpected downloads, or code injection. The file is a standard, safe AUR metadata file.
</details>
<evidence>
</evidence>
<summary>Standard AUR metadata, no security issues.</summary>
</security_assessment>

[2/13] Reviewing .gitignore, PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata, no security issues.
[2/13] Reviewing .gitignore, PKGBUILD, ollama-cuda.conf...
LLM auditresponse for ollama-cuda.conf:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard CUDA environment configuration file for the Ollama package. It sets environment variables like `CUDA_VISIBLE_DEVICES`, `CUDA_DEVICE_ORDER`, and cache paths. There is no executable code, no obfuscation, no network requests, and no file manipulation beyond defining environment variables. This is a normal configuration file used to optimize hardware usage for the application.
</details>
<evidence></evidence>
<summary>Safe configuration file for CUDA environment variables.</summary>
</security_assessment>

[2/13] Reviewing .gitignore, PKGBUILD, ollama-cuda.conf, ollama-cuda.service...
[3/13] Reviewing .gitignore, PKGBUILD, ollama-cuda.service...
+ Reviewed ollama-cuda.conf. Status: SAFE -- Safe configuration file for CUDA environment variables.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a standard Arch Linux binary package for ollama. It downloads prebuilt binaries from the official GitHub releases (https://github.com/ollama/ollama/releases) with pinned SHA-256 checksums. All operations are routine packaging tasks: installing binaries, libraries, systemd service files, configuration files, sysusers/tmpfiles, license, and documentation. There are no obfuscated commands, no unexpected network requests, no data exfiltration attempts, and no execution of attacker-controlled code. The split package variants (cuda12, cuda13, vulkan) simply copy the appropriate GPU libraries. Nothing in this file indicates a supply-chain attack or malicious behavior.
</details>
<evidence>
</evidence>
<summary>Standard AUR binary PKGBUILD with no malicious indicators.</summary>
</security_assessment>

[4/13] Reviewing .gitignore, ollama-cuda.service...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR binary PKGBUILD with no malicious indicators.
[4/13] Reviewing .gitignore, ollama-cuda.service, ollama-vulkan.conf...
LLM auditresponse for ollama-cuda.service:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `ollama-cuda.service` is a standard systemd service unit file containing only an `EnvironmentFile` directive pointing to `/etc/ollama-cuda.conf`. This is a legitimate and common practice for loading environment variables from a configuration file. There is no executable code, no network requests, no obfuscation, and no system modifications beyond the normal service file definition. No evidence of a supply-chain attack exists in this file.
</details>
<evidence></evidence>
<summary>Standard systemd service file; no malicious content found.</summary>
</security_assessment>

[4/13] Reviewing .gitignore, ollama-cuda.service, ollama-vulkan.conf, ollama-vulkan.service...
[5/13] Reviewing .gitignore, ollama-vulkan.conf, ollama-vulkan.service...
+ Reviewed ollama-cuda.service. Status: SAFE -- Standard systemd service file; no malicious content found.
LLM auditresponse for ollama-vulkan.conf:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a plain environment-variable configuration file. It sets `OLLAMA_VULKAN=1` to enable Vulkan support (as documented by the project) and `GGML_VK_VISIBLE_DEVICES` to specify visible GPU devices. There is no executable code, no network calls, no obfuscation, and no system modification. It is a standard configuration snippet intended to be placed in `/etc/environment` or a systemd environment file. No security concerns.
</details>
<evidence></evidence>
<summary>Simple environment config file, no malicious content.</summary>
</security_assessment>

[6/13] Reviewing .gitignore, ollama-vulkan.service...
+ Reviewed ollama-vulkan.conf. Status: SAFE -- Simple environment config file, no malicious content.
[6/13] Reviewing .gitignore, ollama-vulkan.service, ollama.conf...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `.gitignore` contains a standard set of ignore patterns commonly used in AUR repositories. It excludes all files by default (`*`) and then un-ignores specific file types and names that are part of the package source (`.d`, `.conf`, `.service`, `.install`, `.gitignore`, `PKGBUILD`, `.SRCINFO`, `.nvchecker.toml`). This is a routine practice to prevent build artifacts or transient files from being tracked in the version control system. There is no obfuscated code, no network requests, no system modifications, and no deviation from normal AUR packaging conventions. The file poses no security threat.
</details>
<evidence></evidence>
<summary>A standard gitignore file with no malicious content.</summary>
</security_assessment>

[6/13] Reviewing .gitignore, ollama-vulkan.service, ollama.conf, ollama.install...
[7/13] Reviewing ollama-vulkan.service, ollama.conf, ollama.install...
+ Reviewed .gitignore. Status: SAFE -- A standard gitignore file with no malicious content.
LLM auditresponse for ollama.conf:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a plain text configuration file for the Ollama application. It contains only environment variable assignments with typical runtime parameters (host, timeouts, context length, GPU overhead, etc.). There are no executable commands, obfuscated content, network requests, or file operations. Nothing deviates from expected packaging or configuration practices.
</details>
<evidence></evidence>
<summary>Plain configuration file, no security concerns.</summary>
</security_assessment>

[7/13] Reviewing ollama-vulkan.service, ollama.conf, ollama.install, ollama.service...
[8/13] Reviewing ollama-vulkan.service, ollama.install, ollama.service...
+ Reviewed ollama.conf. Status: SAFE -- Plain configuration file, no security concerns.
LLM auditresponse for ollama.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The `ollama.install` script performs standard Arch package installation tasks. The only substantive actions are setting a Linux capability (`cap_perfmon+ep`) on the ollama binary in `post_install()` and `post_upgrade()`. This is a legitimate system configuration to allow the application to access performance monitoring features, consistent with the package's purpose. There is no evidence of malicious behavior: no network requests, data exfiltration, obfuscation, or execution of untrusted code. The use of `sudo` is redundant (the script runs as root already) but not harmful.
</details>
<evidence></evidence>
<summary>Standard install script with capability setting</summary>
</security_assessment>

[8/13] Reviewing ollama-vulkan.service, ollama.install, ollama.service, sysusers.conf...
[9/13] Reviewing ollama-vulkan.service, ollama.service, sysusers.conf...
+ Reviewed ollama.install. Status: SAFE -- Standard install script with capability setting
LLM auditresponse for ollama.service:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard systemd service unit for the Ollama AI service. It configures the service to run as a dedicated user/group (`ollama`), sets a working directory and environment variables, grants the `CAP_PERFMON` capability (likely needed for performance monitoring), and applies typical security hardening options (`PrivateTmp=yes`, `ProtectHome=yes`, `ProtectSystem=full`). There is no embedded code, no network operations, no data exfiltration, no obfuscation, and no deviation from standard packaging practices. The `EnvironmentFile=-/etc/ollama.conf` is a common pattern for loading optional configuration. The file is entirely benign and consistent with a legitimate service unit.
</details>
<evidence></evidence>
<summary>Standard systemd service unit, no malicious content.</summary>
</security_assessment>

[9/13] Reviewing ollama-vulkan.service, ollama.service, sysusers.conf, tmpfiles.d...
[10/13] Reviewing ollama-vulkan.service, sysusers.conf, tmpfiles.d...
+ Reviewed ollama.service. Status: SAFE -- Standard systemd service unit, no malicious content.
LLM auditresponse for ollama-vulkan.service:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a systemd service unit file for the ollama-vulkan service. It contains a single directive `EnvironmentFile=-/etc/ollama-vulkan.conf` which points to an optional environment configuration file (the `-` prefix makes it optional). This is standard practice for service configurations and does not introduce any security risk. There is no malicious code, no obfuscation, no network requests, and no dangerous commands. The file is purely declarative and harmless.
</details>
<evidence></evidence>
<summary>Standard systemd service file, no security issues.</summary>
</security_assessment>

[11/13] Reviewing sysusers.conf, tmpfiles.d...
+ Reviewed ollama-vulkan.service. Status: SAFE -- Standard systemd service file, no security issues.
LLM auditresponse for sysusers.conf:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `sysusers.conf` is a standard systemd sysusers.d configuration file that creates a system group (`ollama`) and a system user (`ollama`) with a home directory `/var/lib/ollama` and a GECOS field describing the user. This is a normal and expected packaging practice for services that require a dedicated user and group. There is no evidence of malicious behavior, obfuscation, network requests, file exfiltration, or any deviation from legitimate packaging conventions.
</details>
<evidence>
</evidence>
<summary>Standard sysusers.d configuration; no malicious content.</summary>
</security_assessment>

[12/13] Reviewing tmpfiles.d...
+ Reviewed sysusers.conf. Status: SAFE -- Standard sysusers.d configuration; no malicious content.
LLM auditresponse for tmpfiles.d:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard systemd tmpfiles.d configuration that creates the `/var/lib/ollama` directory (or btrfs subvolume) with owner `ollama:ollama` and permissions `0755`. This is normal packaging practice for applications that require a dedicated runtime data directory. No obfuscation, network requests, dangerous commands, or deviation from expected behavior is present.
</details>
<evidence></evidence>
<summary>Standard tmpfiles configuration, no security issues.</summary>
</security_assessment>

[13/13] Reviewing ...
+ Reviewed tmpfiles.d. Status: SAFE -- Standard tmpfiles configuration, no security issues.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 34,802
  Completion Tokens: 5,287
  Total Tokens: 40,089
  Total Cost: $0.004021
  Execution Time: 217.71 seconds

Final Status: SAFE


No issues found.
