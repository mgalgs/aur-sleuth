---
package: ollama-cuda13-bin
pkgbase: ollama-bin
pkgver: 0.33.2
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 3e318911529c43138ec6bdba0bfcb56907607021
prompt_tokens: 34932
completion_tokens: 5747
total_tokens: 40679
cost: 0.00397777968
execution_time: 194.0
files_reviewed: 13
files_skipped: 0
maintainer_files: 13
source_fetch: ok
upstream_files: 63
upstream_named_files: 1
unpinned_sources: 0
date: 2026-08-29T03:19:21Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard .gitignore file with no security concerns.
  - file: .SRCINFO
    status: safe
    summary: Standard .SRCINFO with verified upstream sources.
  - file: ollama-cuda.conf
    status: safe
    summary: Plain CUDA environment config, no malicious content.
  - file: .nvchecker.toml
    status: safe
    summary: Standard nvchecker configuration for tracking upstream GitHub releases; no security issues.
  - file: ollama-cuda.service
    status: safe
    summary: Standard systemd service unit with environment file directive.
  - file: ollama-vulkan.conf
    status: safe
    summary: Configuration file; no malicious content found.
  - file: ollama-vulkan.service
    status: safe
    summary: Standard systemd EnvironmentFile config, no risk.
  - file: ollama.install
    status: safe
    summary: Standard capability setting, no malicious behavior.
  - file: ollama.service
    status: safe
    summary: Standard systemd service unit, no security issues.
  - file: ollama.conf
    status: safe
    summary: Configuration file with no malicious content.
  - file: sysusers.conf
    status: safe
    summary: Standard sysusers config, no malicious content.
  - file: PKGBUILD
    status: safe
    summary: "Benign split PKGBUILD: pinned upstream tarballs, checksums, standard install-only operations."
  - file: tmpfiles.d
    status: safe
    summary: Standard tmpfiles.d configuration, no security issues.
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
The PKGBUILD contains only variable assignments and function definitions at the top level, with no command substitutions or code that executes when sourced. All `source` entries point to the official ollama GitHub repository (raw.githubusercontent.com and github.com/releases), and no `pkgver()` function is present. There are no immediate execution risks during `makepkg --nobuild --nodeps --noprepare` or `makepkg --printsrcinfo`. The only code that runs during sourcing is benign variable expansion.
</details>
<evidence></evidence>
<summary>No dangerous top-level code or source URLs.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous top-level code or source URLs.
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
The `.gitignore` file is a standard Git ignore file used to exclude certain files from version control. It specifies that all files are ignored except for those with `.d`, `.conf`, `.service`, `.install` extensions, and the files `.gitignore`, `PKGBUILD`, `.SRCINFO`, and `.nvchecker.toml`. This is normal packaging practice and contains no executable code, network requests, or any suspicious content. There is no evidence of malicious behavior.
</details>
<evidence></evidence>
<summary>Standard .gitignore file with no security concerns.</summary>
</security_assessment>

[0/13] Reviewing .SRCINFO, .gitignore, .nvchecker.toml, PKGBUILD...
[1/13] Reviewing .SRCINFO, .nvchecker.toml, PKGBUILD...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore file with no security concerns.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard `.SRCINFO` metadata file for the `ollama-cuda13-bin` AUR package. It contains only package definitions, dependencies, source URLs, and checksums. All source URLs point to the official ollama GitHub repository (raw content and release tarballs). All checksums are explicitly provided (none are `SKIP`). There is no executable code, no obfuscated content, and no references to unexpected or suspicious network destinations. The file does not perform any operations; it is purely declarative metadata used by the Arch build system.
</details>
<evidence>
</evidence>
<summary>Standard .SRCINFO with verified upstream sources.</summary>
</security_assessment>

[1/13] Reviewing .SRCINFO, .nvchecker.toml, PKGBUILD, ollama-cuda.conf...
[2/13] Reviewing .nvchecker.toml, PKGBUILD, ollama-cuda.conf...
+ Reviewed .SRCINFO. Status: SAFE -- Standard .SRCINFO with verified upstream sources.
LLM auditresponse for ollama-cuda.conf:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a plain configuration file setting CUDA environment variables for Ollama optimization. It contains no executable code, network requests, obfuscation, or system modification directives. All entries are standard CUDA environment settings (device visibility, cache paths, logging) typical for GPU-accelerated applications. No evidence of malicious intent or supply-chain attack is present.</details>
<evidence></evidence>
<summary>Plain CUDA environment config, no malicious content.</summary>
</security_assessment>

