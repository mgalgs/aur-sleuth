---
package: sangfor-atrust-bin
pkgver: 2.5.16.30
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 25597
completion_tokens: 7861
total_tokens: 33458
cost: 0.002024631
execution_time: 129.27
files_reviewed: 8
files_skipped: 0
maintainer_files: 8
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-22T15:19:46Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Metadata-only AUR file; pinned checksums and official vendor source; no suspicious behavior.
  - file: atrust-daemon-path.conf
    status: safe
    summary: Standard systemd PATH drop-in for aTrust daemon; no malicious behavior.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD, no malicious code detected.
  - file: atrust-loginctl
    status: safe
    summary: Simple loginctl output-rewriting compatibility wrapper; no malicious behavior found.
  - file: atrust-launcher.sh
    status: safe
    summary: Standard launcher script, no malicious behavior.
  - file: bsod_checker.js
    status: safe
    summary: Legitimate application module; no malicious code detected.
  - file: atrust-daemon-shutdown.conf
    status: safe
    summary: Routine systemd cleanup stanza; no malicious behavior found.
  - file: sangfor-atrust-bin.install
    status: safe
    summary: No malicious behavior found; aggressive but standard aTrust packaging helper.
---

Cloning https://aur.archlinux.org/sangfor-atrust-bin.git...
Cloned sangfor-atrust-bin
Analyzing sangfor-atrust-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only variable definitions (pkgname, _pkgname, pkgver, source, sha256sums, etc.) and function definitions (prepare, package). No command substitutions, external calls, or obfuscated code exist at the top level that would execute when the PKGBUILD is sourced by `makepkg --printsrcinfo`. The `install` variable references a file name but does not cause execution at parse time. Therefore, running this command is safe.
</details>
<evidence></evidence>
<summary>Top-level code safe; no execution during parse.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Top-level code safe; no execution during parse.
Reviewing the 8 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/8] Reviewing .SRCINFO...
[0/8] Reviewing .SRCINFO, PKGBUILD...
[0/8] Reviewing .SRCINFO, PKGBUILD, atrust-daemon-path.conf...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This `.SRCINFO` file is package metadata only. It declares the `sangfor-atrust-bin` package, its dependencies, and six sources: the upstream Debian package downloaded from the vendor's official domain (`atrustcdn.sangfor.com`), an Electron helper script, a launcher shell script, a loginctl helper, and two configuration files. Every source has a pinned `sha256sums` entry, and no checksum is set to `SKIP`.

No network requests, code execution, obfuscated data, or system modification commands appear in this file. The inclusion of helper scripts and configuration files is consistent with normal AUR packaging. The actual contents of those scripts are not visible here, so a complete security assessment would require reviewing them and the upstream `.deb`, but nothing in `.SRCINFO` itself indicates malicious or dangerous behavior.
</details>
<evidence>
</evidence>
<summary>
Metadata-only AUR file; pinned checksums and official vendor source; no suspicious behavior.</summary>
</security_assessment>

[0/8] Reviewing .SRCINFO, PKGBUILD, atrust-daemon-path.conf, atrust-daemon-shutdown.conf...
[1/8] Reviewing PKGBUILD, atrust-daemon-path.conf, atrust-daemon-shutdown.conf...
+ Reviewed .SRCINFO. Status: SAFE -- Metadata-only AUR file; pinned checksums and official vendor source; no suspicious behavior.
LLM auditresponse for atrust-daemon-path.conf:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard systemd drop-in configuration file for the sangfor-atrust service. It sets the `PATH` environment variable for the `aTrustDaemon` service, prepending `/usr/lib/sangfor-atrust` so the daemon can find the compatibility-layer `loginctl` wrapper shipped with the package itself. This is a routine packaging pattern for proprietary VPN/zero-trust clients that need to control which binaries their daemon invokes.

There is no malicious behavior here: no network requests, no downloads, no code execution, no encoded or obfuscated commands, no file system manipulation, and no exfiltration of data. The PATH entries are all standard system directories plus the package's own lib directory. The comment accurately explains the purpose of the path override (rewriting a systemd-logind `Type=tty` parameter to `Type=x11` for compatibility). The only theoretical consideration is that placing the vendor's own directory first in the PATH could shadow system binaries, but that is the intended function of this drop-in for the vendor's daemon and is not indicative of a supply-chain attack. The file is safe.
</details>
<evidence>
</evidence>
<summary>Standard systemd PATH drop-in for aTrust daemon; no malicious behavior.</summary>
</security_assessment>

