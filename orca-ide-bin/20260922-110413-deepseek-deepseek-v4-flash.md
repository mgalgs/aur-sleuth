---
package: orca-ide-bin
pkgver: 1.4.207
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 13958
completion_tokens: 8330
total_tokens: 22288
cost: 0.002712938508
execution_time: 196.64
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-22T11:04:13Z
file_verdicts:
  - file: PKGBUILD
    status: safe
    summary: Standard AUR repackaging, no malicious code.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata; pinned checksums, upstream-only downloads, no malicious behavior.
  - file: orca-ide.sh
    status: safe
    summary: Standard Electron wrapper; no malicious network, obfuscation, or injected commands.
---

Materializing orca-ide-bin from local mirror...
Materialized orca-ide-bin
Analyzing orca-ide-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only variable definitions, array definitions, and function definitions in its global scope. No top-level command substitutions, no downloads, no obfuscated code, and no exfiltration mechanisms are executed when sourcing the file. The functions `_get_app_dir()` and `_check_electron_version()` are defined but not called at top level. All content in `prepare()`, `build()`, and `package()` is inside function bodies and will not execute during `makepkg --printsrcinfo`. Therefore, sourcing this file poses no immediate security risk.
</details>
<evidence></evidence>
<summary>No malicious top-level code; sourcing is safe.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious top-level code; sourcing is safe.
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, PKGBUILD...
[0/3] Reviewing .SRCINFO, PKGBUILD, orca-ide.sh...
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD downloads prebuilt RPMs from the official GitHub releases (`stablyai/orca`) with pinned version numbers and explicit SHA256 checksums for all architectures. No checksum `SKIP` is used. The `prepare()` function extracts the app.asar, adjusts file paths and removes platform-specific binaries (Darwin, Windows, ARM64 variants) — all standard operations for repackaging an Electron application for Linux distribution. The wrapper script sets and unsets environment variables to handle Electron's Node.js integration, then launches the CLI entry point with `electron43`. There are no obfuscated commands, no unexpected network requests (apart from the declared source URLs), and no data exfiltration or backdoor mechanisms. The code is consistent with ordinary AUR packaging practices.
</details>
<evidence></evidence>
<summary>Standard AUR repackaging, no malicious code.</summary>
</security_assessment>

[1/3] Reviewing .SRCINFO, orca-ide.sh...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR repackaging, no malicious code.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard AUR `.SRCINFO` manifest for a prebuilt binary package (`-bin`). It declares a package named `orca-ide-bin` version `1.4.207`, depends on typical Electron/Node/Python tooling, and downloads the prebuilt x86_64 or aarch64 RPM from the project's own GitHub releases page (`github.com/stablyai/orca`), which is consistent with the declared upstream URL (`https://onorca.dev/`). The only other sources are the project's own LICENSE file on GitHub and a local `orca-ide.sh` wrapper script shipped inside the AUR package. All three source types have pinned, non-SKIP sha256 checksums, so the downloaded artifacts are cryptographically verified against the values recorded in the manifest.

No suspicious network endpoints (the two hosts used, `github.com` and `raw.githubusercontent.com`, are the exact project's upstream), no encoding or obfuscation, no `eval`, `curl | bash`, file exfiltration, or unexpected shell operations appear in this file. The file is purely declarative metadata consistent with ordinary AUR packaging practice. There is no evidence of injected malicious code or a supply-chain attack in this file, and no reason to mark it UNSAFE.
</details>
<evidence>
</evidence>
<summary>
Standard AUR metadata; pinned checksums, upstream-only downloads, no malicious behavior.</summary>
</security_assessment>

[2/3] Reviewing orca-ide.sh...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata; pinned checksums, upstream-only downloads, no malicious behavior.
LLM auditresponse for orca-ide.sh:
 <security_assessment>
<decision>SAFE</decision>
<details>
This is the standard Electron application launcher generated by electron-builder (and installed by an AUR package). The template placeholders (`@appname@`, `@runname@`, `@electronversion@`, `@cfgdirname@`) are normal build-time substitutions. It sets standard Electron runtime environment variables, selects a trash backend per desktop environment, and launches the packaged Electron binary.

The flag-loading loop is the stock electron-builder template: it reads plain-text `.conf` files from `$XDG_CONFIG_HOME`, skips comments/blank lines, and word-splits each line into a flags array using `read -ra ... &lt;&lt;&lt; ...`. There is no `eval`, no command substitution, and no glob expansion of the loaded values, so flag-file contents cannot execute code. The final `exec` invokes the package's own bundled Electron binary with those flags — this is the application's normal runtime entry point, not a download-and-execute of external code.

No network requests, no `curl`/`wget`/`nc`, no `base64`/hex/octal encoding, no file writes outside the app bundle, and no reads of system secrets are present. The only minor considerations are hygiene-level, not threats: user-controlled Electron flag files can pass arguments such as `--no-sandbox`, but that requires pre-existing local write access to the user's own `~/.config` and is standard Electron behavior. The `--no-sandbox` fallback only activates when already running as root, which is also standard for Electron wrappers. Nothing here deviates from ordinary packaging practice for an Electron `-bin` AUR package.
</details>
<evidence>

</evidence>
<summary>Standard Electron wrapper; no malicious network, obfuscation, or injected commands.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed orca-ide.sh. Status: SAFE -- Standard Electron wrapper; no malicious network, obfuscation, or injected commands.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 13,958
  Completion Tokens: 8,330
  Total Tokens: 22,288
  Total Cost: $0.002713
  Execution Time: 196.64 seconds

Final Status: SAFE


No issues found.
