---
package: ibus-daemon
pkgver: 0.0.7
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 22824
completion_tokens: 3472
total_tokens: 26296
cost: 0.002708888
execution_time: 32.81
files_reviewed: 9
files_skipped: 0
maintainer_files: 9
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-23T07:16:24Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard .gitignore for AUR packaging files; no malicious content or behavior found.
  - file: LICENSE.md
    status: safe
    summary: License file only; no malicious or suspicious behavior found.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata file; no malicious or dangerous behavior found.
  - file: README.md
    status: safe
    summary: README only; no code or suspicious behavior. Safe.
  - file: enable-ibus-daemon
    status: safe
    summary: Benign wrapper enabling the ibus systemd user service; no security concerns.
  - file: PKGBUILD
    status: safe
    summary: Benign systemd service package; no malicious behavior or suspicious operations found.
  - file: "ibus-config@.service"
    status: safe
    summary: Standard ibus service unit; no suspicious behavior detected.
  - file: "ibus@.service"
    status: safe
    summary: Standard systemd unit for ibus daemon; no malicious behavior found.
  - file: ibus-daemon-run-with-env
    status: safe
    summary: Benign environment wrapper for ibus display setup; no malicious behavior found.
---

Materializing ibus-daemon from local mirror...
Materialized ibus-daemon
Analyzing ibus-daemon AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only top-level variable assignments and array definitions: pkgname, pkgver, pkgrel, pkgdesc, arch, license, url, depends, source, and sha512sums. There are no command substitutions, external commands, network operations, or code execution in the global scope. Running `makepkg --printsrcinfo` will only source these static definitions, so no malicious behavior can execute during this step.

