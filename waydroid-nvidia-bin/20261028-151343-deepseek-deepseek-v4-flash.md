---
package: waydroid-nvidia-bin
pkgver: 0.2.0
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 42194
completion_tokens: 14532
total_tokens: 56726
cost: 0.006484478
execution_time: 141.12
files_reviewed: 10
files_skipped: 0
maintainer_files: 10
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-28T15:13:43Z
file_verdicts:
  - file: driver-update-note
    status: safe
    summary: Informational hook script; no malicious behavior present.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata, no malicious content.
  - file: waydroid-nvidia-gpu.rules
    status: safe
    summary: Standard udev rule for NVIDIA render node ordering; no malicious behavior found.
  - file: waydroid-nvidia-driver.hook
    status: safe
    summary: Pacman hook triggers on nvidia driver updates; safe.
  - file: waydroid-nvidia-setup
    status: safe
    summary: No malicious behavior detected; ordinary packaging script.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD; no malicious behavior detected.
  - file: waydroid-nvidia.install
    status: safe
    summary: Standard Arch lifecycle script, no malicious behavior detected.
  - file: waydroid-nvidia.rules
    status: safe
    summary: Standard udev uaccess rule for udmabuf; no malicious behavior detected.
  - file: wd-venus.service
    status: safe
    summary: Standard systemd service file, no malicious content.
  - file: waydroid-venus.tmpfiles
    status: safe
    summary: Standard tmpfiles socket directory setup — not malicious.
---

Materializing waydroid-nvidia-bin from local mirror...
Materialized waydroid-nvidia-bin
Analyzing waydroid-nvidia-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
Sourcing this PKGBUILD for `makepkg --printsrcinfo` is safe. The top-level scope consists only of variable and array assignments (`pkgname`, `pkgver`, `source`, `sha256sums`, `depends`, etc.), comments, and parameter expansions such as `${_tag#v}`. There are no top-level command substitutions, no network fetches, no `eval`, `curl`, `wget`, `base64`, or file-modifying commands that would execute during sourcing.

The commands in `prepare()` and `package()` (patching, extraction, `make install`, and running `install-native.sh`) are outside the scope of this narrow gate, since `makepkg --printsrcinfo` does not execute those functions. They will need review in the full PKGBUILD audit, but they do not affect the safety of this specific command.
</details>
<evidence>
</evidence>
<summary>
Top-level PKGBUILD scope has only safe variable definitions; no code executes during printsrcinfo.
</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Top-level PKGBUILD scope has only safe variable definitions; no code executes during printsrcinfo.
Reviewing the 10 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/10] Reviewing .SRCINFO...
[0/10] Reviewing .SRCINFO, driver-update-note...
[0/10] Reviewing .SRCINFO, driver-update-note, PKGBUILD...
LLM auditresponse for driver-update-note:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a pacman post-transaction hook script that prints an informational message when the NVIDIA driver is updated. It reads a single value from `/var/lib/waydroid/waydroid.cfg` and, if set to `nvidia-prolapse`, reminds the user to run `sudo waydroid-nvidia-setup` after rebooting. There are no network accesses, no downloads, no execution of fetched content, no file modifications, and no obfuscation. The script always exits 0 and is a standard, non‑malicious packaging convenience.
</details>
<evidence></evidence>
<summary>Informational hook script; no malicious behavior present.</summary>
</security_assessment>

[0/10] Reviewing .SRCINFO, driver-update-note, PKGBUILD, waydroid-nvidia-driver.hook...
[1/10] Reviewing .SRCINFO, PKGBUILD, waydroid-nvidia-driver.hook...
+ Reviewed driver-update-note. Status: SAFE -- Informational hook script; no malicious behavior present.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The .SRCINFO file is a static metadata descriptor for the AUR package waydroid-nvidia-bin. It lists package details, dependencies, source URLs, and SHA-256 checksums. All remote sources point to the project's declared GitHub releases and the upstream waydroid repository, accessed via HTTPS, with checksums provided for integrity verification. There are no executable commands, obfuscated code, network exfiltration attempts, or unusual system modifications. This file conforms to standard AUR packaging practices.
</details>
<evidence>
</evidence>
<summary>Standard AUR metadata, no malicious content.</summary>
</security_assessment>

