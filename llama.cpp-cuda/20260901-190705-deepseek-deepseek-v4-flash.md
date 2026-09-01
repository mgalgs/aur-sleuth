---
package: llama.cpp-cuda
pkgver: b10743
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: b9e20f728bbe0de1871ebaca31738c802edc31f8
prompt_tokens: 17607
completion_tokens: 2596
total_tokens: 20203
cost: 0.00166934278
execution_time: 39.59
files_reviewed: 6
files_skipped: 0
maintainer_files: 6
source_fetch: ok
upstream_files: 3518
upstream_named_files: 1
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-01T19:07:05Z
file_verdicts:
  - file: .nvchecker.toml
    status: safe
    summary: Benign nvchecker config for upstream llama.cpp version tracking; no security issues found.
  - file: .gitignore
    status: safe
    summary: Standard .gitignore file for AUR packaging.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata, no security concerns.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD, no signs of malicious code.
  - file: llama.cpp.service
    status: safe
    summary: Standard systemd service file; no security issues.
  - file: llama.cpp.conf
    status: safe
    summary: Trivial configuration file, no security concerns.
---

Cloning https://aur.archlinux.org/llama.cpp-cuda.git...
Cloned llama.cpp-cuda
Analyzing llama.cpp-cuda AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD's global scope contains only variable assignments and array definitions, with no command substitutions, backticks, or dangerous operations that would execute during sourcing. The `source` array points to the official upstream GitHub release tarball (ggml-org/llama.cpp) and two auxiliary config files, all with proper SHA256 checksums. No `pkgver()` function is present to execute code. The `prepare()`, `build()`, and `package()` functions are defined but are not run by `makepkg --nobuild --nodeps --noprepare`. There is no evidence of obfuscation, network exfiltration, or untrusted code execution in the global scope. The file is a standard, well-structured AUR package for llama.cpp with CUDA optimizations.
</details>
<evidence></evidence>
<summary>Safe: standard PKGBUILD, no global execution risks.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Safe: standard PKGBUILD, no global execution risks.
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Note: the PKGBUILD names 1 file(s) in the downloaded sources (src/llama.cpp-b10743/convert_hf_to_gguf.py); they are upstream content and were not reviewed.
Reviewing the 6 file(s) in the AUR repository. The 3518 downloaded file(s) are upstream content, outside the threat model, and are not read.
Reviewing the AUR repository's files...
[0/6] Reviewing .SRCINFO...
[0/6] Reviewing .SRCINFO, .gitignore...
[0/6] Reviewing .SRCINFO, .gitignore, .nvchecker.toml...
LLM auditresponse for .nvchecker.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is an nvchecker configuration that tracks the upstream llama.cpp Git repository for new version tags matching the regex `b\d+`. It only instructs nvchecker to check GitHub for releases/tags of the package's own upstream project. No network requests to unexpected hosts, no code execution, no obfuscation, no file modifications, no exfiltration. This is a standard, benign packaging helper configuration file.

The file is consistent with routine AUR maintenance tooling and contains no evidence of malicious behavior. Pinning is not applicable here since it is a version-checking configuration, and even unpinned upstream tracking is normal for such tools.
</details>
<evidence>
</evidence>
<summary>
Benign nvchecker config for upstream llama.cpp version tracking; no security issues found.
</summary>
</security_assessment>

[0/6] Reviewing .SRCINFO, .gitignore, .nvchecker.toml, PKGBUILD...
[1/6] Reviewing .SRCINFO, .gitignore, PKGBUILD...
+ Reviewed .nvchecker.toml. Status: SAFE -- Benign nvchecker config for upstream llama.cpp version tracking; no security issues found.
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
The `.gitignore` file is a standard configuration file that tells Git to ignore all files except the explicitly listed ones: `PKGBUILD`, `.SRCINFO`, `.gitignore`, `.nvchecker.toml`, `llama.cpp.conf`, and `llama.cpp.service`. This is normal and expected for an AUR package repository to ensure only packaging files are tracked. There is no executable code, no network requests, no obfuscation, and no deviation from standard packaging practices. The file poses no security risk.
</details>
<evidence>
</evidence>
<summary>Standard .gitignore file for AUR packaging.</summary>
</security_assessment>

[2/6] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore file for AUR packaging.
[2/6] Reviewing .SRCINFO, PKGBUILD, llama.cpp.conf...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The .SRCINFO file is standard AUR package metadata. It defines the package `llama.cpp-cuda` with sources all pointing to the official upstream GitHub repository (`github.com/ggml-org/llama.cpp`). All three source files have explicit sha256sums, ensuring integrity. There are no suspicious commands, obfuscated content, network requests beyond the declared sources, or any other indicators of malicious activity. The file is purely declarative and contains no executable code.
</details>
<evidence></evidence>
<summary>Standard AUR metadata, no security concerns.</summary>
</security_assessment>

[3/6] Reviewing PKGBUILD, llama.cpp.conf...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata, no security concerns.
[3/6] Reviewing PKGBUILD, llama.cpp.conf, llama.cpp.service...
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard Arch Linux packaging practices for building `llama.cpp` with CUDA support from the official upstream repository. The source is pinned to a specific version tag with valid SHA-256 checksums. There are no network requests beyond the declared source download, no obfuscated code, no use of dangerous commands like `eval`, `curl`, or `wget`, and no unexpected file operations. The `LLAMA_BUILD_EXTRA_ARGS` mechanism allows users to pass additional CMake flags, which is a convenience feature and not a hidden backdoor. The script is clean and contains no evidence of malicious intent.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD, no signs of malicious code.</summary>
</security_assessment>

[4/6] Reviewing llama.cpp.conf, llama.cpp.service...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD, no signs of malicious code.
LLM auditresponse for llama.cpp.service:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a straightforward systemd service file for the llama.cpp server. It defines a service that runs `/usr/bin/llama-server` with arguments loaded from `/etc/conf.d/llama.cpp`. There are no signs of malicious behavior: no network requests, downloads, obfuscated code, or unexpected file operations. The service follows standard packaging conventions for Arch Linux and is not a supply-chain attack.
</details>
<evidence>
</evidence>
<summary>Standard systemd service file; no security issues.</summary>
</security_assessment>

[5/6] Reviewing llama.cpp.conf...
+ Reviewed llama.cpp.service. Status: SAFE -- Standard systemd service file; no security issues.
LLM auditresponse for llama.cpp.conf:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a routine configuration file (likely for a systemd service or environment file) that sets the `LLAMA_ARGS` environment variable to an empty string. There is no executable code, no network requests, no file operations, and no suspicious content. This is standard packaging practice for providing user-configurable defaults. No security issues are present.
</details>
<evidence></evidence>
<summary>Trivial configuration file, no security concerns.</summary>
</security_assessment>

[6/6] Reviewing ...
+ Reviewed llama.cpp.conf. Status: SAFE -- Trivial configuration file, no security concerns.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 17,607
  Completion Tokens: 2,596
  Total Tokens: 20,203
  Total Cost: $0.001669
  Execution Time: 39.59 seconds

Final Status: SAFE


No issues found.
