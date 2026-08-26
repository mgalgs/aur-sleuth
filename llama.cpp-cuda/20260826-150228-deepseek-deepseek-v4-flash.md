---
package: llama.cpp-cuda
pkgver: b10636
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: bf65c6be33eadea3455007f8db36db9ddf76ab3c
prompt_tokens: 17525
completion_tokens: 2499
total_tokens: 20024
cost: 0.00182571438
execution_time: 129.23
files_reviewed: 6
files_skipped: 0
maintainer_files: 6
upstream_files: 3502
upstream_named_files: 1
unpinned_sources: 0
date: 2026-08-26T15:02:28Z
file_verdicts:
  - file: .nvchecker.toml
    status: safe
    summary: Standard version checker config, no security issues.
  - file: .gitignore
    status: safe
    summary: Standard .gitignore for AUR package, no issues.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata file, no security issues.
  - file: llama.cpp.service
    status: safe
    summary: Standard systemd service file, no security issues.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD, no malicious content.
  - file: llama.cpp.conf
    status: safe
    summary: Benign configuration file, no malicious content.
---

Cloning https://aur.archlinux.org/llama.cpp-cuda.git...
Cloned llama.cpp-cuda
Analyzing llama.cpp-cuda AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD uses standard source definitions: a tarball from the official upstream GitHub repository (`github.com/ggml-org/llama.cpp`) and local files (`llama.cpp.conf`, `llama.cpp.service`) that are part of the AUR package. Checksums are provided and pinned (not SKIP). No command substitutions, external downloads, or code execution occurs at the global/top-level scope. The `pkgver` is a static variable (no `pkgver()` function). All other code (in `prepare()`, `build()`, `package()`) is not executed during `makepkg --nobuild --nodeps --noprepare` or `makepkg --printsrcinfo`. There is no evidence of obfuscated commands, malicious network requests, or data exfiltration. The file is consistent with standard packaging practices.
</details>
<evidence>
</evidence>
<summary>Safe: no malicious code executes during source fetch/sourcing.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Safe: no malicious code executes during source fetch/sourcing.
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Note: the PKGBUILD names 1 file(s) in the downloaded sources (src/llama.cpp-b10636/convert_hf_to_gguf.py); they are upstream content and were not reviewed.
Reviewing the 6 file(s) in the AUR repository. The 3502 downloaded file(s) are upstream content, outside the threat model, and are not read.
Reviewing the AUR repository's files...
[0/6] Reviewing .SRCINFO...
[0/6] Reviewing .SRCINFO, .nvchecker.toml...
[0/6] Reviewing .SRCINFO, .nvchecker.toml, .gitignore...
LLM auditresponse for .nvchecker.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a configuration file for `nvchecker`, a tool that automates checking for new upstream releases. It points to the official llama.cpp Git repository and defines a regex pattern to match version tags. No malicious activity is present; it is a standard packaging helper file.
</details>
<evidence></evidence>
<summary>Standard version checker config, no security issues.</summary>
</security_assessment>

[0/6] Reviewing .SRCINFO, .nvchecker.toml, .gitignore, PKGBUILD...
[1/6] Reviewing .SRCINFO, .gitignore, PKGBUILD...
+ Reviewed .nvchecker.toml. Status: SAFE -- Standard version checker config, no security issues.
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard `.gitignore` file commonly used in AUR package repositories. It ignores all files by default (`*`) and then explicitly un-ignores the essential packaging files: `PKGBUILD`, `.SRCINFO`, `.gitignore`, `.nvchecker.toml`, `llama.cpp.conf`, and `llama.cpp.service`. There are no commands, network requests, obfuscated code, or any other suspicious content. This is a routine configuration file with no security implications.</details>
<evidence></evidence>
<summary>Standard .gitignore for AUR package, no issues.</summary>
</security_assessment>

[1/6] Reviewing .SRCINFO, .gitignore, PKGBUILD, llama.cpp.conf...
[2/6] Reviewing .SRCINFO, PKGBUILD, llama.cpp.conf...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore for AUR package, no issues.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The `.SRCINFO` file is a standard metadata file for Arch User Repository (AUR) packages. It defines the package name, version, source URLs, checksums, dependencies, and other build information. All source URLs point to the official `llama.cpp` repository on GitHub under the `ggml-org` organization, aligned with the package's stated purpose. Checksums are provided and non-SKIP, ensuring integrity of the downloaded archives. No executable commands, network requests, obfuscated content, or references to untrusted hosts are present. The file performs no actions beyond describing the package for the AUR helper to build.
</details>
<evidence></evidence>
<summary>Standard AUR metadata file, no security issues.</summary>
</security_assessment>

[2/6] Reviewing .SRCINFO, PKGBUILD, llama.cpp.conf, llama.cpp.service...
[3/6] Reviewing PKGBUILD, llama.cpp.conf, llama.cpp.service...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata file, no security issues.
LLM auditresponse for llama.cpp.service:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard systemd service unit file for the llama.cpp server. It defines a simple service that executes `/usr/bin/llama-server` with arguments loaded from an environment file at `/etc/conf.d/llama.cpp`. The unit includes standard directives for restart behavior, signal handling, and dependencies. There are no network requests, file manipulations outside expected service configuration, obfuscated commands, or any other indicators of malicious activity. The file follows typical Arch Linux packaging conventions for a system service.
</details>
<evidence></evidence>
<summary>Standard systemd service file, no security issues.</summary>
</security_assessment>

[4/6] Reviewing PKGBUILD, llama.cpp.conf...
+ Reviewed llama.cpp.service. Status: SAFE -- Standard systemd service file, no security issues.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard AUR packaging conventions for a CUDA-accelerated build of llama.cpp. Source files originate from the official GitHub repository with pinned tag and SHA256 checksums (no `SKIP`). Build steps use `cmake` and `ninja` with no unusual network operations, obfuscation, or dangerous commands. The `LLAMA_BUILD_EXTRA_ARGS` environment variable allows user-controlled CMake flags, which is a routine customization mechanism and not a supply-chain risk (the user controls their own build environment). There are no signs of data exfiltration, backdoors, or execution of untrusted code from unexpected sources.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD, no malicious content.</summary>
</security_assessment>

[5/6] Reviewing llama.cpp.conf...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD, no malicious content.
LLM auditresponse for llama.cpp.conf:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `llama.cpp.conf` is a simple configuration file that sets an environment variable `LLAMA_ARGS` to an empty string. It contains no executable code, no network requests, no file operations, and no obfuscated or suspicious content. This is a standard package configuration file and does not exhibit any malicious behavior.
</details>
<evidence>
</evidence>
<summary>Benign configuration file, no malicious content.</summary>
</security_assessment>

[6/6] Reviewing ...
+ Reviewed llama.cpp.conf. Status: SAFE -- Benign configuration file, no malicious content.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 17,525
  Completion Tokens: 2,499
  Total Tokens: 20,024
  Total Cost: $0.001826
  Execution Time: 129.23 seconds

Final Status: SAFE


No issues found.
