---
package: llama.cpp-cuda
pkgver: b10786
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 171a316e053e9c4b28731ccb1aa63b1168550d3a
prompt_tokens: 17418
completion_tokens: 2759
total_tokens: 20177
cost: 0.00185598112
execution_time: 62.26
files_reviewed: 6
files_skipped: 0
maintainer_files: 6
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-03T19:07:03Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard .gitignore file; no executable or malicious content found.
  - file: .nvchecker.toml
    status: safe
    summary: Standard nvchecker config for version tracking.
  - file: llama.cpp.conf
    status: safe
    summary: Empty config variable, no malicious content.
  - file: llama.cpp.service
    status: safe
    summary: Standard systemd service, no malicious content.
  - file: .SRCINFO
    status: safe
    summary: Declarative metadata file, no executable content, entirely safe.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD with verified upstream source, no malicious code.
---

Materializing llama.cpp-cuda from local mirror...
Materialized llama.cpp-cuda
Analyzing llama.cpp-cuda AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
No dangerous top-level code was found in this PKGBUILD. All variable definitions and array assignments are standard, and there are no command substitutions, `eval`, `curl`, `wget`, or other suspicious constructs at global scope. The `source /etc/profile` line is inside the `build()` function, which is not executed during `makepkg --printsrcinfo`. The checksums are present and valid, not skipped. Therefore, sourcing this PKGBUILD to run `--printsrcinfo` poses no security risk.
</details>
<evidence></evidence>
<summary>No top-level dangerous code found.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No top-level dangerous code found.
Reviewing the 6 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/6] Reviewing .SRCINFO...
[0/6] Reviewing .SRCINFO, .gitignore...
[0/6] Reviewing .SRCINFO, .gitignore, .nvchecker.toml...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard `.gitignore` used in an AUR git repository. It ignores all files except the essential packaging files (`PKGBUILD`, `.SRCINFO`), the `.gitignore` itself, a nvchecker configuration, and two plain-text configuration files for llama.cpp (a `.conf` and a `.service` file, presumably systemd service unit files for the package). There are no commands, network operations, file manipulation, or any executable content. Nothing in this file deviates from normal version-control hygiene practices.
</details>
<evidence>
</evidence>
<summary>
Standard .gitignore file; no executable or malicious content found.</summary>
</security_assessment>

[0/6] Reviewing .SRCINFO, .gitignore, .nvchecker.toml, PKGBUILD...
[1/6] Reviewing .SRCINFO, .nvchecker.toml, PKGBUILD...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore file; no executable or malicious content found.
LLM auditresponse for .nvchecker.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a configuration file for `nvchecker`, a tool that checks for new upstream versions. The file specifies the source as the official llama.cpp Git repository on GitHub and a regex pattern to match version tags. There is no code execution, no obfuscated content, no suspicious network requests beyond the declared upstream, and no deviation from standard packaging practices. The content is entirely benign and consistent with its intended purpose.
</details>
<evidence></evidence>
<summary>Standard nvchecker config for version tracking.</summary>
</security_assessment>

[2/6] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed .nvchecker.toml. Status: SAFE -- Standard nvchecker config for version tracking.
[2/6] Reviewing .SRCINFO, PKGBUILD, llama.cpp.conf...
LLM auditresponse for llama.cpp.conf:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a simple configuration file that sets the `LLAMA_ARGS` environment variable to an empty string. There is no executable code, no network requests, no file modifications, and no obfuscation. Nothing in this file deviates from expected packaging behavior.
</details>
<evidence>
</evidence>
<summary>Empty config variable, no malicious content.</summary>
</security_assessment>

[2/6] Reviewing .SRCINFO, PKGBUILD, llama.cpp.conf, llama.cpp.service...
[3/6] Reviewing .SRCINFO, PKGBUILD, llama.cpp.service...
+ Reviewed llama.cpp.conf. Status: SAFE -- Empty config variable, no malicious content.
LLM auditresponse for llama.cpp.service:
<security_assessment>
<decision>SAFE</decision>
<details>
Standard systemd service unit for llama.cpp server. It references a conventional environment file and runs the packaged binary with user-supplied arguments. No network requests, code execution, obfuscation, or other suspicious behavior is present. The file follows normal packaging practices for Arch Linux.
</details>
<evidence></evidence>
<summary>Standard systemd service, no malicious content.</summary>
</security_assessment>

[4/6] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed llama.cpp.service. Status: SAFE -- Standard systemd service, no malicious content.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard .SRCINFO metadata file for an AUR package. It contains only declarative fields: package name, version, dependencies, source URLs with pinned checksums, and other metadata. No executable code, scripts, or logic is present. The sources are from the official upstream GitHub repository and include a tarball with a SHA256 hash, a configuration file, and a systemd service file — all typical for a legitimate AUR package. There are no signs of malicious or suspicious behavior.
</details>
<evidence></evidence>
<summary>Declarative metadata file, no executable content, entirely safe.</summary>
</security_assessment>

[5/6] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Declarative metadata file, no executable content, entirely safe.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard AUR packaging practices for building `llama.cpp` with NVIDIA CUDA support. The source is fetched from the official GitHub repository (ggml-org/llama.cpp) at a pinned version tag (`b10786`) with a verified SHA-256 checksum. No obfuscated code, suspicious network requests, unexpected file operations, or backdoors are present. The build and install routines use standard CMake and install commands. The only environment variable used (`LLAMA_BUILD_EXTRA_ARGS`) is a user-controlled customization mechanism, not an injection point from an external untrusted source. The package is clean and contains no evidence of a supply-chain attack.
</details>
<evidence>
</evidence>
<summary>Standard PKGBUILD with verified upstream source, no malicious code.</summary>
</security_assessment>

[6/6] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD with verified upstream source, no malicious code.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 17,418
  Completion Tokens: 2,759
  Total Tokens: 20,177
  Total Cost: $0.001856
  Execution Time: 62.26 seconds

Final Status: SAFE


No issues found.
