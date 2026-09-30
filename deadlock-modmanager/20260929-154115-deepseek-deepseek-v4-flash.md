---
package: deadlock-modmanager
pkgver: 1.1.0
pkgrel: 4
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 15385
completion_tokens: 8879
total_tokens: 24264
cost: 0.0025288109
execution_time: 338.85
files_reviewed: 5
files_skipped: 0
maintainer_files: 5
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-29T15:41:14Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard gitignore file; no security concerns.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata, no malicious content.
  - file: nvidia-webkit-wrapper.sh
    status: safe
    summary: Benign launcher wrapper setting local library paths and environment before exec.
  - file: deadlock-modmanager.desktop
    status: safe
    summary: Standard desktop entry file, no security concerns.
  - file: PKGBUILD
    status: safe
    summary: Standard Rust/Tauri package build; no malicious or suspicious behavior found.
---

Materializing deadlock-modmanager from local mirror...
Materialized deadlock-modmanager
Analyzing deadlock-modmanager AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The top-level scope of this PKGBUILD contains only standard variable assignments (pkgname, pkgver, source, checksums, etc.) and function definitions. No command substitutions, eval, external downloads, or other executable operations are present in the global scope. The functions `prepare()`, `build()`, and `package()` are defined but not invoked during `makepkg --printsrcinfo`, so they pose no risk at this step. The source array references the project&#39;s own official GitHub release tarball with a pinned checksum, which is standard and benign. Thus, sourcing this PKGBUILD for metadata extraction is safe.
</details>
<evidence></evidence>
<summary>No dangerous top-level code; sourcing is safe.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous top-level code; sourcing is safe.
Reviewing the 5 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/5] Reviewing .SRCINFO...
[0/5] Reviewing .SRCINFO, .gitignore...
[0/5] Reviewing .SRCINFO, .gitignore, PKGBUILD...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
The `.gitignore` file contains standard ignore patterns used in Arch packaging workflows. It excludes build artifacts (`pkg/`, `src/`), package archives (`*.tar.zst`), log files (`*.log`), and a likely temporary build directory (`deadlock-modmanager/`). There is no executable code, no network operations, no file manipulation beyond git's intended behavior, and no obfuscation. This file is entirely benign and follows typical AUR practice.
</details>
<evidence></evidence>
<summary>Standard gitignore file; no security concerns.</summary>
</security_assessment>

[0/5] Reviewing .SRCINFO, .gitignore, PKGBUILD, deadlock-modmanager.desktop...
[1/5] Reviewing .SRCINFO, PKGBUILD, deadlock-modmanager.desktop...
+ Reviewed .gitignore. Status: SAFE -- Standard gitignore file; no security concerns.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The .SRCINFO file is a standard AUR metadata descriptor. It declares the package name, version, dependencies, and a source tarball URL pointing to the upstream GitHub repository (deadlock-mod-manager/deadlock-mod-manager) with a pinned tag (v1.1.0). A SHA-256 checksum is provided, verifying the integrity of the source archive. There are no embedded scripts, no network requests to unexpected hosts, no obfuscation, and no suspicious operations. All dependencies are typical system libraries for a Rust/Tauri GUI application. The file contains only declarative metadata and does not execute any commands.
</details>
<evidence></evidence>
<summary>Standard AUR metadata, no malicious content.</summary>
</security_assessment>

[1/5] Reviewing .SRCINFO, PKGBUILD, deadlock-modmanager.desktop, nvidia-webkit-wrapper.sh...
[2/5] Reviewing PKGBUILD, deadlock-modmanager.desktop, nvidia-webkit-wrapper.sh...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata, no malicious content.
LLM auditresponse for nvidia-webkit-wrapper.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard application launcher wrapper. It resolves the script's own directory, adds a local `bin` directory to `LD_LIBRARY_PATH`, conditionally enables a WebKit environment variable when running under Wayland with an NVIDIA GPU, and then executes the actual bundled binary from the same directory.

No network access, obfuscated code, encoded payloads, file exfiltration, or unexpected system modifications are present. The script only affects the runtime environment of the application it launches. This is consistent with ordinary packaging and contains no evidence of malicious behavior.
</details>
<evidence>
</evidence>
<summary>
Benign launcher wrapper setting local library paths and environment before exec.
</summary>
</security_assessment>

[3/5] Reviewing PKGBUILD, deadlock-modmanager.desktop...
+ Reviewed nvidia-webkit-wrapper.sh. Status: SAFE -- Benign launcher wrapper setting local library paths and environment before exec.
LLM auditresponse for deadlock-modmanager.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard Freedesktop.org `.desktop` file used by the Arch Linux package for a game mod manager. It contains no executable code, no network requests, no obfuscation, and no file operations. It simply declares the application entry point, icon, and category for the desktop environment. This is a normal and expected part of packaging an application in the AUR.
</details>
<evidence></evidence>
<summary>Standard desktop entry file, no security concerns.</summary>
</security_assessment>

[4/5] Reviewing PKGBUILD...
+ Reviewed deadlock-modmanager.desktop. Status: SAFE -- Standard desktop entry file, no security concerns.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a standard Rust/Tauri build for the deadlock-mod-manager desktop application. It downloads a tagged source tarball from the project's official GitHub repository with a pinned `sha256sums` checksum, then builds it with `pnpm` and `cargo`/`cargo-tauri`. The `sed` command in `prepare()` is a source-level path adjustment in `Cargo.toml`/`Cargo.lock` related to an upstream monorepo merge; it does not fetch, execute, or redirect anything to an unexpected host.

The `build()` function sets normal compiler and Tauri environment variables, with `VITE_*` URLs pointing to the application's own API/web/auth domains. The `package()` function installs only the built binary, icons, `.desktop` file, and metainfo into `$pkgdir`. There is no use of `eval`, `base64`, `curl | bash`, obfuscated code, writes outside `$pkgdir`, or any operation that exfiltrates local data. The dependency fetching via `pnpm install` and `cargo fetch` is ordinary for this project stack and is not malicious by itself.
</details>
<evidence></evidence>
<summary>Standard Rust/Tauri package build; no malicious or suspicious behavior found.</summary>
</security_assessment>

[5/5] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard Rust/Tauri package build; no malicious or suspicious behavior found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 15,385
  Completion Tokens: 8,879
  Total Tokens: 24,264
  Total Cost: $0.002529
  Execution Time: 338.85 seconds

Final Status: SAFE


No issues found.
