---
package: llama.cpp-gfx1151
pkgver: b10666
pkgrel: 2
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 3e318911529c43138ec6bdba0bfcb56907607021
prompt_tokens: 11496
completion_tokens: 2007
total_tokens: 13503
cost: 0.0013462680
execution_time: 53.81
files_reviewed: 2
files_skipped: 0
maintainer_files: 2
source_fetch: ok
upstream_files: 3501
upstream_named_files: 1
unpinned_sources: 0
date: 2026-08-28T19:29:53Z
file_verdicts:
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD, no malicious indicators.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR package metadata, no malicious content detected.
---

Cloning https://aur.archlinux.org/llama.cpp-gfx1151.git...
Cloned llama.cpp-gfx1151
Analyzing llama.cpp-gfx1151 AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD's top-level scope (which is all that executes during `makepkg --nobuild --nodeps --noprepare` and `makepkg --printsrcinfo`) contains only variable assignments: package metadata, dependency lists, and a source array with three HTTPS URLs (upstream tarball, a systemd service file, and a config file from the maintainer's repository). There are no command substitutions, evals, or other executable statements in the global scope. No `pkgver()` function is defined. The defined functions `prepare()`, `build()`, and `package()` are not executed during this narrow gate. The URLs are legitimate (GitHub and raw.githubusercontent.com) and the checksums are provided (not SKIP). There is no evidence of code that would download and execute an untrusted payload, exfiltrate data, or perform any malicious action during source fetching or PKGBUILD sourcing. The actions taken (git clone/http download, archive extraction) are standard and safe to run.
</details>
<evidence></evidence>
<summary>Top-level code is safe; no execution of malicious payloads.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Top-level code is safe; no execution of malicious payloads.
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Note: the PKGBUILD names 1 file(s) in the downloaded sources (src/llama.cpp-b10666/convert_hf_to_gguf.py); they are upstream content and were not reviewed.
Reviewing the 2 file(s) in the AUR repository. The 3501 downloaded file(s) are upstream content, outside the threat model, and are not read.
Reviewing the AUR repository's files...
[0/2] Reviewing .SRCINFO...
[0/2] Reviewing .SRCINFO, PKGBUILD...
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a standard AUR package for building `llama.cpp` optimized for AMD gfx1151 (Strix Halo) GPUs. It downloads the upstream source from the official GitHub repository (`github.com/ggml-org/llama.cpp`) and two auxiliary files (a systemd service and a config file) from the maintainer's own GitHub. All sources use HTTPS and have pinned SHA256 checksums.  

The build process is typical: it runs `cmake` with appropriate flags for ROCm and Vulkan support, builds a web UI via `npm`, and installs binaries, a license file, and system configuration files. No suspicious commands are present – no `eval`, `base64`, `curl|bash`, or any other obfuscated or unexpected operations. The `prepare()` function creates an empty `.git` directory to work around a build tool limitation, which is a legitimate workaround and not harmful.  

There are no red flags: no exfiltration, no execution of untrusted code, no modification of system files outside the package's scope, and no hidden network requests. The package does what it claims – compiling and installing an LLM inference engine with ROCm/Vulkan support.  
</details>
<evidence></evidence>
<summary>Standard AUR PKGBUILD, no malicious indicators.</summary>
</security_assessment>

[1/2] Reviewing .SRCINFO...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD, no malicious indicators.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The .SRCINFO file for llama.cpp-gfx1151 defines a standard AUR package building from the official ggml-org/llama.cpp repository on GitHub. All three source tarballs include SHA-256 checksums (none set to SKIP), providing integrity verification for the downloaded files. The only extra sources are a systemd service file and a configuration file hosted on raw.githubusercontent.com under the same maintainer&#x27;s AUR repository, which is a common pattern for AUR packages and does not itself indicate malicious behavior. There are no encoded commands, network requests outside the package&#x27;s own sources, or suspicious operations in this file. The dependencies and build steps are typical for a ROCm/Vulkan enabled build of llama.cpp. No evidence of a supply‑chain attack is present in the .SRCINFO content.
</details>
<evidence></evidence>
<summary>Standard AUR package metadata, no malicious content detected.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR package metadata, no malicious content detected.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 11,496
  Completion Tokens: 2,007
  Total Tokens: 13,503
  Total Cost: $0.001346
  Execution Time: 53.81 seconds

Final Status: SAFE


No issues found.
