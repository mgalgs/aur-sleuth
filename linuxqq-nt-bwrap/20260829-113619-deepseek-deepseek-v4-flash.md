---
package: linuxqq-nt-bwrap
pkgver: 3.2.33_52892
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 3e318911529c43138ec6bdba0bfcb56907607021
prompt_tokens: 36023
completion_tokens: 8238
total_tokens: 44261
cost: 0.00439521628
execution_time: 147.01
files_reviewed: 11
files_skipped: 0
maintainer_files: 11
source_fetch: ok
upstream_files: 11
upstream_named_files: 0
unpinned_sources: 0
date: 2026-08-29T11:36:18Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: SRCINFO metadata only; official pinned sources; no malicious behavior indicated.
  - file: .gitignore
    status: safe
    summary: Standard .gitignore with no security concerns.
  - file: linuxqq-nt-bwrap.install
    status: safe
    summary: Only informational output, no malicious or suspicious behavior.
  - file: PKGBUILD
    status: safe
    summary: Clean PKGBUILD with pinned checksums, no malicious indicators.
  - file: config.json
    status: safe
    summary: Static JSON config with placeholder values - safe.
  - file: resolv.conf
    status: safe
    summary: Standard DNS config for sandboxing; no malicious activity.
  - file: start.sh
    status: safe
    summary: Clean launcher; no malicious behavior found.
  - file: start_inner.sh
    status: safe
    summary: Helper script for QQ with no malicious behavior.
  - file: xdg-open.sh
    status: safe
    summary: Standard URI delegation wrapper, no malicious behavior.
  - file: start_normal.sh
    status: safe
    summary: Benign launcher script, no supply-chain attack indicators.
  - file: start_mac_fix.sh
    status: safe
    summary: Standard AUR wrapper script, no malicious behavior found.
---

Cloning https://aur.archlinux.org/linuxqq-nt-bwrap.git...
Cloned linuxqq-nt-bwrap
Analyzing linuxqq-nt-bwrap AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD only defines variables and function bodies in its global scope. No command substitutions, backticks, `eval`, or other dangerous constructs execute when the file is sourced. The `source` array includes local files (scripts, config) bundled with the AUR package, plus architecture-specific `.deb` archives fetched via HTTPS from the official Tencent QQ domain (`qqdl.gtimg.cn`). The `pkgver` variable is set by a simple string substitution — no function execution. The `prepare()`, `build()`, and `package()` functions are defined but are not run by `makepkg --nobuild --nodeps --noprepare`. The `install` file is also local and not executed during this step. All checksums are provided and pinned. No malicious code executes during source fetching or PKGBUILD sourcing.
</details>
<evidence>
</evidence>
<summary>Global scope is safe; only variable assignments and function definitions.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Global scope is safe; only variable assignments and function definitions.
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Reviewing the 11 file(s) in the AUR repository. The 11 downloaded file(s) are upstream content, outside the threat model, and are not read.
Reviewing the AUR repository's files...
[0/11] Reviewing .SRCINFO...
[0/11] Reviewing .SRCINFO, .gitignore...
[0/11] Reviewing .SRCINFO, .gitignore, PKGBUILD...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This is an AUR .SRCINFO metadata file for the linuxqq-nt-bwrap package. It only describes package metadata: name, version, dependencies, architecture-specific sources, and checksums. The binary packages are fetched from Tencent's official QQ download host (qqdl.gtimg.cn), and every source, including the helper scripts and architecture-specific .deb packages, has a pinned SHA-256 checksum.

No commands, no executables, no obfuscated content, and no unexpected network destinations are present in this metadata file. The referenced helper scripts (start.sh, config.json, etc.) are not contained here, so this file alone provides no evidence of injected or malicious behavior. This is consistent with standard AUR packaging practice.
</details>
<evidence>
</evidence>
<summary>
SRCINFO metadata only; official pinned sources; no malicious behavior indicated.</summary>
</security_assessment>

[1/11] Reviewing .gitignore, PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- SRCINFO metadata only; official pinned sources; no malicious behavior indicated.
[1/11] Reviewing .gitignore, PKGBUILD, config.json...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This .gitignore file contains standard ignore patterns for build directories (`pkg/`, `src/`), Debian packages (`linuxqq*.deb`), and Arch packages (`linuxqq*.pkg.tar.zst`). There is no executable code, no network requests, no data exfiltration, and no suspicious content. It is a routine packaging artifact with no security implications.
</details>
<evidence></evidence>
<summary>Standard .gitignore with no security concerns.</summary>
</security_assessment>

