---
package: voxtype-bin
pkgver: 1.1.0
pkgrel: 2
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 44101
completion_tokens: 3073
total_tokens: 47174
cost: 0.004220748
execution_time: 297.68
files_reviewed: 5
files_skipped: 0
maintainer_files: 5
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 20
injection_attempts: 0
date: 2026-09-24T15:31:53Z
file_verdicts:
  - file: .nvchecker.toml
    status: safe
    summary: Benign nvchecker configuration file, no risks.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata, no malicious content.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD for pre-built binaries. No red flags.
  - file: .gitignore
    status: safe
    summary: Standard gitignore file, no security concerns.
  - file: voxtype-bin.install
    status: safe
    summary: No malicious behavior detected; standard packaging.
---

Materializing voxtype-bin from local mirror...
Materialized voxtype-bin
Analyzing voxtype-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
Sourcing this PKGBUILD for `makepkg --printsrcinfo` only evaluates global/top-level statements. The file contains only standard variable and array assignments (`pkgname`, `pkgver`, `source`, `sha256sums`, etc.), comments, and a `package()` function definition. No top-level command substitutions, `eval`, `curl`/`wget` invocations, downloads, or other executable statements are present.

The `source` and `sha256sums` arrays reference upstream GitHub releases and `raw.githubusercontent.com`, but `makepkg --printsrcinfo` does not download or verify these sources; it only parses metadata. The `package()` function is not executed during this step and is therefore out of scope for this narrow gate. SKIP checksums are not a concern for this command.
</details>
<evidence>
</evidence>
<summary>
No top-level malicious code; only variable assignments and function definition. Safe for printsrcinfo.
</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No top-level malicious code; only variable assignments and function definition. Safe for printsrcinfo.
Note: 20 remote source(s) have no checksum (sha256sums=SKIP), so the bytes are not verifiable: voxtype-1.1.0.tar.gz.asc::https://github.com/peteonrails/voxtype/releases/download/v1.1.0/voxtype-1.1.0.tar.gz.asc, voxtype-1.1.0-baseline.asc::https://github.com/peteonrails/voxtype/releases/download/v1.1.0/voxtype-1.1.0-linux-x86_64-baseline.asc, voxtype-1.1.0-avx2.asc::https://github.com/peteonrails/voxtype/releases/download/v1.1.0/voxtype-1.1.0-linux-x86_64-avx2.asc, voxtype-1.1.0-avx512.asc::https://github.com/peteonrails/voxtype/releases/download/v1.1.0/voxtype-1.1.0-linux-x86_64-avx512.asc, voxtype-1.1.0-vulkan.asc::https://github.com/peteonrails/voxtype/releases/download/v1.1.0/voxtype-1.1.0-linux-x86_64-vulkan.asc, voxtype-1.1.0-onnx-avx2.asc::https://github.com/peteonrails/voxtype/releases/download/v1.1.0/voxtype-1.1.0-linux-x86_64-onnx-avx2.asc, voxtype-1.1.0-onnx-avx512.asc::https://github.com/peteonrails/voxtype/releases/download/v1.1.0/voxtype-1.1.0-linux-x86_64-onnx-avx512.asc, voxtype-1.1.0-onnx-cuda-12.asc::https://github.com/peteonrails/voxtype/releases/download/v1.1.0/voxtype-1.1.0-linux-x86_64-onnx-cuda-12.asc, voxtype-1.1.0-onnx-cuda-13.asc::https://github.com/peteonrails/voxtype/releases/download/v1.1.0/voxtype-1.1.0-linux-x86_64-onnx-cuda-13.asc, voxtype-1.1.0-onnx-migraphx.asc::https://github.com/peteonrails/voxtype/releases/download/v1.1.0/voxtype-1.1.0-linux-x86_64-onnx-migraphx.asc, voxtype-1.1.0-osd.asc::https://github.com/peteonrails/voxtype/releases/download/v1.1.0/voxtype-1.1.0-linux-x86_64-osd.asc, voxtype-1.1.0-osd-gtk4.asc::https://github.com/peteonrails/voxtype/releases/download/v1.1.0/voxtype-1.1.0-linux-x86_64-osd-gtk4.asc, voxtype-1.1.0-osd-quickshell.asc::https://github.com/peteonrails/voxtype/releases/download/v1.1.0/voxtype-1.1.0-linux-x86_64-osd-quickshell.asc, voxtype-1.1.0-audio-bridge.asc::https://github.com/peteonrails/voxtype/releases/download/v1.1.0/voxtype-1.1.0-linux-x86_64-audio-bridge.asc, voxtype-1.1.0-cpu.asc::https://github.com/peteonrails/voxtype/releases/download/v1.1.0/voxtype-1.1.0-linux-aarch64-cpu.asc, voxtype-1.1.0-onnx.asc::https://github.com/peteonrails/voxtype/releases/download/v1.1.0/voxtype-1.1.0-linux-aarch64-onnx.asc, voxtype-1.1.0-osd.asc::https://github.com/peteonrails/voxtype/releases/download/v1.1.0/voxtype-1.1.0-linux-aarch64-osd.asc, voxtype-1.1.0-osd-gtk4.asc::https://github.com/peteonrails/voxtype/releases/download/v1.1.0/voxtype-1.1.0-linux-aarch64-osd-gtk4.asc, voxtype-1.1.0-osd-quickshell.asc::https://github.com/peteonrails/voxtype/releases/download/v1.1.0/voxtype-1.1.0-linux-aarch64-osd-quickshell.asc, voxtype-1.1.0-audio-bridge.asc::https://github.com/peteonrails/voxtype/releases/download/v1.1.0/voxtype-1.1.0-linux-aarch64-audio-bridge.asc
Reviewing the 5 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/5] Reviewing .SRCINFO...
[0/5] Reviewing .SRCINFO, .gitignore...
[0/5] Reviewing .SRCINFO, .gitignore, .nvchecker.toml...
LLM auditresponse for .nvchecker.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a configuration for **nvchecker**, a tool that checks upstream repositories for new releases. It specifies that the package version should be determined from the latest GitHub release of `peteonrails/voxtype` with a version prefix of `v`. No commands, scripts, or network requests are embedded; the file is purely declarative. There is no malicious or suspicious content.
</details>
<evidence>
</evidence>
<summary>Benign nvchecker configuration file, no risks.</summary>
</security_assessment>

