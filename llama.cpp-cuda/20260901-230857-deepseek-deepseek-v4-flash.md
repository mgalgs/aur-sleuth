---
package: llama.cpp-cuda
pkgver: b10751
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: b9e20f728bbe0de1871ebaca31738c802edc31f8
prompt_tokens: 17686
completion_tokens: 3062
total_tokens: 20748
cost: 0.00167003340
execution_time: 114.1
files_reviewed: 6
files_skipped: 0
maintainer_files: 6
source_fetch: ok
upstream_files: 3520
upstream_named_files: 1
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-01T23:08:50Z
file_verdicts:
  - file: .nvchecker.toml
    status: safe
    summary: Standard nvchecker config for version tracking.
  - file: .gitignore
    status: safe
    summary: Standard .gitignore file; no security concerns.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata for llama.cpp-cuda; no malicious indicators found.
  - file: PKGBUILD
    status: safe
    summary: Benign standard PKGBUILD with pinned upstream source and checksums; no malicious behavior.
  - file: llama.cpp.service
    status: safe
    summary: Standard systemd service unit, no issues.
  - file: llama.cpp.conf
    status: safe
    summary: Benign config file, no security issues.
---

Cloning https://aur.archlinux.org/llama.cpp-cuda.git...
Cloned llama.cpp-cuda
Analyzing llama.cpp-cuda AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD is a straightforward packaging file for llama.cpp with CUDA support. All source entries point to the official GitHub repository or are local files (llama.cpp.conf, llama.cpp.service). The checksums are hardcoded, not skipped. There are no commands, command substitutions, or evals in the global scope that could execute during `makepkg --nobuild --nodeps --noprepare` or `makepkg --printsrcinfo`. The potentially dangerous functions (prepare, build, package) are not run by these commands, so any content within them is out of scope for this gate. No malicious behavior is present at the sourcing stage.
</details>
<evidence></evidence>
<summary>No malicious code in global scope; safe to fetch sources.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious code in global scope; safe to fetch sources.
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Note: the PKGBUILD names 1 file(s) in the downloaded sources (src/llama.cpp-b10751/convert_hf_to_gguf.py); they are upstream content and were not reviewed.
Reviewing the 6 file(s) in the AUR repository. The 3520 downloaded file(s) are upstream content, outside the threat model, and are not read.
Reviewing the AUR repository's files...
[0/6] Reviewing .SRCINFO...
[0/6] Reviewing .SRCINFO, .gitignore...
[0/6] Reviewing .SRCINFO, .gitignore, .nvchecker.toml...
LLM auditresponse for .nvchecker.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard nvchecker configuration used to track upstream releases of llama.cpp. It specifies the source type as git, points to the official GitHub repository, and defines a regex to match release tags. There is no executable code, network requests outside of the intended upstream source, or any obfuscated or suspicious operations. The content is purely declarative and routine for AUR packages that use nvchecker.
</details>
<evidence></evidence>
<summary>Standard nvchecker config for version tracking.</summary>
</security_assessment>

[0/6] Reviewing .SRCINFO, .gitignore, .nvchecker.toml, PKGBUILD...
[1/6] Reviewing .SRCINFO, .gitignore, PKGBUILD...
+ Reviewed .nvchecker.toml. Status: SAFE -- Standard nvchecker config for version tracking.
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard `.gitignore` for an AUR repository. It explicitly ignores all files except the ones needed for the package (`PKGBUILD`, `.SRCINFO`, `.gitignore`, `.nvchecker.toml`, `llama.cpp.conf`, `llama.cpp.service`). There are no commands, network requests, encoding tricks, or any other potentially malicious content. It is a routine configuration file with no security implications.
</details>
<evidence></evidence>
<summary>Standard .gitignore file; no security concerns.</summary>
</security_assessment>

[1/6] Reviewing .SRCINFO, .gitignore, PKGBUILD, llama.cpp.conf...
[2/6] Reviewing .SRCINFO, PKGBUILD, llama.cpp.conf...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore file; no security concerns.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This .SRCINFO describes the standard llama.cpp-cuda AUR package. The source tarball is fetched from the upstream project's own GitHub repository (ggml-org/llama.cpp) pinned to release tag b10751, with an explicit SHA-256 checksum. Dependencies and optdependencies are conventional for building llama.cpp with CUDA support. There are no network calls to unrelated hosts, no executable payloads, and no obfuscated or encoded content. The `&amp;apos;` in the pkgdesc is just XML entity encoding, and the rest is ordinary packaging metadata. No signs of injected or malicious behavior.
</details>
<evidence></evidence>
<summary>Standard AUR metadata for llama.cpp-cuda; no malicious indicators found.</summary>
</security_assessment>

[2/6] Reviewing .SRCINFO, PKGBUILD, llama.cpp.conf, llama.cpp.service...
[3/6] Reviewing PKGBUILD, llama.cpp.conf, llama.cpp.service...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata for llama.cpp-cuda; no malicious indicators found.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard Arch packaging practices for the llama.cpp-cuda package. It downloads a pinned release tarball from the upstream GitHub repository with a fixed version and matching SHA-256 checksums. The build uses CMake to compile the upstream project, and the package phase only installs the built files plus configuration and systemd service files into the package directory.

No suspicious behavior was found: there are no network requests to unexpected hosts, no obfuscated commands, no use of eval, base64, or curl-piped-to-shell, and no modifications to files outside the package tree. The build optionally sources /etc/profile to obtain the CUDA environment, which is normal for CUDA packages and not a security concern. The `LLAMA_BUILD_EXTRA_ARGS` environment variable allows users to append CMake flags, which is a user-controlled customization feature rather than embedded malicious behavior.
</details>
<evidence>
</evidence>
<summary>
Benign standard PKGBUILD with pinned upstream source and checksums; no malicious behavior.</summary>
</security_assessment>

[4/6] Reviewing llama.cpp.conf, llama.cpp.service...
+ Reviewed PKGBUILD. Status: SAFE -- Benign standard PKGBUILD with pinned upstream source and checksums; no malicious behavior.
LLM auditresponse for llama.cpp.service:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard systemd service unit file for the llama.cpp server. It defines basic unit metadata, loads environment variables from `/etc/conf.d/llama.cpp`, runs the `/usr/bin/llama-server` binary with those arguments, and sets up a standard reload mechanism. There is no executable code, no network requests, and no suspicious operations. Everything is consistent with normal packaging practices for system services.
</details>
<evidence></evidence>
<summary>Standard systemd service unit, no issues.</summary>
</security_assessment>

[5/6] Reviewing llama.cpp.conf...
+ Reviewed llama.cpp.service. Status: SAFE -- Standard systemd service unit, no issues.
LLM auditresponse for llama.cpp.conf:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a simple configuration file for the llama.cpp package. It sets the `LLAMA_ARGS` environment variable to an empty string. There are no commands, no network requests, no obfuscation, and no operations beyond a static variable assignment. The file contains no executable code and poses no security risk.
</details>
<evidence>
</evidence>
<summary>Benign config file, no security issues.</summary>
</security_assessment>

[6/6] Reviewing ...
+ Reviewed llama.cpp.conf. Status: SAFE -- Benign config file, no security issues.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 17,686
  Completion Tokens: 3,062
  Total Tokens: 20,748
  Total Cost: $0.001670
  Execution Time: 114.10 seconds

Final Status: SAFE


No issues found.