[1/11] Reviewing .gitignore, PKGBUILD, config.json, linuxqq-nt-bwrap.install...
[2/11] Reviewing PKGBUILD, config.json, linuxqq-nt-bwrap.install...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore with no security concerns.
LLM auditresponse for linuxqq-nt-bwrap.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `linuxqq-nt-bwrap.install` is a standard Arch Linux `.install` script that only prints informational messages to the user about configuration options for the package (e.g., where to place custom bwrap flags, electron flags, download folder behavior, and MAC address mode). There are no commands that download or execute external code, no file system modifications beyond standard output, no obfuscation, and no network requests. The script does nothing beyond displaying text, which is normal and expected for a package post-installation message.
</details>
<evidence></evidence>
<summary>Only informational output, no malicious or suspicious behavior.</summary>
</security_assessment>

[2/11] Reviewing PKGBUILD, config.json, linuxqq-nt-bwrap.install, resolv.conf...
[3/11] Reviewing PKGBUILD, config.json, resolv.conf...
+ Reviewed linuxqq-nt-bwrap.install. Status: SAFE -- Only informational output, no malicious or suspicious behavior.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD builds a bubblewrap-sandboxed version of Linux QQ from official Tencent .deb packages. All sources are pinned with SHA-256 checksums: the upstream .deb files (from `qqdl.gtimg.cn`) each have arch-specific checksums, and the in-repo helper scripts (`start.sh`, `config.json`, etc.) also have fixed checksums. No `SKIP` values are used anywhere — checksums are present and verifiable.

The `prepare()` function performs only simple `sed` substitutions of placeholder strings (`__BASE_VER__`, `__CURRENT_VER__`, `__BUILD_VER__`) with static version variables — no code injection, no external command execution from uncontrolled input. The `package()` function extracts the decompressed application data, renames the main binary, installs wrapper scripts and configuration files, and sets up symlinks and license files. All file operations are confined to `$pkgdir` and the package’s own directories (`/opt/QQ`, `/usr/share/licenses`, `/usr/bin`).

No obfuscated code, unexpected network requests, or dangerous commands (e.g. `curl`, `bash`, `eval`, base64 decode) are present. The behavior is entirely consistent with standard AUR packaging practices for a binary wrapper package. There is no evidence of malicious or supply-chain-attack activity.
</details>
<evidence></evidence>
<summary>Clean PKGBUILD with pinned checksums, no malicious indicators.</summary>
</security_assessment>

[3/11] Reviewing PKGBUILD, config.json, resolv.conf, start.sh...
[4/11] Reviewing config.json, resolv.conf, start.sh...
+ Reviewed PKGBUILD. Status: SAFE -- Clean PKGBUILD with pinned checksums, no malicious indicators.
LLM auditresponse for config.json:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a plain JSON configuration file containing version tracking fields with placeholder values. No executable code, network requests, file operations, or obfuscated content is present. It poses no security risk.
</details>
<evidence>
</evidence>
<summary>Static JSON config with placeholder values - safe.</summary>
</security_assessment>

[4/11] Reviewing config.json, resolv.conf, start.sh, start_inner.sh...
[5/11] Reviewing resolv.conf, start.sh, start_inner.sh...
+ Reviewed config.json. Status: SAFE -- Static JSON config with placeholder values - safe.
LLM auditresponse for resolv.conf:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `resolv.conf` contains a single line setting the nameserver to `10.0.2.3`, which is a private IP address commonly used in virtualized or container environments. This is a standard configuration for restricting DNS resolution within a Bubblewrap sandbox, as part of the linuxqq-nt-bwrap package. There is no obfuscated code, network requests, file modifications, or any other suspicious activity. The file appears to be a legitimate part of the package's sandboxing mechanism.
</details>
<evidence>

</evidence>
<summary>Standard DNS config for sandboxing; no malicious activity.</summary>
</security_assessment>

[5/11] Reviewing resolv.conf, start.sh, start_inner.sh, start_mac_fix.sh...
[6/11] Reviewing start.sh, start_inner.sh, start_mac_fix.sh...
+ Reviewed resolv.conf. Status: SAFE -- Standard DNS config for sandboxing; no malicious activity.
LLM auditresponse for start.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
The script is a standard launcher for the linuxqq-nt-bwrap package. It checks for a MAC address workaround condition (based on environment variable, config file, or presence of Docker/tuntap interfaces) and then dispatches to the appropriate sub-script under `/opt/QQ/`. There are no network requests, downloads, obfuscated code, or dangerous commands. All operations (checking for `slirp4netns`, `socat`, file existence, and running sub-scripts) are normal packaging behavior. No evidence of malicious activity.
</details>
<evidence></evidence>
<summary>Clean launcher; no malicious behavior found.</summary>
</security_assessment>

