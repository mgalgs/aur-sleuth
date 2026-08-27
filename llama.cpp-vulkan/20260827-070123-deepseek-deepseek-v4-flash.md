---
package: llama.cpp-vulkan
pkgver: b10643
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: f47e5ed5e9b50f484d29402229454e7d1b1d7cdb
prompt_tokens: 14176
completion_tokens: 2776
total_tokens: 16952
cost: 0.00156877056
execution_time: 61.71
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
upstream_files: 3497
upstream_named_files: 1
unpinned_sources: 0
date: 2026-08-27T07:01:20Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard AUR .gitignore file, no security issues.
  - file: .nvchecker.toml
    status: safe
    summary: Standard nvchecker config; no security concerns.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata, no malicious behavior.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD, no signs of malicious code.
---

Cloning https://aur.archlinux.org/llama.cpp-vulkan.git...
Cloned llama.cpp-vulkan
Analyzing llama.cpp-vulkan AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD's global scope contains only variable assignments, a `source` array of three URLs, and checksums. No `pkgver()` function exists; `pkgver` is a static string. The source URLs point to the official llama.cpp GitHub repository and the maintainer's own GitHub repository for auxiliary files (service and config). There are no top-level command substitutions, obfuscated code, or dangerous operations. The `prepare()`, `build()`, and `package()` functions are not executed by `makepkg --nobuild --nodeps --noprepare` or `--printsrcinfo`. Therefore, fetching the sources and sourcing the PKGBUILD is safe.
</details>
<evidence></evidence>
<summary>Safe: no malicious code runs during sourcing/fetching.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Safe: no malicious code runs during sourcing/fetching.
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Note: the PKGBUILD names 1 file(s) in the downloaded sources (src/llama.cpp-b10643/convert_hf_to_gguf.py); they are upstream content and were not reviewed.
Reviewing the 4 file(s) in the AUR repository. The 3497 downloaded file(s) are upstream content, outside the threat model, and are not read.
Reviewing the AUR repository's files...
[0/4] Reviewing .SRCINFO...
[0/4] Reviewing .SRCINFO, .gitignore...
[0/4] Reviewing .SRCINFO, .gitignore, .nvchecker.toml...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.gitignore` file for an AUR package. It ignores all files except those necessary for the package (PKGBUILD, .SRCINFO, .gitignore, .nvchecker.toml, llama.cpp.conf, llama.cpp.service). No malicious or suspicious content is present. The file contains only ignore patterns and comments.
</details>
<evidence></evidence>
<summary>Standard AUR .gitignore file, no security issues.</summary>
</security_assessment>

[0/4] Reviewing .SRCINFO, .gitignore, .nvchecker.toml, PKGBUILD...
[1/4] Reviewing .SRCINFO, .nvchecker.toml, PKGBUILD...
+ Reviewed .gitignore. Status: SAFE -- Standard AUR .gitignore file, no security issues.
LLM auditresponse for .nvchecker.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard nvchecker configuration file for monitoring upstream releases. It specifies a Git source URL pointing to the official llama.cpp repository and a regex pattern to match version tags. There is no exec, download, or obfuscation – it is purely declarative.
</details>
<evidence>
</evidence>
<summary>Standard nvchecker config; no security concerns.</summary>
</security_assessment>

[2/4] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed .nvchecker.toml. Status: SAFE -- Standard nvchecker config; no security concerns.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The `.SRCINFO` file is a standard metadata file for an AUR package. It declares the upstream source tarball from the official `llama.cpp` repository with a pinned tag and SHA-256 checksum. Two additional sources (a systemd service file and a configuration file) are fetched from a personal GitHub repository (`Orion-zhen/aur-packages`) using raw.githubusercontent.com URLs with pinned checksums. There are no executable commands, obfuscated code, or network requests beyond the expected source downloads. The use of a personal repo for supporting files is a trust consideration but not evidence of malicious intent, and the checksums ensure integrity. No other red flags are present.
</details>
<evidence></evidence>
<summary>Standard AUR metadata, no malicious behavior.</summary>
</security_assessment>

[3/4] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata, no malicious behavior.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard Arch packaging practices for a VCS-style package with a pinned release tarball. All sources are fetched over HTTPS from the expected upstream (GitHub) and the maintainer's own assets repository. Checksums are provided and pinned (not SKIP). No obfuscated code, suspicious network requests, `eval`, `base64`, `curl|bash`, or similar dangerous patterns are present. The `prepare()` function creates an empty `.git` directory to prevent Tailwind from walking up to an AUR helper&#x27;s `.gitignore`—a legitimate workaround. The build and install steps use `cmake`, `npm`, and standard `install` commands. The only potential hygiene concern (fetching service/conf files from a personal repo) is a standard AUR practice and not malicious.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD, no signs of malicious code.</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD, no signs of malicious code.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 14,176
  Completion Tokens: 2,776
  Total Tokens: 16,952
  Total Cost: $0.001569
  Execution Time: 61.71 seconds

Final Status: SAFE


No issues found.
