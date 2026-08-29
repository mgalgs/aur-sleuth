---
package: ollama-cuda12-bin
pkgbase: ollama-bin
pkgver: 0.33.2
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 3e318911529c43138ec6bdba0bfcb56907607021
prompt_tokens: 34774
completion_tokens: 5015
total_tokens: 39789
cost: 0.00383880672
execution_time: 215.31
files_reviewed: 13
files_skipped: 0
maintainer_files: 13
source_fetch: ok
upstream_files: 63
upstream_named_files: 1
unpinned_sources: 0
date: 2026-08-29T03:19:43Z
file_verdicts:
  - file: .nvchecker.toml
    status: safe
    summary: Standard nvchecker config; no security issues.
  - file: .gitignore
    status: safe
    summary: Standard .gitignore file for AUR package.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD with no security issues.
  - file: ollama-cuda.service
    status: safe
    summary: Standard systemd service file, no security concerns.
  - file: ollama-cuda.conf
    status: safe
    summary: Standard CUDA environment config file, no security concerns.
  - file: ollama-vulkan.conf
    status: safe
    summary: Standard configuration file, no security issues.
  - file: ollama-vulkan.service
    status: safe
    summary: Standard systemd service file, no security issues.
  - file: ollama.conf
    status: safe
    summary: Configuration file with no malicious content.
  - file: ollama.install
    status: safe
    summary: Standard install script, only sets a capability, safe.
  - file: .SRCINFO
    status: safe
    summary: Standard package metadata file, no security concerns.
  - file: ollama.service
    status: safe
    summary: Standard systemd service file, no malicious content.
  - file: tmpfiles.d
    status: safe
    summary: Standard tmpfiles configuration for Ollama state directory.
  - file: sysusers.conf
    status: safe
    summary: Standard sysusers config for service account; no security issues.
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
The PKGBUILD only contains variable assignments and function definitions at the top level. No `pkgver()` function is defined. There are no top-level command substitutions, `eval`, `curl|bash`, or any other code that could execute during `makepkg --nobuild --nodeps --noprepare` or `makepkg --printsrcinfo`. All source URLs point to the official ollama GitHub repository. The binary tarballs are downloaded from official GitHub releases. No malicious behavior is present in the sourcing or source-fetching steps.
</details>
<evidence>
</evidence>
<summary>No malicious top-level code; sourcing and fetching are safe.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious top-level code; sourcing and fetching are safe.
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Note: the PKGBUILD names 1 file(s) in the downloaded sources (src/bin/ollama); they are upstream content and were not reviewed.
Reviewing the 13 file(s) in the AUR repository. The 63 downloaded file(s) are upstream content, outside the threat model, and are not read.
Reviewing the AUR repository's files...
[0/13] Reviewing .gitignore...
[0/13] Reviewing .gitignore, .SRCINFO...
[0/13] Reviewing .gitignore, .SRCINFO, .nvchecker.toml...
LLM auditresponse for .nvchecker.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `.nvchecker.toml` is a configuration file for the `nvchecker` tool, which automates checking for new upstream releases. It specifies that the package `ollama-bin` should monitor the GitHub repository `ollama/ollama` for the latest release, with a version prefix of `"v"`. This is a standard and expected practice in AUR packaging to keep packages up-to-date. There are no commands, network endpoints, file operations, or any other content that could be considered malicious. No security concerns.
</details>
<evidence>
</evidence>
<summary>Standard nvchecker config; no security issues.</summary>
</security_assessment>

