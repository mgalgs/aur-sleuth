---
package: llama.cpp-cuda
pkgver: b10631
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: bf65c6be33eadea3455007f8db36db9ddf76ab3c
prompt_tokens: 17674
completion_tokens: 2515
total_tokens: 20189
cost: 0.002011710624
execution_time: 287.62
files_reviewed: 6
files_skipped: 0
maintainer_files: 6
upstream_files: 3501
upstream_named_files: 1
unpinned_sources: 0
date: 2026-08-26T07:43:37Z
file_verdicts:
  - file: .nvchecker.toml
    status: safe
    summary: Standard nvchecker config pointing to official upstream repository; no security issues.
  - file: .gitignore
    status: safe
    summary: Standard .gitignore file with no malicious content.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata file; no malicious content.
  - file: PKGBUILD
    status: safe
    summary: Standard secure PKGBUILD for llama.cpp-cuda.
  - file: llama.cpp.service
    status: safe
    summary: Standard systemd service unit; no suspicious or malicious behavior found.
  - file: llama.cpp.conf
    status: safe
    summary: Simple config file, no malicious content.
---

Cloning https://aur.archlinux.org/llama.cpp-cuda.git...
Cloned llama.cpp-cuda
Analyzing llama.cpp-cuda AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
No malicious code exists in the global scope or `pkgver()` of this PKGBUILD. The only operations triggered by `makepkg --nobuild --nodeps --noprepare` are downloading the declared upstream source (a tarball from the official GitHub repository) and the two auxiliary files (llama.cpp.conf, llama.cpp.service) which are assumed to reside alongside the PKGBUILD. No command substitutions, eval, or external command invocations are present in the top-level body. The checksums are provided and not set to SKIP (though SKIP would also be acceptable per the gate rules). The `prepare()`, `build()`, and `package()` functions are not executed during this stage. Therefore, fetching the sources and sourcing the PKGBUILD poses no security risk.
</details>
<evidence></evidence>
<summary>PKGBUILD has no dangerous top-level code.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- PKGBUILD has no dangerous top-level code.
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Note: the PKGBUILD names 1 file(s) in the downloaded sources (src/llama.cpp-b10631/convert_hf_to_gguf.py); they are upstream content and were not reviewed.
Reviewing the 6 file(s) in the AUR repository. The 3501 downloaded file(s) are upstream content, outside the threat model, and are not read.
Reviewing the AUR repository's files...
[0/6] Reviewing .SRCINFO...
[0/6] Reviewing .SRCINFO, .nvchecker.toml...
[0/6] Reviewing .SRCINFO, .nvchecker.toml, .gitignore...
LLM auditresponse for .nvchecker.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard [nvchecker](https://github.com/lilydjwg/nvchecker) configuration used by AUR maintainers to monitor upstream releases. It checks `https://github.com/ggerganov/llama.cpp.git` — the official upstream repository for llama.cpp — and filters version candidates using the regex `b\d+` to detect release tags like `b1234`.

There is no embedded code, no network request to any unexpected host, no file manipulation, no obfuscation, and no execution of downloaded content. It is a simple, declarative config file for automating version checks. This is normal AUR maintenance tooling and presents no malicious behavior.
</details>
<evidence>
</evidence>
<summary>
Standard nvchecker config pointing to official upstream repository; no security issues.</summary>
</security_assessment>

[1/6] Reviewing .SRCINFO, .gitignore...
+ Reviewed .nvchecker.toml. Status: SAFE -- Standard nvchecker config pointing to official upstream repository; no security issues.
[1/6] Reviewing .SRCINFO, .gitignore, PKGBUILD...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
The `.gitignore` file is a standard Git ignore file used to track only the essential files in an AUR package repository. It lists only the filenames to be kept (PKGBUILD, .SRCINFO, .gitignore, .nvchecker.toml, llama.cpp.conf, llama.cpp.service) and ignores everything else. There are no commands, no network requests, no obfuscation, and no code of any kind. This file is purely a configuration file for version control and poses no security risk.
</details>
<evidence>
</evidence>
<summary>Standard .gitignore file with no malicious content.</summary>
</security_assessment>

[1/6] Reviewing .SRCINFO, .gitignore, PKGBUILD, llama.cpp.conf...
[2/6] Reviewing .SRCINFO, PKGBUILD, llama.cpp.conf...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore file with no malicious content.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The `.SRCINFO` file is a declarative metadata file used by the AUR. It defines package metadata, dependencies, build options, and sources—all standard for an AUR package. The source tarball is pinned to a specific upstream tag (`b10631`) from the official `ggml-org/llama.cpp` repository, and all three source files have explicit `sha256sums` (no `SKIP`). No executable commands, obfuscated content, network requests, or suspicious operations are present. The file contains only static key-value declarations and poses no security risk.
</details>
<evidence></evidence>
<summary>Standard AUR metadata file; no malicious content.</summary>
</security_assessment>

[2/6] Reviewing .SRCINFO, PKGBUILD, llama.cpp.conf, llama.cpp.service...
[3/6] Reviewing PKGBUILD, llama.cpp.conf, llama.cpp.service...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata file; no malicious content.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard AUR packaging practices for a CUDA-enabled build of llama.cpp. The source is pinned to a specific GitHub release tarball with a fixed checksum. The build process uses CMake and Ninja, installing only expected files into the package directory. There is no obfuscated code, no unexpected network downloads, no data exfiltration, and no hidden commands. The optional `LLAMA_BUILD_EXTRA_ARGS` environment variable is a normal user-facing customization mechanism, not a vector for injection (the user would need to set it explicitly during build). The only dynamic environment sourcing (`source /etc/profile`) is a common idiom to ensure CUDA toolchain paths are available. No supply-chain attack indicators are present.
</details>
<evidence></evidence>
<summary>Standard secure PKGBUILD for llama.cpp-cuda.</summary>
</security_assessment>

[4/6] Reviewing llama.cpp.conf, llama.cpp.service...
+ Reviewed PKGBUILD. Status: SAFE -- Standard secure PKGBUILD for llama.cpp-cuda.
LLM auditresponse for llama.cpp.service:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard systemd service unit for the llama.cpp server. It defines normal service metadata (description, dependencies, startup behavior) and launches the installed `/usr/bin/llama-server` binary with arguments read from `/etc/conf.d/llama.cpp`. The reload action uses a standard kill signal, and restart behavior is limited to `on-failure`. None of these operations indicate malicious behavior: there are no network downloads, no code execution beyond the package's own intended server binary, no data exfiltration, and no suspicious encoding or obfuscation. The `EnvironmentFile` path is a conventional configuration location for Arch Linux services and is within the package's expected configuration scope.
</details>
<evidence>
</evidence>
<summary>
Standard systemd service unit; no suspicious or malicious behavior found.</summary>
</security_assessment>

[5/6] Reviewing llama.cpp.conf...
+ Reviewed llama.cpp.service. Status: SAFE -- Standard systemd service unit; no suspicious or malicious behavior found.
LLM auditresponse for llama.cpp.conf:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a simple configuration file for the llama.cpp application. It contains only an empty assignment to the `LLAMA_ARGS` variable, likely used to pass command-line arguments to the application. There are no commands, network requests, obfuscated code, or any other potentially dangerous operations. The content is entirely benign and consistent with standard packaging practices.
</details>
<evidence></evidence>
<summary>Simple config file, no malicious content.</summary>
</security_assessment>

[6/6] Reviewing ...
+ Reviewed llama.cpp.conf. Status: SAFE -- Simple config file, no malicious content.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 17,674
  Completion Tokens: 2,515
  Total Tokens: 20,189
  Total Cost: $0.002012
  Execution Time: 287.62 seconds

Final Status: SAFE


No issues found.
