---
package: shelly-flatpak-backend-bin
pkgbase: shelly-bin
pkgver: 3.1.0
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 34eecedf33cdb5da67bea8964402044d560850d8
prompt_tokens: 85248
completion_tokens: 2033
total_tokens: 87281
cost: 0.0076274156
execution_time: 253.15
files_reviewed: 3
files_skipped: 1
files_unauditable: 35
unpinned_sources: 0
date: 2026-08-25T11:15:17Z
file_verdicts:
  - file: Shelly-Flatpak-Backend-linux-x64-3.1.0.tar.gz
    status: skipped
    summary: "Skipping binary file: Shelly-Flatpak-Backend-linux-x64-3.1.0.tar.gz"
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD, no malicious behavior found.
  - file: src/shelly.fish
    status: safe
    summary: Pure Fish completions file, no malicious content.
  - file: src/_shelly
    status: safe
    summary: Standard Zsh completion script, no malicious code.
---

shelly-flatpak-backend-bin is built from shelly-bin
Cloning https://aur.archlinux.org/shelly-bin.git...
Cloned shelly-flatpak-backend-bin
Analyzing shelly-flatpak-backend-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>The PKGBUILD defines only static variables (pkgbase, pkgname, pkgver, etc.) at the top level, with no command substitutions or function calls that can execute code during sourcing. There is no `pkgver()` function. The `source` array points to two `.tar.gz` artifacts from the official GitHub releases of the upstream project (`github.com/Seafoam-Labs/Shelly-ALPM`), fetched over HTTPS. Both entries include SHA-256 checksums (non-SKIP). No other source entries (e.g., git+, unexpected URLs) exist. `makepkg --nobuild --nodeps --noprepare` will only download these two tarballs and extract them; no code inside `prepare()`, `build()`, or `package()` (which contain only standard installation commands and a generated helper script) can run during this step. The gate is safe.</details>
<evidence></evidence>
<summary>Safe: static top-level, standard sources.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Safe: static top-level, standard sources.
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
The PKGBUILD is a standard AUR package for a prebuilt binary application. It downloads precompiled tarballs from the project's official GitHub releases with pinned SHA256 checksums (no SKIP). The installation steps copy binaries, desktop files, a polkit policy, icons, completions, and translations into the package directory. The only dynamic operation is generating a man page by running the shelly CLI binary (`$srcdir/shelly utility --docs | go-md2man`), which is a normal upstream documentation generation step using the application's own binary. The flatpak integration script (`shelly-flatpak-integrate`) patches user-local `.desktop` files under `$HOME/.local/share/applications` to add a "Manage in Shelly" action for Flatpak applications. This operates entirely within the user's home directory, only modifies Flatpak's own exported desktop entries, and is clearly part of the application's intended functionality (Flatpak integration). There are no obfuscated commands, unexpected network fetches, exfiltration attempts, backdoors, or any code beyond what serves the stated package purpose. All sources and checksums align with the upstream project.
</details>
<evidence></evidence>
<summary>Standard AUR PKGBUILD, no malicious behavior found.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD, no malicious behavior found.
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
The file `shelly.fish` contains Fish shell completion definitions for the `shelly` command-line tool. It consists entirely of `complete -c shelly` statements and helper functions that call standard system utilities (`pacman`, `flatpak`) and Fish builtins (`string`, `test`, `commandline`). There is no obfuscated code, no network requests or downloads, no data exfiltration, no encoded or base64-assembled commands, no `eval`, `curl`, `wget`, or any other dangerous or suspicious operations. The file serves only to provide tab-completion suggestions and is auto-generated from the Shelly CLI catalog, which is normal upstream behavior. No supply-chain attack indicators are present.
</details>
<evidence></evidence>
<summary>Pure Fish completions file, no malicious content.</summary>
</security_assessment>

[1/2] Reviewing src/_shelly...
+ Reviewed src/shelly.fish. Status: SAFE -- Pure Fish completions file, no malicious content.
LLM auditresponse for _shelly:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a Zsh completion script for the Shelly CLI tool, auto-generated from the native Shelly CLI catalog. It defines completion functions that query standard system tools (`pacman`, `flatpak`) to generate package lists for tab-completion. There is no obfuscated code, no network requests (beyond what the listed tools would perform if invoked by the user), no file modifications, no `eval`, `base64`, `curl`, or `wget` usage, and no exfiltration of data. The script is entirely consistent with the expected purpose of providing shell completions for a package management utility. No supply-chain attack indicators are present.
</details>
<evidence>
</evidence>
<summary>Standard Zsh completion script, no malicious code.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed src/_shelly. Status: SAFE -- Standard Zsh completion script, no malicious code.
Reviewed all additional files.
Reviewed additional files.
Audit complete! Result: No issues found
(Skipped 1 file: Shelly-Flatpak-Backend-linux-x64-3.1.0.tar.gz)

API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 85,248
  Completion Tokens: 2,033
  Total Tokens: 87,281
  Total Cost: $0.007627
  Execution Time: 253.15 seconds

Final Status: SAFE


No issues found.


Audit Skips:

Shelly-Flatpak-Backend-linux-x64-3.1.0.tar.gz: [SKIPPED] Skipping binary file: Shelly-Flatpak-Backend-linux-x64-3.1.0.tar.gz
