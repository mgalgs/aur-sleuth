---
package: llama.cpp-cuda
pkgver: b10643
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: f47e5ed5e9b50f484d29402229454e7d1b1d7cdb
prompt_tokens: 17525
completion_tokens: 3374
total_tokens: 20899
cost: 0.00193018896
execution_time: 208.52
files_reviewed: 6
files_skipped: 0
maintainer_files: 6
upstream_files: 3497
upstream_named_files: 1
unpinned_sources: 0
date: 2026-08-27T07:31:27Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Routine .gitignore file; no security issues.
  - file: .SRCINFO
    status: safe
    summary: "Safe: standard AUR metadata with pinned sources and checksums."
  - file: llama.cpp.conf
    status: safe
    summary: Config file sets empty args; no risks.
  - file: llama.cpp.service
    status: safe
    summary: Standard systemd service file, no security issues.
  - file: .nvchecker.toml
    status: safe
    summary: Standard nvchecker config for upstream version tracking.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD, no malicious code detected.
---

Cloning https://aur.archlinux.org/llama.cpp-cuda.git...
Cloned llama.cpp-cuda
Analyzing llama.cpp-cuda AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD's global scope consists solely of variable assignments, array definitions, and comments. No dangerous command substitutions, function calls, or inline commands are present outside of the `prepare()`, `build()`, and `package()` functions. The `source` array fetches a release tarball from the official GitHub repository (`ggml-org/llama.cpp`) and two local auxiliary files; all three sources have SHA-256 checksums provided (none are `SKIP`). The `pkgver()` function is not defined, so no dynamic version generation occurs. Since `makepkg --nobuild --nodeps --noprepare` only sources the PKGBUILD (executing global code) and downloads/extracts the sources, and `makepkg --printsrcinfo` only prints metadata, no code from `prepare()`, `build()`, or `package()` is executed. There is no mechanism for remote code execution, data exfiltration, or other malicious behavior during this narrow gate.
</details>
<evidence></evidence>
<summary>No malicious executable code in scope for this gate.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious executable code in scope for this gate.
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Note: the PKGBUILD names 1 file(s) in the downloaded sources (src/llama.cpp-b10643/convert_hf_to_gguf.py); they are upstream content and were not reviewed.
Reviewing the 6 file(s) in the AUR repository. The 3497 downloaded file(s) are upstream content, outside the threat model, and are not read.
Reviewing the AUR repository's files...
[0/6] Reviewing .SRCINFO...
[0/6] Reviewing .SRCINFO, .gitignore...
[0/6] Reviewing .SRCINFO, .gitignore, .nvchecker.toml...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.gitignore` file used in an AUR git repository. It ignores all files except the ones explicitly listed: PKGBUILD, .SRCINFO, .gitignore, .nvchecker.toml, llama.cpp.conf, and llama.cpp.service. No executable commands, network calls, or obfuscated content are present. The file serves only to define which files Git should track, which is routine and not indicative of any malicious intent.
</details>
<evidence>
</evidence>
<summary>Routine .gitignore file; no security issues.</summary>
</security_assessment>

[0/6] Reviewing .SRCINFO, .gitignore, .nvchecker.toml, PKGBUILD...
[1/6] Reviewing .SRCINFO, .nvchecker.toml, PKGBUILD...
+ Reviewed .gitignore. Status: SAFE -- Routine .gitignore file; no security issues.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The .SRCINFO file is a standard metadata file for an Arch User Repository (AUR) package. It describes the package `llama.cpp-cuda`, a CUDA-optimized build of the llama.cpp project. All sources are fetched via HTTPS from the official GitHub repository using a pinned tag (`b10643`), and each source has a SHA-256 checksum defined (none are `SKIP`). The dependencies and build options are typical for a CUDA-enabled machine learning inference engine. There are no embedded scripts, obfuscated commands, suspicious network requests, or any content that deviates from normal packaging practices. The file is safe.
</details>
<evidence></evidence>
<summary>Safe: standard AUR metadata with pinned sources and checksums.</summary>
</security_assessment>

[1/6] Reviewing .SRCINFO, .nvchecker.toml, PKGBUILD, llama.cpp.conf...
[2/6] Reviewing .nvchecker.toml, PKGBUILD, llama.cpp.conf...
+ Reviewed .SRCINFO. Status: SAFE -- Safe: standard AUR metadata with pinned sources and checksums.
LLM auditresponse for llama.cpp.conf:
<security_assessment>
<decision>SAFE</decision>
<details>
This configuration file for llama.cpp simply defines an environment variable `LLAMA_ARGS` set to an empty string. There is no executable content, no network requests, no file operations, no obfuscation, and no deviation from expected packaging practices. The file is benign.
</details>
<evidence>
</evidence>
<summary>Config file sets empty args; no risks.</summary>
</security_assessment>

[2/6] Reviewing .nvchecker.toml, PKGBUILD, llama.cpp.conf, llama.cpp.service...
[3/6] Reviewing .nvchecker.toml, PKGBUILD, llama.cpp.service...
+ Reviewed llama.cpp.conf. Status: SAFE -- Config file sets empty args; no risks.
LLM auditresponse for llama.cpp.service:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard systemd service unit for the llama.cpp server. It defines a simple service that runs `/usr/bin/llama-server` with arguments loaded from `/etc/conf.d/llama.cpp`. There is no obfuscated code, network requests, unexpected file operations, or any deviation from normal service packaging. The service respects standard targets and uses `Restart=on-failure` for resilience. No security concerns are present.
</details>
<evidence></evidence>
<summary>Standard systemd service file, no security issues.</summary>
</security_assessment>

[4/6] Reviewing .nvchecker.toml, PKGBUILD...
+ Reviewed llama.cpp.service. Status: SAFE -- Standard systemd service file, no security issues.
LLM auditresponse for .nvchecker.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard nvchecker configuration for tracking upstream releases of llama.cpp-cuda. It specifies the official GitHub repository of the project and a regex to match version tags (starting with 'b' followed by digits). There is no code execution, no obfuscation, no unexpected network destinations, and no deviation from legitimate packaging tooling.
</details>
<evidence></evidence>
<summary>Standard nvchecker config for upstream version tracking.</summary>
</security_assessment>

[5/6] Reviewing PKGBUILD...
+ Reviewed .nvchecker.toml. Status: SAFE -- Standard nvchecker config for upstream version tracking.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD for `llama.cpp-cuda` is a standard Arch Linux packaging file for the well-known llama.cpp project. It downloads the source tarball from the official GitHub repository (`ggml-org/llama.cpp`) with a pinned commit and provides valid SHA256 checksums. The build process uses CMake with typical options for CUDA support, and the install step places binaries, a config file, and a systemd service file into the expected locations. No suspicious network requests, obfuscated code, or unexpected file operations are present. The sourcing of `/etc/profile` in `build()` is a common technique to ensure CUDA toolchain environment variables are available, and the `LLAMA_BUILD_EXTRA_ARGS` variable is a standard user-customization pattern. There is no evidence of exfiltration, backdoors, or supply-chain attack injection.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD, no malicious code detected.</summary>
</security_assessment>

[6/6] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD, no malicious code detected.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 17,525
  Completion Tokens: 3,374
  Total Tokens: 20,899
  Total Cost: $0.001930
  Execution Time: 208.52 seconds

Final Status: SAFE


No issues found.
