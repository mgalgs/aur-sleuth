---
package: llama.cpp-gfx1151
pkgver: b10680
pkgrel: 2
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 3e318911529c43138ec6bdba0bfcb56907607021
prompt_tokens: 11674
completion_tokens: 3293
total_tokens: 14967
cost: 0.00152872720
execution_time: 140.85
files_reviewed: 2
files_skipped: 0
maintainer_files: 2
source_fetch: ok
upstream_files: 3508
upstream_named_files: 1
unpinned_sources: 0
date: 2026-08-29T11:26:16Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Static metadata file, no malicious content.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD with no malicious behavior found.
---

Cloning https://aur.archlinux.org/llama.cpp-gfx1151.git...
Cloned llama.cpp-gfx1151
Analyzing llama.cpp-gfx1151 AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only static variable assignments and function definitions in its global scope. No `pkgver()` function exists; `pkgver` is a literal string. There are no command substitutions, backticks, `eval`, `curl|bash`, or any other executable statements at the top level. The `source` array contains three HTTPS URLs pointing to the official upstream tarball and two assets from the maintainer's own repository—all benign and typical for AUR packages. During `makepkg --nobuild --nodeps --noprepare` and `makepkg --printsrcinfo`, the only executed code is these variable assignments; `prepare()`, `build()`, and `package()` are not invoked. Therefore, no malicious code can execute at this stage.
</details>
<evidence></evidence>
<summary>Sourcing PKGBUILD and fetching sources is safe.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Sourcing PKGBUILD and fetching sources is safe.
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Note: the PKGBUILD names 1 file(s) in the downloaded sources (src/llama.cpp-b10680/convert_hf_to_gguf.py); they are upstream content and were not reviewed.
Reviewing the 2 file(s) in the AUR repository. The 3508 downloaded file(s) are upstream content, outside the threat model, and are not read.
Reviewing the AUR repository's files...
[0/2] Reviewing .SRCINFO...
[0/2] Reviewing .SRCINFO, PKGBUILD...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The `.SRCINFO` file is a static metadata file describing the package name, version, dependencies, sources, and checksums. It contains no executable code, no obfuscated strings, and no network or system commands. All sources are HTTPS URLs with pinned SHA‑256 checksums (no `SKIP` entries). The two extra sources (`llama.cpp.service`, `llama.cpp.conf`) are fetched from a personal GitHub repository (`Orion-zhen/aur-packages`), which is a common practice for providing system integration files in AUR packages. While this introduces a third‑party trust dependency, it is not per se malicious and does not represent a supply‑chain attack within the scope of this file. The file is consistent with standard packaging metadata and contains no evidence of genuinely dangerous behavior.
</details>
<evidence></evidence>
<summary>Static metadata file, no malicious content.</summary>
</security_assessment>

[1/2] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Static metadata file, no malicious content.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard Arch Linux packaging conventions for building `llama.cpp` with AMD ROCm and Vulkan support (gfx1151 target). The source tarball is fetched from the official GitHub release and integrity-checked via SHA-256. The additional sources (systemd service and configuration file) are fetched from the maintainer's verified GitHub repository over HTTPS and also include SHA-256 sums, ensuring content integrity at build time. No obfuscated code, dangerous commands (eval, base64, curl|bash), or unexpected network requests are present. The `npm ci` and `npm run build` commands are standard for the bundled web UI and target the official npm registry. The `prepare()` stage only creates a symlink and an empty `.git` directory to work around a Tailwind CSS build quirk, which is a benign workaround. There is no evidence of data exfiltration, backdoors, or injection of attacker-controlled code. The use of mutable URLs for the service and config files is mitigated by checksum verification, making this a matter of trust in the maintainer rather than a supply-chain vulnerability.
</details>
<evidence></evidence>
<summary>Standard AUR PKGBUILD with no malicious behavior found.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD with no malicious behavior found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 11,674
  Completion Tokens: 3,293
  Total Tokens: 14,967
  Total Cost: $0.001529
  Execution Time: 140.85 seconds

Final Status: SAFE


No issues found.
