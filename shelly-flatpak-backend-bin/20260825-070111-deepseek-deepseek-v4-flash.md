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
completion_tokens: 1961
total_tokens: 87209
cost: 0.007900997020
execution_time: 52.14
files_reviewed: 3
files_skipped: 1
files_unauditable: 35
unpinned_sources: 0
date: 2026-08-25T07:01:10Z
file_verdicts:
  - file: Shelly-Flatpak-Backend-linux-x64-3.1.0.tar.gz
    status: skipped
    summary: "Skipping binary file: Shelly-Flatpak-Backend-linux-x64-3.1.0.tar.gz"
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD with pinned checksums, no malicious behavior.
  - file: src/shelly.fish
    status: safe
    summary: Safe Fish completions for the shelly CLI tool.
  - file: src/_shelly
    status: safe
    summary: Standard completion script, no malicious behavior.
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
The PKGBUILD has no dangerous top-level code. Only variable assignments and the `source` array are evaluated during `makepkg --nobuild --nodeps --noprepare` and `makepkg --printsrcinfo`. The source URLs point to the project's own GitHub releases (`https://github.com/Seafoam-Labs/Shelly-ALPM/releases/download/...`) and are legitimate package artifacts. No `pkgver()` function exists, so no dynamic code runs during sourcing. The `prepare()`, `build()`, and `package()` functions contain shell code, but they are not executed by the two commands in question due to `--nobuild` and `--noprepare`; their content will be reviewed in the full PKGBUILD audit. The presence of sha256sums (or even SKIP values) is irrelevant for this narrow gate, since fetching and extraction does not execute code. There are no signs of injected malicious commands, obfuscation, or exfiltration that could run during source fetching or PKGBUILD sourcing.
</details>
<evidence></evidence>
<summary>No malicious code executes during source fetch or PKGBUILD sourcing; gate is safe.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious code executes during source fetch or PKGBUILD sourcing; gate is safe.
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
The PKGBUILD follows standard AUR packaging practices for a prebuilt binary release. Sources are downloaded from the project's official GitHub releases with pinned SHA256 checksums. All operations in `package_*` functions are limited to installing the provided binaries, desktop entries, policykit policy, icons, completions, and man pages. The generated man page step runs the upstream binary with `--docs` piped to `go-md2man`, which is normal for documentation generation. The installed `shelly-flatpak-integrate` script patches local Flatpak desktop entries to add a "Manage in Shelly" action — this serves the package's stated purpose of Flatpak integration, not exfiltration or backdoor activity. No obfuscation, unexpected network requests, or dangerous commands (eval, curl, etc.) are present. The file is a legitimate AUR packaging file.
</details>
<evidence></evidence>
<summary>Standard AUR PKGBUILD with pinned checksums, no malicious behavior.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD with pinned checksums, no malicious behavior.
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
The file is a Fish shell completion script for the `shelly` command, auto-generated from the application's CLI catalog. It defines helper functions that query standard Arch Linux package management tools (`pacman` and `flatpak`) to generate completion candidates, and a large number of `complete` directives that register subcommands, shortcode tokens, and long options with their descriptions. The code is entirely declarative and contains no network requests (beyond the expected calls to `pacman` and `flatpak`), no encoded or obfuscated commands, no attempt to exfiltrate data, no backdoors, and no deviation from normal shell completion practices. This is a standard, safe completion file.
</details>
<evidence></evidence>
<summary>Safe Fish completions for the shelly CLI tool.</summary>
</security_assessment>

[1/2] Reviewing src/_shelly...
+ Reviewed src/shelly.fish. Status: SAFE -- Safe Fish completions for the shelly CLI tool.
LLM auditresponse for _shelly:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a Zsh completion script for the "shelly" CLI tool. It appears to be auto-generated from the Shelly command catalog and contains only standard completion logic: defining helper functions that call `pacman` and `flatpak` to list packages, and using `_describe` and `_arguments` to provide tab-completion suggestions. The HTML entities (`&quot;`, `&apos;`, `&gt;`) are simply escaped quote and angle-bracket characters used within zsh string literals — they are not obfuscated code. There are no network requests, no downloads, no execution of untrusted code, no file system modifications beyond querying package databases, and no eval/base64/curl/wget invocations. The script is entirely benign and conforms to standard zsh completion practices.
</details>
<evidence></evidence>
<summary>Standard completion script, no malicious behavior.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed src/_shelly. Status: SAFE -- Standard completion script, no malicious behavior.
Reviewed all additional files.
Reviewed additional files.
Audit complete! Result: No issues found
(Skipped 1 file: Shelly-Flatpak-Backend-linux-x64-3.1.0.tar.gz)

API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 85,248
  Completion Tokens: 1,961
  Total Tokens: 87,209
  Total Cost: $0.007901
  Execution Time: 52.14 seconds

Final Status: SAFE


No issues found.


Audit Skips:

Shelly-Flatpak-Backend-linux-x64-3.1.0.tar.gz: [SKIPPED] Skipping binary file: Shelly-Flatpak-Backend-linux-x64-3.1.0.tar.gz
