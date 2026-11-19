---
package: llama.cpp-cuda-git
pkgver: b11433.r0.50569eb87d
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 17416
completion_tokens: 8299
total_tokens: 25715
cost: 0.0109780064
execution_time: 181.54
files_reviewed: 5
files_skipped: 0
maintainer_files: 5
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-06T03:18:26Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata; no malicious content found.
  - file: llama.cpp.conf
    status: safe
    summary: Simple configuration file, no security issues.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD, no malicious behavior.
  - file: llama.cpp.service
    status: safe
    summary: Standard systemd service file; no malicious behavior detected.
  - file: .gitignore
    status: safe
    summary: Standard AUR .gitignore whitelisting package files; no security concerns.
---

Materializing llama.cpp-cuda-git from local mirror...
Materialized llama.cpp-cuda-git
Analyzing llama.cpp-cuda-git AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
 <security_assessment>
<decision>SAFE</decision>
<details>
The global/top-level scope of this PKGBUILD only declares metadata variables, arrays, the `source` array, checksum arrays, and function definitions. The only top-level statement with a side effect is `: "${_aur_llamacpp_build_universal:=...}"`, which is a no-op command that sets a default variable; it performs no external command, no network access, and no file modification. No `eval`, `curl`, `wget`, base64 decoding, or command substitution is executed at parse time.

The `pkgver()`, `build()`, and `package()` functions contain git, cmake, and install commands, but those functions are not run by `makepkg --printsrcinfo`; they are ordinary packaging/build steps for this CUDA llama.cpp package. The `SKIP` checksum on the git source is not a concern for this narrow gate because no source is downloaded or verified while printing srcinfo.
</details>
<evidence></evidence>
<summary>No parse-time malicious code; only metadata and function definitions.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No parse-time malicious code; only metadata and function definitions.
Reviewing the 5 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/5] Reviewing .SRCINFO...
[0/5] Reviewing .SRCINFO, PKGBUILD...
[0/5] Reviewing .SRCINFO, PKGBUILD, .gitignore...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The .SRCINFO file is a static metadata file for the Arch AUR package `llama.cpp-cuda-git`. It declares standard fields such as dependencies, sources, and checksums. The git VCS source correctly uses `SKIP` for checksums, which is normal for version-controlled sources. The two supplementary files (`llama.cpp.conf` and `llama.cpp.service`) have pinned checksums. No executable code, obfuscation, or suspicious operations are present. The file adheres to normal AUR packaging conventions and contains no supply-chain attack indicators.
</details>
<evidence></evidence>
<summary>Standard AUR metadata; no malicious content found.</summary>
</security_assessment>

[1/5] Reviewing PKGBUILD, .gitignore...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata; no malicious content found.
[1/5] Reviewing PKGBUILD, .gitignore, llama.cpp.conf...
LLM auditresponse for llama.cpp.conf:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `llama.cpp.conf` is a simple configuration file that sets the environment variable `LLAMA_ARGS` to an empty string. It contains no commands, no network operations, no file manipulations, and no obfuscated code. This is a standard packaging configuration file with no security implications.
</details>
<evidence>
</evidence>
<summary>Simple configuration file, no security issues.</summary>
</security_assessment>

[1/5] Reviewing PKGBUILD, .gitignore, llama.cpp.conf, llama.cpp.service...
[2/5] Reviewing PKGBUILD, .gitignore, llama.cpp.service...
+ Reviewed llama.cpp.conf. Status: SAFE -- Simple configuration file, no security issues.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard AUR PKGBUILD for the `llama.cpp-cuda-git` package. It fetches source from the official upstream GitHub repository (`github.com/ggml-org/llama.cpp.git`) via git, which is expected for a -git package. The checksums for the git source are set to `SKIP` as required by VCS sources. The two included config files have valid sha256 and b2sums. The `build()` function performs a clean cmake build with standard options appropriate for a CUDA-enabled llama.cpp package. There is no obfuscated code, no unexpected network requests, no `curl|bash`, no base64-decoded commands, no exfiltration of system data, and no modification of files outside the package's own scope. The `rm -rf build` is normal cleanup. The user-configurable `_aur_llamacpp_cmakeopts` variable is a standard AUR pattern and not a security issue. Overall, the file contains no supply-chain attack indicators.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD, no malicious behavior.</summary>
</security_assessment>

[3/5] Reviewing .gitignore, llama.cpp.service...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD, no malicious behavior.
LLM auditresponse for llama.cpp.service:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard systemd service unit for running the llama.cpp server. It loads optional runtime arguments from `/etc/conf.d/llama.cpp` and launches `/usr/bin/llama-server` with those arguments. The `ExecReload` and `Restart` directives are routine service-management behavior.

There is no network download, execution of external scripts, obfuscated code, or manipulation of unrelated system files. The service simply runs the package's own server binary, which is the expected and legitimate purpose of the package.
</details>
<evidence>
</evidence>
<summary>
Standard systemd service file; no malicious behavior detected.</summary>
</security_assessment>

[4/5] Reviewing .gitignore...
+ Reviewed llama.cpp.service. Status: SAFE -- Standard systemd service file; no malicious behavior detected.
LLM auditresponse for .gitignore:
 <security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.gitignore` file for an AUR package repository. The `*` rule ignores all files, and the `!` rules whitelist exactly the files needed for the AUR package: `PKGBUILD`, `.SRCINFO`, the `.gitignore` itself, a config file, a systemd service unit, and a patch. This is the conventional pattern used by AUR maintainers to keep only relevant files in version control.

There is no code execution, no network activity, no file modification, no obfuscation, and no reference to any external or unexpected host. The file contains only git ignore patterns and cannot perform any action by itself. Nothing in this file deviates from standard packaging practice or poses a security risk.
</details>
<evidence></evidence>
<summary>Standard AUR .gitignore whitelisting package files; no security concerns.</summary>
</security_assessment>

[5/5] Reviewing ...
+ Reviewed .gitignore. Status: SAFE -- Standard AUR .gitignore whitelisting package files; no security concerns.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 17,416
  Completion Tokens: 8,299
  Total Tokens: 25,715
  Total Cost: $0.010978
  Execution Time: 181.54 seconds

Final Status: SAFE


No issues found.