[2/8] Reviewing PKGBUILD, atrust-daemon-shutdown.conf...
+ Reviewed atrust-daemon-path.conf. Status: SAFE -- Standard systemd PATH drop-in for aTrust daemon; no malicious behavior.
[2/8] Reviewing PKGBUILD, atrust-daemon-shutdown.conf, atrust-launcher.sh...
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard AUR packaging practices. It downloads the upstream Sangfor aTrust deb package from the official Sangfor CDN (atrustcdn.sangfor.com) with pinned SHA256 checksums. All auxiliary scripts (bsod_checker.js, atrust-launcher.sh, atrust-loginctl, systemd drop-in files) are also pinned with checksums.  

The build and install steps use only common shell commands (bsdtar, rm, install, cp, sed) and do not execute any code from untrusted sources. The PKGBUILD does not contain any base64 decoding, eval, curl|bash patterns, or obfuscated commands. The custom scripts (like atrust-launcher.sh, atrust-loginctl) are installed to expected system paths and appear to address known compatibility issues with aTrust (e.g., session type detection, shutdown hang). No evidence of data exfiltration, backdoors, or privileged access outside the application’s scope is present.  

This file is consistent with a legitimate AUR package and does not exhibit supply-chain attack indicators.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD, no malicious code detected.</summary>
</security_assessment>

[2/8] Reviewing PKGBUILD, atrust-daemon-shutdown.conf, atrust-launcher.sh, atrust-loginctl...
[3/8] Reviewing atrust-daemon-shutdown.conf, atrust-launcher.sh, atrust-loginctl...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD, no malicious code detected.
LLM auditresponse for atrust-loginctl:
 <security_assessment>
<decision>SAFE</decision>
<details>
This is a simple, clearly commented wrapper script that intercepts calls to `loginctl` and rewrites `Type=tty` to `Type=x11` in the output. Its stated purpose is to make a local desktop session detected by aTrust's daemon. The script is transparent, does not download or execute external code, makes no network connections, and contains no obfuscation. It simply invokes the real `loginctl` binary with the user's arguments, pipes the output through `sed` for a benign text substitution, and preserves the original exit code.

The HTML entities in the file (`&quot;`, `&amp;`, `&apos;`, `&gt;`) are just escaping artifacts from the file dump and would decode to normal shell syntax in the actual file. The use of `sed` to modify output only affects the display layer for the aTrust daemon; it does not modify any logind state or system files. Overall this is a standard compat-layer packaging practice with no indications of injected malicious code.
</details>
<evidence></evidence>
<summary>Simple loginctl output-rewriting compatibility wrapper; no malicious behavior found.</summary>
</security_assessment>

[3/8] Reviewing atrust-daemon-shutdown.conf, atrust-launcher.sh, atrust-loginctl, bsod_checker.js...
[4/8] Reviewing atrust-daemon-shutdown.conf, atrust-launcher.sh, bsod_checker.js...
+ Reviewed atrust-loginctl. Status: SAFE -- Simple loginctl output-rewriting compatibility wrapper; no malicious behavior found.
LLM auditresponse for atrust-launcher.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This script is a standard launcher for an aTrust system tray application. It checks for and starts the aTrust systemd service using `pkexec`, then sets environment variables for the Electron runtime and executes the tray binary. All operations are within the application's own installed path (`/usr/share/sangfor/aTrust`). No obfuscation, network requests, or unexpected file manipulations are present. The `--no-sandbox` flag is an upstream Electron configuration choice, not an injected attack. The script follows normal packaging patterns for a privileged system service launcher.
</details>
<evidence></evidence>
<summary>Standard launcher script, no malicious behavior.</summary>
</security_assessment>

