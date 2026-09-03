---
package: llama.cpp-cuda
pkgver: b10753
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: b9e20f728bbe0de1871ebaca31738c802edc31f8
prompt_tokens: 17598
completion_tokens: 2864
total_tokens: 20462
cost: 0.002066823556
execution_time: 134.77
files_reviewed: 6
files_skipped: 0
maintainer_files: 6
source_fetch: ok
upstream_files: 3520
upstream_named_files: 1
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-02T11:11:09Z
file_verdicts:
  - file: .nvchecker.toml
    status: safe
    summary: Standard version checker config, no security issues.
  - file: .gitignore
    status: safe
    summary: Standard .gitignore, no security concerns.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata; no security issues.
  - file: llama.cpp.conf
    status: safe
    summary: Empty environment variable config file, no risk.
  - file: llama.cpp.service
    status: safe
    summary: Standard systemd service file, no malicious content detected.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD, no security issues found.
---

Cloning https://aur.archlinux.org/llama.cpp-cuda.git...
Cloned llama.cpp-cuda
Analyzing llama.cpp-cuda AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD only contains standard variable assignments and function definitions in its global scope. There is no command substitution, obfuscated code, or network requests beyond the declared source array. The source entries point to the official GitHub release tarball and two local config/service files, all with pinned checksums. No `pkgver()` function is defined (the version is a static string), so nothing executes during sourcing. The `prepare()`, `build()`, and `package()` functions are defined but not executed during `makepkg --nobuild --nodeps --noprepare` or `makepkg --printsrcinfo`. Therefore, running these two commands is safe.
</details>
<evidence></evidence>
<summary>Safe to fetch sources and source PKGBUILD.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Safe to fetch sources and source PKGBUILD.
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Note: the PKGBUILD names 1 file(s) in the downloaded sources (src/llama.cpp-b10753/convert_hf_to_gguf.py); they are upstream content and were not reviewed.
Reviewing the 6 file(s) in the AUR repository. The 3520 downloaded file(s) are upstream content, outside the threat model, and are not read.
Reviewing the AUR repository's files...
[0/6] Reviewing .SRCINFO...
[0/6] Reviewing .SRCINFO, .gitignore...
[0/6] Reviewing .SRCINFO, .gitignore, .nvchecker.toml...
LLM auditresponse for .nvchecker.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a configuration for `nvchecker`, a tool used to monitor upstream releases. It defines the source as the official llama.cpp GitHub repository and specifies a regex to match version tags. There are no commands, network requests, or other operations that could be considered malicious. It is a standard and benign packaging helper file.
</details>
<evidence>

</evidence>
<summary>Standard version checker config, no security issues.</summary>
</security_assessment>

[1/6] Reviewing .SRCINFO, .gitignore...
+ Reviewed .nvchecker.toml. Status: SAFE -- Standard version checker config, no security issues.
[1/6] Reviewing .SRCINFO, .gitignore, PKGBUILD...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.gitignore` file for an AUR package. It ignores all files by default (`*`) and then un-ignores only the essential files needed for the package: `PKGBUILD`, `.SRCINFO`, `.gitignore`, `.nvchecker.toml`, `llama.cpp.conf`, and `llama.cpp.service`. This is a normal pattern used by many AUR maintainers to keep the repository clean and only track the necessary files. There is no malicious or obfuscated content, no network requests, no file operations outside of ignoring files, and no deviation from standard packaging practices.
</details>
<evidence></evidence>
<summary>Standard .gitignore, no security concerns.</summary>
</security_assessment>

[2/6] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore, no security concerns.
[2/6] Reviewing .SRCINFO, PKGBUILD, llama.cpp.conf...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard AUR `.SRCINFO` metadata file. It contains only declarative data: package name, version, dependencies, source URLs, and checksums. The source tarball is fetched from the official upstream GitHub repository (`https://github.com/ggml-org/llama.cpp`) using a pinned tag (`b10753`), and all three checksums are provided (none are `SKIP`). No executable code, network requests beyond the declared source, or obfuscated content is present. There is no evidence of malicious injection or supply-chain attack in this file.
</details>
<evidence></evidence>
<summary>Standard AUR metadata; no security issues.</summary>
</security_assessment>

[3/6] Reviewing PKGBUILD, llama.cpp.conf...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata; no security issues.
[3/6] Reviewing PKGBUILD, llama.cpp.conf, llama.cpp.service...
LLM auditresponse for llama.cpp.conf:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a simple configuration file that sets an empty environment variable `LLAMA_ARGS`. There is no executable code, no network requests, no file operations, or any other potentially dangerous behavior. It is a benign configuration file used to pass arguments to the llama.cpp application.
</details>
<evidence>
</evidence>
<summary>Empty environment variable config file, no risk.</summary>
</security_assessment>

[4/6] Reviewing PKGBUILD, llama.cpp.service...
+ Reviewed llama.cpp.conf. Status: SAFE -- Empty environment variable config file, no risk.
LLM auditresponse for llama.cpp.service:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard systemd service unit file for the llama.cpp server. It defines a simple service that reads an environment file from /etc/conf.d/llama.cpp and runs /usr/bin/llama-server with arguments from the $LLAMA_ARGS environment variable. It includes standard directives for restarts, reload behavior, and installation targets. There is no suspicious network activity, file manipulation, obfuscation, or any command that deviates from typical packaging practice. The file is entirely declarative and poses no security risk.
</details>
<evidence>
</evidence>
<summary>
Standard systemd service file, no malicious content detected.</summary>
</security_assessment>

[5/6] Reviewing PKGBUILD...
+ Reviewed llama.cpp.service. Status: SAFE -- Standard systemd service file, no malicious content detected.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard Arch Linux packaging practices for a CUDA-accelerated build of llama.cpp. The source tarball is fetched from the official upstream GitHub repository with a pinned version and valid SHA256 checksums. The build process uses CMake with standard options, and the installation copies files to the expected locations. There are no network requests beyond the declared source, no obfuscated code, no dangerous commands, and no attempts to exfiltrate data or modify system files outside the package scope. The use of an unquoted `$LLAMA_BUILD_EXTRA_ARGS` variable is a minor scripting hygiene issue but not a security threat. Overall, the file shows no evidence of malicious or supply-chain attack behavior.
</details>
<evidence>
</evidence>
<summary>Standard PKGBUILD, no security issues found.</summary>
</security_assessment>

[6/6] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD, no security issues found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 17,598
  Completion Tokens: 2,864
  Total Tokens: 20,462
  Total Cost: $0.002067
  Execution Time: 134.77 seconds

Final Status: SAFE


No issues found.
