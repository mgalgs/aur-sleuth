---
package: llama.cpp-cuda
pkgver: b10727
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: b9e20f728bbe0de1871ebaca31738c802edc31f8
prompt_tokens: 17597
completion_tokens: 3958
total_tokens: 21555
cost: 0.00202522194
execution_time: 221.73
files_reviewed: 6
files_skipped: 0
maintainer_files: 6
source_fetch: ok
upstream_files: 3517
upstream_named_files: 1
unpinned_sources: 0
injection_attempts: 0
date: 2026-08-31T23:07:58Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard .gitignore file, no security concerns.
  - file: .SRCINFO
    status: safe
    summary: Standard metadata file, no malicious content.
  - file: llama.cpp.conf
    status: safe
    summary: Empty configuration variable; no security issues.
  - file: .nvchecker.toml
    status: safe
    summary: Standard nvchecker config, no issues.
  - file: llama.cpp.service
    status: safe
    summary: Standard systemd service unit, no security issues.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD, no malicious content found.
---

Cloning https://aur.archlinux.org/llama.cpp-cuda.git...
Cloned llama.cpp-cuda
Analyzing llama.cpp-cuda AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is safe to fetch and parse with the two specified commands. The global/top-level scope contains only static variable assignments (pkgname, pkgver, source, checksums, dependency arrays, etc.) and function definitions — there is no executable top-level code, no command substitution, and no `pkgver()` function to run (pkgver is a fixed literal `b10727`). Sourcing the file for `--printsrcinfo` therefore executes nothing beyond ordinary variable expansion.

The `source` array contains exactly one remote artifact: the llama.cpp release tarball fetched from the project's own official upstream repository (`https://github.com/ggml-org/llama.cpp`), which matches the package's `url` and stated purpose. The other two entries (`llama.cpp.conf`, `llama.cpp.service`) are local files bundled with the AUR package. All three entries have pinned sha256 checksums (none are SKIP). This is a standard, legitimate source definition; extracting an unverified archive is exactly what this gate is designed to allow for later auditing, and checksums are present here anyway.

The `prepare()`, `build()`, and `package()` functions contain only routine build logic (symlink, cmake, install into $pkgdir), and they are not executed under `--nobuild --noprepare`. There is no evidence of obfuscation, data exfiltration, untrusted downloads, backdoors, or any behavior outside normal packaging practice.
</details>
<evidence>
</evidence>
<summary>
No executable top-level code; sources from official upstream with pinned checksums.
</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No executable top-level code; sources from official upstream with pinned checksums.
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Note: the PKGBUILD names 1 file(s) in the downloaded sources (src/llama.cpp-b10727/convert_hf_to_gguf.py); they are upstream content and were not reviewed.
Reviewing the 6 file(s) in the AUR repository. The 3517 downloaded file(s) are upstream content, outside the threat model, and are not read.
Reviewing the AUR repository's files...
[0/6] Reviewing .SRCINFO...
[0/6] Reviewing .SRCINFO, .gitignore...
[0/6] Reviewing .SRCINFO, .gitignore, .nvchecker.toml...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard `.gitignore` file used to selectively track only certain files in a Git repository. It contains no executable code, network requests, obfuscation, or any behavior that could compromise system security. This is a routine packaging artifact.
</details>
<evidence>
</evidence>
<summary>Standard .gitignore file, no security concerns.</summary>
</security_assessment>

[0/6] Reviewing .SRCINFO, .gitignore, .nvchecker.toml, PKGBUILD...
[1/6] Reviewing .SRCINFO, .nvchecker.toml, PKGBUILD...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore file, no security concerns.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The `.SRCINFO` file contains only standard package metadata for the `llama.cpp-cuda` package. All source files are fetched from the official upstream GitHub repository (`ggml-org/llama.cpp`) with pinned commit tags (`b10727`) and valid SHA-256 checksums. There are no executable commands, network requests, obfuscated code, or suspicious operations. The file is a static manifest and does not perform any actions that could introduce malice.
</details>
<evidence></evidence>
<summary>Standard metadata file, no malicious content.</summary>
</security_assessment>

[1/6] Reviewing .SRCINFO, .nvchecker.toml, PKGBUILD, llama.cpp.conf...
[2/6] Reviewing .nvchecker.toml, PKGBUILD, llama.cpp.conf...
+ Reviewed .SRCINFO. Status: SAFE -- Standard metadata file, no malicious content.
LLM auditresponse for llama.cpp.conf:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `llama.cpp.conf` contains only a single line assigning an empty string to the variable `LLAMA_ARGS`. There is no executable code, no network requests, no obfuscation, and no file operations. This is a standard configuration file with no security implications.</details>
<evidence></evidence>
<summary>Empty configuration variable; no security issues.</summary>
</security_assessment>

[3/6] Reviewing .nvchecker.toml, PKGBUILD...
+ Reviewed llama.cpp.conf. Status: SAFE -- Empty configuration variable; no security issues.
[3/6] Reviewing .nvchecker.toml, PKGBUILD, llama.cpp.service...
LLM auditresponse for .nvchecker.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard `.nvchecker.toml` configuration for tracking new upstream versions of the `llama.cpp` project. It specifies the package name, source type (`git`), the upstream repository URL (the official `ggerganov/llama.cpp` GitHub repo), and a regex (`b\\d+`) to match version tags. This is a normal and expected AUR packaging practice; there are no suspicious network destinations, obfuscated code, dangerous commands, or any deviations from standard packaging behavior. The file poses no security risk.
</details>
<evidence>
</evidence>
<summary>Standard nvchecker config, no issues.</summary>
</security_assessment>

[4/6] Reviewing PKGBUILD, llama.cpp.service...
+ Reviewed .nvchecker.toml. Status: SAFE -- Standard nvchecker config, no issues.
LLM auditresponse for llama.cpp.service:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard systemd service unit file for the llama.cpp server. It launches `/usr/bin/llama-server` with arguments read from `/etc/conf.d/llama.cpp`, a common configuration pattern for Arch Linux packages. The file contains only normal service management directives (Type, EnvironmentFile, ExecStart, ExecReload, Restart, Install). There is no obfuscated code, network requests, file exfiltration, or any behavior that deviates from expected packaging practices. The file is safe.
</details>
<evidence></evidence>
<summary>Standard systemd service unit, no security issues.</summary>
</security_assessment>

[5/6] Reviewing PKGBUILD...
+ Reviewed llama.cpp.service. Status: SAFE -- Standard systemd service unit, no security issues.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD for `llama.cpp-cuda` follows standard AUR packaging practices. It downloads the upstream source from the official GitHub repository with a pinned version and checksum. The build process uses cmake with appropriate CUDA options, and the install steps are conventional. There are no suspicious network requests, obfuscated code, or unexpected system modifications. The use of environment variables like `LLAMA_BUILD_EXTRA_ARGS` is a common customization mechanism and not a security concern. All actions are within the expected scope of building and packaging the software.
</details>
<evidence>
</evidence>
<summary>Standard PKGBUILD, no malicious content found.</summary>
</security_assessment>

[6/6] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD, no malicious content found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 17,597
  Completion Tokens: 3,958
  Total Tokens: 21,555
  Total Cost: $0.002025
  Execution Time: 221.73 seconds

Final Status: SAFE


No issues found.
