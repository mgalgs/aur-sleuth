---
package: voxtype-bin
pkgver: 1.1.0
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 43962
completion_tokens: 7529
total_tokens: 51491
cost: 0.005229526120
execution_time: 192.8
files_reviewed: 5
files_skipped: 0
maintainer_files: 5
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 20
injection_attempts: 0
date: 2026-09-24T03:11:55Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Normal .gitignore file; no security concerns found.
  - file: .nvchecker.toml
    status: safe
    summary: Standard nvchecker config, no security issues.
  - file: voxtype-bin.install
    status: safe
    summary: Standard post-install script, no malicious behavior.
  - file: PKGBUILD
    status: safe
    summary: No malicious indicators; standard AUR binary packaging of upstream release with signatures.
  - file: .SRCINFO
    status: safe
    summary: A standard .SRCINFO metadata file, no malicious content detected.
---

Materializing voxtype-bin from local mirror...
Materialized voxtype-bin
Analyzing voxtype-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD's global/top-level scope contains only static variable assignments, array definitions (source, sha256sums, etc.), and string variable expansions (e.g., `$_github` used in source URLs). There are no command substitutions, backtick executions, calls to external commands, or any code that would execute when the PKGBUILD is sourced by `makepkg --printsrcinfo`. The `package()` function (which contains file installation logic) is defined but not executed during this parsing step. Therefore, running `makepkg --printsrcinfo` on this PKGBUILD poses no security risk.
</details>
<evidence></evidence>
<summary>No dangerous top-level execution; safe to parse.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous top-level execution; safe to parse.
Note: 20 remote source(s) have no checksum (sha256sums=SKIP), so the bytes are not verifiable: voxtype-1.1.0.tar.gz.asc::https://github.com/peteonrails/voxtype/releases/download/v1.1.0/voxtype-1.1.0.tar.gz.asc, voxtype-1.1.0-baseline.asc::https://github.com/peteonrails/voxtype/releases/download/v1.1.0/voxtype-1.1.0-linux-x86_64-baseline.asc, voxtype-1.1.0-avx2.asc::https://github.com/peteonrails/voxtype/releases/download/v1.1.0/voxtype-1.1.0-linux-x86_64-avx2.asc, voxtype-1.1.0-avx512.asc::https://github.com/peteonrails/voxtype/releases/download/v1.1.0/voxtype-1.1.0-linux-x86_64-avx512.asc, voxtype-1.1.0-vulkan.asc::https://github.com/peteonrails/voxtype/releases/download/v1.1.0/voxtype-1.1.0-linux-x86_64-vulkan.asc, voxtype-1.1.0-onnx-avx2.asc::https://github.com/peteonrails/voxtype/releases/download/v1.1.0/voxtype-1.1.0-linux-x86_64-onnx-avx2.asc, voxtype-1.1.0-onnx-avx512.asc::https://github.com/peteonrails/voxtype/releases/download/v1.1.0/voxtype-1.1.0-linux-x86_64-onnx-avx512.asc, voxtype-1.1.0-onnx-cuda-12.asc::https://github.com/peteonrails/voxtype/releases/download/v1.1.0/voxtype-1.1.0-linux-x86_64-onnx-cuda-12.asc, voxtype-1.1.0-onnx-cuda-13.asc::https://github.com/peteonrails/voxtype/releases/download/v1.1.0/voxtype-1.1.0-linux-x86_64-onnx-cuda-13.asc, voxtype-1.1.0-onnx-migraphx.asc::https://github.com/peteonrails/voxtype/releases/download/v1.1.0/voxtype-1.1.0-linux-x86_64-onnx-migraphx.asc, voxtype-1.1.0-osd.asc::https://github.com/peteonrails/voxtype/releases/download/v1.1.0/voxtype-1.1.0-linux-x86_64-osd.asc, voxtype-1.1.0-osd-gtk4.asc::https://github.com/peteonrails/voxtype/releases/download/v1.1.0/voxtype-1.1.0-linux-x86_64-osd-gtk4.asc, voxtype-1.1.0-osd-quickshell.asc::https://github.com/peteonrails/voxtype/releases/download/v1.1.0/voxtype-1.1.0-linux-x86_64-osd-quickshell.asc, voxtype-1.1.0-audio-bridge.asc::https://github.com/peteonrails/voxtype/releases/download/v1.1.0/voxtype-1.1.0-linux-x86_64-audio-bridge.asc, voxtype-1.1.0-cpu.asc::https://github.com/peteonrails/voxtype/releases/download/v1.1.0/voxtype-1.1.0-linux-aarch64-cpu.asc, voxtype-1.1.0-onnx.asc::https://github.com/peteonrails/voxtype/releases/download/v1.1.0/voxtype-1.1.0-linux-aarch64-onnx.asc, voxtype-1.1.0-osd.asc::https://github.com/peteonrails/voxtype/releases/download/v1.1.0/voxtype-1.1.0-linux-aarch64-osd.asc, voxtype-1.1.0-osd-gtk4.asc::https://github.com/peteonrails/voxtype/releases/download/v1.1.0/voxtype-1.1.0-linux-aarch64-osd-gtk4.asc, voxtype-1.1.0-osd-quickshell.asc::https://github.com/peteonrails/voxtype/releases/download/v1.1.0/voxtype-1.1.0-linux-aarch64-osd-quickshell.asc, voxtype-1.1.0-audio-bridge.asc::https://github.com/peteonrails/voxtype/releases/download/v1.1.0/voxtype-1.1.0-linux-aarch64-audio-bridge.asc
Reviewing the 5 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/5] Reviewing .SRCINFO...
[0/5] Reviewing .SRCINFO, .gitignore...
[0/5] Reviewing .SRCINFO, .gitignore, .nvchecker.toml...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.gitignore` file used to selectively track only specific files (`.nvchecker.toml`, `.gitignore`, `*.install`, `PKGBUILD`, `.SRCINFO`) in the AUR git repository. It contains no executable code, no network operations, no file system changes, and no suspicious content. It is consistent with ordinary AUR packaging practices.
</details>
<evidence>
</evidence>
<summary>
Normal .gitignore file; no security concerns found.</summary>
</security_assessment>

[0/5] Reviewing .SRCINFO, .gitignore, .nvchecker.toml, PKGBUILD...
[1/5] Reviewing .SRCINFO, .nvchecker.toml, PKGBUILD...
+ Reviewed .gitignore. Status: SAFE -- Normal .gitignore file; no security concerns found.
LLM auditresponse for .nvchecker.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard nvchecker configuration file used to automatically check for new upstream releases from GitHub. It defines a single package entry (`voxtype-bin`) that tracks the `peteonrails/voxtype` repository for the latest release with a version prefix of `v`. There is no executable code, no obfuscation, no suspicious network destinations, and no deviation from normal AUR packaging practices. The file poses no security risk.
</details>
<evidence>
</evidence>
<summary>Standard nvchecker config, no security issues.</summary>
</security_assessment>

[1/5] Reviewing .SRCINFO, .nvchecker.toml, PKGBUILD, voxtype-bin.install...
[2/5] Reviewing .SRCINFO, PKGBUILD, voxtype-bin.install...
+ Reviewed .nvchecker.toml. Status: SAFE -- Standard nvchecker config, no security issues.
LLM auditresponse for voxtype-bin.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard Arch Linux `.install` script for the `voxtype-bin` package. It performs post-installation tasks such as detecting CPU capabilities, setting up the correct binary symlink or wrapper, detecting CUDA runtime for GPU acceleration, and detecting GPU hardware for informational messages. All operations are confined to the package's own installation paths (`/usr/bin/voxtype`, `/usr/lib/voxtype/`) and standard system locations for hardware detection (`/proc/cpuinfo`, `/dev/dri`, `lspci`). There is no obfuscated code, no network requests, no execution of downloaded content, no exfiltration of data, and no manipulation of files outside the package's scope. The script uses a temporary file `/tmp/.voxtype-backend-upgrade` to preserve backend selection across upgrades, which is a normal practice. The `migraphx_env` handling is legitimate configuration for the application's runtime requirements. No malicious behavior is present.
</details>
<evidence></evidence>
<summary>Standard post-install script, no malicious behavior.</summary>
</security_assessment>

[3/5] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed voxtype-bin.install. Status: SAFE -- Standard post-install script, no malicious behavior.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The visible portions of this PKGBUILD are consistent with a legitimate binary AUR package. All sources come from the project's own upstream GitHub repository (`https://raw.githubusercontent.com/peteonrails/voxtype`) at `$pkgver` tags, and the `.asc` signature files referenced indicate release-signature verification rather than hidden or third-party content. The operations shown are ordinary packaging steps: installing the main binary, the audio-bridge sidecar, ONNX/CUDA `.so` files and symlinks under `/usr/lib/voxtype`, copying the quickshell QML tree and example OSD packages, and installing a config to `/etc/voxtype`, a systemd user unit, desktop entry, and shell completions. No `eval`, base64, `curl | bash`, unexpected network endpoints, obfuscated strings, or writes outside `$pkgdir` are visible.