[1/10] Reviewing .SRCINFO, PKGBUILD, waydroid-nvidia-driver.hook, waydroid-nvidia-gpu.rules...
[2/10] Reviewing PKGBUILD, waydroid-nvidia-driver.hook, waydroid-nvidia-gpu.rules...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata, no malicious content.
LLM auditresponse for waydroid-nvidia-gpu.rules:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a udev rules file for the waydroid-nvidia package. It matches NVIDIA DRM render nodes and tags them for systemd so that the container service can be ordered after the NVIDIA GPU device is initialized. This is normal systemd/udev integration for a hardware-dependent package and does not execute arbitrary code, fetch remote resources, or modify unrelated system files.

There is no obfuscation, no network access, no file exfiltration, and no attempt to bypass packaging checks. The rule only adds a systemd tag and device alias for the package's stated purpose. The downloaded-file context is also consistent with an upstream-provided configuration file. No genuinely malicious behavior is present.
</details>
<evidence>
</evidence>
<summary>
Standard udev rule for NVIDIA render node ordering; no malicious behavior found.</summary>
</security_assessment>

[2/10] Reviewing PKGBUILD, waydroid-nvidia-driver.hook, waydroid-nvidia-gpu.rules, waydroid-nvidia-setup...
[3/10] Reviewing PKGBUILD, waydroid-nvidia-driver.hook, waydroid-nvidia-setup...
+ Reviewed waydroid-nvidia-gpu.rules. Status: SAFE -- Standard udev rule for NVIDIA render node ordering; no malicious behavior found.
LLM auditresponse for waydroid-nvidia-driver.hook:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard pacman hook definition (ALPM hook) that triggers on Install/Upgrade of several NVIDIA driver packages. Its action runs a fixed-path script (`/usr/lib/waydroid-nvidia/driver-update-note`) after the transaction. There is no embedded code, no obfuscated strings, no dynamic commands, and no network operations. The file itself does not contain any logic beyond defining triggers and an action path. No evidence of malicious or dangerous behavior is present.
</details>
<evidence></evidence>
<summary>Pacman hook triggers on nvidia driver updates; safe.</summary>
</security_assessment>

[3/10] Reviewing PKGBUILD, waydroid-nvidia-driver.hook, waydroid-nvidia-setup, waydroid-nvidia.install...
[4/10] Reviewing PKGBUILD, waydroid-nvidia-setup, waydroid-nvidia.install...
+ Reviewed waydroid-nvidia-driver.hook. Status: SAFE -- Pacman hook triggers on nvidia driver updates; safe.
LLM auditresponse for waydroid-nvidia-setup:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a well-documented setup script for configuring Waydroid with NVIDIA GPU support. It performs numerous system administration tasks: checking hardware state, writing configuration files, installing vendor images shipped with the package, and switching between driver modes. All operations are consistent with the stated purpose of the package and do not exfiltrate data, download or execute code from unexpected sources, or use obfuscated commands. The script validates local files extensively and reverts changes on failure, indicating careful design rather than malice. No embedded base64, eval, suspicious network requests, or other indicators of a supply‑chain attack are present.
</details>
<evidence></evidence>
<summary>No malicious behavior detected; ordinary packaging script.</summary>
</security_assessment>

[4/10] Reviewing PKGBUILD, waydroid-nvidia-setup, waydroid-nvidia.install, waydroid-nvidia.rules...
[5/10] Reviewing PKGBUILD, waydroid-nvidia.install, waydroid-nvidia.rules...
+ Reviewed waydroid-nvidia-setup. Status: SAFE -- No malicious behavior detected; ordinary packaging script.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard AUR packaging conventions for a pre-built binary package with source components. All download sources are from the project&#39;s own GitHub repository or the official waydroid repository, and every source has a pinned SHA-256 checksum, ensuring integrity. There are no obfuscated commands, no unexpected network requests (all downloads happen via makepkg&#39;s source handling), and no execution of unchecked code. The `prepare()` function applies patches from the source tarball and extracts release archives; the `package()` function installs the patched waydroid, host/guest binaries, vendor image, and configuration files. The guest library installation is guarded by an explicit allowlist that aborts on missing files, a good security practice. A bash script (`install-native.sh`) from the source repository is executed to install native components—this is normal packaging workflow, not a red flag. No evidence of exfiltration, backdoors, or supply-chain injection exists within this file.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD; no malicious behavior detected.</summary>
</security_assessment>

