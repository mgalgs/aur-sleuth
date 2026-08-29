---
package: llama.cpp-cuda
pkgver: b10667
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 3e318911529c43138ec6bdba0bfcb56907607021
prompt_tokens: 17603
completion_tokens: 3548
total_tokens: 21151
cost: 0.0021438732
execution_time: 49.13
files_reviewed: 6
files_skipped: 0
maintainer_files: 6
source_fetch: ok
upstream_files: 3501
upstream_named_files: 1
unpinned_sources: 0
date: 2026-08-28T15:03:34Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata file, no malicious content.
  - file: .gitignore
    status: safe
    summary: Standard .gitignore file, no security issues.
  - file: llama.cpp.conf
    status: safe
    summary: Simple config file, no security issues.
  - file: .nvchecker.toml
    status: safe
    summary: Standard version checker config, no issues.
  - file: llama.cpp.service
    status: safe
    summary: Standard systemd service file, no security issues.
  - file: PKGBUILD
    status: safe
    summary: Standard llama.cpp CUDA PKGBUILD; pinned checksums, no malicious or suspicious behavior found.
---

Cloning https://aur.archlinux.org/llama.cpp-cuda.git...
Cloned llama.cpp-cuda
Analyzing llama.cpp-cuda AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD is a standard Arch package for llama.cpp with CUDA optimizations. The top-level code only defines variables and arrays—no command substitutions, no `eval`, no `curl|bash`, or any other dangerous constructs. The `source` array points to the official GitHub release tarball (`https://github.com/ggml-org/llama.cpp/archive/refs/tags/b10667.tar.gz`) and two local files (a config and a systemd service). The `sha256sums` are pinned, providing integrity verification. The `pkgver()` function is not defined, so no code runs there. The `prepare()`, `build()`, and `package()` functions are not executed during the requested commands (`--nobuild --nodeps --noprepare`). There is no evidence of malicious behavior that would execute during source fetching or PKGBUILD sourcing.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD, no malicious top-level code.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Standard PKGBUILD, no malicious top-level code.
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Note: the PKGBUILD names 1 file(s) in the downloaded sources (src/llama.cpp-b10667/convert_hf_to_gguf.py); they are upstream content and were not reviewed.
Reviewing the 6 file(s) in the AUR repository. The 3501 downloaded file(s) are upstream content, outside the threat model, and are not read.
Reviewing the AUR repository's files...
[0/6] Reviewing .SRCINFO...
[0/6] Reviewing .SRCINFO, .gitignore...
[0/6] Reviewing .SRCINFO, .gitignore, .nvchecker.toml...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The .SRCINFO file is a metadata file for the AUR package. It specifies the package name, version, dependencies, and sources. All source URLs point to the official upstream GitHub repository (`https://github.com/ggml-org/llama.cpp`). The source tarball, config file, and service file all have sha256 checksums provided (not SKIP). No executable code, obfuscated strings, or suspicious network requests are present. The file is entirely standard AUR packaging metadata.
</details>
<evidence>
</evidence>
<summary>Standard AUR metadata file, no malicious content.</summary>
</security_assessment>

[1/6] Reviewing .gitignore, .nvchecker.toml...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata file, no malicious content.
[1/6] Reviewing .gitignore, .nvchecker.toml, PKGBUILD...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.gitignore` file for an AUR package repository. It ignores all files by default (`*`), then explicitly allows only the packaging and configuration files that should be tracked in version control: `PKGBUILD`, `.SRCINFO`, `.gitignore`, `.nvchecker.toml`, `llama.cpp.conf`, and `llama.cpp.service`. Such a pattern is common in AUR repositories to prevent accidentally committing irrelevant or generated files. There is no network activity, obfuscation, file manipulation, or any other dangerous behavior. The file is entirely benign.
</details>
<evidence></evidence>
<summary>Standard .gitignore file, no security issues.</summary>
</security_assessment>

[1/6] Reviewing .gitignore, .nvchecker.toml, PKGBUILD, llama.cpp.conf...
[2/6] Reviewing .nvchecker.toml, PKGBUILD, llama.cpp.conf...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore file, no security issues.
LLM auditresponse for llama.cpp.conf:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `llama.cpp.conf` contains a single line setting the environment variable `LLAMA_ARGS` to an empty string. This is a standard configuration file template and does not contain any executable code, network requests, file operations, or any other potentially dangerous content. No security issues are present.
</details>
<evidence>
</evidence>
<summary>Simple config file, no security issues.</summary>
</security_assessment>

[2/6] Reviewing .nvchecker.toml, PKGBUILD, llama.cpp.conf, llama.cpp.service...
[3/6] Reviewing .nvchecker.toml, PKGBUILD, llama.cpp.service...
+ Reviewed llama.cpp.conf. Status: SAFE -- Simple config file, no security issues.
LLM auditresponse for .nvchecker.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a configuration for nvchecker, a tool that monitors upstream version tags. It specifies an official GitHub repository (https://github.com/ggerganov/llama.cpp.git) and a simple regex for tag matching. There is no code execution, obfuscation, or deviation from normal packaging support tools. No security issues present.
</details>
<evidence></evidence>
<summary>Standard version checker config, no issues.</summary>
</security_assessment>

[4/6] Reviewing PKGBUILD, llama.cpp.service...
+ Reviewed .nvchecker.toml. Status: SAFE -- Standard version checker config, no issues.
LLM auditresponse for llama.cpp.service:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard systemd service unit file for the llama.cpp server. It launches `/usr/bin/llama-server` with arguments read from an environment file (`/etc/conf.d/llama.cpp`). There are no suspicious operations, network requests, or code execution. The service definition follows normal packaging practices for Arch Linux. No malicious content is present.
</details>
<evidence></evidence>
<summary>Standard systemd service file, no security issues.</summary>
</security_assessment>

[5/6] Reviewing PKGBUILD...
+ Reviewed llama.cpp.service. Status: SAFE -- Standard systemd service file, no security issues.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a standard packaging script for the upstream llama.cpp project with CUDA support. The source tarball is fetched from the project's official GitHub releases URL (ggml-org/llama.cpp) at a pinned version tag, and all three sources (tarball, config file, systemd unit) have concrete sha256 checksums rather than SKIP. No unpinned VCS sources, `git pull`, or fetch-then-execute patterns are present.

The build() and package() functions perform ordinary CMake configuration, compilation, and installation into `$pkgdir`. `source /etc/profile` in build() is a common, benign workaround for CUDA toolchain environments (to pick up NVCC/PATH settings) and reads only local configuration. The `LLAMA_BUILD_EXTRA_ARGS` environment passthrough is a user-controlled customization feature, not an injection vector from the package itself — it expands user-supplied CMake flags at build time, which is a convenience, not a supply-chain risk. There is no obfuscated code, no encoded payloads, no eval/base64/curl-to-shell usage, no exfiltration of local data, and no contact with any host other than the project's own upstream for its declared source. The file conforms to normal AUR packaging practices.
</details>
<evidence>
</evidence>
<summary>
Standard llama.cpp CUDA PKGBUILD; pinned checksums, no malicious or suspicious behavior found.</summary>
</security_assessment>

[6/6] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard llama.cpp CUDA PKGBUILD; pinned checksums, no malicious or suspicious behavior found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 17,603
  Completion Tokens: 3,548
  Total Tokens: 21,151
  Total Cost: $0.002144
  Execution Time: 49.13 seconds

Final Status: SAFE


No issues found.
