---
package: ollama-cuda12-bin
pkgbase: ollama-bin
pkgver: 0.33.0
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: bf65c6be33eadea3455007f8db36db9ddf76ab3c
prompt_tokens: 30895
completion_tokens: 4365
total_tokens: 35260
cost: 0.003511012750
execution_time: 170.18
files_reviewed: 11
files_skipped: 2
maintainer_files: 13
upstream_files: 63
upstream_named_files: 1
unpinned_sources: 0
date: 2026-08-26T07:46:35Z
file_verdicts:
  - file: .nvchecker.toml
    status: safe
    summary: Standard nvchecker config; no security issues.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata, no security issues.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD for Ollama, no malicious content.
  - file: ollama-cuda.conf
    status: safe
    summary: Standard CUDA configuration file; no malicious content.
  - file: ollama-vulkan.conf
    status: safe
    summary: Configuration file with standard environment variables, no security concerns.
  - file: ollama-cuda.service
    status: safe
    summary: Standard systemd service unit file, no malicious content.
  - file: ollama.conf
    status: safe
    summary: Standard Ollama configuration file, no security concerns.
  - file: ollama-vulkan.service
    status: safe
    summary: Standard systemd service file, no malicious content.
  - file: ollama.install
    status: safe
    summary: Standard capability configuration for ollama binary.
  - file: ollama.service
    status: safe
    summary: Standard systemd service file with security hardening.
  - file: tmpfiles.d
    status: skipped
    summary: "Skipping binary file: tmpfiles.d"
  - file: sysusers.conf
    status: skipped
    summary: "Skipping binary file: sysusers.conf"
  - file: .gitignore
    status: safe
    summary: Standard .gitignore, no malicious content.
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
The PKGBUILD contains only variable assignments and function definitions in its global scope. There is no `pkgver()` function, and no command substitution or code execution occurs when the file is sourced. The `source` array entries point to the official upstream GitHub repository (ollama/ollama) and its raw content, which is standard and expected. All checksums are provided (not SKIP). No code runs during `makepkg --nobuild --nodeps --noprepare` or `makepkg --printsrcinfo` beyond fetching the sources and parsing the variable definitions, which is safe. The `package_*()` functions are only executed during the packaging phase, which is not triggered by these commands. Therefore, no malicious behavior is possible in this narrow scope.
</details>
<evidence></evidence>
<summary>No malicious code executes during source fetch or PKGBUILD parsing.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious code executes during source fetch or PKGBUILD parsing.
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
The file is a standard nvchecker configuration used to track upstream releases of the `ollama` project on GitHub. It contains no executable code, no obfuscation, no suspicious network destinations, and no system modifications. The configuration simply specifies the source as GitHub and the repository name &#x27;ollama/ollama&#x27; with the latest release tag prefix &#x27;v&#x27;. This is exactly what one would expect for a packaging tool that monitors upstream releases.
</details>
<evidence>
</evidence>
<summary>Standard nvchecker config; no security issues.</summary>
</security_assessment>

[1/13] Reviewing .SRCINFO, .gitignore...
+ Reviewed .nvchecker.toml. Status: SAFE -- Standard nvchecker config; no security issues.
[1/13] Reviewing .SRCINFO, .gitignore, PKGBUILD...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The .SRCINFO file is a standard metadata file for an AUR package. It defines the package base and subpackages, lists dependencies, and specifies sources. All sources are pulled from the official ollama GitHub repository using pinned version tags (v0.33.0) and have corresponding SHA256 checksums. The local configuration and service files are typical for a system daemon package. There are no signs of malicious activity: no obfuscated code, no suspicious network destinations, no unexpected system modifications, and no execution of arbitrary commands. The file is purely declarative and follows standard packaging practices.
</details>
<evidence>
</evidence>
<summary>Standard AUR metadata, no security issues.</summary>
</security_assessment>