The heavy `[...]` elisions prevent a fully complete audit, but the file's comments about the companion `.install` script (`_set_default_backend()`, `_set_onnx_cuda_symlink()`, aarch64 short-circuiting) describe CUDA-variant symlink selection for the runtime, which is plausible application support behavior rather than evidence of malice. The `.install` script is not part of the provided content and should be reviewed when the full package is audited. Nothing in the visible excerpts suggests injected, exfiltrating, or obfuscated code.
</details>
<evidence>
</evidence>
<summary>No malicious indicators; standard AUR binary packaging of upstream release with signatures.</summary>
</security_assessment>

[4/5] Reviewing .SRCINFO...
+ Reviewed PKGBUILD. Status: SAFE -- No malicious indicators; standard AUR binary packaging of upstream release with signatures.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a `.SRCINFO` metadata file for the `voxtype-bin` AUR package. It is purely declarative — it lists package metadata, source URLs, PGP signing keys, checksums, and dependencies. No executable code is present, and no instructions are embedded that could be followed by a shell or interpreter. All source URLs point to the official upstream GitHub repository (`peteonrails/voxtype`) and its release assets. The package provides PGP signatures (`validpgpkeys`) for verifying the integrity of the downloaded artifacts. While some checksums are set to `SKIP` (e.g., for `.asc` signature files and the source tarball), this is a common and accepted practice in AUR packages, especially for binary releases, and does not by itself indicate malice. There is no evidence of obfuscated code, exfiltration, unexpected network destinations, or any behavior that deviates from standard packaging practices. The file is consistent with a legitimate binary redistributable package.
</details>
<evidence>
</evidence>
<summary>A standard .SRCINFO metadata file, no malicious content detected.</summary>
</security_assessment>

[5/5] Reviewing ...
+ Reviewed .SRCINFO. Status: SAFE -- A standard .SRCINFO metadata file, no malicious content detected.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 43,962
  Completion Tokens: 7,529
  Total Tokens: 51,491
  Total Cost: $0.005230
  Execution Time: 192.80 seconds

Final Status: SAFE


No issues found.