[1/13] Reviewing .gitignore, .SRCINFO...
+ Reviewed .nvchecker.toml. Status: SAFE -- Standard nvchecker config; no security issues.
[1/13] Reviewing .gitignore, .SRCINFO, PKGBUILD...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.gitignore` file used in an AUR package repository. It ignores all files by default and then un-ignores file types and filenames that are commonly part of AUR packaging (`.d`, `.conf`, `.service`, `.install`, `.gitignore`, `PKGBUILD`, `.SRCINFO`, `.nvchecker.toml`). There is no malicious code, no commands, no network requests, and no obfuscation. It is a routine configuration file for version control and poses no security risk.
</details>
<evidence></evidence>
<summary>Standard .gitignore file for AUR package.</summary>
</security_assessment>

[1/13] Reviewing .gitignore, .SRCINFO, PKGBUILD, ollama-cuda.conf...
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard AUR packaging conventions. It fetches the ollama binary and libraries from the official GitHub releases with pinned checksums. All package functions only copy files into the package directory. There is no obfuscation, no unexpected network calls, no execution of untrusted code. Everything is consistent with the stated purpose of providing ollama binaries with optional GPU backends.
</details>
<evidence></evidence>
<summary>Standard AUR PKGBUILD with no security issues.</summary>
</security_assessment>

[2/13] Reviewing .SRCINFO, PKGBUILD, ollama-cuda.conf...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore file for AUR package.
[2/13] Reviewing .SRCINFO, PKGBUILD, ollama-cuda.conf, ollama-cuda.service...
[3/13] Reviewing .SRCINFO, ollama-cuda.conf, ollama-cuda.service...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD with no security issues.
LLM auditresponse for ollama-cuda.service:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard systemd service unit file. It loads an optional environment file from `/etc/ollama-cuda.conf`. The `-` prefix makes the file optional, so the service will start even if the file does not exist. There are no commands, network requests, or any other potentially malicious operations. The file is entirely benign and follows normal packaging practices for systemd services.
</details>
<evidence></evidence>
<summary>Standard systemd service file, no security concerns.</summary>
</security_assessment>

[3/13] Reviewing .SRCINFO, ollama-cuda.conf, ollama-cuda.service, ollama-vulkan.conf...
[4/13] Reviewing .SRCINFO, ollama-cuda.conf, ollama-vulkan.conf...
+ Reviewed ollama-cuda.service. Status: SAFE -- Standard systemd service file, no security concerns.
LLM auditresponse for ollama-cuda.conf:
<security_assessment>
<decision>SAFE</decision>
<details>
This file contains only CUDA environment variable definitions for Ollama optimization. It sets device visibility, ordering, launch blocking, module loading, cache size, cache path, and log file path. There is no executable code, no network requests, no obfuscation, and no system manipulation beyond standard environment variable configuration. The paths are typical for a system-wide CUDA cache and log directory. No security issues detected.
</details>
<evidence>
</evidence>
<summary>Standard CUDA environment config file, no security concerns.</summary>
</security_assessment>

[4/13] Reviewing .SRCINFO, ollama-cuda.conf, ollama-vulkan.conf, ollama-vulkan.service...
[5/13] Reviewing .SRCINFO, ollama-vulkan.conf, ollama-vulkan.service...
+ Reviewed ollama-cuda.conf. Status: SAFE -- Standard CUDA environment config file, no security concerns.
LLM auditresponse for ollama-vulkan.conf:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `ollama-vulkan.conf` is a plain configuration file that sets two environment variables for the Ollama application. `OLLAMA_VULKAN=1` enables Vulkan support (as documented in Ollama's FAQ), and `GGML_VK_VISIBLE_DEVICES=0,1,2,3` specifies which Vulkan devices to use. There is no executable code, no network requests, no obfuscation, and no suspicious operations. The content is consistent with standard application configuration and poses no security risk.
</details>
<evidence></evidence>
<summary>Standard configuration file, no security issues.</summary>
</security_assessment>

[5/13] Reviewing .SRCINFO, ollama-vulkan.conf, ollama-vulkan.service, ollama.conf...
[6/13] Reviewing .SRCINFO, ollama-vulkan.service, ollama.conf...
+ Reviewed ollama-vulkan.conf. Status: SAFE -- Standard configuration file, no security issues.
LLM auditresponse for ollama-vulkan.service:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard systemd service unit file for the Ollama-vulkan service. It only contains a `[Service]` section with an `EnvironmentFile` directive pointing to `/etc/ollama-vulkan.conf`, with a leading dash to indicate the file is optional. There are no dangerous commands, network requests, obfuscation, or any suspicious behavior. The file follows normal packaging practices for a systemd service.
</details>
<evidence></evidence>
<summary>Standard systemd service file, no security issues.</summary>
</security_assessment>

[7/13] Reviewing .SRCINFO, ollama.conf...
+ Reviewed ollama-vulkan.service. Status: SAFE -- Standard systemd service file, no security issues.
[7/13] Reviewing .SRCINFO, ollama.conf, ollama.install...
LLM auditresponse for ollama.conf:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `ollama.conf` is a simple configuration file containing environment variable assignments for the Ollama application. All variables are standard Ollama settings (host, timeouts, memory limits, parallelism, etc.). There are no commands, network requests, obfuscation, or file operations. The content is purely declarative and does not execute anything. The use of `&quot;` is just an HTML entity representation of double quotes, not an actual issue. This file poses no security risk.
</details>
<evidence></evidence>
<summary>Configuration file with no malicious content.</summary>
</security_assessment>

[8/13] Reviewing .SRCINFO, ollama.install...
+ Reviewed ollama.conf. Status: SAFE -- Configuration file with no malicious content.
[8/13] Reviewing .SRCINFO, ollama.install, ollama.service...
LLM auditresponse for ollama.install:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard Arch Linux package install script (`.install` file). It defines the usual hooks (`pre_install`, `post_install`, `pre_upgrade`, `post_upgrade`, `pre_remove`, `post_remove`). The only non-empty actions are in `post_install` and `post_upgrade`, which run `sudo setcap cap_perfmon+ep /usr/bin/ollama`. This sets the `cap_perfmon` Linux capability on the ollama binary, which is a legitimate operation to allow the application to use performance monitoring hardware counters. There is no evidence of malicious behavior: no network requests, no obfuscated code, no unexpected file modifications, and no exfiltration of data. The file is fully consistent with ordinary packaging practices.
</details>
<evidence></evidence>
<summary>Standard install script, only sets a capability, safe.</summary>
</security_assessment>

[8/13] Reviewing .SRCINFO, ollama.install, ollama.service, sysusers.conf...
[9/13] Reviewing .SRCINFO, ollama.service, sysusers.conf...
+ Reviewed ollama.install. Status: SAFE -- Standard install script, only sets a capability, safe.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard `.SRCINFO` metadata file for an Arch Linux package. It declares package metadata, source URLs (all pointing to the official ollama GitHub repository), checksums (SHA256) for all sources, dependencies, and split package definitions. There are no scripts, commands, or executable content in this file. All source URLs reference the official upstream project, and checksums are provided, which aligns with standard packaging practices. No obfuscated code, suspicious network requests, or unexpected file operations are present. The file is purely declarative and contains no runtime logic.
</details>
<evidence></evidence>
<summary>Standard package metadata file, no security concerns.</summary>
</security_assessment>

[10/13] Reviewing ollama.service, sysusers.conf...
+ Reviewed .SRCINFO. Status: SAFE -- Standard package metadata file, no security concerns.
[10/13] Reviewing ollama.service, sysusers.conf, tmpfiles.d...
LLM auditresponse for ollama.service:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard systemd service unit file for the Ollama application. It defines a service that runs `/usr/bin/ollama serve` with appropriate environment variables, a dedicated user/group, and security hardening options such as `PrivateTmp=yes`, `ProtectHome=yes`, and `ProtectSystem=full`. There is no obfuscated code, no network requests, no downloads, no unusual file operations, and no deviation from normal packaging practices. The file is perfectly routine and contains no evidence of a supply chain attack.
</details>
<evidence></evidence>
<summary>Standard systemd service file, no malicious content.</summary>
</security_assessment>

[11/13] Reviewing sysusers.conf, tmpfiles.d...
+ Reviewed ollama.service. Status: SAFE -- Standard systemd service file, no malicious content.
LLM auditresponse for tmpfiles.d:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard systemd tmpfiles.d configuration snippet that creates `/var/lib/ollama` with owner `ollama` and permissions `0755`. This is a routine packaging practice to set up a state directory for the application. No malicious or suspicious content is present.
</details>
<evidence></evidence>
<summary>Standard tmpfiles configuration for Ollama state directory.</summary>
</security_assessment>

[12/13] Reviewing sysusers.conf...
+ Reviewed tmpfiles.d. Status: SAFE -- Standard tmpfiles configuration for Ollama state directory.
LLM auditresponse for sysusers.conf:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard systemd sysusers configuration file. It defines a system group `ollama` (with no specific GID, using `-`) and a system user `ollama` with the `!` flag (meaning "do not create if already exists"), no UID, a comment string, and home directory `/var/lib/ollama`. This is a routine and expected practice for creating a service account for the ollama application. There is no obfuscation, no network requests, no file operations, and no execution of arbitrary code. The escaped quotes (`&quot;`) are a minor formatting artifact and do not affect the substance. The file is entirely safe.
</details>
<evidence></evidence>
<summary>Standard sysusers config for service account; no security issues.</summary>
</security_assessment>

[13/13] Reviewing ...
+ Reviewed sysusers.conf. Status: SAFE -- Standard sysusers config for service account; no security issues.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 34,774
  Completion Tokens: 5,015
  Total Tokens: 39,789
  Total Cost: $0.003839
  Execution Time: 215.31 seconds

Final Status: SAFE


No issues found.
