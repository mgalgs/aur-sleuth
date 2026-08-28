---
package: ollama-cuda12-bin
pkgbase: ollama-bin
pkgver: 0.33.1
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 3e318911529c43138ec6bdba0bfcb56907607021
prompt_tokens: 34765
completion_tokens: 5186
total_tokens: 39951
cost: 0.003999409022
execution_time: 162.18
files_reviewed: 13
files_skipped: 0
maintainer_files: 13
source_fetch: ok
upstream_files: 63
upstream_named_files: 1
unpinned_sources: 0
date: 2026-08-28T03:06:28Z
file_verdicts:
  - file: .nvchecker.toml
    status: safe
    summary: Declarative nvchecker config; no malicious code.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata file, no security issues.
  - file: .gitignore
    status: safe
    summary: Standard .gitignore for AUR repo, no malicious content.
  - file: ollama-cuda.service
    status: safe
    summary: "Safe: standard systemd service unit snippet."
  - file: ollama-cuda.conf
    status: safe
    summary: Legitimate CUDA config file with no malicious content.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD with no malicious content.
  - file: ollama-vulkan.conf
    status: safe
    summary: Configuration file with safe environment variable settings.
  - file: ollama-vulkan.service
    status: safe
    summary: Standard systemd service unit, no malicious content.
  - file: ollama.conf
    status: safe
    summary: Standard environment config file, no security issues.
  - file: ollama.service
    status: safe
    summary: Standard systemd service file, no security issues.
  - file: ollama.install
    status: safe
    summary: Safe post-install script using setcap.
  - file: sysusers.conf
    status: safe
    summary: Standard sysusers config; no malicious behavior.
  - file: tmpfiles.d
    status: safe
    summary: Standard tmpfiles configuration for ollama data directory.
---

