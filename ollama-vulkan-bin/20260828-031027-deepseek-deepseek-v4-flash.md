---
package: ollama-vulkan-bin
pkgbase: ollama-bin
pkgver: 0.33.1
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 3e318911529c43138ec6bdba0bfcb56907607021
prompt_tokens: 34751
completion_tokens: 4180
total_tokens: 38931
cost: 0.003819893266
execution_time: 174.82
files_reviewed: 13
files_skipped: 0
maintainer_files: 13
source_fetch: ok
upstream_files: 63
upstream_named_files: 1
unpinned_sources: 0
date: 2026-08-28T03:10:27Z
file_verdicts:
  - file: .nvchecker.toml
    status: safe
    summary: Standard nvchecker config for version tracking.
  - file: .gitignore
    status: safe
    summary: Standard .gitignore file for AUR packaging.
  - file: ollama-cuda.conf
    status: safe
    summary: Standard configuration file for CUDA environment.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata, no malicious content.
  - file: ollama-cuda.service
    status: safe
    summary: Safe systemd service unit file.
  - file: ollama-vulkan.conf
    status: safe
    summary: Benign config file for Vulkan support.
  - file: ollama-vulkan.service
    status: safe
    summary: Standard systemd unit, no security issues.
  - file: ollama.conf
    status: safe
    summary: Static config file, no security issues.
  - file: ollama.service
    status: safe
    summary: Standard service file, no malicious content.
  - file: ollama.install
    status: safe
    summary: Standard install script with capability setting.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD, no malicious content found.
  - file: tmpfiles.d
    status: safe
    summary: Standard tmpfiles configuration, no security issues.
  - file: sysusers.conf
    status: safe
    summary: Standard sysusers config; no malicious content.
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
The PKGBUILD only contains variable assignments and function definitions in its top-level scope. No `pkgver()` function is defined. There are no command substitutions, backticks, `eval`, or any code execution in global scope. All sources point to the official ollama GitHub repository or are local files shipped with the PKGBUILD. Checksums are specified for all artifacts. The `makepkg --nobuild --nodeps --noprepare` and `makepkg --printsrcinfo` commands will only fetch the sources and parse the PKGBUILD without executing `prepare()`, `build()`, or `package()`. No dangerous behavior is present that would execute malicious code during source fetching or PKGBUILD sourcing.
</details>
<evidence></evidence>
<summary>Safe: no executable code in global scope or pkgver().</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Safe: no executable code in global scope or pkgver().
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
This file is a configuration for `nvchecker`, a tool used to automatically check for new upstream versions. It specifies that the package `ollama-bin` should track the latest release from the GitHub repository `ollama/ollama` using the version prefix `v`. This is a standard, non‑malicious practice in AUR maintenance. No dangerous commands, network exfiltration, obfuscation, or system modifications are present.
</details>
<evidence>
</evidence>
<summary>Standard nvchecker config for version tracking.</summary>
</security_assessment>

[1/13] Reviewing .SRCINFO, .gitignore...
+ Reviewed .nvchecker.toml. Status: SAFE -- Standard nvchecker config for version tracking.
[1/13] Reviewing .SRCINFO, .gitignore, PKGBUILD...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard `.gitignore` configuration that only ignores all files except those necessary for an AUR package (`.d`, `.conf`, `.service`, `.install`, `.gitignore`, `PKGBUILD`, `.SRCINFO`, `.nvchecker.toml`). This is a common pattern used by AUR maintainers to prevent committing unwanted files to the VCS repository. There is no executable code, no network requests, no obfuscation, and no indication of malicious behavior. The file serves a purely organizational purpose and does not pose any security risk.</details>
<evidence></evidence>
<summary>Standard .gitignore file for AUR packaging.</summary>
</security_assessment>

[2/13] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore file for AUR packaging.
[2/13] Reviewing .SRCINFO, PKGBUILD, ollama-cuda.conf...
LLM auditresponse for ollama-cuda.conf:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a plain configuration file setting CUDA environment variables (e.g., CUDA_VISIBLE_DEVICES, CUDA_CACHE_PATH). It contains no executable code, no network requests, no obfuscation, and no operations that deviate from standard packaging practices. It is a typical configuration file used to tune GPU behavior for an application like Ollama.
</details>
<evidence></evidence>
<summary>Standard configuration file for CUDA environment.</summary>
</security_assessment>

