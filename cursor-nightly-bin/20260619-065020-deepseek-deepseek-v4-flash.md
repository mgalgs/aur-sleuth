---
package: cursor-nightly-bin
pkgver: 3.8.12
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: openrouter.ai
base_url: https://openrouter.ai/api/v1
aur_sleuth_rev: af83c8ecbd0b8272d6c9200f7baf40324851f319
prompt_tokens: 15371
completion_tokens: 3149
total_tokens: 18520
cost: 0.00195021
execution_time: 62.06
files_reviewed: 5
files_skipped: 0
date: 2026-06-19T06:50:19Z
file_verdicts:
  - file: cursor-launcher.sh
    status: safe
    summary: Standard launcher script, no malicious behavior detected.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD for Cursor IDE; no security issues found.
  - file: cursor.desktop
    status: safe
    summary: Standard desktop entry file, no security issues.
  - file: PKGBUILD.nightly
    status: safe
    summary: Standard PKGBUILD with pinned source and no malicious behavior.
  - file: rg.sh
    status: safe
    summary: Safe wrapper script for argument translation.
---

Cloning https://aur.archlinux.org/cursor-nightly-bin.git to /tmp/aur-sleuth/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-rasodqxc...
Cloned repository to /tmp/aur-sleuth/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-rasodqxc
Analyzing cursor-nightly-bin AUR package (working in /tmp/aur-sleuth/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-rasodqxc) with deepseek/deepseek-v4-flash from https://openrouter.ai/api/v1
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD defines only variables and arrays in its global scope. No command substitutions, `eval`, `exec`, or other code execution occurs during sourcing. The `pkgver()` function is not defined, so there is no risk from that either. The `source` array references the official Cursor update server (`downloads.cursor.com`) with a pinned commit hash, which is expected upstream behavior. The checksum for the `.deb` is provided (overwritten via `sha512sums[0]=...`). The two helper files (`cursor.desktop` and `cursor-launcher.sh`) are fetched from the AUR repository itself (they are local to the PKGBUILD directory). No code executes at fetch time beyond the standard `makepkg` download extraction. Therefore, running `makepkg --nobuild --nodeps --noprepare` and `makepkg --printsrcinfo` is safe; no malicious payload can execute during this narrow gate.
</details>
<summary>No executable code in global scope, safe source URLs.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete [grey50]-- No executable code in global scope, safe source URLs.[/]
Running makepkg --nobuild --nodeps --noprepare to download sources for agent...
makepkg --nobuild --nodeps --noprepare successful
Running makepkg --printsrcinfo to get source files for agent...
makepkg --printsrcinfo successful
Reviewing required files...
[0/2] Reviewing cursor-launcher.sh...
[0/2] Reviewing cursor-launcher.sh, PKGBUILD...
LLM auditresponse for cursor-launcher.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
The script is a standard launcher for the Cursor editor. It reads optional flags from a user configuration file (`cursor-flags.conf`) and passes them to the binary. It handles two subcommands (`agent` and `editor`) by either forwarding all arguments or shifting the first argument. There are no network requests, obfuscated code, dangerous commands (eval, base64, curl, wget), or any operations outside the expected scope of launching the application. The file is consistent with normal packaging practices and contains no supply-chain attack indicators.
</details>
<summary>Standard launcher script, no malicious behavior detected.</summary>
</security_assessment>

[1/2] Reviewing PKGBUILD...
+ Reviewed cursor-launcher.sh. Status: SAFE -- Standard launcher script, no malicious behavior detected.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a standard Arch User Repository (AUR) package for the Cursor IDE nightly channel. It downloads a `.deb` from the official Cursor CDN (`downloads.cursor.com`), pins a specific commit hash, and provides SHA-512 checksums for all sources (the `.deb` initially had `SKIP` but is later overwritten with a real hash). The `package()` function extracts the archive, installs a desktop file and launcher script, copies the license, and sets `chmod 4755` on the bundled `chrome-sandbox` (a normal requirement for Electron-based sandboxing). There are no suspicious network requests, obfuscated code, backdoors, or data exfiltration attempts. All operations are consistent with packaging a prebuilt Electron application. The package itself exhibits no signs of a supply chain attack.
</details>
<summary>
Standard PKGBUILD for Cursor IDE; no security issues found.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD for Cursor IDE; no security issues found.
Reviewed all required files.
Deciding which files to review next...
Decided to review 3 additional files: rg.sh, cursor.desktop, PKGBUILD.nightly
Reviewing additional files...
Reviewing additional files...
[0/3] Reviewing rg.sh...
[0/3] Reviewing rg.sh, PKGBUILD.nightly...
[0/3] Reviewing rg.sh, PKGBUILD.nightly, cursor.desktop...
LLM auditresponse for cursor.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard desktop entry file for the Cursor code editor. It contains no executable code, network requests, obfuscation, or system modifications. The `Exec` lines invoke the `cursor` binary with safe arguments (file URLs and `--new-window`), which is expected application behavior. No security concerns are present.
</details>
<summary>Standard desktop entry file, no security issues.</summary>
</security_assessment>

[1/3] Reviewing rg.sh, PKGBUILD.nightly...
+ Reviewed cursor.desktop. Status: SAFE -- Standard desktop entry file, no security issues.
LLM auditresponse for PKGBUILD.nightly:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard Arch packaging practices for a binary Electron application. The source tarball (`cursor_*.deb`) is downloaded from the official Cursor downloads domain via a pinned commit hash, and a specific SHA-512 checksum is assigned (the `sha512sums[0]` override) which actually pins the archive – the misleading `SKIP` on the first line is inert. The remaining files (desktop file, launcher script) include valid checksums.  

The `package()` function performs routine operations: extracting the `.deb` into `$pkgdir`, adjusting zsh completion paths, installing desktop entry and icons, processing an icon with ImageMagick, installing the license if found, and setting the `chrome-sandbox` binary setuid (a standard requirement for Electron- based apps to use user namespaces). There are no obfuscated commands, no unexpected network requests beyond the declared upstream source, no exfiltration, and no execution of unchecked content. All operations are within the scope of packaging the application.
</details>
<summary>
Standard PKGBUILD with pinned source and no malicious behavior.</summary>
</security_assessment>

[2/3] Reviewing rg.sh...
+ Reviewed PKGBUILD.nightly. Status: SAFE -- Standard PKGBUILD with pinned source and no malicious behavior.
LLM auditresponse for rg.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
The script is a trivial wrapper that translates the custom argument `--cursor-ignore` into the standard ripgrep argument `--ignore-file` using bash parameter expansion, then executes `/usr/bin/rg` with the modified arguments. There is no obfuscation, no network activity, no dangerous commands, and no deviation from expected packaging behavior. The logic is simple and transparent.
</details>
<summary>Safe wrapper script for argument translation.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed rg.sh. Status: SAFE -- Safe wrapper script for argument translation.
Reviewed all additional files.
Reviewed additional files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 15,371
  Completion Tokens: 3,149
  Total Tokens: 18,520
  Total Cost: $0.001950
  Execution Time: 62.06 seconds
Full audit report can be found in /tmp/aur-sleuth/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-report-cursor-nightly-bin.txt
Final Status: SAFE


No issues found.
