---
package: llama.cpp-vulkan
pkgver: b10680
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 3e318911529c43138ec6bdba0bfcb56907607021
prompt_tokens: 14328
completion_tokens: 3444
total_tokens: 17772
cost: 0.00179996544
execution_time: 56.78
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: ok
upstream_files: 3508
upstream_named_files: 1
unpinned_sources: 0
date: 2026-08-29T07:01:16Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard .gitignore file – no security issues.
  - file: .nvchecker.toml
    status: safe
    summary: Benign nvchecker config pointing to official llama.cpp upstream.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD, no malicious indicators.
  - file: .SRCINFO
    status: safe
    summary: AUR metadata file with no malicious content.
---

Cloning https://aur.archlinux.org/llama.cpp-vulkan.git...
Cloned llama.cpp-vulkan
Analyzing llama.cpp-vulkan AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is safe to run through `makepkg --nobuild --nodeps --noprepare` and `makepkg --printsrcinfo`. The file contains only variable assignments and function definitions. There are no top-level commands, no `pkgver()` function, no command substitution, and no obfuscated or encoded payloads that would execute when the PKGBUILD is sourced.

The `source` array downloads the upstream llama.cpp tarball from GitHub and two configuration/service asset files from the maintainer's own `Orion-zhen/aur-packages` repository. These are the package's declared sources and are fetched for auditing as intended by this gate. All three sources have pinned SHA-256 checksums. The `prepare()`, `build()`, and `package()` functions are not executed due to `--noprepare` and `--nobuild`; their contents are out of scope for this narrow gate and will be reviewed in the full PKGBUILD audit.
</details>
<evidence>
</evidence>
<summary>
Safe: only variable definitions and dormant functions; no top-level execution or payload fetching.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Safe: only variable definitions and dormant functions; no top-level execution or payload fetching.
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Note: the PKGBUILD names 1 file(s) in the downloaded sources (src/llama.cpp-b10680/convert_hf_to_gguf.py); they are upstream content and were not reviewed.
Reviewing the 4 file(s) in the AUR repository. The 3508 downloaded file(s) are upstream content, outside the threat model, and are not read.
Reviewing the AUR repository's files...
[0/4] Reviewing .SRCINFO...
[0/4] Reviewing .SRCINFO, .gitignore...
[0/4] Reviewing .SRCINFO, .gitignore, .nvchecker.toml...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard `.gitignore` for a Git repository. It ignores all files by default (`*`) and then lists specific files and patterns to track (`!PKGBUILD`, `!.SRCINFO`, etc.). There is no executable content, no obfuscation, and no deviation from normal packaging or version control practices.
</details>
<evidence>
</evidence>
<summary>Standard .gitignore file – no security issues.</summary>
</security_assessment>

[0/4] Reviewing .SRCINFO, .gitignore, .nvchecker.toml, PKGBUILD...
[1/4] Reviewing .SRCINFO, .nvchecker.toml, PKGBUILD...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore file – no security issues.
LLM auditresponse for .nvchecker.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is an nvchecker configuration used by AUR maintainers to detect new upstream versions of llama.cpp. It points to the official upstream Git repository and uses a simple regex to identify version tags matching the pattern b&lt;digits&gt;. There is no network exfiltration, no code execution, no obfuscation, and no unexpected file or system operations. This is standard, benign packaging tooling.
</details>
<evidence>
</evidence>
<summary>Benign nvchecker config pointing to official llama.cpp upstream.</summary>
</security_assessment>

[2/4] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed .nvchecker.toml. Status: SAFE -- Benign nvchecker config pointing to official llama.cpp upstream.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard PKGBUILD for a Vulkan-optimized variant of llama.cpp. All source URLs point to the project's official GitHub repository or the maintainer's own auxiliary assets, with pinned checksums. No obfuscated code, unexpected network requests, or system-modifying commands are present. The use of `npm ci` and `npm run build` is part of the upstream application's normal build process for its web UI. No malicious indicators found.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD, no malicious indicators.</summary>
</security_assessment>

[3/4] Reviewing .SRCINFO...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD, no malicious indicators.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The .SRCINFO file is standard metadata for an AUR package. It declares sources from the official llama.cpp GitHub repository (pinned by tag) and two auxiliary files (a systemd service and configuration) from a personal GitHub repository (Orion-zhen/aur-packages), with SHA‑256 checksums provided for all three. No obfuscated code, dangerous commands (curl|bash, eval, etc.), or unexpected network destinations appear in this file. The use of a mutable branch (`refs/heads/main`) for the auxiliary sources is a supply‑chain hygiene concern (the content could change between releases if checksums are not updated), but it is not evidence of a deliberate attack. The checksums pin the content at build time, and there is no sign of malicious intent in the metadata itself.
</details>
<evidence></evidence>
<summary>AUR metadata file with no malicious content.</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed .SRCINFO. Status: SAFE -- AUR metadata file with no malicious content.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 14,328
  Completion Tokens: 3,444
  Total Tokens: 17,772
  Total Cost: $0.001800
  Execution Time: 56.78 seconds

Final Status: SAFE


No issues found.