[6/11] Reviewing start.sh, start_inner.sh, start_mac_fix.sh, start_normal.sh...
[7/11] Reviewing start_inner.sh, start_mac_fix.sh, start_normal.sh...
+ Reviewed start.sh. Status: SAFE -- Clean launcher; no malicious behavior found.
LLM auditresponse for start_inner.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This script is a helper for running the QQ application inside a bubblewrap sandbox. It sets up local port forwarding via socat to ports on 127.0.0.1, clears proxy environment variables, launches the QQ Electron binary with `--no-proxy-server`, and then removes application-internal crash reports and log files from `$QQ_APP_DIR`. All operations are confined to the application's own directories (`${QQ_APP_DIR}`) and the local loopback interface. No external network connections, code downloads, obfuscation, or system-wide modifications occur. The script does exactly what a packaging helper for QQ should do, and there is no evidence of injected malicious behavior.
</details>
<evidence></evidence>
<summary>Helper script for QQ with no malicious behavior.</summary>
</security_assessment>

[7/11] Reviewing start_inner.sh, start_mac_fix.sh, start_normal.sh, xdg-open.sh...
[8/11] Reviewing start_mac_fix.sh, start_normal.sh, xdg-open.sh...
+ Reviewed start_inner.sh. Status: SAFE -- Helper script for QQ with no malicious behavior.
LLM auditresponse for xdg-open.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This script is a standard URI-handling wrapper that delegates to sandboxed openers (/snapd-xdg-open and /flatpak-xdg-open) based on the URI scheme. It only checks the prefix of the argument and calls the appropriate tool. There is no sign of obfuscation, network requests, file exfiltration, or execution of untrusted code. The dependencies are ordinary for a sandboxed application wrapper on Arch Linux.
</details>
<evidence>
</evidence>
<summary>Standard URI delegation wrapper, no malicious behavior.</summary>
</security_assessment>

[9/11] Reviewing start_mac_fix.sh, start_normal.sh...
+ Reviewed xdg-open.sh. Status: SAFE -- Standard URI delegation wrapper, no malicious behavior.
LLM auditresponse for start_normal.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
The script is a standard launcher for the QQ messaging application under a bubblewrap sandbox. It reads optional user configuration files (``qq-electron-flags.conf`` and ``qq-bwrap-flags.conf``) from ``~/.config``, sets environment variables, and constructs a ``bwrap`` command with many bind mounts to isolate the application. After execution, it cleans up crash reports and logs under the QQ app directory.

The only potentially controversial construct is the use of ``eval`` on lines read from ``qq-bwrap-flags.conf`` (to allow variable expansion). However, this config file is entirely user-controlled and is a common AUR pattern for flexibility. No network requests, downloads, obfuscation, or exfiltration of data is present. All file operations are confined to the user's ``~/.config/QQ`` directory and standard temporary locations. The script does not deviate from its stated purpose of launching QQ with a sandbox.
</details>
<evidence></evidence>
<summary>Benign launcher script, no supply-chain attack indicators.</summary>
</security_assessment>

[10/11] Reviewing start_mac_fix.sh...
+ Reviewed start_normal.sh. Status: SAFE -- Benign launcher script, no supply-chain attack indicators.
LLM auditresponse for start_mac_fix.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This script is the normal entry point for the `linuxqq-nt-bwrap` package. It sets up a bubblewrap sandbox with network namespace and slirp4netns, generates a persistent random MAC address (for QQ's network detection), and launches the QQ application. All operations are confined to the QQ configuration directory (`~/.config/QQ`) and standard system paths. The use of `eval` on user‑supplied bwrap flags from a config file is a potential security concern (command injection if the user adds malicious content), but it is a local configuration file under the user's control, not evidence of a supply‑chain attack. There is no obfuscation, no unexpected network requests, no exfiltration, and no code that modifies files outside the application's scope. The script performs only its advertised sandboxing and MAC management tasks.
</details>
<evidence>
</evidence>
<summary>Standard AUR wrapper script, no malicious behavior found.</summary>
</security_assessment>

[11/11] Reviewing ...
+ Reviewed start_mac_fix.sh. Status: SAFE -- Standard AUR wrapper script, no malicious behavior found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 36,023
  Completion Tokens: 8,238
  Total Tokens: 44,261
  Total Cost: $0.004395
  Execution Time: 147.01 seconds

Final Status: SAFE


No issues found.