[6/10] Reviewing waydroid-nvidia.install, waydroid-nvidia.rules...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD; no malicious behavior detected.
[6/10] Reviewing waydroid-nvidia.install, waydroid-nvidia.rules, waydroid-venus.tmpfiles...
LLM auditresponse for waydroid-nvidia.install:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard Arch Linux package lifecycle script (`*.install`). It defines hooks that run during package installation, upgrade, and removal.

The `post_install` and `post_upgrade` hooks only display informational messages to the user guiding them on next steps (running the package's own `waydroid-nvidia-setup` tool). The `pre_remove` hook restores the original Waydroid configuration using the package's bundled cleanup tool and removes a systemd drop-in it previously installed. The `post_remove` hook prints a message about residual logs the user can delete manually.

There are no network connections (no `curl`, `wget`, or `git`), no downloads or execution of external code, no obfuscated commands, no data exfiltration, and no modification of files outside the package's own scope. All operations are local, well-defined, and typical for this type of packaging script. No malicious behavior or supply chain attack indicators are present.
</details>
<evidence>
</evidence>
<summary>Standard Arch lifecycle script, no malicious behavior detected.</summary>
</security_assessment>

[6/10] Reviewing waydroid-nvidia.install, waydroid-nvidia.rules, waydroid-venus.tmpfiles, wd-venus.service...
[7/10] Reviewing waydroid-nvidia.rules, waydroid-venus.tmpfiles, wd-venus.service...
+ Reviewed waydroid-nvidia.install. Status: SAFE -- Standard Arch lifecycle script, no malicious behavior detected.
LLM auditresponse for waydroid-nvidia.rules:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard udev rule that grants the seated desktop user access to `/dev/udmabuf` via the `uaccess` tag. The device is needed by the Waydroid NVIDIA Venus render server for CPU-mappable gralloc buffers. This matches the package's stated purpose and is comparable to common udev rules for DRI render nodes. No network access, code execution, obfuscation, data exfiltration, or modification of unrelated system files is present.

The rule is limited in scope: it only matches the `misc` subsystem and the `udmabuf` kernel device, and it only adds an access tag rather than changing permissions globally or enabling a service. This is an expected packaging/configuration practice, not malicious behavior.
</details>
<evidence>

</evidence>
<summary>
Standard udev uaccess rule for udmabuf; no malicious behavior detected.</summary>
</security_assessment>

[8/10] Reviewing waydroid-venus.tmpfiles, wd-venus.service...
+ Reviewed waydroid-nvidia.rules. Status: SAFE -- Standard udev uaccess rule for udmabuf; no malicious behavior detected.
LLM auditresponse for wd-venus.service:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard systemd service file for the waydroid-nvidia package. It launches a binary (`virgl_test_server`) from the package's own directory with appropriate arguments, sets environment variables, and defines restart behavior. There are no network requests, obfuscated code, dangerous commands (eval, curl, wget, etc.), or unexpected system modifications. The service is consistent with the package's stated purpose of running a render server for Waydroid on NVIDIA hardware.
</details>
<evidence>
</evidence>
<summary>Standard systemd service file, no malicious content.</summary>
</security_assessment>

[9/10] Reviewing waydroid-venus.tmpfiles...
+ Reviewed wd-venus.service. Status: SAFE -- Standard systemd service file, no malicious content.
LLM auditresponse for waydroid-venus.tmpfiles:
<security_assessment>
<decision>SAFE</decision>
<details>
This tmpfiles configuration creates a world-writable, sticky‑bit directory under `/run` for the Venus vtest socket. The permissions (1777) match a pattern (like `/tmp`) that allows the desktop user to create a socket there; the comment explains that the server later restricts the socket’s permissions with `chmod`. There is no code execution, no network access, and no exfiltration of data. The configuration is limited to the application’s own runtime directory and is a normal packaging practice for such a socket‑based IPC design.
</details>
<evidence></evidence>
<summary>Standard tmpfiles socket directory setup — not malicious.</summary>
</security_assessment>

[10/10] Reviewing ...
+ Reviewed waydroid-venus.tmpfiles. Status: SAFE -- Standard tmpfiles socket directory setup — not malicious.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 42,194
  Completion Tokens: 14,532
  Total Tokens: 56,726
  Total Cost: $0.006484
  Execution Time: 141.12 seconds

Final Status: SAFE


No issues found.
