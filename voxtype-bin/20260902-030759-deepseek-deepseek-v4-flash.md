---
package: voxtype-bin
pkgver: 1.0.1
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: b9e20f728bbe0de1871ebaca31738c802edc31f8
prompt_tokens: 41593
completion_tokens: 2912
total_tokens: 44505
cost: 0.004201430702
execution_time: 89.26
files_reviewed: 5
files_skipped: 0
maintainer_files: 5
source_fetch: ok
upstream_files: 50
upstream_named_files: 0
unpinned_sources: 12
injection_attempts: 0
date: 2026-09-02T03:07:57Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata, no malicious content.
  - file: .nvchecker.toml
    status: safe
    summary: Standard nvchecker config, no malicious content.
  - file: voxtype-bin.install
    status: safe
    summary: Standard install script, no malicious behavior.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD with no malicious indicators.
  - file: .gitignore
    status: safe
    summary: Standard gitignore file, no risk.
---

Cloning https://aur.archlinux.org/voxtype-bin.git...
Cloned voxtype-bin
Analyzing voxtype-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This narrow gate only covers what happens while sourcing the PKGBUILD, running `pkgver()` if present, and fetching/extracting the `source` array. The PKGBUILD contains no top-level command substitutions, no executable code outside variable assignments, and no `pkgver()` function. All `source` entries point to the package's own upstream project on `github.com/peteonrails/voxtype` (release downloads and raw files from the matching `v$pkgver` tag), which is expected for this AUR package.