[3/13] Reviewing .nvchecker.toml, PKGBUILD...
+ Reviewed ollama-cuda.conf. Status: SAFE -- Plain CUDA environment config, no malicious content.
[3/13] Reviewing .nvchecker.toml, PKGBUILD, ollama-cuda.service...
LLM auditresponse for .nvchecker.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a configuration file for `nvchecker`, a tool used by AUR maintainers to monitor upstream project releases and automatically update package versions. It defines a source named `ollama-bin` that checks the GitHub repository `ollama/ollama` for the latest release with a `v` version prefix.

There is no malicious behavior in this file. It performs no network requests by itself outside of nvchecker's intended upstream release checking, does not download or execute code, contains no obfuscation, and does not modify system files. Following unverified upstream release tags is normal packaging practice and does not constitute a supply-chain attack.
</details>
<evidence>
</evidence>
<summary>
Standard nvchecker configuration for tracking upstream GitHub releases; no security issues.</summary>
</security_assessment>

[4/13] Reviewing PKGBUILD, ollama-cuda.service...
+ Reviewed .nvchecker.toml. Status: SAFE -- Standard nvchecker configuration for tracking upstream GitHub releases; no security issues.
[4/13] Reviewing PKGBUILD, ollama-cuda.service, ollama-vulkan.conf...
LLM auditresponse for ollama-cuda.service:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a systemd service unit file that specifies an environment file. The `-` prefix before the path indicates the file is optional (ignored if missing). This is a standard, benign configuration directive. No dangerous commands, network requests, obfuscation, or unexpected behavior is present. The file contains only one line and is consistent with normal packaging practices.
</details>
<evidence></evidence>
<summary>Standard systemd service unit with environment file directive.</summary>
</security_assessment>

[4/13] Reviewing PKGBUILD, ollama-cuda.service, ollama-vulkan.conf, ollama-vulkan.service...
[5/13] Reviewing PKGBUILD, ollama-vulkan.conf, ollama-vulkan.service...
+ Reviewed ollama-cuda.service. Status: SAFE -- Standard systemd service unit with environment file directive.
LLM auditresponse for ollama-vulkan.conf:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a plain configuration file for the Ollama application. It sets two environment variables: `OLLAMA_VULKAN=1` to enable experimental Vulkan support, and `GGML_VK_VISIBLE_DEVICES=0,1,2,3` to specify which GPU devices to use. There is no executable code, no network requests, no obfuscation, and no system modifications beyond what is standard for an application configuration file. The comments reference official Ollama documentation, which is expected behavior. No security issues are present.
</details>
<evidence></evidence>
<summary>Configuration file; no malicious content found.</summary>
</security_assessment>

[6/13] Reviewing PKGBUILD, ollama-vulkan.service...
+ Reviewed ollama-vulkan.conf. Status: SAFE -- Configuration file; no malicious content found.
[6/13] Reviewing PKGBUILD, ollama-vulkan.service, ollama.conf...
LLM auditresponse for ollama-vulkan.service:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a systemd service unit snippet that only specifies an optional environment file (`-` prefix means failure to read is ignored). This is a standard and non-malicious pattern used to allow users to configure environment variables for the service (e.g., proxies, paths). No commands, network access, obfuscation, or unexpected operations are present. There are no security concerns.
</details>
<evidence></evidence>
<summary>Standard systemd EnvironmentFile config, no risk.</summary>
</security_assessment>

[6/13] Reviewing PKGBUILD, ollama-vulkan.service, ollama.conf, ollama.install...
[7/13] Reviewing PKGBUILD, ollama.conf, ollama.install...
+ Reviewed ollama-vulkan.service. Status: SAFE -- Standard systemd EnvironmentFile config, no risk.
LLM auditresponse for ollama.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The install script is minimal and performs only a single operation: setting a Linux capability (`cap_perfmon`) on the ollama binary using `sudo setcap`. This is a standard packaging practice to grant the binary the necessary privileges for performance monitoring hardware access, which is consistent with Ollama's functionality. There is no obfuscation, no network activity, no file exfiltration, no execution of untrusted code, and no deviation from expected packaging behavior. The use of `sudo` is redundant when run as root but not malicious.
</details>
<evidence></evidence>
<summary>Standard capability setting, no malicious behavior.</summary>
</security_assessment>