The `package()` function contains only routine `install` commands for packaging the declared files into `$pkgdir`; this function is not executed by `makepkg --printsrcinfo`. The SKIP checksums are not relevant to this narrow gate, since no sources are downloaded or verified during metadata printing.
</details>
<evidence>
</evidence>
<summary>
Static PKGBUILD with no executable top-level code; printsrcinfo gate is safe.
</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Static PKGBUILD with no executable top-level code; printsrcinfo gate is safe.
Reviewing the 9 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/9] Reviewing .SRCINFO...
[0/9] Reviewing .SRCINFO, LICENSE.md...
[0/9] Reviewing .SRCINFO, LICENSE.md, .gitignore...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.gitignore` file for an AUR package repository. It excludes all files except the packaging files that should be tracked: `PKGBUILD`, `.SRCINFO`, service files, markdown documentation, and two helper scripts (`enable-ibus-daemon`, `ibus-daemon-run-with-env`). The file contains no executable code, no network operations, no obfuscation, and no commands. It is a normal version-control configuration file and presents no security risk.
</details>
<evidence>
</evidence>
<summary>
Standard .gitignore for AUR packaging files; no malicious content or behavior found.</summary>
</security_assessment>

[0/9] Reviewing .SRCINFO, LICENSE.md, .gitignore, PKGBUILD...
[1/9] Reviewing .SRCINFO, LICENSE.md, PKGBUILD...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore for AUR packaging files; no malicious content or behavior found.
LLM auditresponse for LICENSE.md:
<security_assessment>
<decision>SAFE</decision>
<details>
This file contains only the standard MIT License text. It includes no executable code, no network operations, no file modifications, and no suspicious or obfuscated content. It is a normal license file commonly found in AUR packages and upstream repositories.
</details>
<evidence>
</evidence>
<summary>
License file only; no malicious or suspicious behavior found.
</summary>
</security_assessment>

[2/9] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed LICENSE.md. Status: SAFE -- License file only; no malicious or suspicious behavior found.
[2/9] Reviewing .SRCINFO, PKGBUILD, README.md...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard AUR `.SRCINFO` metadata manifest. It describes an `ibus-daemon` package that installs systemd user services and helper scripts for IBus. The listed sources are local files within the package repository (`ibus@.service`, `ibus-config@.service`, etc.) plus documentation files. No network downloads, no build hooks, no commands, and no executable logic are present in this file.

The `sha512sums` entries are all `SKIP`, which is a trust/hygiene consideration but not evidence of malice under the provided guidelines. The `source` array does not reference any remote tarballs or VCS URLs that could change at build time; it references only local repository files. There is no suspicious encoding, obfuscation, exfiltration, backdoor, or unexpected file operation in this manifest. The file is consistent with ordinary AUR packaging practice.
</details>
<evidence>
</evidence>
<summary>
Standard AUR metadata file; no malicious or dangerous behavior found.</summary>
</security_assessment>

[2/9] Reviewing .SRCINFO, PKGBUILD, README.md, enable-ibus-daemon...
[3/9] Reviewing PKGBUILD, README.md, enable-ibus-daemon...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata file; no malicious or dangerous behavior found.
LLM auditresponse for README.md:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a simple README.md for an AUR package called ibus-daemon. It only contains a description, installation instructions using `yay -S ibus-daemon`, and license information. There is no code, no network requests, no file operations, no obfuscation, and no commands beyond a standard AUR helper invocation. Nothing in this file deviates from normal packaging documentation or indicates malicious behavior.
</details>
<evidence>
</evidence>
<summary>
README only; no code or suspicious behavior. Safe.
</summary>
</security_assessment>

[3/9] Reviewing PKGBUILD, README.md, enable-ibus-daemon, ibus-config@.service...
[4/9] Reviewing PKGBUILD, enable-ibus-daemon, ibus-config@.service...
+ Reviewed README.md. Status: SAFE -- README only; no code or suspicious behavior. Safe.
LLM auditresponse for enable-ibus-daemon:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a simple shell wrapper that enables a per-display systemd user service for ibus. It calls `systemctl enable --user` with a service name derived from the `$DISPLAY` environment variable and forwards any additional arguments. There are no network operations, no obfuscated commands, no filesystem modifications outside the expected systemd user unit enablement, and no execution of untrusted content. The script is consistent with standard packaging/helper practices.
</details>
<evidence>
</evidence>
<summary>
Benign wrapper enabling the ibus systemd user service; no security concerns.</summary>
</security_assessment>

[4/9] Reviewing PKGBUILD, enable-ibus-daemon, ibus-config@.service, ibus-daemon-run-with-env...
[5/9] Reviewing PKGBUILD, ibus-config@.service, ibus-daemon-run-with-env...
+ Reviewed enable-ibus-daemon. Status: SAFE -- Benign wrapper enabling the ibus systemd user service; no security concerns.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a straightforward packaging script for a systemd user service for IBus. It declares local source files (`ibus@.service`, `ibus-config@.service`, helper scripts, and documentation) and installs them into the package directory with `install`. There are no network downloads, no encoded or obfuscated commands, no dynamic execution, and no modifications outside `$pkgdir` or `$srcdir`.

The use of `SKIP` checksums is a supply-chain hygiene concern because the source files are not integrity-verified, but it is explicitly not sufficient to mark the file UNSAFE. The package does not fetch code from an unexpected host, exfiltrate data, or install backdoors. Based solely on this PKGBUILD, it conforms to ordinary AUR packaging practices.
</details>
<evidence>
</evidence>
<summary>
Benign systemd service package; no malicious behavior or suspicious operations found.
</summary>
</security_assessment>

[6/9] Reviewing ibus-config@.service, ibus-daemon-run-with-env...
+ Reviewed PKGBUILD. Status: SAFE -- Benign systemd service package; no malicious behavior or suspicious operations found.
[6/9] Reviewing ibus-config@.service, ibus-daemon-run-with-env, ibus@.service...
LLM auditresponse for ibus-config@.service:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard systemd unit file for the ibus configuration daemon. It defines a service inside the `ibus.slice`, starts `/usr/lib/ibus/ibus-dconf` with a helper wrapper, and sets normal input-method environment variables (`GTK_IM_MODULE`, `QT_IM_MODULE`, `XMODIFIERS`, and the display instance with `%I`). There are no network operations, encoded payloads, suspicious file access, or execution of untrusted content. The `ExecStartPre=/bin/sleep 2` is a benign startup delay. No evidence of injected malicious behavior was found.
</details>
<evidence>
</evidence>
<summary>
Standard ibus service unit; no suspicious behavior detected.</summary>
</security_assessment>

[7/9] Reviewing ibus-daemon-run-with-env, ibus@.service...
+ Reviewed ibus-config@.service. Status: SAFE -- Standard ibus service unit; no suspicious behavior detected.
LLM auditresponse for ibus@.service:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard systemd user service unit for the ibus input method daemon. It defines the service description, dependency ordering with other input method services, and start/stop/reload commands using the package's own binaries under /usr/bin. The template instance `%I` is used to pass the display name into the DISPLAY environment variable, which is normal for per-display ibus service instances.

There are no suspicious network operations, no encoded or obfuscated commands, no file downloads, and no attempts to access sensitive data. The service unit only launches and manages the ibus daemon process, which is exactly the declared purpose of the package. It also includes reasonable restart limits (`StartLimitIntervalSec=60`, `StartLimitBurst=10`) and a standard `Restart=on-failure` policy. No supply-chain or malicious behavior is present.
</details>
<evidence></evidence>
<summary>
Standard systemd unit for ibus daemon; no malicious behavior found.
</summary>
</security_assessment>

[8/9] Reviewing ibus-daemon-run-with-env...
+ Reviewed ibus@.service. Status: SAFE -- Standard systemd unit for ibus daemon; no malicious behavior found.
LLM auditresponse for ibus-daemon-run-with-env:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a small POSIX shell wrapper that prepares the Wayland display environment before exec'ing a command. It inspects `$XDG_RUNTIME_DIR` for a Wayland socket, sets and exports `WAYLAND_DISPLAY` if found, and then executes the provided command with `exec "$@"`. This behavior is consistent with the stated purpose of ensuring ibus-related processes share the correct display environment.

There are no suspicious network operations, no encoded or obfuscated content, no unexpected file writes or deletions, and no execution of downloaded code. The script only reads a socket path and sets an environment variable before exec'ing the intended command. It does not deviate from normal packaging/helper-script practices.
</details>
<evidence>
</evidence>
<summary>
Benign environment wrapper for ibus display setup; no malicious behavior found.</summary>
</security_assessment>

[9/9] Reviewing ...
+ Reviewed ibus-daemon-run-with-env. Status: SAFE -- Benign environment wrapper for ibus display setup; no malicious behavior found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 22,824
  Completion Tokens: 3,472
  Total Tokens: 26,296
  Total Cost: $0.002709
  Execution Time: 32.81 seconds

Final Status: SAFE


No issues found.
