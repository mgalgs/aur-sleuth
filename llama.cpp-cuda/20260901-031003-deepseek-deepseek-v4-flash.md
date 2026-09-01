---
package: llama.cpp-cuda
pkgver: b10729
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: b9e20f728bbe0de1871ebaca31738c802edc31f8
prompt_tokens: 17680
completion_tokens: 2622
total_tokens: 20302
cost: 0.00185501008
execution_time: 198.01
files_reviewed: 6
files_skipped: 0
maintainer_files: 6
source_fetch: ok
upstream_files: 3518
upstream_named_files: 1
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-01T03:10:02Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard AUR .gitignore; benign repository maintenance file. No security concerns.
  - file: .nvchecker.toml
    status: safe
    summary: Standard nvchecker config checking official llama.cpp upstream repository; no malicious behavior.
  - file: .SRCINFO
    status: safe
    summary: Standard .SRCINFO metadata, no security issues.
  - file: llama.cpp.conf
    status: safe
    summary: Benign configuration file, no security concerns.
  - file: llama.cpp.service
    status: safe
    summary: Standard systemd service file, no malicious content.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD, source pinned, no malicious indicators.
---

Cloning https://aur.archlinux.org/llama.cpp-cuda.git...
Cloned llama.cpp-cuda
Analyzing llama.cpp-cuda AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only variable assignments, arrays (source, sha256sums, depends, etc.), and function definitions (prepare, build, package). The source array points to the official upstream tarball from github.com/ggml-org/llama.cpp and two local configuration files. No top-level code executes external commands or includes obfuscated payloads. The pkgver() function is not defined, so no code runs during version generation beyond the static variable assignment. During `makepkg --nobuild --nodeps --noprepare`, the PKGBUILD is sourced, sources are fetched and extracted, but no malicious actions occur. The sha256sums are provided and valid; even if they were SKIP, that would not be grounds to fail this gate. No suspicious network destinations or dangerous operations are present in the global scope.
</details>
<evidence>
</evidence>
<summary>No global-level malicious code; fetching sources is safe.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No global-level malicious code; fetching sources is safe.
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Note: the PKGBUILD names 1 file(s) in the downloaded sources (src/llama.cpp-b10729/convert_hf_to_gguf.py); they are upstream content and were not reviewed.
Reviewing the 6 file(s) in the AUR repository. The 3518 downloaded file(s) are upstream content, outside the threat model, and are not read.
Reviewing the AUR repository's files...
[0/6] Reviewing .SRCINFO...
[0/6] Reviewing .SRCINFO, .gitignore...
[0/6] Reviewing .SRCINFO, .gitignore, .nvchecker.toml...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.gitignore` file used in AUR git repositories. It excludes all files except the essential packaging files (`PKGBUILD`, `.SRCINFO`, `.gitignore`, `.nvchecker.toml`) and two package-specific files (`llama.cpp.conf`, `llama.cpp.service`). This is a routine and benign maintenance practice that keeps the repository clean. There is no obfuscation, no network activity, no file manipulation, and no executable content. Nothing here deviates from standard packaging practices or poses any security risk.
</details>
<evidence>
</evidence>
<summary>
Standard AUR .gitignore; benign repository maintenance file. No security concerns.</summary>
</security_assessment>

[0/6] Reviewing .SRCINFO, .gitignore, .nvchecker.toml, PKGBUILD...
[1/6] Reviewing .SRCINFO, .nvchecker.toml, PKGBUILD...
+ Reviewed .gitignore. Status: SAFE -- Standard AUR .gitignore; benign repository maintenance file. No security concerns.
LLM auditresponse for .nvchecker.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard configuration file for `nvchecker`, a tool that checks upstream projects for new versions. It specifies a Git source pointing to the official llama.cpp GitHub repository and uses a regular expression (`b\d+`) to match release tags such as `b1234`. No code execution, downloads outside the package's own upstream, file modifications, or suspicious network behavior is present. The configuration is consistent with normal AUR version-checking practices.
</details>
<evidence></evidence>
<summary>Standard nvchecker config checking official llama.cpp upstream repository; no malicious behavior.</summary>
</security_assessment>

[1/6] Reviewing .SRCINFO, .nvchecker.toml, PKGBUILD, llama.cpp.conf...
[2/6] Reviewing .SRCINFO, PKGBUILD, llama.cpp.conf...
+ Reviewed .nvchecker.toml. Status: SAFE -- Standard nvchecker config checking official llama.cpp upstream repository; no malicious behavior.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard .SRCINFO metadata file for the llama.cpp-cuda AUR package. It contains only declarative fields (package name, version, description, dependencies, sources, checksums, etc.) and no executable code, scripts, or instructions. The sources point to the legitimate upstream repository on GitHub (ggml-org/llama.cpp) with pinned version tags and SHA256 checksums provided. There are no suspicious network requests, obfuscated content, or deviations from normal packaging practices. No evidence of malicious or supply-chain attack behavior.
</details>
<evidence>
</evidence>
<summary>Standard .SRCINFO metadata, no security issues.</summary>
</security_assessment>

[2/6] Reviewing .SRCINFO, PKGBUILD, llama.cpp.conf, llama.cpp.service...
[3/6] Reviewing PKGBUILD, llama.cpp.conf, llama.cpp.service...
+ Reviewed .SRCINFO. Status: SAFE -- Standard .SRCINFO metadata, no security issues.
LLM auditresponse for llama.cpp.conf:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard configuration file for the llama.cpp application. It sets an environment variable `LLAMA_ARGS` to an empty string. There is no executable code, network requests, file operations, or any other potentially malicious behavior. The file is entirely benign and serves only as a placeholder for user configuration.
</details>
<evidence></evidence>
<summary>Benign configuration file, no security concerns.</summary>
</security_assessment>

[4/6] Reviewing PKGBUILD, llama.cpp.service...
+ Reviewed llama.cpp.conf. Status: SAFE -- Benign configuration file, no security concerns.
LLM auditresponse for llama.cpp.service:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard systemd service unit file for the llama.cpp server. It specifies the service description, execution path, environment file, and restart behavior. There are no signs of malicious activity: no network requests, no downloads, no execution of arbitrary code, no obfuscation, no unexpected file operations. The service uses the intended binary `/usr/bin/llama-server` and reads arguments from `/etc/conf.d/llama.cpp`, which is a standard configuration pattern for Arch Linux packages. The file conforms to normal packaging practices and contains no security issues.
</details>
<evidence>
</evidence>
<summary>Standard systemd service file, no malicious content.</summary>
</security_assessment>

[5/6] Reviewing PKGBUILD...
+ Reviewed llama.cpp.service. Status: SAFE -- Standard systemd service file, no malicious content.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard AUR packaging practices for building `llama.cpp` from source with CUDA support. The source is fetched from the project's official GitHub repository using a pinned version tag (`b10729`), and all three source files have SHA-256 checksums, ensuring integrity at download time. The build process uses CMake with reasonable flags for CUDA and CUDNN support, and the install step copies the license, a configuration file, and a systemd service file into the package directory. There are no obfuscated commands, no unexpected network requests (the only `https://` URL is the project's own release archive), and no operations that deviate from normal packaging workflow. The `LLAMA_BUILD_EXTRA_ARGS` variable allows user-provided flags but is passed directly to CMake; this is a common pattern for customization and does not introduce a supply-chain risk.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD, source pinned, no malicious indicators.</summary>
</security_assessment>

[6/6] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD, source pinned, no malicious indicators.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 17,680
  Completion Tokens: 2,622
  Total Tokens: 20,302
  Total Cost: $0.001855
  Execution Time: 198.01 seconds

Final Status: SAFE


No issues found.
