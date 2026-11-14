---
package: linuxqq-nt-bwrap
pkgver: 3.2.35_54395
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 3f8f339d2184315a824bf6b8e30068212deac13a
prompt_tokens: 36134
completion_tokens: 11187
total_tokens: 47321
cost: 0.00526572
execution_time: 60.59
files_reviewed: 11
files_skipped: 0
maintainer_files: 11
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-11-14T08:10:29Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard .gitignore with no security issues.
  - file: .SRCINFO
    status: safe
    summary: Standard package metadata; no security issues.
  - file: config.json
    status: safe
    summary: Simple JSON config, no security issues.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD with no malicious indicators
  - file: resolv.conf
    status: safe
    summary: Standard DNS config with private IP, no malice found.
  - file: start_inner.sh
    status: safe
    summary: Benign launch wrapper with no malicious behavior.
  - file: start.sh
    status: safe
    summary: Standard launcher, no malicious behavior.
  - file: linuxqq-nt-bwrap.install
    status: safe
    summary: Informational post-install script, no dangerous operations.
  - file: xdg-open.sh
    status: safe
    summary: Legitimate URI dispatch helper, no malicious content.
  - file: start_normal.sh
    status: safe
    summary: Legitimate QQ launcher with bwrap sandboxing, no malice.
  - file: start_mac_fix.sh
    status: safe
    summary: Legitimate sandbox wrapper, no malicious behavior found.
---

Materializing linuxqq-nt-bwrap from local mirror...
Materialized linuxqq-nt-bwrap
Analyzing linuxqq-nt-bwrap AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD's global scope consists entirely of variable assignments and array definitions with static strings or simple parameter expansions. There are no command substitutions (`$()` or backticks), no calls to external commands, and no code that would execute during sourcing. Functions (`prepare`, `package`) are defined but not invoked during `makepkg --printsrcinfo`. The source URLs are only stored as strings and are not downloaded or executed at this stage. Therefore, running `makepkg --printsrcinfo` on this PKGBUILD is safe.
</details>
<evidence></evidence>
<summary>No malicious code in global scope.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious code in global scope.
Reviewing the 11 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/11] Reviewing .SRCINFO...
[0/11] Reviewing .SRCINFO, .gitignore...
[0/11] Reviewing .SRCINFO, .gitignore, PKGBUILD...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard `.gitignore` used to exclude build artifacts and package outputs from version control. It contains only file and directory patterns (`pkg/`, `src/`, `linuxqq*.deb`, `linuxqq*.pkg.tar.zst`) that are normal for AUR packaging. There is no executable code, network requests, obfuscation, or any other security-relevant content. The file poses no supply-chain risk.
</details>
<evidence></evidence>
<summary>Standard .gitignore with no security issues.</summary>
</security_assessment>