[2/13] Reviewing .SRCINFO, PKGBUILD, ollama-cuda.conf, ollama-cuda.service...
[3/13] Reviewing .SRCINFO, PKGBUILD, ollama-cuda.service...
+ Reviewed ollama-cuda.conf. Status: SAFE -- Standard configuration file for CUDA environment.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The `.SRCINFO` file is a standard AUR metadata file describing the package structure, sources, dependencies, and checksums. All source URLs point to the official ollama GitHub repository releases (github.com/ollama/ollama). Checksums are provided for all sources, none are set to `SKIP`. There are no executable commands, network requests, or obfuscated content. The file merely defines package metadata for the Arch build system. No evidence of malicious or dangerous behavior.
</details>
<evidence></evidence>
<summary>Standard AUR metadata, no malicious content.</summary>
</security_assessment>

[3/13] Reviewing .SRCINFO, PKGBUILD, ollama-cuda.service, ollama-vulkan.conf...
[4/13] Reviewing PKGBUILD, ollama-cuda.service, ollama-vulkan.conf...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata, no malicious content.
LLM auditresponse for ollama-cuda.service:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard systemd service unit that loads environment variables from an optional configuration file (`/etc/ollama-cuda.conf`). There is no executable code, no network activity, no file manipulation, and no obfuscation. This is normal packaging practice for configuring a service.
</details>
<evidence></evidence>
<summary>Safe systemd service unit file.</summary>
</security_assessment>

[4/13] Reviewing PKGBUILD, ollama-cuda.service, ollama-vulkan.conf, ollama-vulkan.service...
[5/13] Reviewing PKGBUILD, ollama-vulkan.conf, ollama-vulkan.service...
+ Reviewed ollama-cuda.service. Status: SAFE -- Safe systemd service unit file.
LLM auditresponse for ollama-vulkan.conf:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a simple configuration file that sets two environment variables for the Ollama server. `OLLAMA_VULKAN=1` enables experimental Vulkan support, and `GGML_VK_VISIBLE_DEVICES=0,1,2,3` specifies which GPU devices to use. There are no commands, network requests, obfuscation, or other suspicious behavior. The file is a legitimate part of normal package configuration.
</details>
<evidence></evidence>
<summary>Benign config file for Vulkan support.</summary>
</security_assessment>

[5/13] Reviewing PKGBUILD, ollama-vulkan.conf, ollama-vulkan.service, ollama.conf...
[6/13] Reviewing PKGBUILD, ollama-vulkan.service, ollama.conf...
+ Reviewed ollama-vulkan.conf. Status: SAFE -- Benign config file for Vulkan support.
LLM auditresponse for ollama-vulkan.service:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard systemd service unit file for the `ollama-vulkan` package. It only specifies an `EnvironmentFile` directive that loads configuration from `/etc/ollama-vulkan.conf` (optional, due to the `-` prefix). There are no executable commands, no network requests, no obfuscated code, and no other suspicious operations. This is a normal and expected packaging practice for configuring a system service. No security issues are present.</details>
<evidence>
</evidence>
<summary>Standard systemd unit, no security issues.</summary>
</security_assessment>

[6/13] Reviewing PKGBUILD, ollama-vulkan.service, ollama.conf, ollama.install...
[7/13] Reviewing PKGBUILD, ollama.conf, ollama.install...
+ Reviewed ollama-vulkan.service. Status: SAFE -- Standard systemd unit, no security issues.
LLM auditresponse for ollama.conf:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a plain environment configuration file for Ollama. It contains only static variable assignments with no executable code, no network requests, no file operations, and no obfuscation. There is no evidence of malicious or dangerous behavior. The content is consistent with standard packaging practices.
</details>
<evidence>

</evidence>
<summary>Static config file, no security issues.</summary>
</security_assessment>

