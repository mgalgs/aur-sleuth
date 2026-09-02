---
package: llama.cpp-cuda
pkgver: b10752
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: b9e20f728bbe0de1871ebaca31738c802edc31f8
prompt_tokens: 17507
completion_tokens: 2222
total_tokens: 19729
cost: 0.001944990306
execution_time: 40.39
files_reviewed: 6
files_skipped: 0
maintainer_files: 6
source_fetch: ok
upstream_files: 3520
upstream_named_files: 1
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-02T03:07:09Z
file_verdicts:
  - file: .nvchecker.toml
    status: safe
    summary: Standard nvchecker config, no security issues.
  - file: .gitignore
    status: safe
    summary: Standard .gitignore for AUR package.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata; no security issues.
  - file: llama.cpp.conf
    status: safe
    summary: Empty config file, no malicious content.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD, no malicious code.
  - file: llama.cpp.service
    status: safe
    summary: Standard systemd service file, no security issues.
---

Cloning https://aur.archlinux.org/llama.cpp-cuda.git...
Cloned llama.cpp-cuda
Analyzing llama.cpp-cuda AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains no top-level malicious code. The global scope only defines variables, arrays (source, sha256sums), and functions (prepare, build, package) that are **not executed** by `makepkg --nobuild --nodeps --noprepare`. The `source` array fetches from the official GitHub releases of llama.cpp, which is the expected upstream; no suspicious network destinations are present. No obfuscation, base64-encoded commands, or dangerous top-level operations (e.g., eval, curl|bash) exist. The auxiliary files (llama.cpp.conf, llama.cpp.service) are local to the AUR repo, which is standard. This PKGBUILD is safe for source fetching and metadata parsing.
</details>
<evidence></evidence>
<summary>No malicious code in global scope; safe to fetch sources.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious code in global scope; safe to fetch sources.
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Note: the PKGBUILD names 1 file(s) in the downloaded sources (src/llama.cpp-b10752/convert_hf_to_gguf.py); they are upstream content and were not reviewed.
Reviewing the 6 file(s) in the AUR repository. The 3520 downloaded file(s) are upstream content, outside the threat model, and are not read.
Reviewing the AUR repository's files...
[0/6] Reviewing .SRCINFO...
[0/6] Reviewing .SRCINFO, .gitignore...
[0/6] Reviewing .SRCINFO, .gitignore, .nvchecker.toml...
LLM auditresponse for .nvchecker.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a configuration for `nvchecker`, a tool used by AUR maintainers to automatically check for new upstream versions. It specifies the official `llama.cpp` GitHub repository as the source and uses a simple regex to match version tags. There are no commands, no network destinations outside the project's own upstream, no obfuscation, and no system modifications. This is a standard, benign packaging support file.
</details>
<evidence></evidence>
<summary>Standard nvchecker config, no security issues.</summary>
</security_assessment>

[0/6] Reviewing .SRCINFO, .gitignore, .nvchecker.toml, PKGBUILD...
[1/6] Reviewing .SRCINFO, .gitignore, PKGBUILD...
+ Reviewed .nvchecker.toml. Status: SAFE -- Standard nvchecker config, no security issues.
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard `.gitignore` used in an AUR git repository. It ignores all files (`*`) except for the explicitly listed ones: `PKGBUILD`, `.SRCINFO`, `.gitignore`, `.nvchecker.toml`, `llama.cpp.conf`, and `llama.cpp.service`. This is a normal and expected pattern for AUR package maintenance. There is no executable code, no network interaction, no obfuscation, and no system file manipulation. The file poses no security threat.
</details>
<evidence>
</evidence>
<summary>Standard .gitignore for AUR package.</summary>
</security_assessment>

[2/6] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore for AUR package.
[2/6] Reviewing .SRCINFO, PKGBUILD, llama.cpp.conf...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The `.SRCINFO` file contains only package metadata: version, dependencies, options, and source URLs with sha256 checksums. All sources point to the official upstream GitHub repository (`github.com/ggml-org/llama.cpp`) and to local configuration files. There are no executable commands, obfuscated content, or unexpected network operations. The checksums are provided and none are set to `SKIP`, so source integrity can be verified. No evidence of malicious behavior or supply-chain attack.
</details>
<evidence></evidence>
<summary>Standard AUR metadata; no security issues.</summary>
</security_assessment>

[2/6] Reviewing .SRCINFO, PKGBUILD, llama.cpp.conf, llama.cpp.service...
[3/6] Reviewing PKGBUILD, llama.cpp.conf, llama.cpp.service...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata; no security issues.
LLM auditresponse for llama.cpp.conf:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a configuration file for the llama.cpp application. It contains only a single line setting an empty environment variable `LLAMA_ARGS=""`. There is no executable code, no network requests, no file operations, and no obfuscation. The content is entirely benign and consistent with standard configuration file practices.
</details>
<evidence></evidence>
<summary>Empty config file, no malicious content.</summary>
</security_assessment>

[4/6] Reviewing PKGBUILD, llama.cpp.service...
+ Reviewed llama.cpp.conf. Status: SAFE -- Empty config file, no malicious content.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard Arch Linux packaging practices. It downloads the source from the official GitHub repository of llama.cpp using a pinned version tag (`b10752`) with verified SHA256 checksums. The build process uses cmake with CUDA optimizations, which is expected for this package. There is no obfuscated code, no suspicious network requests beyond the upstream source, no eval or base64 decoding, and no unusual file operations. The `$LLAMA_BUILD_EXTRA_ARGS` variable is a common user-configurable option that does not introduce any inherent risk. The package also includes a systemd service and configuration file, both of which are standard. No evidence of supply-chain attack or malicious intent.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD, no malicious code.</summary>
</security_assessment>

[5/6] Reviewing llama.cpp.service...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD, no malicious code.
LLM auditresponse for llama.cpp.service:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard systemd service unit file for the llama.cpp server. It does not contain any malicious code, obfuscation, or unexpected operations. It simply defines the service to run the `/usr/bin/llama-server` binary with arguments from an environment file, and includes standard directives for restart behavior and dependencies. No evidence of supply-chain attack or suspicious activity.
</details>
<evidence>
</evidence>
<summary>Standard systemd service file, no security issues.</summary>
</security_assessment>

[6/6] Reviewing ...
+ Reviewed llama.cpp.service. Status: SAFE -- Standard systemd service file, no security issues.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 17,507
  Completion Tokens: 2,222
  Total Tokens: 19,729
  Total Cost: $0.001945
  Execution Time: 40.39 seconds

Final Status: SAFE


No issues found.
