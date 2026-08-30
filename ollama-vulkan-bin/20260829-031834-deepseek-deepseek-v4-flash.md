---
package: ollama-vulkan-bin
pkgbase: ollama-bin
pkgver: 0.33.2
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 3e318911529c43138ec6bdba0bfcb56907607021
prompt_tokens: 34760
completion_tokens: 4440
total_tokens: 39200
cost: 0.00373907520
execution_time: 146.49
files_reviewed: 13
files_skipped: 0
maintainer_files: 13
source_fetch: ok
upstream_files: 63
upstream_named_files: 1
unpinned_sources: 0
date: 2026-08-29T03:18:34Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard .gitignore file, no security concerns.
  - file: .nvchecker.toml
    status: safe
    summary: Benign nvchecker config; no security issues.
  - file: ollama-cuda.conf
    status: safe
    summary: Plain CUDA environment config file, no malicious content.
  - file: ollama-cuda.service
    status: safe
    summary: Standard systemd service unit snippet, no security issues.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata file, no malicious content.
  - file: ollama-vulkan.conf
    status: safe
    summary: Simple configuration file for Vulkan support.
  - file: ollama-vulkan.service
    status: safe
    summary: Standard systemd service unit, no risks.
  - file: ollama.conf
    status: safe
    summary: Safe; plain config file, no malicious content.
  - file: ollama.service
    status: safe
    summary: Standard systemd service unit, no security issues.
  - file: ollama.install
    status: safe
    summary: Standard install hooks, no malicious code.
  - file: sysusers.conf
    status: safe
    summary: Standard sysusers config for service user.
  - file: tmpfiles.d
    status: safe
    summary: Standard tmpfiles.d configuration, no security issues.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD with no malicious indicators found.
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
The PKGBUILD defines standard variables and source arrays pointing to the official ollama GitHub repository. No top-level command substitutions, no `pkgver()` function with dangerous operations, and no obfuscated or encoded payloads. The `source` entries are from the project&apos;s own upstream (github.com/ollama/ollama), which is expected for a package fetching prebuilt binaries. The commands `makepkg --nobuild --nodeps --noprepare` and `makepkg --printsrcinfo` will only source the PKGBUILD (top-level scope) and download/extract the declared sources. Nothing in the top-level scope executes untrusted code or exfiltrates data. The `package_*` functions that run `install`, `cp`, etc. are not executed during this step due to `--nobuild`/`--noprepare`. Therefore, running these commands is safe.
</details>
<evidence></evidence>
<summary>No malicious top-level code; sources from official upstream.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious top-level code; sources from official upstream.
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
The `.gitignore` file is a standard git configuration file that specifies which files should be ignored by version control. It lists patterns to ignore (all files by default) and then exceptions for specific file types needed in the AUR repository (`.d`, `.conf`, `.service`, `.install`, `.gitignore`, `PKGBUILD`, `.SRCINFO`, `.nvchecker.toml`). There is no executable code, no network operations, no obfuscation, and no indication of malicious intent. This file is benign and follows normal packaging practices.
</details>
<evidence></evidence>
<summary>Standard .gitignore file, no security concerns.</summary>
</security_assessment>

[0/13] Reviewing .SRCINFO, .gitignore, .nvchecker.toml, PKGBUILD...
[1/13] Reviewing .SRCINFO, .nvchecker.toml, PKGBUILD...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore file, no security concerns.
LLM auditresponse for .nvchecker.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `nvchecker` configuration file for tracking upstream releases. It simply defines how to check for new versions of the `ollama` GitHub repository using GitHub releases with a &quot;v&quot; prefix. There are no commands, obfuscated content, or any deviation from expected packaging practices.
</details>
<evidence></evidence>
<summary>Benign nvchecker config; no security issues.</summary>
</security_assessment>

[2/13] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed .nvchecker.toml. Status: SAFE -- Benign nvchecker config; no security issues.
[2/13] Reviewing .SRCINFO, PKGBUILD, ollama-cuda.conf...
LLM auditresponse for ollama-cuda.conf:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a simple environment configuration file for CUDA settings. It contains only variable assignments (e.g., `CUDA_VISIBLE_DEVICES=0,1,2,3`) with no executable code, no network requests, no obfuscation, and no file operations. It poses no security risk. It follows standard practices for configuring CUDA runtime behavior in a packaging context.
</details>
<evidence></evidence>
<summary>Plain CUDA environment config file, no malicious content.</summary>
</security_assessment>