[7/13] Reviewing PKGBUILD, ollama.conf, ollama.install, ollama.service...
[8/13] Reviewing PKGBUILD, ollama.install, ollama.service...
+ Reviewed ollama.conf. Status: SAFE -- Static config file, no security issues.
LLM auditresponse for ollama.service:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard systemd service unit for the Ollama AI model runner. It defines the service to execute `/usr/bin/ollama serve` with appropriate security hardening options such as `PrivateTmp=yes`, `ProtectHome=yes`, and `ProtectSystem=full`. There is no evidence of malicious code, network requests, file downloads, or obfuscation. The `AmbientCapabilities=CAP_PERFMON` capability is likely required for legitimate performance monitoring functionality of the application. The file adheres to typical Arch Linux packaging practices and contains no supply-chain attack indicators.
</details>
<evidence>
</evidence>
<summary>Standard service file, no malicious content.</summary>
</security_assessment>

[8/13] Reviewing PKGBUILD, ollama.install, ollama.service, sysusers.conf...
[9/13] Reviewing PKGBUILD, ollama.install, sysusers.conf...
+ Reviewed ollama.service. Status: SAFE -- Standard service file, no malicious content.
LLM auditresponse for ollama.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The `ollama.install` file contains standard Arch Linux package install scripts. All functions except `post_install` and `post_upgrade` are empty. Those two functions execute `sudo setcap cap_perfmon+ep /usr/bin/ollama`, which grants the `cap_perfmon` capability to the ollama binary. This capability allows the application to access hardware performance monitoring counters, a legitimate requirement for GPU/AI workloads. There is no suspicious network activity, obfuscated code, file exfiltration, or other malicious behavior. The file follows typical packaging conventions.</details>
<evidence></evidence>
<summary>Standard install script with capability setting.</summary>
</security_assessment>

[9/13] Reviewing PKGBUILD, ollama.install, sysusers.conf, tmpfiles.d...
[10/13] Reviewing PKGBUILD, sysusers.conf, tmpfiles.d...
+ Reviewed ollama.install. Status: SAFE -- Standard install script with capability setting.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a standard Arch User Repository package for pre-built binary distributions of Ollama. All sources are fetched from the official GitHub repository (github.com/ollama/ollama) under the `v0.33.1` release tag. Checksums are provided and pinned for all source files, including the architecture-specific binary archives. The package functions (`package_ollama-bin`, `package_ollama-cuda12-bin`, `package_ollama-cuda13-bin`, `package_ollama-vulkan-bin`) only install files from the extracted archive, configuration files, systemd service units, and documentation. There are no obfuscated commands, no use of `eval`, `base64`, `curl|bash`, or any network requests beyond the declared source URLs. No exfiltration, backdoors, or malicious modifications are present. The file adheres to standard AUR packaging practices.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD, no malicious content found.</summary>
</security_assessment>

[11/13] Reviewing sysusers.conf, tmpfiles.d...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD, no malicious content found.
LLM auditresponse for tmpfiles.d:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard systemd-tmpfiles configuration snippet that ensures the `/var/lib/ollama` directory exists with the specified ownership and permissions. This is a routine packaging practice for services that require a dedicated state directory. There is no evidence of malicious behavior, obfuscation, or unexpected operations.</details>
<evidence></evidence>
<summary>Standard tmpfiles configuration, no security issues.</summary>
</security_assessment>

[12/13] Reviewing sysusers.conf...
+ Reviewed tmpfiles.d. Status: SAFE -- Standard tmpfiles configuration, no security issues.
LLM auditresponse for sysusers.conf:
<security_assessment>
<decision>SAFE</decision>
<details>
This file (`sysusers.conf`) contains standard systemd sysusers directives to create a system group (`g ollama - -`) and a system user (`u! ollama - &quot;ollama user&quot; /var/lib/ollama`) for the ollama service. There is no obfuscated code, network requests, file operations, or any other malicious behavior. The file is purely declarative and follows normal packaging practices for creating service users.
</details>
<evidence>
</evidence>
<summary>Standard sysusers config; no malicious content.</summary>
</security_assessment>

[13/13] Reviewing ...
+ Reviewed sysusers.conf. Status: SAFE -- Standard sysusers config; no malicious content.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 34,751
  Completion Tokens: 4,180
  Total Tokens: 38,931
  Total Cost: $0.003820
  Execution Time: 174.82 seconds

Final Status: SAFE


No issues found.