[1/13] Reviewing .SRCINFO, .gitignore, PKGBUILD, ollama-cuda.conf...
[2/13] Reviewing .gitignore, PKGBUILD, ollama-cuda.conf...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata, no security issues.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard Arch Linux packaging practices. All source files are fetched from the official Ollama GitHub repository (the project's own upstream), pinned to a specific version tag `v${pkgver}`. Checksums are provided for all sources (not SKIP), verifying integrity. The package functions (`package_ollama-bin`, `package_ollama-cuda12-bin`, etc.) only perform routine file installation operations: copying binaries, libraries, configuration files, systemd service files, and documentation into the package directory. No dangerous commands (curl, wget, eval, base64, git pull, etc.) are present. No obfuscated code, network exfiltration, or unexpected system modifications are observed. The file is consistent with legitimate packaging for the Ollama LLM application.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD for Ollama, no malicious content.</summary>
</security_assessment>

[3/13] Reviewing .gitignore, ollama-cuda.conf...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD for Ollama, no malicious content.
[3/13] Reviewing .gitignore, ollama-cuda.conf, ollama-cuda.service...
LLM auditresponse for ollama-cuda.conf:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard environment configuration file for CUDA, setting variables such as `CUDA_VISIBLE_DEVICES`, `CUDA_CACHE_PATH`, and `CUDA_LOG_FILE`. It contains no executable code, no network requests, no obfuscation, and no unexpected system modifications. The content is entirely declarative and consistent with the purpose of the package (optimizing Ollama for CUDA). There is no evidence of a supply-chain attack or malicious intent.
</details>
<evidence>
</evidence>
<summary>Standard CUDA configuration file; no malicious content.</summary>
</security_assessment>

[4/13] Reviewing .gitignore, ollama-cuda.service...
+ Reviewed ollama-cuda.conf. Status: SAFE -- Standard CUDA configuration file; no malicious content.
[4/13] Reviewing .gitignore, ollama-cuda.service, ollama-vulkan.conf...
LLM auditresponse for ollama-vulkan.conf:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `ollama-vulkan.conf` is a plain configuration file containing two environment variable assignments. `OLLAMA_VULKAN=1` enables an experimental Vulkan feature in the Ollama server, as documented in the upstream FAQ. `GGML_VK_VISIBLE_DEVICES=0,1,2,3` specifies which Vulkan devices the application should use. There is no executable code, no network requests, no obfuscation, and no file operations. The content is entirely declarative and serves the stated purpose of the package. No security issues are present.
</details>
<evidence></evidence>
<summary>Configuration file with standard environment variables, no security concerns.</summary>
</security_assessment>

[4/13] Reviewing .gitignore, ollama-cuda.service, ollama-vulkan.conf, ollama-vulkan.service...
[5/13] Reviewing .gitignore, ollama-cuda.service, ollama-vulkan.service...
+ Reviewed ollama-vulkan.conf. Status: SAFE -- Configuration file with standard environment variables, no security concerns.
LLM auditresponse for ollama-cuda.service:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard systemd service unit file that loads environment variables from `/etc/ollama-cuda.conf`. The `-` prefix indicates the file is optional. There are no commands, network requests, or any other operations — it is purely declarative configuration. No security concerns.
</details>
<evidence></evidence>
<summary>Standard systemd service unit file, no malicious content.</summary>
</security_assessment>

[5/13] Reviewing .gitignore, ollama-cuda.service, ollama-vulkan.service, ollama.conf...
[6/13] Reviewing .gitignore, ollama-vulkan.service, ollama.conf...
+ Reviewed ollama-cuda.service. Status: SAFE -- Standard systemd service unit file, no malicious content.
LLM auditresponse for ollama.conf:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a plain configuration file for the Ollama application. It sets environment variables such as `OLLAMA_HOST`, `OLLAMA_KEEP_ALIVE`, `OLLAMA_LOAD_TIMEOUT`, and others to control the behavior of the Ollama server. There is no executable code, no network requests, no obfuscation, and no system modifications. The content is entirely standard and benign. The use of HTML entities like `&quot;` is likely a formatting artifact in the display; the actual file would contain plain double quotes. No security issues are present.
</details>
<evidence></evidence>
<summary>Standard Ollama configuration file, no security concerns.</summary>
</security_assessment>

[7/13] Reviewing .gitignore, ollama-vulkan.service...
+ Reviewed ollama.conf. Status: SAFE -- Standard Ollama configuration file, no security concerns.
[7/13] Reviewing .gitignore, ollama-vulkan.service, ollama.install...
LLM auditresponse for ollama-vulkan.service:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard systemd service unit that loads environment variables from an optional configuration file (`/etc/ollama-vulkan.conf`). The `-` prefix on `EnvironmentFile` indicates the file is not required, which is normal and not a security concern. There is no obfuscation, network activity, or unexpected behavior. The file is perfectly consistent with legitimate packaging practices.
</details>
<evidence></evidence>
<summary>Standard systemd service file, no malicious content.</summary>
</security_assessment>

[7/13] Reviewing .gitignore, ollama-vulkan.service, ollama.install, ollama.service...
[8/13] Reviewing .gitignore, ollama.install, ollama.service...
+ Reviewed ollama-vulkan.service. Status: SAFE -- Standard systemd service file, no malicious content.
LLM auditresponse for ollama.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard Arch Linux install script (`.install`) for the `ollama-cuda12-bin` package. The only active commands are `sudo setcap cap_perfmon+ep /usr/bin/ollama` in `post_install()` and `post_upgrade()`. This sets the `cap_perfmon` capability on the ollama binary, which is a Linux capability that allows the process to access performance monitoring hardware without root privileges. This is a legitimate configuration for applications that need to use hardware performance counters, such as AI/ML inference tools like ollama. The use of `sudo` is redundant (since the script runs as root anyway) but not harmful. There are no network requests, no obfuscated code, no file operations outside of the package's own binary, and no other suspicious behavior. The file is benign and follows standard packaging practices.
</details>
<evidence></evidence>
<summary>Standard capability configuration for ollama binary.</summary>
</security_assessment>

[9/13] Reviewing .gitignore, ollama.service...
+ Reviewed ollama.install. Status: SAFE -- Standard capability configuration for ollama binary.
[9/13] Reviewing .gitignore, ollama.service, sysusers.conf...
LLM auditresponse for ollama.service:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard systemd service unit for the Ollama service. It executes the expected binary `/usr/bin/ollama serve` as a non-root user (`ollama`), with appropriate security hardening options such as `PrivateTmp=yes`, `ProtectHome=yes`, and `ProtectSystem=full`. The `AmbientCapabilities=CAP_PERFMON` is a legitimate capability required for performance monitoring, which aligns with Ollama's functionality. There are no suspicious network requests, obfuscated code, or dangerous operations. The service file follows standard packaging practices and contains no evidence of malicious intent.
</details>
<evidence>
</evidence>
<summary>Standard systemd service file with security hardening.</summary>
</security_assessment>

[9/13] Reviewing .gitignore, ollama.service, sysusers.conf, tmpfiles.d...
[10/13] Reviewing .gitignore, sysusers.conf, tmpfiles.d...
+ Reviewed ollama.service. Status: SAFE -- Standard systemd service file with security hardening.
[11/13] Reviewing .gitignore, sysusers.conf...
! Reviewed tmpfiles.d. Status: SKIPPED -- Skipping binary file: tmpfiles.d
[12/13] Reviewing .gitignore...
! Reviewed sysusers.conf. Status: SKIPPED -- Skipping binary file: sysusers.conf
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.gitignore` file for an AUR package repository. It follows the common pattern of ignoring all files (`*`) except those explicitly whitelisted via negation patterns (e.g., `!PKGBUILD`). The whitelisted file types (`.d`, `.conf`, `.service`, `.install`, `.gitignore`, `PKGBUILD`, `.SRCINFO`, `.nvchecker.toml`) are all typical for AUR packaging. There is no executable code, network requests, obfuscation, or any other suspicious behavior. The file is purely a git configuration file and poses no security risk.
</details>
<evidence></evidence>
<summary>Standard .gitignore, no malicious content.</summary>
</security_assessment>

[13/13] Reviewing ...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore, no malicious content.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
(Skipped 2 files: tmpfiles.d, sysusers.conf)

API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 30,895
  Completion Tokens: 4,365
  Total Tokens: 35,260
  Total Cost: $0.003511
  Execution Time: 170.18 seconds

Final Status: SAFE


No issues found.


Audit Skips:

tmpfiles.d: [SKIPPED] Skipping binary file: tmpfiles.d

sysusers.conf: [SKIPPED] Skipping binary file: sysusers.conf