[2/13] Reviewing .SRCINFO, PKGBUILD, ollama-cuda.conf, ollama-cuda.service...
[3/13] Reviewing .SRCINFO, PKGBUILD, ollama-cuda.service...
+ Reviewed ollama-cuda.conf. Status: SAFE -- Plain CUDA environment config file, no malicious content.
LLM auditresponse for ollama-cuda.service:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard systemd service unit snippet that sets an optional environment file. No network operations, code execution, or obfuscation is present. This is typical for AUR packages that need configuration via an environment file.</details>
<evidence></evidence>
<summary>Standard systemd service unit snippet, no security issues.</summary>
</security_assessment>

[3/13] Reviewing .SRCINFO, PKGBUILD, ollama-cuda.service, ollama-vulkan.conf...
[4/13] Reviewing .SRCINFO, PKGBUILD, ollama-vulkan.conf...
+ Reviewed ollama-cuda.service. Status: SAFE -- Standard systemd service unit snippet, no security issues.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The `.SRCINFO` file is a standard AUR metadata descriptor that defines the package name, version, dependencies, sources, and checksums. All sources point to the official GitHub upstream repository for ollama at pinned version `v0.33.2` with SHA256 checksums provided for each file. There are no embedded commands, obfuscated code, network requests, or file operations. The file is purely declarative and follows normal packaging practices. No indicators of a supply chain attack or malicious behavior are present.
</details>
<evidence></evidence>
<summary>Standard AUR metadata file, no malicious content.</summary>
</security_assessment>

[5/13] Reviewing PKGBUILD, ollama-vulkan.conf...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata file, no malicious content.
[5/13] Reviewing PKGBUILD, ollama-vulkan.conf, ollama-vulkan.service...
LLM auditresponse for ollama-vulkan.conf:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a plain configuration file that sets two environment variables for the Ollama application. `OLLAMA_VULKAN=1` enables experimental Vulkan support, and `GGML_VK_VISIBLE_DEVICES=0,1,2,3` specifies which GPU devices to use. There is no executable code, no obfuscation, no network requests, and no file manipulation. It follows standard practices for application configuration. No supply-chain attack indicators are present.
</details>
<evidence></evidence>
<summary>Simple configuration file for Vulkan support.</summary>
</security_assessment>

[6/13] Reviewing PKGBUILD, ollama-vulkan.service...
+ Reviewed ollama-vulkan.conf. Status: SAFE -- Simple configuration file for Vulkan support.
[6/13] Reviewing PKGBUILD, ollama-vulkan.service, ollama.conf...
LLM auditresponse for ollama-vulkan.service:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `ollama-vulkan.service` is a standard systemd unit file. It only contains a single directive setting an optional environment file (`/etc/ollama-vulkan.conf`). No executables, network requests, obfuscation, or suspicious operations are present. This is a normal and expected packaging practice for a service that might need user-supplied environment variables (e.g., for configuration). There is no evidence of any supply-chain attack or malicious behavior.
</details>
<evidence></evidence>
<summary>Standard systemd service unit, no risks.</summary>
</security_assessment>

[7/13] Reviewing PKGBUILD, ollama.conf...
+ Reviewed ollama-vulkan.service. Status: SAFE -- Standard systemd service unit, no risks.
[7/13] Reviewing PKGBUILD, ollama.conf, ollama.install...
LLM auditresponse for ollama.conf:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a plain configuration file for Ollama, an application that runs large language models locally. It contains only environment variable assignments (e.g., OLLAMA_HOST, OLLAMA_KEEP_ALIVE) with no commands, scripts, network requests, or file operations. There is no obfuscation, encoded content, or any deviation from standard packaging practices. The content is benign and poses no supply-chain security risk.
</details>
<evidence></evidence>
<summary>Safe; plain config file, no malicious content.</summary>
</security_assessment>

