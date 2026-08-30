---
package: voxtype-bin
pkgver: 1.0.0
pkgrel: 2
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 3e318911529c43138ec6bdba0bfcb56907607021
prompt_tokens: 40324
completion_tokens: 3635
total_tokens: 43959
cost: 0.00385130648
execution_time: 76.26
files_reviewed: 5
files_skipped: 0
maintainer_files: 5
source_fetch: ok
upstream_files: 48
upstream_named_files: 0
unpinned_sources: 12
date: 2026-08-30T03:06:59Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard AUR gitignore, no security issues.
  - file: .nvchecker.toml
    status: safe
    summary: Standard nvchecker config, no security concerns.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD for voxtype-bin; no malicious content.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata, no security issues.
  - file: voxtype-bin.install
    status: safe
    summary: Routine install script, no malicious behavior.
---

Cloning https://aur.archlinux.org/voxtype-bin.git...
Cloned voxtype-bin
Analyzing voxtype-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD's top-level scope contains only variable definitions and array declarations. There is no `pkgver()` function. No command substitutions, `eval`, `curl|bash`, or any other dangerous constructs that would execute during sourcing or source fetching. All source URLs point to the official voxtype GitHub repository under `peteonrails/voxtype`, and the source definitions are standard AUR practice. No malicious code is present in the global scope or `pkgver()`. Running `makepkg --nobuild --nodeps --noprepare` and `makepkg --printsrcinfo` is safe.
</details>
<evidence></evidence>
<summary>No malicious code in PKGBUILD global scope.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious code in PKGBUILD global scope.
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Note: 12 remote source(s) have no checksum (sha256sums=SKIP), so the fetched bytes are not verifiable and can change without any AUR update: voxtype-1.0.0-avx2.asc::https://github.com/peteonrails/voxtype/releases/download/v1.0.0/voxtype-1.0.0-linux-x86_64-avx2.asc, voxtype-1.0.0-avx512.asc::https://github.com/peteonrails/voxtype/releases/download/v1.0.0/voxtype-1.0.0-linux-x86_64-avx512.asc, voxtype-1.0.0-vulkan.asc::https://github.com/peteonrails/voxtype/releases/download/v1.0.0/voxtype-1.0.0-linux-x86_64-vulkan.asc, voxtype-1.0.0-onnx-avx2.asc::https://github.com/peteonrails/voxtype/releases/download/v1.0.0/voxtype-1.0.0-linux-x86_64-onnx-avx2.asc, voxtype-1.0.0-onnx-avx512.asc::https://github.com/peteonrails/voxtype/releases/download/v1.0.0/voxtype-1.0.0-linux-x86_64-onnx-avx512.asc, voxtype-1.0.0-onnx-cuda-12.asc::https://github.com/peteonrails/voxtype/releases/download/v1.0.0/voxtype-1.0.0-linux-x86_64-onnx-cuda-12.asc, voxtype-1.0.0-onnx-cuda-13.asc::https://github.com/peteonrails/voxtype/releases/download/v1.0.0/voxtype-1.0.0-linux-x86_64-onnx-cuda-13.asc, voxtype-1.0.0-onnx-migraphx.asc::https://github.com/peteonrails/voxtype/releases/download/v1.0.0/voxtype-1.0.0-linux-x86_64-onnx-migraphx.asc, voxtype-1.0.0-osd.asc::https://github.com/peteonrails/voxtype/releases/download/v1.0.0/voxtype-1.0.0-linux-x86_64-osd.asc, voxtype-1.0.0-osd-gtk4.asc::https://github.com/peteonrails/voxtype/releases/download/v1.0.0/voxtype-1.0.0-linux-x86_64-osd-gtk4.asc, voxtype-1.0.0-osd-quickshell.asc::https://github.com/peteonrails/voxtype/releases/download/v1.0.0/voxtype-1.0.0-linux-x86_64-osd-quickshell.asc, voxtype-1.0.0-audio-bridge.asc::https://github.com/peteonrails/voxtype/releases/download/v1.0.0/voxtype-1.0.0-linux-x86_64-audio-bridge.asc
Reviewing the 5 file(s) in the AUR repository. The 48 downloaded file(s) are upstream content, outside the threat model, and are not read.
Reviewing the AUR repository's files...
[0/5] Reviewing .SRCINFO...
[0/5] Reviewing .SRCINFO, .gitignore...
[0/5] Reviewing .SRCINFO, .gitignore, .nvchecker.toml...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.gitignore` file used in AUR package repositories that utilize `nvchecker` for automatic version updates. It ignores all files by default (`*`) and then selectively un-ignores only the essential packaging files: `.nvchecker.toml`, `.gitignore`, `*.install`, `PKGBUILD`, and `.SRCINFO`. This is a common and expected pattern for maintaining AUR packages. There is no executable code, no network requests, no system modifications, and no obfuscation. The file poses no security risk.
</details>
<evidence></evidence>
<summary>Standard AUR gitignore, no security issues.</summary>
</security_assessment>

[0/5] Reviewing .SRCINFO, .gitignore, .nvchecker.toml, PKGBUILD...
[1/5] Reviewing .SRCINFO, .nvchecker.toml, PKGBUILD...
+ Reviewed .gitignore. Status: SAFE -- Standard AUR gitignore, no security issues.
LLM auditresponse for .nvchecker.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a configuration for `nvchecker`, a tool that checks for new upstream releases of software packages. It specifies that the package `voxtype-bin` is sourced from GitHub repository `peteonrails/voxtype`, using the latest release with a version prefix of `"v"`. There is no executable code, no network requests initiated by the file itself (it is merely a declarative config read by nvchecker), and no obfuscation or suspicious directives. The content is entirely standard and benign.
</details>
<evidence></evidence>
<summary>Standard nvchecker config, no security concerns.</summary>
</security_assessment>

[1/5] Reviewing .SRCINFO, .nvchecker.toml, PKGBUILD, voxtype-bin.install...
[2/5] Reviewing .SRCINFO, PKGBUILD, voxtype-bin.install...
+ Reviewed .nvchecker.toml. Status: SAFE -- Standard nvchecker config, no security concerns.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard AUR packaging conventions for a pre-built binary package. All sources are pinned to a specific version (v1.0.0) and downloaded from the project's own GitHub repository under `peteonrails/voxtype`. Binary files include PGP signatures with two maintainer keys listed in `validpgpkeys`, and SHA-256 checksums are provided for all assets (with `SKIP` for `.asc` signature files, which is normal practice). The `package()` function only performs standard file installation into `$pkgdir` — no dynamic code execution, no unexpected network fetches, no obfuscated commands, and no tampering with files outside the package's scope. There is no evidence of injection, exfiltration, backdoors, or any behavior that deviates from the stated purpose of packaging the voxtype application.
</details>
<evidence>
</evidence>
<summary>Standard AUR PKGBUILD for voxtype-bin; no malicious content.</summary>
</security_assessment>

[3/5] Reviewing .SRCINFO, voxtype-bin.install...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD for voxtype-bin; no malicious content.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The .SRCINFO file is metadata only and contains no executable code. All source URLs point to the legitimate upstream GitHub repository (peteonrails/voxtype) and its release assets. Checksums are provided for binary and configuration files; only PGP signature files use SKIP, which is standard practice. No obfuscated commands, suspicious network destinations, or deviations from normal packaging are present.</details>
<evidence></evidence>
<summary>Standard AUR metadata, no security issues.</summary>
</security_assessment>

[4/5] Reviewing voxtype-bin.install...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata, no security issues.
LLM auditresponse for voxtype-bin.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard `voxtype-bin.install` script used by the AUR package to configure binary dispatching (CPU/GPU variants) and display post-install messages. All operations are confined to the package's own files under `/usr/bin/` and `/usr/lib/voxtype/`. It performs hardware detection (`/proc/cpuinfo`, `lspci`, `ldconfig`) only to select the correct precompiled binary variant provided by the package. No network requests, obfuscated code, data exfiltration, or downloads of executable content occur. The temporary file written to `/tmp/` is used solely to preserve backend selection across upgrades. This is benign, routine AUR packaging behavior.
</details>
<evidence>

</evidence>
<summary>Routine install script, no malicious behavior.</summary>
</security_assessment>

[5/5] Reviewing ...
+ Reviewed voxtype-bin.install. Status: SAFE -- Routine install script, no malicious behavior.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 40,324
  Completion Tokens: 3,635
  Total Tokens: 43,959
  Total Cost: $0.003851
  Execution Time: 76.26 seconds

Final Status: SAFE


No issues found.