[4/8] Reviewing atrust-daemon-shutdown.conf, atrust-launcher.sh, bsod_checker.js, sangfor-atrust-bin.install...
[5/8] Reviewing atrust-daemon-shutdown.conf, bsod_checker.js, sangfor-atrust-bin.install...
+ Reviewed atrust-launcher.sh. Status: SAFE -- Standard launcher script, no malicious behavior.
LLM auditresponse for bsod_checker.js:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard JavaScript module that communicates via RPC with a local service (`aTrustTunnelService`) to check for Blue Screen of Death (BSOD) events and force-start a network filter driver (`netflt`). All RPC calls are directed to the application’s own tunnel service, which is expected behavior for this VPN/client software. There are no external network requests, no obfuscated code, no dangerous commands like `eval`, `curl`, or `base64`, and no attempts to exfiltrate data or modify system files beyond the application’s intended scope. The `unhandledRejection` handler only logs errors for debugging. No evidence of a supply-chain attack or injected malicious code was found.
</details>
<evidence></evidence>
<summary>Legitimate application module; no malicious code detected.</summary>
</security_assessment>

[6/8] Reviewing atrust-daemon-shutdown.conf, sangfor-atrust-bin.install...
+ Reviewed bsod_checker.js. Status: SAFE -- Legitimate application module; no malicious code detected.
LLM auditresponse for atrust-daemon-shutdown.conf:
 <security_assessment>
<decision>SAFE</decision>
<details>
This is a systemd service drop-in used at shutdown/restart to clean up the aTrust daemon process family. It sets `KillMode=control-group`, `SendSIGKILL=yes`, and an `ExecStopPost` command that runs `pkill -x` against `aTrustAgent` and `aTrustXtunnel-6`. These names correspond to the package's own daemon and tunnel processes, and the comments explain the intent: prevent orphaned child processes from blocking unmounting of `/home` and `/tmp` during systemd shutdown.

No network requests, downloads, obfuscated code, encoded payloads, or filesystem manipulation outside normal service management are present. The `pkill` command only targets two aTrust-named processes and explicitly exits 0. While it could affect aTrust processes started under other users if run as root, that behavior remains within the application's own service scope and is not evidence of a supply-chain attack or malicious intent.
</details>
<evidence></evidence>
<summary>
Routine systemd cleanup stanza; no malicious behavior found.</summary>
</security_assessment>

[7/8] Reviewing sangfor-atrust-bin.install...
+ Reviewed atrust-daemon-shutdown.conf. Status: SAFE -- Routine systemd cleanup stanza; no malicious behavior found.
LLM auditresponse for sangfor-atrust-bin.install:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard AUR <code>.install</code> helper script for the `sangfor-atrust-bin` package. It performs routine post-install/removal actions for the aTrust VPN client: stopping old daemons, enabling `aTrustDaemon.service`, creating runtime directories, setting permissions required by the Electron app, invoking the bundled `eaio_packman` helper, and cleaning up package-owned paths on removal. There are no network requests, no execution of downloaded code, no obfuscated/encoded payloads, and no access to sensitive user data such as SSH keys or credentials.

Some operations are aggressive or system-wide and deserve mention as hygiene or compatibility concerns, but they are not evidence of an injected supply-chain attack. The script appends `XDG_SESSION_TYPE=x11` to `/etc/environment` to work around a session-detection issue for the aTrust daemon; this is a system-wide environment change that could affect other desktop sessions, but it is clearly explained and removed on uninstall. The `chmod -R 777`, setuid on `dmidecode_processor_tool`, `pkill` of aTrust processes, and `rm -rf /usr/share/sangfor` in `post_remove` are all scoped to the application&apos;s own runtime behavior and installation directory. These actions may be poorly isolated or overly broad, but they serve the package&apos;s stated purpose and do not manipulate unrelated system data or exfiltrate information.

Overall, I found no genuinely malicious behavior in this file. It is best classified as a normal, if somewhat aggressive, packaging helper for an enterprise VPN client.
</details>
<evidence>
</evidence>
<summary>
No malicious behavior found; aggressive but standard aTrust packaging helper.</summary>
</security_assessment>

[8/8] Reviewing ...
+ Reviewed sangfor-atrust-bin.install. Status: SAFE -- No malicious behavior found; aggressive but standard aTrust packaging helper.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 25,597
  Completion Tokens: 7,861
  Total Tokens: 33,458
  Total Cost: $0.002025
  Execution Time: 129.27 seconds

Final Status: SAFE


No issues found.