[1/11] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore with no security issues.
[1/11] Reviewing .SRCINFO, PKGBUILD, config.json...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.SRCINFO` metadata file for an Arch User Repository package. It contains only declarative information: package name, version, dependencies, source URLs, and checksums. All source URLs point to the official Tencent QQ download server (`qqdl.gtimg.cn`) which is the legitimate upstream for `linuxqq`. Checksums are provided for each source file, including per-architecture variants. No executable code, obfuscated strings, or suspicious commands are present. The file simply defines package metadata for `makepkg` to download and build the package. There is no evidence of malicious intent or supply-chain attack within this file.
</details>
<evidence>

</evidence>
<summary>Standard package metadata; no security issues.</summary>
</security_assessment>

[1/11] Reviewing .SRCINFO, PKGBUILD, config.json, linuxqq-nt-bwrap.install...
[2/11] Reviewing PKGBUILD, config.json, linuxqq-nt-bwrap.install...
+ Reviewed .SRCINFO. Status: SAFE -- Standard package metadata; no security issues.
LLM auditresponse for config.json:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a simple JSON configuration template containing placeholder strings (e.g., `__BASE_VER__`, `__CURRENT_VER__`, `__BUILD_VER__`) that would be substituted during the packaging process. There is no executable code, no network requests, no system modifications, and no obfuscation. The content is purely declarative and harmless.
</details>
<evidence></evidence>
<summary>Simple JSON config, no security issues.</summary>
</security_assessment>

[2/11] Reviewing PKGBUILD, config.json, linuxqq-nt-bwrap.install, resolv.conf...
[3/11] Reviewing PKGBUILD, linuxqq-nt-bwrap.install, resolv.conf...
+ Reviewed config.json. Status: SAFE -- Simple JSON config, no security issues.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD for linuxqq-nt-bwrap packages the Linux QQ messenger with bubblewrap sandbox. It downloads official .deb packages from Tencent's servers (verified by checksums) and includes a set of helper scripts (start.sh, config.json, etc.). The package() and prepare() functions perform routine file manipulations: extracting the deb archive, moving files, adjusting configuration, and installing wrapper scripts. No suspicious network requests (aside from fetching the declared upstream sources), no obfuscated code, and no attempts to exfiltrate data or install backdoors. All file operations are confined to the package's own install paths. This PKGBUILD follows standard AUR packaging practices.
</details>
<evidence>
</evidence>
<summary>Standard PKGBUILD with no malicious indicators</summary>
</security_assessment>

[3/11] Reviewing PKGBUILD, linuxqq-nt-bwrap.install, resolv.conf, start.sh...
[4/11] Reviewing linuxqq-nt-bwrap.install, resolv.conf, start.sh...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD with no malicious indicators
LLM auditresponse for resolv.conf:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard DNS resolver configuration named `resolv.conf`, setting a single nameserver to `10.0.2.3`. The IP address is a private, non‑routable address typically used in virtualized environments (e.g., VirtualBox, QEMU/libvirt). In the context of the `linuxqq-nt-bwrap` package—which uses bubblewrap to sandbox QQ—such a configuration is plausibly intended to provide a consistent or isolated DNS resolver within the sandbox. There is no obfuscation, no encoded commands, and no exfiltration or download of external resources. The content is consistent with standard packaging practices for sandboxed applications, and no genuinely malicious behavior is present.
</details>
<evidence></evidence>
<summary>Standard DNS config with private IP, no malice found.</summary>
</security_assessment>

[4/11] Reviewing linuxqq-nt-bwrap.install, resolv.conf, start.sh, start_inner.sh...
[5/11] Reviewing linuxqq-nt-bwrap.install, start.sh, start_inner.sh...
+ Reviewed resolv.conf. Status: SAFE -- Standard DNS config with private IP, no malice found.
LLM auditresponse for start_inner.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
The script is a straightforward launch wrapper for the QQ Electron application within a bubblewrap sandbox. It sets up two local TCP forwarders via socat (likely required for QQ&#x27;s internal IPC), unsets proxy variables, runs `/opt/QQ/electron`, and then cleans up application crash reports and logs under `QQ_APP_DIR`. No network requests, code downloads, obfuscated commands, system file modifications, or data exfiltration are present. All operations are confined to the application&#x27;s own directories and are consistent with the package&#x27;s stated purpose of running Linux QQ in a container. The cleanup of crash logs and log files, while aggressive, is acknowledged with a comment and serves the application&#x27;s own housekeeping; it does not affect unrelated system files. There is no evidence of injected malicious code or supply-chain attack behavior.
</details>
<evidence></evidence>
<summary>Benign launch wrapper with no malicious behavior.</summary>
</security_assessment>

[6/11] Reviewing linuxqq-nt-bwrap.install, start.sh...
+ Reviewed start_inner.sh. Status: SAFE -- Benign launch wrapper with no malicious behavior.
[6/11] Reviewing linuxqq-nt-bwrap.install, start.sh, start_mac_fix.sh...
LLM auditresponse for start.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
The script is a standard launcher for the QQ application that determines whether to apply a MAC address fix based on the presence of Docker or TUN/TAP interfaces, or a user configuration file. It executes only pre-installed scripts from `/opt/QQ/`—there are no network requests, no downloads of external code, no obfuscation or encoding, and no exfiltration of local data. All commands (`ip`, `command -v`, `tput`) are standard system utilities used for legitimate environment detection. No malicious or suspicious behavior is present.
</details>
<evidence>
</evidence>
<summary>Standard launcher, no malicious behavior.</summary>
</security_assessment>

[6/11] Reviewing linuxqq-nt-bwrap.install, start.sh, start_mac_fix.sh, start_normal.sh...
[7/11] Reviewing linuxqq-nt-bwrap.install, start_mac_fix.sh, start_normal.sh...
+ Reviewed start.sh. Status: SAFE -- Standard launcher, no malicious behavior.
LLM auditresponse for linuxqq-nt-bwrap.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard Arch Linux install script (`.install`) that only prints informational messages to the terminal during package installation and upgrade. It uses `printf` and `tput` for colored output, and describes where users can place configuration files (`~/.config/qq-bwrap-flags.conf`, `~/.config/qq-electron-flags.conf`, `~/.config/qq-fix-mac.conf`) and how to set the download folder or enable a fixed MAC address mode. There are no network requests, no downloads, no file writes, no execution of external programs, no obfuscation, and no system modifications. The content is purely informational and consistent with typical AUR package post-install messaging. No evidence of malicious behavior.
</details>
<evidence></evidence>
<summary>Informational post-install script, no dangerous operations.</summary>
</security_assessment>

[7/11] Reviewing linuxqq-nt-bwrap.install, start_mac_fix.sh, start_normal.sh, xdg-open.sh...
[8/11] Reviewing start_mac_fix.sh, start_normal.sh, xdg-open.sh...
+ Reviewed linuxqq-nt-bwrap.install. Status: SAFE -- Informational post-install script, no dangerous operations.
LLM auditresponse for xdg-open.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This script is a lightweight URI dispatch helper intended to route URIs to the appropriate sandbox-open utility (snapd-xdg-open or flatpak-xdg-open) depending on the protocol. It skips URIs starting with `jsbridge`, then opens http(s) URIs with `/snapd-xdg-open` and all other URIs with `/flatpak-xdg-open`. The comments explain the rationale for keeping both helpers, and the code contains no obfuscation, no network fetches, no file writes, no command execution beyond calling those two external helpers with the supplied URI. 

The use of absolute paths (`/snapd-xdg-open`, `/flatpak-xdg-open`) is consistent with the package&#8217;s expected dependency layout; the scripts are provided by companion packages and are not injected by this file. While passing unsanitized user input to external helpers could be a concern, that is the responsibility of the helpers themselves and not evidence of a supply-chain attack within this file. There is no evidence of malicious, exfiltrating, or backdoor behavior.
</details>
<evidence></evidence>
<summary>Legitimate URI dispatch helper, no malicious content.</summary>
</security_assessment>

[9/11] Reviewing start_mac_fix.sh, start_normal.sh...
+ Reviewed xdg-open.sh. Status: SAFE -- Legitimate URI dispatch helper, no malicious content.
LLM auditresponse for start_normal.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
The script is a launch wrapper for the QQ messaging application using bubblewrap (bwrap) for sandboxing. It sets up necessary environment variables, reads optional user‑supplied flags from `~/.config/qq-electron-flags.conf` and `~/.config/qq-bwrap-flags.conf`, and then runs the QQ Electron binary inside a restrictive bwrap sandbox with carefully defined bind mounts and capability drops. After QQ exits, it removes crash dumps and log files from the application’s own configuration directory to save space.

No network requests, encoded payloads, backdoors, system tampering outside the application scope, or attempts to exfiltrate data are present. The use of `eval` when reading bwrap flags is a potential risk if the user’s config file is compromised, but it operates solely on files the user themselves maintain and is a common pattern for user‑extensible configuration; it does not indicate an injected supply‑chain attack. All file operations (symlink creation, config copying, log cleanup) are confined to the user’s home directory under `~/.config/QQ` and align with the application’s normal hot‑update and cache management. The script follows typical AUR packaging and sandboxing practices.
</details>
<evidence></evidence>
<summary>Legitimate QQ launcher with bwrap sandboxing, no malice.</summary>
</security_assessment>

[10/11] Reviewing start_mac_fix.sh...
+ Reviewed start_normal.sh. Status: SAFE -- Legitimate QQ launcher with bwrap sandboxing, no malice.
LLM auditresponse for start_mac_fix.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
The script is a legitimate bubblewrap sandbox wrapper for the QQ application. It sets up namespace isolation, network configuration via slirp4netns, and binds necessary system files in read-only mode. There is no evidence of malicious behavior such as data exfiltration, downloading/executing code from unexpected hosts, or obfuscation.

The use of `eval` to expand variable references in the user-configurable `qq-bwrap-flags.conf` is a potential injection vector if that file is compromised, but it is a standard pattern for such configuration files and not part of a supply-chain attack from the package itself. The script only reads from local files and writes to the application's own directory under `$XDG_CONFIG_HOME/QQ`. All network configuration (slirp4netns, port forwarding) serves the application's stated sandboxing purpose. No malicious intent is detected.
</details>
<evidence></evidence>
<summary>Legitimate sandbox wrapper, no malicious behavior found.</summary>
</security_assessment>

[11/11] Reviewing ...
+ Reviewed start_mac_fix.sh. Status: SAFE -- Legitimate sandbox wrapper, no malicious behavior found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 36,134
  Completion Tokens: 11,187
  Total Tokens: 47,321
  Total Cost: $0.005266
  Execution Time: 60.59 seconds

Final Status: SAFE


No issues found.
