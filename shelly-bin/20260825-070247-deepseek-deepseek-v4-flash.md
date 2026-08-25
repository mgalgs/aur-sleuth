---
package: shelly-bin
pkgver: 3.1.0
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 34eecedf33cdb5da67bea8964402044d560850d8
prompt_tokens: 85307
completion_tokens: 2486
total_tokens: 87793
cost: 0.007999261074
execution_time: 148.38
files_reviewed: 3
files_skipped: 1
files_unauditable: 35
unpinned_sources: 0
date: 2026-08-25T07:02:46Z
file_verdicts:
  - file: Shelly-Flatpak-Backend-linux-x64-3.1.0.tar.gz
    status: skipped
    summary: "Skipping binary file: Shelly-Flatpak-Backend-linux-x64-3.1.0.tar.gz"
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD; no malicious indicators found.
  - file: src/shelly.fish
    status: safe
    summary: Standard Fish completions, no malicious behavior.
  - file: src/_shelly
    status: safe
    summary: Standard auto-generated Zsh completions; no malicious behavior.
---

Cloning https://aur.archlinux.org/shelly-bin.git...
Cloned shelly-bin
Analyzing shelly-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is safe to process with `makepkg --nobuild --nodeps --noprepare` and `makepkg --printsrcinfo`. The `source` array only downloads two prebuilt release tarballs from the package's own upstream GitHub repository (Seafoam-Labs/Shelly-ALPM), and both entries have pinned SHA-256 checksums. There is no `pkgver()` function and no top-level command substitution, network call, or encoded/obfuscated code that would execute while the PKGBUILD is sourced.

The `package_*()` functions contain installation logic and one call that executes the downloaded `shelly` binary during packaging, but `--nobuild --noprepare` stops before `build()` or `package()` runs, so that code is out of scope for this gate and should be reviewed in the full PKGBUILD audit. Nothing in this file would execute malicious code during the two commands in question.
</details>
<evidence>
</evidence>
<summary>
Source fetching and PKGBUILD sourcing are safe; package functions are not executed at this stage.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Source fetching and PKGBUILD sourcing are safe; package functions are not executed at this stage.
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Running makepkg --printsrcinfo to get source files for agent...
makepkg --printsrcinfo successful
Reviewing required files...
[0/2] Reviewing PKGBUILD...
[0/2] Reviewing PKGBUILD, Shelly-Flatpak-Backend-linux-x64-3.1.0.tar.gz...
[1/2] Reviewing PKGBUILD...
! Reviewed Shelly-Flatpak-Backend-linux-x64-3.1.0.tar.gz. Status: SKIPPED -- Skipping binary file: Shelly-Flatpak-Backend-linux-x64-3.1.0.tar.gz
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard AUR packaging practices. All sources are downloaded from the project's own GitHub releases with pinned SHA-256 checksums (not SKIP), ensuring supply-chain integrity. The package installs prebuilt binaries, desktop entries, icons, shell completions, a Polkit policy, and a helper script for Flatpak integration—all serving the stated purpose of a package manager. The embedded `shelly-flatpak-integrate` script modifies Flatpak desktop files under `~/.local/share/applications`, which is legitimate functionality for a package management tool offering Flatpak support. The build process runs the binary to generate documentation (man page via `go-md2man`), a common and expected step. No obfuscation, unexpected network requests, data exfiltration, or backdoor mechanisms are present.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD; no malicious indicators found.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD; no malicious indicators found.
Reviewed all required files.
Deciding which files to review next...
Note: 35 compiled/archived file(s) cannot be audited as text and were not reviewed (Shelly-ALPM-linux-x64-3.1.0.tar.gz, src/shelly, src/shelly-notifications and 32 more). For a package that ships prebuilt binaries, the audit covers the packaging, not the payload.
Decided to review 2 additional files: src/shelly.fish, src/_shelly
Reviewing additional files...
Reviewing additional files...
[0/2] Reviewing src/shelly.fish...
[0/2] Reviewing src/shelly.fish, src/_shelly...
LLM auditresponse for shelly.fish:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a Fish shell completions script for the `shelly` package, auto-generated from the native CLI catalog. It defines helper functions that call standard system commands (`pacman -Slq`, `pacman -Qq`, `pacman -Qqm`, `flatpak remote-ls`, `flatpak list`) to generate package lists for tab completion, and a large number of `complete` commands that wire up subcommands and options. There is no obfuscated code, no network requests to unexpected hosts, no downloading or executing external code, no attempt to exfiltrate data, and no deviation from standard packaging completion practices. The file is benign and serves its intended purpose of providing shell completions for the shelly CLI.
</details>
<evidence></evidence>
<summary>Standard Fish completions, no malicious behavior.</summary>
</security_assessment>

[1/2] Reviewing src/_shelly...
+ Reviewed src/shelly.fish. Status: SAFE -- Standard Fish completions, no malicious behavior.
LLM auditresponse for _shelly:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a Zsh completion file for `shelly`, a multi-backend package manager wrapper (ALPM, AUR, Flatpak, AppImage). The file is auto-generated from the upstream tool&apos;s native CLI catalog, as stated in the header.

The code defines helper functions that query standard system commands (`pacman -Slq`, `pacman -Qq`, `pacman -Qqm`, `flatpak remote-ls`, `flatpak list`) to provide package-name completions. It then defines a large `_shelly` completion function with exhaustive argument specifications for each subcommand and its options. All network-facing tools (pacman, flatpak) are invocations of the system&apos;s own package-management utilities, which is expected behavior for a package-manager frontend.

There is no obfuscated code, no `eval`, `base64`, `curl`, `wget`, or any other mechanism to fetch or execute code from external sources beyond the standard system commands mentioned. No unusual file operations or data exfiltration exist. The file is entirely declarative completion logic.
</details>
<evidence></evidence>
<summary>Standard auto-generated Zsh completions; no malicious behavior.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed src/_shelly. Status: SAFE -- Standard auto-generated Zsh completions; no malicious behavior.
Reviewed all additional files.
Reviewed additional files.
Audit complete! Result: No issues found
(Skipped 1 file: Shelly-Flatpak-Backend-linux-x64-3.1.0.tar.gz)

API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 85,307
  Completion Tokens: 2,486
  Total Tokens: 87,793
  Total Cost: $0.007999
  Execution Time: 148.38 seconds

Final Status: SAFE


No issues found.


Audit Skips:

Shelly-Flatpak-Backend-linux-x64-3.1.0.tar.gz: [SKIPPED] Skipping binary file: Shelly-Flatpak-Backend-linux-x64-3.1.0.tar.gz