[1/5] Reviewing .SRCINFO, .gitignore...
+ Reviewed .nvchecker.toml. Status: SAFE -- Benign nvchecker configuration file, no risks.
[1/5] Reviewing .SRCINFO, .gitignore, PKGBUILD...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The `.SRCINFO` file is a metadata descriptor for the AUR package `voxtype-bin`. It declares the package name, version, dependencies, and sources. All sources point to the project's own GitHub repository (`peteonrails/voxtype`) under the `v1.1.0` tag or release, which is the expected upstream origin. Signature files (`.asc`) have `sha256sums = SKIP`, which is standard practice for detached signatures. Multiple architecture-specific binary variants are listed with checksums; the `SKIP` entries correspond to `.asc` files or other non-reproducible artifacts — this is normal for a `-bin` package. No URLs point to unexpected or untrusted hosts, no obfuscation is present, and the content is purely declarative. There is no evidence of injected malicious code, exfiltration, or backdoor behavior.

Certain hygiene concerns (e.g., `SKIP` checksums on some binary blobs like the main tarball source is not SKIP — it has a checksum) are noted but do not constitute genuine supply-chain threats. The `validpgpkeys` are provided, and the package follows standard AUR conventions for pre-built software. The file is safe.
</details>
<evidence>
</evidence>
<summary>Standard AUR metadata, no malicious content.</summary>
</security_assessment>

[1/5] Reviewing .SRCINFO, .gitignore, PKGBUILD, voxtype-bin.install...
[2/5] Reviewing .gitignore, PKGBUILD, voxtype-bin.install...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata, no malicious content.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD for `voxtype-bin` follows standard AUR packaging practices for a pre-built binary package. All source URLs point to the official GitHub repository (`github.com/peteonrails/voxtype`) under the maintainer's namespace. Cryptographic signatures (`.asc` files) are provided for all binaries, and the maintainer's PGP keys are listed in `validpgpkeys` for verification. Checksums are pinned for all content files (config, service, completions, etc.) and for the binaries themselves; the `.asc` signature files use `SKIP`, which is standard practice since the detached signature is verified by `makepkg` via `gpg` rather than by checksum.

The `package()` function only installs pre-built artifacts and static data (config, systemd unit, desktop entries, documentation, shell completions, and the Quickshell QML tree from the source archive). There are no dynamic code generation steps, no `curl|bash` patterns, no `eval`, no base64 decoding, and no network calls at build time. The installed binaries are not executed during packaging.

No evidence of malicious supply-chain injection was found. The file is standard for its purpose.
</details>
<evidence></evidence>
<summary>Standard AUR PKGBUILD for pre-built binaries. No red flags.</summary>
</security_assessment>

[3/5] Reviewing .gitignore, voxtype-bin.install...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD for pre-built binaries. No red flags.
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This `.gitignore` file is a standard configuration for AUR git repositories. It instructs Git to ignore all files except for a few specific ones: `.nvchecker.toml`, `.gitignore`, any files ending with `.install`, the `PKGBUILD`, and `.SRCINFO`. This is a common practice to keep the repository focused on essential packaging files and exclude generated or non-essential content. No code execution, network requests, or other potentially dangerous operations are present. The file is purely a Git configuration file and poses no security risk.
</details>
<evidence></evidence>
<summary>Standard gitignore file, no security concerns.</summary>
</security_assessment>

[4/5] Reviewing voxtype-bin.install...
+ Reviewed .gitignore. Status: SAFE -- Standard gitignore file, no security concerns.
LLM auditresponse for voxtype-bin.install:
<security_assessment>
<decision>SAFE</decision>
<details>
This `.install` script is a standard Arch Linux package installation helper that manages multiple binary variants for the voxtype speech-to-text application. It performs hardware detection (CPU capabilities, CUDA runtime, GPU presence) solely via local files and commands (`/proc/cpuinfo`, `ldconfig`, `lspci`) and then creates the appropriate symlink or wrapper script under `/usr/bin/voxtype` to dispatch to the correct binary. All file writes are confined to the package's own installation paths (`/usr/bin/`, `/usr/lib/voxtype/`). There are no network requests, no downloads or execution of code from external sources, no obfuscated or encoded commands, and no data exfiltration. The script prints informational messages and recommendations but does not auto-execute anything dangerous. The upgrade logic preserves and restores the previously selected backend via a temporary file under `/tmp/`, which is a benign and standard practice. No indicators of supply-chain attack or malicious behavior are present.
</details>
<evidence>
</evidence>
<summary>No malicious behavior detected; standard packaging.</summary>
</security_assessment>

[5/5] Reviewing ...
+ Reviewed voxtype-bin.install. Status: SAFE -- No malicious behavior detected; standard packaging.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 44,101
  Completion Tokens: 3,073
  Total Tokens: 47,174
  Total Cost: $0.004221
  Execution Time: 297.68 seconds

Final Status: SAFE


No issues found.