ollama-cuda12-bin is built from ollama-bin
Cloning https://aur.archlinux.org/ollama-bin.git...
Cloned ollama-cuda12-bin
Analyzing ollama-cuda12-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only standard variable assignments (arch, source URLs, checksums, etc.) and function definitions for the package functions. No `pkgver()` function is defined; `pkgver` is a static string. The source URLs all point to the official ollama GitHub repository (https://github.com/ollama/ollama) or are local files (ollama.conf, etc.). There are no top-level command substitutions, `eval`, `curl|bash`, or any code that would exfiltrate data or execute untrusted payloads during sourcing or source fetching. The `makepkg --nobuild --nodeps --noprepare` command will only source the PKGBUILD and download/extract the sources as specified; no `prepare()`, `build()`, or `package()` functions are executed. The `makepkg --printsrcinfo` command will similarly only source the PKGBUILD and print metadata. Both actions are safe.
</details>
<evidence></evidence>
<summary>No malicious code in top-level scope or sources.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious code in top-level scope or sources.
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Note: the PKGBUILD names 1 file(s) in the downloaded sources (src/bin/ollama); they are upstream content and were not reviewed.
Reviewing the 13 file(s) in the AUR repository. The 63 downloaded file(s) are upstream content, outside the threat model, and are not read.
Reviewing the AUR repository's files...
[0/13] Reviewing .SRCINFO...
[0/13] Reviewing .SRCINFO, .nvchecker.toml...
[0/13] Reviewing .SRCINFO, .nvchecker.toml, .gitignore...
LLM auditresponse for .nvchecker.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `.nvchecker.toml` is a configuration file for `nvchecker`, a tool that automatically checks for new upstream releases. It defines the source (`github`), repository (`ollama/ollama`), and version-prefix policy (`v`) for the `ollama-bin` package. There are no commands, network requests, or executable code present; the file only contains declarative settings. This is standard practice in AUR packages that use nvchecker and does not introduce any supply-chain risk.
</details>
<evidence></evidence>
<summary>Declarative nvchecker config; no malicious code.</summary>
</security_assessment>

[0/13] Reviewing .SRCINFO, .nvchecker.toml, .gitignore, PKGBUILD...
[1/13] Reviewing .SRCINFO, .gitignore, PKGBUILD...
+ Reviewed .nvchecker.toml. Status: SAFE -- Declarative nvchecker config; no malicious code.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This .SRCINFO file is a standard Arch User Repository (AUR) metadata file describing the `ollama-bin` package and its subpackages. It contains no executable code, no bash commands, no network requests beyond listing official upstream GitHub URLs for the source tarball and auxiliary files. All source URLs point to `github.com/ollama/ollama`, which is the legitimate upstream repository. Checksums are provided and not set to SKIP, meaning the integrity of the sources is verifiable at build time. There is no obfuscation, no suspicious encoding, and no unexpected dependencies. The file simply defines package version, architecture, license, dependencies, and backup configuration files. There is no evidence of malicious or supply-chain attack behaviour; it is a clean, standard AUR metadata file.
</details>
<evidence>

</evidence>
<summary>Standard AUR metadata file, no security issues.</summary>
</security_assessment>

[1/13] Reviewing .SRCINFO, .gitignore, PKGBUILD, ollama-cuda.conf...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.gitignore` file used in an AUR package repository. It instructs Git to ignore all files by default, then whitelists only specific files relevant to the package (such as PKGBUILD, .SRCINFO, .install scripts, and configuration files). No commands, obfuscation, network requests, or system modifications are present. The file does not contain any executable or dangerous content; it is purely a version control configuration file. Therefore, it is safe.
</details>
<evidence>
</evidence>
<summary>Standard .gitignore for AUR repo, no malicious content.</summary>
</security_assessment>

[2/13] Reviewing .gitignore, PKGBUILD, ollama-cuda.conf...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata file, no security issues.
[2/13] Reviewing .gitignore, PKGBUILD, ollama-cuda.conf, ollama-cuda.service...
[3/13] Reviewing PKGBUILD, ollama-cuda.conf, ollama-cuda.service...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore for AUR repo, no malicious content.
LLM auditresponse for ollama-cuda.service:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `ollama-cuda.service` is a standard systemd service unit snippet. It only contains a `[Service]` section with an `EnvironmentFile` directive pointing to `/etc/ollama-cuda.conf`. This is a normal packaging practice for loading environment variables from a configuration file. There is no evidence of any malicious behavior such as network requests, obfuscated code, file operations outside the package's scope, or execution of untrusted commands. No supply-chain attack indicators are present.
</details>
<evidence>
</evidence>
<summary>Safe: standard systemd service unit snippet.</summary>
</security_assessment>

[3/13] Reviewing PKGBUILD, ollama-cuda.conf, ollama-cuda.service, ollama-vulkan.conf...
[4/13] Reviewing PKGBUILD, ollama-cuda.conf, ollama-vulkan.conf...
+ Reviewed ollama-cuda.service. Status: SAFE -- Safe: standard systemd service unit snippet.
LLM auditresponse for ollama-cuda.conf:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard CUDA environment configuration file. It sets environment variables to control GPU visibility, device ordering, module loading behavior, cache size/location, and logging. All variables are legitimate CUDA options. There are no commands, network requests, code execution, or any other indicators of malicious activity. The file is purely declarative and follows normal packaging practices for GPU-accelerated applications.
</details>
<evidence></evidence>
<summary>Legitimate CUDA config file with no malicious content.</summary>
</security_assessment>

[4/13] Reviewing PKGBUILD, ollama-cuda.conf, ollama-vulkan.conf, ollama-vulkan.service...
[5/13] Reviewing PKGBUILD, ollama-vulkan.conf, ollama-vulkan.service...
+ Reviewed ollama-cuda.conf. Status: SAFE -- Legitimate CUDA config file with no malicious content.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD for the `ollama-bin` package and its GPU-backend variants is a straightforward, standard Arch Linux packaging script. All sources are fetched from the official upstream GitHub repository (`github.com/ollama/ollama`) with pinned version tags and specific SHA-256 checksums provided for all files, including the binary tarballs. The build and package functions only install pre-compiled binaries, libraries, configuration files, systemd service units, and documentation into the expected locations. There are no suspicious network requests, no execution of downloaded code (other than the binary itself, which is the application being packaged), no obfuscated or encoded commands, and no attempts to exfiltrate data or modify system files outside the package's scope. The use of `install`, `cp`, and `ln` is normal for packaging. All dependencies and conflicts are expected for this type of application. There is no evidence of injected malicious code or supply-chain attack indicators. The package follows AUR best practices with pinned checksums and declared upstream sources.</details>
<evidence></evidence>
<summary>Standard PKGBUILD with no malicious content.</summary>
</security_assessment>

[6/13] Reviewing ollama-vulkan.conf, ollama-vulkan.service...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD with no malicious content.
[6/13] Reviewing ollama-vulkan.conf, ollama-vulkan.service, ollama.conf...
LLM auditresponse for ollama-vulkan.conf:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a configuration snippet for the Ollama server, setting environment variables to enable Vulkan support and specify visible GPU devices. It contains only comments and two environment variable assignments (`OLLAMA_VULKAN=1` and `GGML_VK_VISIBLE_DEVICES=0,1,2,3`). No executable code, network requests, obfuscation, or system modifications are present. The file is a standard configuration file with no security concerns.
</details>
<evidence></evidence>
<summary>Configuration file with safe environment variable settings.</summary>
</security_assessment>

[6/13] Reviewing ollama-vulkan.conf, ollama-vulkan.service, ollama.conf, ollama.install...
[7/13] Reviewing ollama-vulkan.service, ollama.conf, ollama.install...
+ Reviewed ollama-vulkan.conf. Status: SAFE -- Configuration file with safe environment variable settings.
LLM auditresponse for ollama-vulkan.service:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard systemd service unit snippet containing only an `EnvironmentFile` directive that points to `/etc/ollama-vulkan.conf` (with a leading dash indicating the file is optional). There is no executable code, no network activity, no obfuscation, and no system modification beyond what is typical for a service configuration. No security concerns are present.
</details>
<evidence></evidence>
<summary>Standard systemd service unit, no malicious content.</summary>
</security_assessment>

[7/13] Reviewing ollama-vulkan.service, ollama.conf, ollama.install, ollama.service...
[8/13] Reviewing ollama.conf, ollama.install, ollama.service...
+ Reviewed ollama-vulkan.service. Status: SAFE -- Standard systemd service unit, no malicious content.
LLM auditresponse for ollama.conf:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a straightforward shell environment configuration for Ollama, a local large-language-model server. It sets variables like `OLLAMA_HOST`, `OLLAMA_KEEP_ALIVE`, and various performance tuning parameters. There is no executable code, no network requests, no file operations, and no obfuscation. The content is entirely declarative and consistent with a standard application configuration file.
</details>
<evidence>
</evidence>
<summary>Standard environment config file, no security issues.</summary>
</security_assessment>

[8/13] Reviewing ollama.conf, ollama.install, ollama.service, sysusers.conf...
[9/13] Reviewing ollama.install, ollama.service, sysusers.conf...
+ Reviewed ollama.conf. Status: SAFE -- Standard environment config file, no security issues.
LLM auditresponse for ollama.service:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard systemd service unit for the Ollama application. It defines the service to run `/usr/bin/ollama serve` under a dedicated user `ollama` with appropriate security hardening (`PrivateTmp=yes`, `ProtectHome=yes`, `ProtectSystem=full`). There is no obfuscated code, no network requests, no downloads, no execution of untrusted content, and no deviation from expected packaging practices. The service file is consistent with upstream's recommended setup and does not contain any injected malicious behavior.
</details>
<evidence>
</evidence>
<summary>Standard systemd service file, no security issues.</summary>
</security_assessment>

[9/13] Reviewing ollama.install, ollama.service, sysusers.conf, tmpfiles.d...
[10/13] Reviewing ollama.install, sysusers.conf, tmpfiles.d...
+ Reviewed ollama.service. Status: SAFE -- Standard systemd service file, no security issues.
LLM auditresponse for ollama.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The `ollama.install` file is a standard Arch Linux install script that runs commands during package installation, upgrade, and removal. The only non-trivial operation is `sudo setcap cap_perfmon+ep /usr/bin/ollama` in `post_install()` and `post_upgrade()`. This sets the `cap_perfmon` capability, which is a documented Linux capability that allows the binary to access performance monitoring hardware (e.g., CPU performance counters). This is a legitimate requirement for an AI/LLM runtime like Ollama, which may need to monitor GPU or CPU performance. No network requests, obfuscated code, data exfiltration, or unexpected system modifications are present. The file is consistent with normal AUR packaging practices.
</details>
<evidence></evidence>
<summary>Safe post-install script using setcap.</summary>
</security_assessment>

[11/13] Reviewing sysusers.conf, tmpfiles.d...
+ Reviewed ollama.install. Status: SAFE -- Safe post-install script using setcap.
LLM auditresponse for sysusers.conf:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a systemd sysusers configuration snippet that creates a system group (`g ollama - -`) and a system user (`u! ollama - &quot;ollama user&quot; /var/lib/ollama`). The escaped HTML entity `&quot;` represents a double quote, which is standard for specifying a user comment (GECOS field). The home directory is set to `/var/lib/ollama`, a typical location for service data. There are no network requests, obfuscated commands, file operations outside the package scope, or any other indicators of malicious behavior. This is a routine and expected packaging practice for creating a dedicated service user.
</details>
<evidence>
</evidence>
<summary>Standard sysusers config; no malicious behavior.</summary>
</security_assessment>

[12/13] Reviewing tmpfiles.d...
+ Reviewed sysusers.conf. Status: SAFE -- Standard sysusers config; no malicious behavior.
LLM auditresponse for tmpfiles.d:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard systemd tmpfiles.d snippet that creates the `/var/lib/ollama` directory with the specified ownership and permissions. No malicious behavior is present. It is a normal packaging practice for applications that require a dedicated state directory.
</details>
<evidence></evidence>
<summary>Standard tmpfiles configuration for ollama data directory.</summary>
</security_assessment>

[13/13] Reviewing ...
+ Reviewed tmpfiles.d. Status: SAFE -- Standard tmpfiles configuration for ollama data directory.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 34,765
  Completion Tokens: 5,186
  Total Tokens: 39,951
  Total Cost: $0.003999
  Execution Time: 162.18 seconds

Final Status: SAFE


No issues found.