[7/13] Reviewing PKGBUILD, ollama.conf, ollama.install, ollama.service...
[8/13] Reviewing PKGBUILD, ollama.conf, ollama.service...
+ Reviewed ollama.install. Status: SAFE -- Standard capability setting, no malicious behavior.
LLM auditresponse for ollama.service:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard systemd service unit file for the Ollama application. It defines a service that runs `/usr/bin/ollama serve` with appropriate security hardening options (`PrivateTmp=yes`, `ProtectHome=yes`, `ProtectSystem=full`). The `AmbientCapabilities=CAP_PERFMON` is a legitimate capability that may be required for the application's performance monitoring features. There are no network requests, obfuscated commands, or suspicious operations. The file follows normal AUR packaging practices and contains no evidence of a supply-chain attack or malicious behavior.
</details>
<evidence></evidence>
<summary>Standard systemd service unit, no security issues.</summary>
</security_assessment>

[8/13] Reviewing PKGBUILD, ollama.conf, ollama.service, sysusers.conf...
[9/13] Reviewing PKGBUILD, ollama.conf, sysusers.conf...
+ Reviewed ollama.service. Status: SAFE -- Standard systemd service unit, no security issues.
LLM auditresponse for ollama.conf:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard environment configuration file for the Ollama application. It sets variables such as `OLLAMA_HOST`, `OLLAMA_KEEP_ALIVE`, `OLLAMA_LOAD_TIMEOUT`, and others. There are no network requests, execution of external commands, or obfuscated code. All values are plain strings or numbers. This is a normal packaging practice and presents no security concerns.
</details>
<evidence></evidence>
<summary>Configuration file with no malicious content.</summary>
</security_assessment>

[9/13] Reviewing PKGBUILD, ollama.conf, sysusers.conf, tmpfiles.d...
[10/13] Reviewing PKGBUILD, sysusers.conf, tmpfiles.d...
+ Reviewed ollama.conf. Status: SAFE -- Configuration file with no malicious content.
LLM auditresponse for sysusers.conf:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a systemd sysusers configuration file, which is a standard mechanism for creating system users and groups during package installation. It defines a group `ollama` and a user `ollama` with a home directory at `/var/lib/ollama`. The `&quot;` is an HTML entity for a double quote, which is a minor formatting issue but not evidence of malicious intent. There is no executable code, no network requests, no obfuscation, and no deviation from normal packaging practices. The file performs only its intended function of setting up a dedicated system user for the ollama service.
</details>
<evidence></evidence>
<summary>Standard sysusers config, no malicious content.</summary>
</security_assessment>

[11/13] Reviewing PKGBUILD, tmpfiles.d...
+ Reviewed sysusers.conf. Status: SAFE -- Standard sysusers config, no malicious content.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a standard split-package recipe for the official Ollama binary release. All source URLs point to the upstream Ollama GitHub repository (github.com/ollama/ollama and raw.githubusercontent.com/ollama/ollama) at the pinned version v0.33.2. Every source, including the per-architecture binary tarballs, has a sha256 checksum; no checksums are set to SKIP.

The package functions contain only normal packaging operations: copying the upstream prebuilt binary and libraries into pkgdir, installing configuration files, systemd unit and drop-in files, sysusers/tmpfiles configuration, license, and documentation. There is no prepare() or build() step, no eval, base64, curl, wget, or other download-and-execute pattern, and no writes outside pkgdir. Nothing in this file suggests injected malicious code or supply-chain tampering.
</details>
<evidence></evidence>
<summary>Benign split PKGBUILD: pinned upstream tarballs, checksums, standard install-only operations.</summary>
</security_assessment>

[12/13] Reviewing tmpfiles.d...
+ Reviewed PKGBUILD. Status: SAFE -- Benign split PKGBUILD: pinned upstream tarballs, checksums, standard install-only operations.
LLM auditresponse for tmpfiles.d:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a systemd tmpfiles.d configuration snippet. It contains a single line instructing systemd to create the directory `/var/lib/ollama` with owner `ollama`, group `ollama`, and permissions `0755`. This is standard packaging practice for ensuring the application's data directory exists with appropriate ownership. There is no executable code, no network requests, no obfuscation, and no deviation from normal packaging behavior. The file is safe.
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
  Prompt Tokens: 34,932
  Completion Tokens: 5,747
  Total Tokens: 40,679
  Total Cost: $0.003978
  Execution Time: 194.00 seconds

Final Status: SAFE


No issues found.
