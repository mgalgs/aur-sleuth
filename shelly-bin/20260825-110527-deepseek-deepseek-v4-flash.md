---
package: shelly-bin
pkgver: 3.1.0
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 34eecedf33cdb5da67bea8964402044d560850d8
prompt_tokens: 85307
completion_tokens: 4189
total_tokens: 89496
cost: 0.0080006990
execution_time: 308.52
files_reviewed: 3
files_skipped: 1
files_unauditable: 35
unpinned_sources: 0
date: 2026-08-25T11:05:26Z
file_verdicts:
  - file: Shelly-Flatpak-Backend-linux-x64-3.1.0.tar.gz
    status: skipped
    summary: "Skipping binary file: Shelly-Flatpak-Backend-linux-x64-3.1.0.tar.gz"
  - file: PKGBUILD
    status: safe
    summary: No malicious behavior; standard AUR packaging with pinned checksums and expected integration.
  - file: src/shelly.fish
    status: safe
    summary: Standard completions script, no malicious code.
  - file: src/_shelly
    status: safe
    summary: "No malicious code: clean Zsh completion file."
---

Cloning https://aur.archlinux.org/shelly-bin.git...
Cloned shelly-bin
Analyzing shelly-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD's global scope only defines standard packaging variables (`pkgbase`, `pkgname`, `pkgver`, `arch`, `url`, `license`, `makedepends`, `source`, `sha256sums`). There are no function calls, command substitutions, or code execution in the top-level scope. The `pkgver` is a fixed string, not a function. The `source` array points to GitHub release tarballs from the project's own repository, which is normal. Although `--nobuild` and `--noprepare` are specified, no malicious code would execute during sourcing or fetching. The extraction of archives writes files to disk but does not run them. Therefore, running the two commands is safe.
</details>
<evidence></evidence>
<summary>No malicious top-level code; safe to fetch sources.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious top-level code; safe to fetch sources.
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Running makepkg --printsrcinfo to get source files for agent...
makepkg --printsrcinfo successful
Reviewing required files...
[0/2] Reviewing Shelly-Flatpak-Backend-linux-x64-3.1.0.tar.gz...
[0/2] Reviewing Shelly-Flatpak-Backend-linux-x64-3.1.0.tar.gz, PKGBUILD...
[1/2] Reviewing PKGBUILD...
! Reviewed Shelly-Flatpak-Backend-linux-x64-3.1.0.tar.gz. Status: SKIPPED -- Skipping binary file: Shelly-Flatpak-Backend-linux-x64-3.1.0.tar.gz
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a standard split-package AUR packaging of prebuilt binaries from the project's own GitHub releases. The two release tarballs are fetched over HTTPS and have pinned sha256 checksums. The package functions install binaries, desktop entries, icons, completions, translations, a polkit policy, and a man page into `$pkgdir`, all of which are ordinary packaging steps.

The Flatpak integration script installed into `/usr/bin/shelly-flatpak-integrate` modifies user-local Flatpak desktop entries to add a "Manage in Shelly" action. This matches its stated purpose and does not involve network access, remote code execution, data exfiltration, or obfuscation. The polkit policy is also consistent with the application's purpose: it allows `pkexec` to run the installed `/usr/bin/shelly` binary after administrator authentication.

No suspicious commands such as `eval`, `base64`, `curl`, `wget`, or unchecked `git pull` are present. The man page generation runs the checksummed upstream binary to produce documentation, which is acceptable for a prebuilt package. There is no evidence of injected malicious code or supply-chain tampering.
</details>
<evidence></evidence>
<summary>No malicious behavior; standard AUR packaging with pinned checksums and expected integration.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- No malicious behavior; standard AUR packaging with pinned checksums and expected integration.
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
This file is a Fish shell completion script for the `shelly` command, auto-generated from the Shelly CLI catalog. It contains only standard `complete` commands and helper functions that query local package databases (`pacman` and `flatpak`) for tab-completion suggestions. There are no network requests, no obfuscated code, no dangerous commands (eval, base64, curl, wget), and no system modifications outside the package manager's normal scope. The behavior is entirely consistent with a legitimate shell completion script.
</details>
<evidence>
</evidence>
<summary>Standard completions script, no malicious code.</summary>
</security_assessment>

[1/2] Reviewing src/_shelly...
+ Reviewed src/shelly.fish. Status: SAFE -- Standard completions script, no malicious code.
LLM auditresponse for _shelly:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `_shelly` is a standard Zsh completion script for the Shelly command-line tool. It defines completion functions that query local package managers (pacman, flatpak) and provides argument/option completions for Shelly's subcommands. The code is entirely declarative and contains no network requests, no obfuscated or encoded payloads, no dangerous shell operations (eval, curl, wget, base64), and no data exfiltration. All commands referenced (e.g., `pacman -Slq`, `flatpak remote-ls`) are legitimate system tools called only for fetching local completion suggestions. The script is auto-generated from Shelly's CLI catalog, which is a normal packaging practice. No supply-chain attack indicators are present.
</details>
<evidence></evidence>
<summary>No malicious code: clean Zsh completion file.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed src/_shelly. Status: SAFE -- No malicious code: clean Zsh completion file.
Reviewed all additional files.
Reviewed additional files.
Audit complete! Result: No issues found
(Skipped 1 file: Shelly-Flatpak-Backend-linux-x64-3.1.0.tar.gz)

API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 85,307
  Completion Tokens: 4,189
  Total Tokens: 89,496
  Total Cost: $0.008001
  Execution Time: 308.52 seconds

Final Status: SAFE


No issues found.


Audit Skips:

Shelly-Flatpak-Backend-linux-x64-3.1.0.tar.gz: [SKIPPED] Skipping binary file: Shelly-Flatpak-Backend-linux-x64-3.1.0.tar.gz
