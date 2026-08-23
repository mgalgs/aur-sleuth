---
package: moshpits-bin
pkgver: 0.9.2
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: openrouter.ai
base_url: https://openrouter.ai/api/v1
aur_sleuth_rev: 65e0c3f98e3e15c2f2b5d512e37cace17814cac6
prompt_tokens: 31257
completion_tokens: 4238
total_tokens: 35495
cost: 0.00357597
execution_time: 78.83
files_reviewed: 10
files_skipped: 0
date: 2026-06-19T07:28:15Z
file_verdicts:
  - file: mps.service
    status: safe
    summary: Standard systemd unit file, no malicious content.
  - file: moshpits.install
    status: safe
    summary: No malicious content; standard AUR install script.
  - file: PKGBUILD
    status: safe
    summary: Standard binary package, no suspicious code.
  - file: src/mps/mps.fish
    status: safe
    summary: Standard fish shell completions file, no malicious code.
  - file: src/mps/moshpits.toml.example
    status: safe
    summary: Configuration example file with no executable or malicious content.
  - file: src/mps/LICENSE-APACHE
    status: safe
    summary: Standard Apache License 2.0 text file, no security concerns.
  - file: src/mps/LICENSE-MIT
    status: safe
    summary: Standard MIT license file, no security issues.
  - file: src/mps/mps.1
    status: safe
    summary: Man page with no executable content; safe.
  - file: src/mps/mps.bash
    status: safe
    summary: Standard bash completion script, no malicious activity.
  - file: src/mps/_mps
    status: safe
    summary: Legitimate Zsh completion script, no malicious actions.
---

Cloning https://aur.archlinux.org/moshpits-bin.git to /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-wq4lyko6...
Cloned repository to /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-wq4lyko6
Analyzing moshpits-bin AUR package (working in /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-wq4lyko6) with deepseek/deepseek-v4-flash from https://openrouter.ai/api/v1
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD only contains variable assignments and a `package()` function definition. No code in the global/top-level scope or in `pkgver()` executes any commands. All `source` array entries point to standard HTTPS URLs on GitHub Releases, and checksums are provided (SKIP only for a local sidecar file). There is no obfuscation, no dangerous command substitution, and no network request to an unexpected host. Running `makepkg --nobuild --nodeps --noprepare` and `makepkg --printsrcinfo` will only fetch the declared sources and source the PKGBUILD, which is safe.
</details>
<summary>Safe; no dangerous top-level code or pkgver() present.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete [grey50]-- Safe; no dangerous top-level code or pkgver() present.[/]
Running makepkg --nobuild --nodeps --noprepare to download sources for agent...
makepkg --nobuild --nodeps --noprepare successful
Running makepkg --printsrcinfo to get source files for agent...
makepkg --printsrcinfo successful
Reviewing required files...
[0/3] Reviewing moshpits.install...
[0/3] Reviewing moshpits.install, PKGBUILD...
[0/3] Reviewing moshpits.install, PKGBUILD, mps.service...
LLM auditresponse for mps.service:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `mps.service` is a standard systemd unit file for the moshpits remote terminal server. It runs `/usr/bin/mps` as root with configuration and key paths under `/etc/moshpits/` and logging to `/var/log/moshpits/`. No encoded commands, network requests, or file operations are present—only the invocation of the upstream binary with fixed arguments. The hardening comments (e.g., explaining why `ProtectSystem` and `PrivateTmp` are omitted because the daemon spawns shells) are legitimate design justifications, not obfuscated malice. There is no evidence of supply-chain injection, backdoors, or exfiltration.
</details>
<summary>Standard systemd unit file, no malicious content.</summary>
</security_assessment>

