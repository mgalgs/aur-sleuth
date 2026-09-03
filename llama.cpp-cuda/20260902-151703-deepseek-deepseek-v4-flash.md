---
package: llama.cpp-cuda
pkgver: b10760
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: b9e20f728bbe0de1871ebaca31738c802edc31f8
prompt_tokens: 17522
completion_tokens: 2581
total_tokens: 20103
cost: 0.00194038936
execution_time: 71.0
files_reviewed: 6
files_skipped: 0
maintainer_files: 6
source_fetch: ok
upstream_files: 3520
upstream_named_files: 1
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-02T15:17:00Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard .gitignore file with no security concerns.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD; no malicious code found.
  - file: llama.cpp.conf
    status: safe
    summary: Benign configuration file with no security issues.
  - file: .SRCINFO
    status: safe
    summary: Standard package metadata file, no malicious content.
  - file: .nvchecker.toml
    status: safe
    summary: Standard nvchecker config, no security issues.
  - file: llama.cpp.service
    status: safe
    summary: Standard systemd service unit, no malicious content.
---

Cloning https://aur.archlinux.org/llama.cpp-cuda.git...
Cloned llama.cpp-cuda
Analyzing llama.cpp-cuda AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD is a standard AUR package for llama.cpp with CUDA support. The `source` array fetches the upstream tarball from the official GitHub repository (ggml-org/llama.cpp) and two local configuration files. All sources have pinned SHA256 checksums. The global scope contains only variable assignments and array declarations; there are no dangerous command substitutions or code executions. The `pkgver()` function is not defined, so no code runs during PKGBUILD sourcing beyond variable assignments. The two commands (`makepkg --nobuild --nodeps --noprepare` and `makepkg --printsrcinfo`) will safely download the tarball and extract it, then print source info. No malicious behavior is present in the scope that executes during these commands.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD, safe for source fetch.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Standard PKGBUILD, safe for source fetch.
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Note: the PKGBUILD names 1 file(s) in the downloaded sources (src/llama.cpp-b10760/convert_hf_to_gguf.py); they are upstream content and were not reviewed.
Reviewing the 6 file(s) in the AUR repository. The 3520 downloaded file(s) are upstream content, outside the threat model, and are not read.
Reviewing the AUR repository's files...
[0/6] Reviewing .SRCINFO...
[0/6] Reviewing .SRCINFO, .gitignore...
[0/6] Reviewing .SRCINFO, .gitignore, .nvchecker.toml...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard `.gitignore` file for a Git repository.  It ignores all files (`*`) and then un-ignores specific files (`PKGBUILD`, `.SRCINFO`, `.gitignore`, `.nvchecker.toml`, `llama.cpp.conf`, `llama.cpp.service`) using the negation pattern `!`.  There is no executable code, no network operations, no file system modifications, and no indication of malicious intent.  It is a routine packaging file.
</details>
<evidence></evidence>
<summary>Standard .gitignore file with no security concerns.</summary>
</security_assessment>

[0/6] Reviewing .SRCINFO, .gitignore, .nvchecker.toml, PKGBUILD...
[1/6] Reviewing .SRCINFO, .nvchecker.toml, PKGBUILD...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore file with no security concerns.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a standard AUR packaging recipe for building `llama.cpp` with NVIDIA CUDA support. It fetches the source from the official GitHub releases of `ggml-org/llama.cpp`, uses pinned checksums (not SKIP), and follows normal build and install procedures with CMake. There are no obfuscated commands, unexpected network requests, base64-encoded payloads, or attempts to exfiltrate data. The sourcing of `/etc/profile` in the build function is a routine way to pick up environment variables like `NVCC_CCBIN` for CUDA toolchain detection. The `LLAMA_BUILD_EXTRA_ARGS` variable is a standard user-configurable build option, not a supply-chain attack vector. All operations are confined to the expected build and install directory hierarchy. No evidence of malicious intent was found.
</details>
<evidence></evidence>
<summary>Standard AUR PKGBUILD; no malicious code found.</summary>
</security_assessment>

[1/6] Reviewing .SRCINFO, .nvchecker.toml, PKGBUILD, llama.cpp.conf...
[2/6] Reviewing .SRCINFO, .nvchecker.toml, llama.cpp.conf...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD; no malicious code found.
LLM auditresponse for llama.cpp.conf:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a simple configuration file for the llama.cpp application. It defines a single environment variable `LLAMA_ARGS` with an empty string value. The double quotes are HTML-encoded (`&quot;`), which is a minor formatting quirk but not a security concern. There are no commands, network operations, file modifications, or any other potentially dangerous content. The file is entirely benign and serves only to set default arguments for the program.
</details>
<evidence></evidence>
<summary>Benign configuration file with no security issues.</summary>
</security_assessment>

[3/6] Reviewing .SRCINFO, .nvchecker.toml...
+ Reviewed llama.cpp.conf. Status: SAFE -- Benign configuration file with no security issues.
[3/6] Reviewing .SRCINFO, .nvchecker.toml, llama.cpp.service...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The .SRCINFO file is a metadata descriptor for the AUR package. It declares the package name, version, dependencies, and source URLs. All source files are fetched from the official llama.cpp GitHub repository, and SHA256 checksums are provided for each source (none are set to SKIP). There is no executable code, obfuscation, or suspicious network destinations. The file follows standard AUR packaging conventions.
</details>
<evidence></evidence>
<summary>Standard package metadata file, no malicious content.</summary>
</security_assessment>

[4/6] Reviewing .nvchecker.toml, llama.cpp.service...
+ Reviewed .SRCINFO. Status: SAFE -- Standard package metadata file, no malicious content.
LLM auditresponse for .nvchecker.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a configuration for nvchecker, a tool that checks for new upstream versions. It points to the official `llama.cpp` git repository on GitHub and uses a regular expression to match version tags (like `b\d+` for pre-release builds). There is no obfuscation, no external network requests beyond the legitimate upstream, no code execution, and no file manipulation. It is a standard packaging helper file with no malicious behavior.
</details>
<evidence>
</evidence>
<summary>Standard nvchecker config, no security issues.</summary>
</security_assessment>

[5/6] Reviewing llama.cpp.service...
+ Reviewed .nvchecker.toml. Status: SAFE -- Standard nvchecker config, no security issues.
LLM auditresponse for llama.cpp.service:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard systemd service unit for the llama.cpp server. It defines a simple service that starts `/usr/bin/llama-server` with arguments sourced from `/etc/conf.d/llama.cpp`. The content includes only standard systemd directives such as `Description`, `After`, `Type`, `EnvironmentFile`, `ExecStart`, `ExecReload`, `Restart`, and `Install`. There is no obfuscated code, network requests, file exfiltration, downloads, or execution of untrusted commands. The service follows standard packaging practices for Arch Linux AUR packages and does not exhibit any supply-chain attack indicators.
</details>
<evidence></evidence>
<summary>Standard systemd service unit, no malicious content.</summary>
</security_assessment>

[6/6] Reviewing ...
+ Reviewed llama.cpp.service. Status: SAFE -- Standard systemd service unit, no malicious content.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 17,522
  Completion Tokens: 2,581
  Total Tokens: 20,103
  Total Cost: $0.001940
  Execution Time: 71.00 seconds

Final Status: SAFE


No issues found.