[8/13] Reviewing PKGBUILD, ollama.install...
+ Reviewed ollama.conf. Status: SAFE -- Safe; plain config file, no malicious content.
[8/13] Reviewing PKGBUILD, ollama.install, ollama.service...
LLM auditresponse for ollama.service:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard systemd service unit file for the Ollama AI service. It launches the `ollama serve` binary, sets up working directory and environment variables, and includes hardening options like `PrivateTmp=yes`, `ProtectHome=yes`, and `ProtectSystem=full`. The `AmbientCapabilities=CAP_PERFMON` is a legitimate capability for performance monitoring (e.g., GPU access). There are no dangerous commands, network requests, obfuscated code, or any indication of a supply-chain attack. The file follows normal packaging practices for a system service.
</details>
<evidence></evidence>
<summary>Standard systemd service unit, no security issues.</summary>
</security_assessment>

[9/13] Reviewing PKGBUILD, ollama.install...
+ Reviewed ollama.service. Status: SAFE -- Standard systemd service unit, no security issues.
[9/13] Reviewing PKGBUILD, ollama.install, sysusers.conf...
LLM auditresponse for ollama.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The `.install` file contains standard package hooks (`pre_install`, `post_install`, etc.) that are typical for Arch Linux packages. The only commands run are `sudo setcap cap_perfmon+ep /usr/bin/ollama` in the `post_install` and `post_upgrade` hooks. This sets a Linux capability to allow the Ollama binary to use performance monitoring, which is a legitimate capability needed by the application (e.g., for GPU performance monitoring). The use of `sudo` is redundant during package installation (which runs as root) but not harmful. There is no evidence of any malicious behavior: no network requests, obfuscated code, unexpected file operations, or backdoors. This file follows standard packaging practices.
</details>
<evidence></evidence>
<summary>Standard install hooks, no malicious code.</summary>
</security_assessment>

[10/13] Reviewing PKGBUILD, sysusers.conf...
+ Reviewed ollama.install. Status: SAFE -- Standard install hooks, no malicious code.
[10/13] Reviewing PKGBUILD, sysusers.conf, tmpfiles.d...
LLM auditresponse for sysusers.conf:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard systemd sysusers configuration file that creates a dedicated system group and user for the ollama service. This is a typical and expected practice for packages that run as a service, ensuring proper privilege separation. The user is created with `u!` (meaning the user will not be created if it already exists) and a specified home directory. There is no obfuscated code, network requests, or suspicious operations. The content is entirely benign and follows standard packaging conventions.
</details>
<evidence></evidence>
<summary>Standard sysusers config for service user.</summary>
</security_assessment>

[11/13] Reviewing PKGBUILD, tmpfiles.d...
+ Reviewed sysusers.conf. Status: SAFE -- Standard sysusers config for service user.
LLM auditresponse for tmpfiles.d:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard systemd tmpfiles.d configuration snippet intended to create the `/var/lib/ollama` directory with specified permissions and ownership upon boot or on first use. This is a routine and expected packaging practice for daemon services that require a state directory. The `Q` action is commonly used in such snippets to create a directory with quota support (though the quota argument is omitted here, making it functionally equivalent to `d` in many contexts). There is no obfuscation, no network activity, no execution of untrusted code, and no tampering with system files outside the application's scope. This file presents no security threat.
</details>
<evidence></evidence>
<summary>Standard tmpfiles.d configuration, no security issues.</summary>
</security_assessment>

[12/13] Reviewing PKGBUILD...
+ Reviewed tmpfiles.d. Status: SAFE -- Standard tmpfiles.d configuration, no security issues.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD is a standard AUR package definition for building ollama binary variants from official GitHub releases. All source files are pinned with SHA256 checksums (including the binary tarballs). There are no unexpected network requests, no obfuscated or encoded commands, no attempts to exfiltrate data, and no code execution from untrusted sources. The package functions only copy prebuilt binaries and configuration files into the package directory. This file exhibits no signs of a supply-chain attack or malicious behavior.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD with no malicious indicators found.</summary>
</security_assessment>

[13/13] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD with no malicious indicators found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 34,760
  Completion Tokens: 4,440
  Total Tokens: 39,200
  Total Cost: $0.003739
  Execution Time: 146.49 seconds

Final Status: SAFE


No issues found.
