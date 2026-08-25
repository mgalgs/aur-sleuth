---
package: shelly-bin
pkgver: 3.1.0
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: a0710c34d2de3f3412d0c0b09b199eab9988648e
prompt_tokens: 85307
completion_tokens: 3086
total_tokens: 88393
cost: 0.0075561654
execution_time: 158.33
files_reviewed: 3
files_skipped: 1
files_unauditable: 35
unpinned_sources: 0
date: 2026-08-25T19:02:58Z
file_verdicts:
  - file: Shelly-Flatpak-Backend-linux-x64-3.1.0.tar.gz
    status: skipped
    summary: "Skipping binary file: Shelly-Flatpak-Backend-linux-x64-3.1.0.tar.gz"
  - file: PKGBUILD
    status: safe
    summary: Pinned official release binaries; no malicious or suspicious behavior found.
  - file: src/_shelly
    status: safe
    summary: Standard Zsh completion script, no malicious code.
  - file: src/shelly.fish
    status: safe
    summary: Standard Fish completion script, no malicious behavior detected.
---

Cloning https://aur.archlinux.org/shelly-bin.git...
Cloned shelly-bin
Analyzing shelly-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only top-level variable assignments (pkgbase, pkgname, pkgver, source, sha256sums, etc.) and two package functions (`package_shelly-bin` and `package_shelly-flatpak-backend-bin`). No dangerous commands, eval, or command substitutions exist in the global scope or in `pkgver()` (which is not defined). The two source entries are standard tarballs from the project's official GitHub releases with SHA-256 checksums provided. Running `makepkg --nobuild --nodeps --noprepare` will only fetch these tarballs and extract them; no executable code from the package runs at this stage.
</details>
<evidence></evidence>
<summary>No top-level malicious code; source fetch is safe.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No top-level malicious code; source fetch is safe.
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
This PKGBUILD follows standard AUR packaging for a prebuilt binary package. Both source tarballs are downloaded from the project's official GitHub releases and have pinned SHA-256 checksums. The package functions install the expected binaries, desktop entries, icons, shell completions, a polkit policy, and a man page. There are no suspicious network calls, no obfuscated or encoded commands, and no use of `eval`, `base64`, `curl`, or `wget` outside the normal source fetch.

The man page generation runs the downloaded `shelly` binary with `utility --docs` and pipes it to `go-md2man`; while this executes code from the release tarball during packaging, the tarball is from the upstream project and checksum-pinned, and the operation serves the legitimate purpose of generating documentation. The installed `shelly-flatpak-integrate` helper script copies and patches Flatpak `.desktop` files under the user's local applications directory. This modifies files outside the package directory, but it is an explicit integration feature of the application (adding a "Manage in Shelly" action to Flatpak entries), not data exfiltration, backdoor installation, or remote code execution.

No evidence of injected malicious code, credential theft, or supply-chain attack behavior was found. The packaging is consistent with the application's stated purpose.
</details>
<evidence></evidence>
<summary>
Pinned official release binaries; no malicious or suspicious behavior found.
</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Pinned official release binaries; no malicious or suspicious behavior found.
Reviewed all required files.
Deciding which files to review next...
Note: 35 compiled/archived file(s) cannot be audited as text and were not reviewed (Shelly-ALPM-linux-x64-3.1.0.tar.gz, src/shelly, src/shelly-notifications and 32 more). For a package that ships prebuilt binaries, the audit covers the packaging, not the payload.
Decided to review 2 additional files: src/shelly.fish, src/_shelly
Reviewing additional files...
Reviewing additional files...
[0/2] Reviewing src/shelly.fish...
[0/2] Reviewing src/shelly.fish, src/_shelly...
LLM auditresponse for _shelly:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard Zsh completion file for the `shelly` CLI tool, auto-generated from the tool's command catalog. It provides tab-completion for commands, subcommands, options, and package names. The helper functions (`_shelly_packages_standard_sync`, `_shelly_packages_standard_local`, etc.) invoke local system tools (`pacman`, `flatpak`) to fetch package lists for completion purposes. These are expected operations for a package-management CLI and do not exfiltrate data, download or execute arbitrary code, or perform any other malicious actions. There is no obfuscation, no network requests beyond what the user explicitly invokes via `shelly`, and no deviation from normal completion script behavior.
</details>
<evidence></evidence>
<summary>Standard Zsh completion script, no malicious code.</summary>
</security_assessment>

[1/2] Reviewing src/shelly.fish...
+ Reviewed src/_shelly. Status: SAFE -- Standard Zsh completion script, no malicious code.
LLM auditresponse for shelly.fish:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a Fish shell completion script auto-generated from the Shelly CLI tool's command catalog. It contains only helper functions that call pacman and flatpak for package listing, along with a large set of `complete` definitions to enable tab-completion for the `shelly` command. There is **no evidence** of:
- Obfuscated or encoded commands
- Network requests or downloads (no curl, wget, eval, base64, etc.)
- File exfiltration or system modification
- Backdoors, reverse shells, or credential theft

The helper functions execute `pacman` and `flatpak` commands, which are the standard way to obtain package lists for completion purposes. All activity is consistent with normal, benign shell completion logic for a package management tool.
</details>
<evidence>
</evidence>
<summary>Standard Fish completion script, no malicious behavior detected.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed src/shelly.fish. Status: SAFE -- Standard Fish completion script, no malicious behavior detected.
Reviewed all additional files.
Reviewed additional files.
Audit complete! Result: No issues found
(Skipped 1 file: Shelly-Flatpak-Backend-linux-x64-3.1.0.tar.gz)

API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 85,307
  Completion Tokens: 3,086
  Total Tokens: 88,393
  Total Cost: $0.007556
  Execution Time: 158.33 seconds

Final Status: SAFE


No issues found.


Audit Skips:

Shelly-Flatpak-Backend-linux-x64-3.1.0.tar.gz: [SKIPPED] Skipping binary file: Shelly-Flatpak-Backend-linux-x64-3.1.0.tar.gz
