---
package: orca-ide-bin
pkgver: 1.4.226
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 13092
completion_tokens: 3580
total_tokens: 16672
cost: 0.001842932
execution_time: 45.53
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-15T07:18:29Z
file_verdicts:
  - file: orca-ide.sh
    status: safe
    summary: Standard Electron launcher script, no malicious behavior.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata with pinned checksums and upstream-only sources; no security issues.
  - file: PKGBUILD
    status: safe
    summary: Standard Electron repackaging from upstream GitHub release; no malicious behavior found.
---

Materializing orca-ide-bin from local mirror...
Materialized orca-ide-bin
Analyzing orca-ide-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
Running `makepkg --printsrcinfo` sources the PKGBUILD and executes only its top-level code. In this PKGBUILD, the top-level scope consists solely of variable assignments, arrays, and function definitions (`_get_app_dir`, `_check_electron_version`, `prepare`, `package`). There are no top-level command substitutions that invoke downloads, executables, or data-exfiltration commands.

The URLs in the source arrays point to the project's own GitHub releases, and no download or verification occurs during `makepkg --printsrcinfo`. Any potentially interesting behavior inside `prepare()` or `package()` would not execute during this command and is out of scope for this gate; it should be reviewed in the full PKGBUILD audit.
</details>
<evidence>
</evidence>
<summary>
Top-level PKGBUILD sourcing is benign; no commands execute during printsrcinfo.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Top-level PKGBUILD sourcing is benign; no commands execute during printsrcinfo.
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, PKGBUILD...
[0/3] Reviewing .SRCINFO, PKGBUILD, orca-ide.sh...
LLM auditresponse for orca-ide.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard Electron application launcher script for the Orca IDE. It sets the library path, determines the application directory (app.asar, app, or app.asar.unpacked), and launches the Electron runtime with the appropriate arguments. The `--no-sandbox` flag is conditionally added when running as root, which is a common Electron workaround and not indicative of malicious behavior. There are no network requests, obfuscated code, encoded commands, or unexpected file operations. The script is consistent with normal AUR packaging practices for a prebuilt binary Electron application.
</details>
<evidence></evidence>
<summary>Standard Electron launcher script, no malicious behavior.</summary>
</security_assessment>

[1/3] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed orca-ide.sh. Status: SAFE -- Standard Electron launcher script, no malicious behavior.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This `.SRCINFO` file is plain package metadata for the `orca-ide-bin` AUR package. It declares a description and URL matching the project (`https://onorca.dev/`, with sources from the upstream GitHub repository `stablyai/orca`). All three source entries (LICENSE file, shell wrapper, and the per-architecture RPM binaries) are fetched from the project's own release assets, and every source has an explicit pinned SHA-256 checksum, so downloads are verifiable. There are no network requests beyond the declared upstream sources, no scripts, no eval/base64/curl tricks, no file operations, and nothing that deviates from standard AUR packaging practice. The dependencies (`electron43`, `nodejs`, `python`, `github-cli`, `npm`) are consistent with the described purpose of an IDE for coding agents. No evidence of injected or malicious behavior was found.
</details>
<evidence>

</evidence>
<summary>
Standard AUR metadata with pinned checksums and upstream-only sources; no security issues.
</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata with pinned checksums and upstream-only sources; no security issues.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a standard repackaging of a prebuilt Electron application from the project's own upstream GitHub releases. The sources are pinned to a specific version with sha256 checksums, and the only network activity is makepkg fetching the declared upstream assets and LICENSE file. There is no curl-bash execution, no eval/base64/obfuscation, and no download from an unrelated or unexpected host.

The `prepare()` function extracts the app.asar, patches `process.resourcesPath` references for system Electron usage, removes other-platform directories, and repacks the asar. The `rm -rf` is scoped to `$srcdir` and matches platform-specific directory names, which is normal cleanup when adapting a multi-platform Electron bundle for Linux. The launcher script simply invokes the system Electron binary to run the application's CLI entry point. The `package()` function only installs files into `$pkgdir`. No evidence of injected malicious code or supply-chain attack was found.
</details>
<evidence>
</evidence>
<summary>Standard Electron repackaging from upstream GitHub release; no malicious behavior found.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard Electron repackaging from upstream GitHub release; no malicious behavior found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 13,092
  Completion Tokens: 3,580
  Total Tokens: 16,672
  Total Cost: $0.001843
  Execution Time: 45.53 seconds

Final Status: SAFE


No issues found.
