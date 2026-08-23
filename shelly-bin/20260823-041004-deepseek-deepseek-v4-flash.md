---
package: shelly-bin
pkgver: 3.0.6
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 3aa684c47f9b6bac5667ff3cee413c3a000b1b0d
prompt_tokens: 68618
completion_tokens: 2730
total_tokens: 71348
cost: 0.00393057868
execution_time: 71.42
files_reviewed: 3
files_skipped: 1
files_unauditable: 35
unpinned_sources: 0
date: 2026-08-23T04:10:03Z
file_verdicts:
  - file: Shelly-Flatpak-Backend-linux-x64-3.0.6.tar.gz
    status: skipped
    summary: "Skipping binary file: Shelly-Flatpak-Backend-linux-x64-3.0.6.tar.gz"
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD for a prebuilt package manager; no malicious code.
  - file: src/_shelly
    status: safe
    summary: Benign generated zsh completion script; only read-only package queries. No malicious behavior found.
  - file: src/shelly.fish
    status: safe
    summary: Standard fish completions; no malicious code.
---

Cloning https://aur.archlinux.org/shelly-bin.git...
Cloned shelly-bin
Analyzing shelly-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only variable definitions, array assignments, and function definitions in the global/top-level scope. There is no `pkgver()` function; `pkgver` is a static variable. No top-level command substitutions, `eval`, `curl`, or other code that would execute when sourced. The `source` array points to official GitHub release tarballs over HTTPS with non-SKIP SHA256 checksums. Running `makepkg --nobuild --nodeps --noprepare` will only download and extract these archives (if not cached), and `makepkg --printsrcinfo` will only source the file to print metadata. Neither command executes `prepare()`, `build()`, or `package()`, so the substantial operations in `package_*()` are not triggered. No genuinely malicious behavior is present in the scope executed during this narrow gate.
</details>
<summary>Safe: No top-level code execution; standard sources.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Safe: No top-level code execution; standard sources.
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Running makepkg --printsrcinfo to get source files for agent...
makepkg --printsrcinfo successful
Reviewing required files...
[0/2] Reviewing PKGBUILD...
[0/2] Reviewing PKGBUILD, Shelly-Flatpak-Backend-linux-x64-3.0.6.tar.gz...
[1/2] Reviewing PKGBUILD...
! Reviewed Shelly-Flatpak-Backend-linux-x64-3.0.6.tar.gz. Status: SKIPPED -- Skipping binary file: Shelly-Flatpak-Backend-linux-x64-3.0.6.tar.gz
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD is a standard AUR package for a prebuilt binary package manager. It downloads fixed releases from the project's official GitHub repository with valid SHA-256 checksums. All file operations are limited to installing the package's own binaries, icons, desktop entries, completions, and a Flatpak integration script into standard system directories. The Flatpak integration script only modifies Flatpak desktop entries in the user's local applications directory to add a "Manage in Shelly" action—this is upstream-expected functionality, not an injection. The man page generation runs the packaged binary to produce documentation, which is a common and accepted practice. There are no obfuscated commands, unexpected network requests, exfiltration, or backdoors. No issues found.
</details>
<summary>Standard AUR PKGBUILD for a prebuilt package manager; no malicious code.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD for a prebuilt package manager; no malicious code.
Reviewed all required files.
Deciding which files to review next...
Note: 35 compiled/archived file(s) cannot be audited as text and were not reviewed (Shelly-ALPM-linux-x64-3.0.6.tar.gz, src/shelly, src/shelly-notifications and 32 more). For a package that ships prebuilt binaries, the audit covers the packaging, not the payload.
Decided to review 2 additional files: src/shelly.fish, src/_shelly
Reviewing additional files...
Reviewing additional files...
[0/2] Reviewing src/shelly.fish...
[0/2] Reviewing src/shelly.fish, src/_shelly...
LLM auditresponse for _shelly:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a generated Zsh completion script for the `shelly` CLI. It defines completion helper functions that query read-only package information via `pacman -Slq`, `pacman -Qq`, `pacman -Qqm`, `flatpak remote-ls`, and `flatpak list`, and then provides `_describe`/`_arguments` completions for the shelly command surface. There is no obfuscation, no encoding tricks, no `eval`, no `curl`/`wget`, no file writes, and no execution of downloaded content. All commands are standard local read-only queries expected from a package-manager completion script.

The script only manipulates the `words`, `CURRENT`, and `consumed` zsh completion variables to rewrite the command line for subcommand completion. This is ordinary zsh completion behavior and does not modify the system or execute anything beyond the aforementioned read-only package queries. No evidence of supply-chain injection, data exfiltration, backdoors, or unexpected network activity was found.
</details>
<summary>
Benign generated zsh completion script; only read-only package queries. No malicious behavior found.</summary>
</security_assessment>

[1/2] Reviewing src/shelly.fish...
+ Reviewed src/_shelly. Status: SAFE -- Benign generated zsh completion script; only read-only package queries. No malicious behavior found.
LLM auditresponse for shelly.fish:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `shelly.fish` is a Fish shell completion script for the `shelly` package manager. It defines helper functions that run standard system commands (`pacman -Slq`, `pacman -Qq`, `pacman -Qqm`, `flatpak remote-ls`, `flatpak list`) to dynamically generate package lists for tab completions. These are normal operations for a package management completion script.  

There is no obfuscated code, no network requests to unexpected hosts, no use of `curl`, `wget`, `eval`, or `base64`, no file modifications, and no data exfiltration. The script only registers `complete` instructions for the Fish shell and does not execute any action beyond providing completions.  

All behavior is consistent with a legitimate, auto-generated completion file and does not indicate a supply-chain attack or any other malicious intent.
</details>
<summary>Standard fish completions; no malicious code.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed src/shelly.fish. Status: SAFE -- Standard fish completions; no malicious code.
Reviewed all additional files.
Reviewed additional files.
Audit complete! Result: No issues found
(Skipped 1 file: Shelly-Flatpak-Backend-linux-x64-3.0.6.tar.gz)

API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 68,618
  Completion Tokens: 2,730
  Total Tokens: 71,348
  Total Cost: $0.003931
  Execution Time: 71.42 seconds

Final Status: SAFE


No issues found.


Audit Skips:

/data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-zoewofwc/Shelly-Flatpak-Backend-linux-x64-3.0.6.tar.gz: [SKIPPED] Skipping binary file: Shelly-Flatpak-Backend-linux-x64-3.0.6.tar.gz
