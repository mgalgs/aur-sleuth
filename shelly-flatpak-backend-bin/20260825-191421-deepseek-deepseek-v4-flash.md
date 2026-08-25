---
package: shelly-flatpak-backend-bin
pkgbase: shelly-bin
pkgver: 3.1.0
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: a0710c34d2de3f3412d0c0b09b199eab9988648e
prompt_tokens: 85248
completion_tokens: 2060
total_tokens: 87308
cost: 0.0073817968
execution_time: 193.35
files_reviewed: 3
files_skipped: 1
files_unauditable: 35
unpinned_sources: 0
date: 2026-08-25T19:14:20Z
file_verdicts:
  - file: Shelly-Flatpak-Backend-linux-x64-3.1.0.tar.gz
    status: skipped
    summary: "Skipping binary file: Shelly-Flatpak-Backend-linux-x64-3.1.0.tar.gz"
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD with no malicious behavior detected.
  - file: src/shelly.fish
    status: safe
    summary: Standard Fish completions file, no malicious content.
  - file: src/_shelly
    status: safe
    summary: No malicious behavior detected; safe completion script.
---

shelly-flatpak-backend-bin is built from shelly-bin
Cloning https://aur.archlinux.org/shelly-bin.git...
Cloned shelly-flatpak-backend-bin
Analyzing shelly-flatpak-backend-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only top-level variable assignments and function definitions (`package_shelly-bin` and `package_shelly-flatpak-backend-bin`). No code outside of functions executes during the sourcing step of `makepkg --nobuild --nodeps --noprepare` or `makepkg --printsrcinfo`. There is no `pkgver()` function. The `source` array points to two tar.gz archives from the official GitHub releases of the project, which is standard. The checksums are pinned and non-SKIP. No obfuscation, network requests beyond fetching sources, or dangerous commands are present at the top level. The commands under review only fetch and extract the tarballs for auditing; they do not execute any code from the package itself.
</details>
<evidence>
</evidence>
<summary>No top-level malicious code; safe to fetch sources.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No top-level malicious code; safe to fetch sources.
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
The PKGBUILD follows standard AUR packaging practices. Sources are downloaded from the project's official GitHub releases with pinned SHA256 checksums. All installed files serve the application's stated purpose: binaries, desktop entries, polkit policy, icons, shell completions, man pages, translations, and a Flatpak integration helper script. The Flatpak integration script only modifies desktop files under standard Flatpak export directories and user-local applications, which is expected functionality for a Flatpak backend. No dangerous commands, obfuscated code, data exfiltration, or behavior outside the application's scope is present.
</details>
<evidence></evidence>
<summary>Standard AUR PKGBUILD with no malicious behavior detected.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD with no malicious behavior detected.
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
This file is a Fish shell completions script for the `shelly` CLI. It defines helper functions that call `pacman` and `flatpak` with standard query flags, and a large number of `complete -c shelly` statements that set up shell completions for Shelly's subcommands and options. No obfuscated code, network requests, downloads, or file system modifications are present. The only external commands (`pacman`, `flatpak`, `string`) are standard utilities invoked for legitimate completion generation. There is no evidence of supply-chain attack, backdoor, or malicious behavior.
</details>
<evidence></evidence>
<summary>Standard Fish completions file, no malicious content.</summary>
</security_assessment>

[1/2] Reviewing src/_shelly...
+ Reviewed src/shelly.fish. Status: SAFE -- Standard Fish completions file, no malicious content.
LLM auditresponse for _shelly:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a Zsh completion script (`_shelly`) for the `shelly` command-line tool. It defines completion functions that query local package databases (`pacman`, `flatpak`) to generate lists of packages and options for tab completion. All executed commands (`pacman -Slq`, `pacman -Qq`, `flatpak remote-ls`, etc.) are standard system tools invoked with safe arguments and stderr redirection. There is no obfuscated code, no network requests to unexpected hosts, no use of `eval`, `curl`, `wget`, or other potentially dangerous constructs. The script is auto-generated from the "native Shelly CLI catalog" and performs no operations beyond what is expected for a package-manager completion file. No evidence of malicious intent or supply-chain injection was found.
</details>
<evidence></evidence>
<summary>No malicious behavior detected; safe completion script.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed src/_shelly. Status: SAFE -- No malicious behavior detected; safe completion script.
Reviewed all additional files.
Reviewed additional files.
Audit complete! Result: No issues found
(Skipped 1 file: Shelly-Flatpak-Backend-linux-x64-3.1.0.tar.gz)

API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 85,248
  Completion Tokens: 2,060
  Total Tokens: 87,308
  Total Cost: $0.007382
  Execution Time: 193.35 seconds

Final Status: SAFE


No issues found.


Audit Skips:

Shelly-Flatpak-Backend-linux-x64-3.1.0.tar.gz: [SKIPPED] Skipping binary file: Shelly-Flatpak-Backend-linux-x64-3.1.0.tar.gz