[1/3] Reviewing moshpits.install, PKGBUILD...
+ Reviewed mps.service. Status: SAFE -- Standard systemd unit file, no malicious content.
LLM auditresponse for moshpits.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The install script performs standard packaging operations for a system daemon: creating configuration and log directories, copying an example configuration, generating a host key pair using the package&#8217;s own `mp-keygen` tool, and managing the systemd service (restart on upgrade, stop/disable on removal). All file operations use appropriate permissions and ownership. No network requests, obfuscated code, or unexpected commands are present. The script follows conventional Arch Linux packaging practices and contains no evidence of malicious or supply-chain attack behavior.
</details>
<summary>No malicious content; standard AUR install script.</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed moshpits.install. Status: SAFE -- No malicious content; standard AUR install script.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a standard Arch Linux package for the `moshpits-bin` binary release. It downloads pre-compiled binaries and supporting files from the project's own GitHub releases page (`https://github.com/rustyhorde/moshpit`). All source archive entries have specified SHA-256 checksums (not all SKIP), ensuring integrity of downloaded artifacts. The `mps.service` file has a SKIP checksum, which is normal for a local sidecar file provided in the source array. The `package()` function only performs standard file installation (`install -Dm755`/`install -Dm644`) into the package directory. There are no `eval`, `curl`, `wget`, `git` commands, or any other potentially dangerous operations. No obfuscated or encoded commands are present. The file does not attempt to exfiltrate data, download and execute untrusted code, or modify system files outside the expected scope. All behavior is consistent with safe AUR packaging practices.
</details>
<summary>Standard binary package, no suspicious code.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard binary package, no suspicious code.
Reviewed all required files.
Deciding which files to review next...
Decided to review 7 additional files: src/mps/mps.bash, src/mps/mps.fish, src/mps/LICENSE-APACHE, src/mps/_mps, src/mps/moshpits.toml.example, src/mps/LICENSE-MIT, src/mps/mps.1
Reviewing additional files...
Reviewing additional files...
[0/7] Reviewing src/mps/mps.bash...
[0/7] Reviewing src/mps/mps.bash, src/mps/mps.fish...
[0/7] Reviewing src/mps/mps.bash, src/mps/mps.fish, src/mps/_mps...
[0/7] Reviewing src/mps/mps.bash, src/mps/mps.fish, src/mps/_mps, src/mps/LICENSE-APACHE...
[0/7] Reviewing src/mps/mps.bash, src/mps/mps.fish, src/mps/_mps, src/mps/LICENSE-APACHE, src/mps/moshpits.toml.example...
[0/7] Reviewing src/mps/mps.bash, src/mps/mps.fish, src/mps/_mps, src/mps/LICENSE-APACHE, src/mps/moshpits.toml.example, src/mps/LICENSE-MIT...
[0/7] Reviewing src/mps/mps.bash, src/mps/mps.fish, src/mps/_mps, src/mps/LICENSE-APACHE, src/mps/moshpits.toml.example, src/mps/LICENSE-MIT, src/mps/mps.1...
LLM auditresponse for mps.fish:
<security_assessment>
<decision>SAFE</decision>
<details>
This file contains only fish shell completion definitions for the `mps` command. Each line invokes `complete -c mps` with various flags and descriptions. There is no executable logic, no network requests, no file operations, and no obfuscated or encoded content. It is a standard shell completions file that poses no security risk.
</details>
<summary>Standard fish shell completions file, no malicious code.</summary>
</security_assessment>

[1/7] Reviewing src/mps/mps.bash, src/mps/_mps, src/mps/LICENSE-APACHE, src/mps/moshpits.toml.example, src/mps/LICENSE-MIT, src/mps/mps.1...
+ Reviewed src/mps/mps.fish. Status: SAFE -- Standard fish shell completions file, no malicious code.
LLM auditresponse for moshpits.toml.example:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a configuration example for the `moshpits` server, written in TOML format. It contains only static configuration keys, comments, and documentation. There is no executable code, no network requests, no obfuscated strings, and no file operations that could be exploited. The content is purely descriptive and follows standard conventions for application configuration files. No evidence of supply-chain attack or malicious behavior is present.
</details>
<summary>Configuration example file with no executable or malicious content.</summary>
</security_assessment>

