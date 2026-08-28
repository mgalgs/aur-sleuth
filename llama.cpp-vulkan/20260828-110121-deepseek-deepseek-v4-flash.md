---
package: llama.cpp-vulkan
pkgver: b10666
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 3e318911529c43138ec6bdba0bfcb56907607021
prompt_tokens: 14269
completion_tokens: 3520
total_tokens: 17789
cost: 0.001888105254
execution_time: 61.0
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: ok
upstream_files: 3501
upstream_named_files: 1
unpinned_sources: 0
date: 2026-08-28T11:01:20Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard .gitignore, no malicious content.
  - file: .nvchecker.toml
    status: safe
    summary: Standard nvchecker config for official upstream git repo.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata file; no malicious content detected.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD; all sources pinned, no malicious code.
---

Cloning https://aur.archlinux.org/llama.cpp-vulkan.git...
Cloned llama.cpp-vulkan
Analyzing llama.cpp-vulkan AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD contains only top-level variable declarations and function definitions. There is no `pkgver()` function; `pkgver` is a hardcoded string, so sourcing the PKGBUILD executes no custom code. The `source` array fetches the upstream llama.cpp release tarball from github.com and two static asset files from raw.githubusercontent.com under the maintainer's aur-packages repo. All three entries have pinned sha256 checksums. Fetching and extracting these sources is exactly what `makepkg --nobuild --nodeps --noprepare` is expected to do, and extraction does not execute the contents. The executable logic in `prepare()`, `build()`, and `package()` is skipped by those flags, so it is out of scope for this narrow gate. No top-level command substitution, eval, encoded payload, or network exfiltration is present.
</details>
<evidence>
</evidence>
<summary>
Safe: sources from upstream with checksums; no top-level code executes.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Safe: sources from upstream with checksums; no top-level code executes.
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Note: the PKGBUILD names 1 file(s) in the downloaded sources (src/llama.cpp-b10666/convert_hf_to_gguf.py); they are upstream content and were not reviewed.
Reviewing the 4 file(s) in the AUR repository. The 3501 downloaded file(s) are upstream content, outside the threat model, and are not read.
Reviewing the AUR repository's files...
[0/4] Reviewing .SRCINFO...
[0/4] Reviewing .SRCINFO, .gitignore...
[0/4] Reviewing .SRCINFO, .gitignore, .nvchecker.toml...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.gitignore` file for an AUR package repository. It ignores all files except the essential packaging files (PKGBUILD, .SRCINFO, .gitignore, .nvchecker.toml, llama.cpp.conf, llama.cpp.service). There is no executable code, no network requests, no obfuscation, and no indication of malicious intent. The file performs exactly the function expected of a `.gitignore` in a VCS-tracked AUR package.
</details>
<evidence></evidence>
<summary>Standard .gitignore, no malicious content.</summary>
</security_assessment>

[0/4] Reviewing .SRCINFO, .gitignore, .nvchecker.toml, PKGBUILD...
[1/4] Reviewing .SRCINFO, .nvchecker.toml, PKGBUILD...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore, no malicious content.
LLM auditresponse for .nvchecker.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a configuration for `nvchecker`, a tool that automates checking for new upstream versions. It specifies that the package source is the official llama.cpp git repository (`https://github.com/ggerganov/llama.cpp.git`) and that version tags matching the regex `b\d+` (e.g., `b1234`) should be tracked. This is a standard, non-malicious practice for packages that follow a `b<number>` tagging scheme (commonly used for development or rolling releases). There are no encoded commands, network requests to unfamiliar hosts, or any behavior that could exfiltrate data or execute attacker-controlled code.</details>
<evidence></evidence>
<summary>Standard nvchecker config for official upstream git repo.</summary>
</security_assessment>

[2/4] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed .nvchecker.toml. Status: SAFE -- Standard nvchecker config for official upstream git repo.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard AUR `.SRCINFO` metadata file for the `llama.cpp-vulkan` package. It lists package metadata, dependencies, and three source files: the upstream tarball from the official `ggml-org/llama.cpp` repository, a systemd service file, and a configuration file—both auxiliary files hosted on the maintainer's GitHub account (`Orion-zhen/aur-packages`). All sources have pinned SHA256 checksums, ensuring integrity. There are no signs of malicious activity: no obfuscated commands, no unexpected network requests at build time, no inline scripts, and no attempts to exfiltrate data or execute arbitrary code. The file is purely declarative and follows standard AUR packaging practices.
</details>
<evidence></evidence>
<summary>Standard AUR metadata file; no malicious content detected.</summary>
</security_assessment>

[3/4] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata file; no malicious content detected.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard AUR packaging practices for building `llama.cpp` with Vulkan support. All source URLs point to the official upstream GitHub release or the maintainer&#39;s own assets repository. Each source has a fixed SHA-256 checksum, so no unverified content can be injected at build time. There is no use of `eval`, base64, `curl|bash`, or any obfuscated constructs. The `prepare()` function creates an empty `.git` directory only to work around a Tailwind CSS tooling issue—this is a benign compatibility workaround. The `build()` and `package()` functions perform expected build steps (`npm ci`, `cmake`, `make install`) and install files into the package directory. The CI-related conditional and the `LLAMA_BUILD_EXTRA_ARGS` environment variable are standard user-configurable options and do not introduce any hidden malicious behaviour. No unusual network calls, data exfiltration, or backdoors are present.
</details>
<evidence></evidence>
<summary>Standard AUR PKGBUILD; all sources pinned, no malicious code.</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD; all sources pinned, no malicious code.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 14,269
  Completion Tokens: 3,520
  Total Tokens: 17,789
  Total Cost: $0.001888
  Execution Time: 61.00 seconds

Final Status: SAFE


No issues found.