The `package()` function contains only standard file installation into `$pkgdir`, and it is not executed by `makepkg --nobuild --nodeps --noprepare` or `makepkg --printsrcinfo`. SKIP checksums on `.asc` signature files are not a safety concern for this gate, and while the raw GitHub source entries use a tag rather than a pinned commit, that is normal AUR practice and not malicious. There is no evidence of payload download-and-execute, data exfiltration, obfuscated code, or any other dangerous behavior in the parts of the PKGBUILD that would run during these commands.
</details>
<evidence>
</evidence>
<summary>
No malicious top-level code; sources come from package upstream. Safe for this gate.
</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious top-level code; sources come from package upstream. Safe for this gate.
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Note: 12 remote source(s) have no checksum (sha256sums=SKIP), so the fetched bytes are not verifiable and can change without any AUR update: voxtype-1.0.1-avx2.asc::https://github.com/peteonrails/voxtype/releases/download/v1.0.1/voxtype-1.0.1-linux-x86_64-avx2.asc, voxtype-1.0.1-avx512.asc::https://github.com/peteonrails/voxtype/releases/download/v1.0.1/voxtype-1.0.1-linux-x86_64-avx512.asc, voxtype-1.0.1-vulkan.asc::https://github.com/peteonrails/voxtype/releases/download/v1.0.1/voxtype-1.0.1-linux-x86_64-vulkan.asc, voxtype-1.0.1-onnx-avx2.asc::https://github.com/peteonrails/voxtype/releases/download/v1.0.1/voxtype-1.0.1-linux-x86_64-onnx-avx2.asc, voxtype-1.0.1-onnx-avx512.asc::https://github.com/peteonrails/voxtype/releases/download/v1.0.1/voxtype-1.0.1-linux-x86_64-onnx-avx512.asc, voxtype-1.0.1-onnx-cuda-12.asc::https://github.com/peteonrails/voxtype/releases/download/v1.0.1/voxtype-1.0.1-linux-x86_64-onnx-cuda-12.asc, voxtype-1.0.1-onnx-cuda-13.asc::https://github.com/peteonrails/voxtype/releases/download/v1.0.1/voxtype-1.0.1-linux-x86_64-onnx-cuda-13.asc, voxtype-1.0.1-onnx-migraphx.asc::https://github.com/peteonrails/voxtype/releases/download/v1.0.1/voxtype-1.0.1-linux-x86_64-onnx-migraphx.asc, voxtype-1.0.1-osd.asc::https://github.com/peteonrails/voxtype/releases/download/v1.0.1/voxtype-1.0.1-linux-x86_64-osd.asc, voxtype-1.0.1-osd-gtk4.asc::https://github.com/peteonrails/voxtype/releases/download/v1.0.1/voxtype-1.0.1-linux-x86_64-osd-gtk4.asc, voxtype-1.0.1-osd-quickshell.asc::https://github.com/peteonrails/voxtype/releases/download/v1.0.1/voxtype-1.0.1-linux-x86_64-osd-quickshell.asc, voxtype-1.0.1-audio-bridge.asc::https://github.com/peteonrails/voxtype/releases/download/v1.0.1/voxtype-1.0.1-linux-x86_64-audio-bridge.asc
Reviewing the 5 file(s) in the AUR repository. The 50 downloaded file(s) are upstream content, outside the threat model, and are not read.
Reviewing the AUR repository's files...
[0/5] Reviewing .SRCINFO...
[0/5] Reviewing .SRCINFO, .gitignore...
[0/5] Reviewing .SRCINFO, .gitignore, .nvchecker.toml...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The .SRCINFO file is standard metadata for an AUR package. It declares sources from the official GitHub repository (<code>https://github.com/peteonrails/voxtype</code>), includes valid PGP keys for verification, and lists dependencies, optdepends, and checksums. The use of SKIP checksums for signature files (.asc) is normal practice. There are no hidden commands, obfuscated code, or suspicious network requests. The file does not contain any executable logic; it is purely declarative. No evidence of malicious behavior was found.
</details>
<evidence>
</evidence>
<summary>Standard AUR metadata, no malicious content.</summary>
</security_assessment>

[0/5] Reviewing .SRCINFO, .gitignore, .nvchecker.toml, PKGBUILD...
[1/5] Reviewing .gitignore, .nvchecker.toml, PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata, no malicious content.
LLM auditresponse for .nvchecker.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard nvchecker configuration file for the voxtype-bin package. It instructs nvchecker to check the GitHub repository `peteonrails/voxtype` for the latest release using tags prefixed with "v". There is no obfuscation, no network requests beyond the expected GitHub API call, no system modifications, and no dangerous commands. The use of `use_latest_release = true` is a normal and expected practice for version checking tools. Nothing in this file indicates malicious or supply-chain attack behavior.
</details>
<evidence>
</evidence>
<summary>Standard nvchecker config, no malicious content.</summary>
</security_assessment>

[2/5] Reviewing .gitignore, PKGBUILD...
+ Reviewed .nvchecker.toml. Status: SAFE -- Standard nvchecker config, no malicious content.
[2/5] Reviewing .gitignore, PKGBUILD, voxtype-bin.install...
LLM auditresponse for voxtype-bin.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `voxtype-bin.install` is a standard pacman install script for managing the voxtype binary dispatch. It performs CPU feature detection, GPU detection, CUDA version detection, and creates/updates symbolic links or wrapper scripts in `/usr/bin/voxtype` and `/usr/lib/voxtype/`. All operations are within the package's own installation paths and standard system directories. There is no evidence of malicious behavior: no network requests, no obfuscated code, no exfiltration of data, no unexpected downloads or execution of untrusted code. The script uses `/tmp` for temporary upgrade state, which is normal practice. The code is well-documented and serves the legitimate purpose of selecting the correct binary variant for the installed hardware.
</details>
<evidence></evidence>
<summary>Standard install script, no malicious behavior.</summary>
</security_assessment>

[3/5] Reviewing .gitignore, PKGBUILD...
+ Reviewed voxtype-bin.install. Status: SAFE -- Standard install script, no malicious behavior.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a standard Arch User Repository (AUR) package definition for `voxtype-bin`, a pre-built binary package. The file contains no obfuscated code, no use of dangerous commands like `eval` or `base64`, and no unexpected network requests. All source URLs point to the project's official GitHub releases (`https://github.com/peteonrails/voxtype/releases/download/...`) and the upstream repository on `raw.githubusercontent.com`, which is normal for fetching configuration, systemd service files, shell completions, and documentation. Nearly all binary sources have SHA-256 checksums provided (with `SKIP` only for detached PGP signature `.asc` files, which is standard practice), and valid PGP keys are listed for signature verification. The `package()` function only installs files into the package directory and creates symlinks — no post-install hooks, no build-time code execution, no tampering with system files outside the application scope. There is no evidence of injected malicious code or supply-chain attack behavior.
</details>
<evidence>
</evidence>
<summary>Standard AUR PKGBUILD with no malicious indicators.</summary>
</security_assessment>

[4/5] Reviewing .gitignore...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD with no malicious indicators.
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
The `.gitignore` file is a standard Git configuration file that specifies intentionally untracked files. It contains only glob patterns and exceptions (lines starting with `!`), with no executable code, network requests, system operations, or obfuscation. There is no evidence of malicious or suspicious behavior. The file is purely declarative and poses no security risk.
</details>
<evidence></evidence>
<summary>Standard gitignore file, no risk.</summary>
</security_assessment>

[5/5] Reviewing ...
+ Reviewed .gitignore. Status: SAFE -- Standard gitignore file, no risk.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 41,593
  Completion Tokens: 2,912
  Total Tokens: 44,505
  Total Cost: $0.004201
  Execution Time: 89.26 seconds

Final Status: SAFE


No issues found.