[2/7] Reviewing src/mps/mps.bash, src/mps/_mps, src/mps/LICENSE-APACHE, src/mps/LICENSE-MIT, src/mps/mps.1...
+ Reviewed src/mps/moshpits.toml.example. Status: SAFE -- Configuration example file with no executable or malicious content.
LLM auditresponse for LICENSE-APACHE:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is the standard Apache License 2.0 text. It contains no executable code, no obfuscation, no network requests, no file operations, and no system modifications. It is a passive text file distributed as part of the package's license documentation. There is no evidence of any malicious or suspicious behavior.
</details>
<summary>Standard Apache License 2.0 text file, no security concerns.</summary>
</security_assessment>

[3/7] Reviewing src/mps/mps.bash, src/mps/_mps, src/mps/LICENSE-MIT, src/mps/mps.1...
+ Reviewed src/mps/LICENSE-APACHE. Status: SAFE -- Standard Apache License 2.0 text file, no security concerns.
LLM auditresponse for LICENSE-MIT:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard MIT license text. It contains no executable code, no network requests, no obfuscation, and no instructions that could perform any system modification or data exfiltration. It is a common licensing file and presents no security concerns.
</details>
<summary>Standard MIT license file, no security issues.</summary>
</security_assessment>

[4/7] Reviewing src/mps/mps.bash, src/mps/_mps, src/mps/mps.1...
+ Reviewed src/mps/LICENSE-MIT. Status: SAFE -- Standard MIT license file, no security issues.
LLM auditresponse for mps.1:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard troff man page (mps.1) for the moshpits server. It contains only documentation describing command-line options, version information, and usage syntax. There is no executable code, no network requests, no file operations, no obfuscation, and no deviation from normal packaging practices. It poses no security risk.
</details>
<summary>Man page with no executable content; safe.</summary>
</security_assessment>

[5/7] Reviewing src/mps/mps.bash, src/mps/_mps...
+ Reviewed src/mps/mps.1. Status: SAFE -- Man page with no executable content; safe.
LLM auditresponse for mps.bash:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard Bash completion script for a command-line tool named `mps`. It defines the `_mps` function to provide tab-completion for various option flags such as `--config-absolute-path`, `--tracing-absolute-path`, `--private-key-path`, etc. The script only uses `compgen` to generate completions for these options, and in some cases uses `compgen -f` for file path arguments. There are no network requests, no obfuscated code, no use of dangerous commands like `eval`, `curl`, `wget`, or any other operations that could indicate a supply-chain attack. The script is purely focused on shell completion functionality and does not deviate from standard packaging practices.
</details>
<summary>Standard bash completion script, no malicious activity.</summary>
</security_assessment>

[6/7] Reviewing src/mps/_mps...
+ Reviewed src/mps/mps.bash. Status: SAFE -- Standard bash completion script, no malicious activity.
LLM auditresponse for _mps:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `_mps` is a standard Zsh shell completion script automatically generated (likely by a Rust CLI framework like `clap_complete`). It defines option flags for the `mps` command and uses only safe Zsh built-in functions (`_arguments`, `_describe`, `compdef`). There are no network requests, file writes, obfuscated code, or execution of anything beyond routine shell completion logic. The final conditional (`if [ "$funcstack[1]" = "_mps" ]`) is a conventional pattern for Zsh completion autoloading. No malicious behavior is present.
</details>
<summary>
Legitimate Zsh completion script, no malicious actions.</summary>
</security_assessment>

[7/7] Reviewing ...
+ Reviewed src/mps/_mps. Status: SAFE -- Legitimate Zsh completion script, no malicious actions.
Reviewed all additional files.
Reviewed additional files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 31,257
  Completion Tokens: 4,238
  Total Tokens: 35,495
  Total Cost: $0.003576
  Execution Time: 78.83 seconds
Full audit report can be found in /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-report-moshpits-bin.txt
Final Status: SAFE


No issues found.
