---
package: gnome-shell-extension-linux-passkey
pkgbase: linux-passkey
pkgver: 0.1.0
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 10275
completion_tokens: 5828
total_tokens: 16103
cost: 0.001995721
execution_time: 44.79
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-21T03:05:57Z
file_verdicts:
  - file: linux-passkey.install
    status: safe
    summary: Routine kernel module and udev setup script, no risk.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD, no malicious indicators found.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata, no threats.
---

gnome-shell-extension-linux-passkey is built from linux-passkey
Materializing gnome-shell-extension-linux-passkey from local mirror...
Materialized gnome-shell-extension-linux-passkey
Analyzing gnome-shell-extension-linux-passkey AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD only declares standard packaging variables (`pkgbase`, `pkgname`, `pkgver`, `pkgrel`, `pkgdesc`, `arch`, `url`, `license`, `source`, `sha256sums`) and defines two package functions (`package_linux-passkey()` and `package_gnome-shell-extension-linux-passkey()`). No code in the global/top-level scope executes any commands, makes network requests, or performs any assignments that could run external programs. The `source` line uses string interpolation to construct a download URL, which is normal and does not execute code. All potentially dangerous operations (if any) are confined within the package functions, which are not executed during `makepkg --printsrcinfo`. Therefore, sourcing this PKGBUILD is safe.
</details>
<evidence></evidence>
<summary>No malicious top-level code found. Sourcing is safe.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious top-level code found. Sourcing is safe.
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, PKGBUILD...
[0/3] Reviewing .SRCINFO, PKGBUILD, linux-passkey.install...
LLM auditresponse for linux-passkey.install:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.install` script for an AUR package. It loads a kernel module (`uhid`) and reloads udev rules to support a user-space HID driver. The script only performs system administration tasks (modprobe, udevadm) and prints user instructions. There is no network activity, no obfuscated code, no file exfiltration, and no execution of untrusted content. The operations are appropriate for the stated package purpose.
</details>
<evidence></evidence>
<summary>Routine kernel module and udev setup script, no risk.</summary>
</security_assessment>

[1/3] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed linux-passkey.install. Status: SAFE -- Routine kernel module and udev setup script, no risk.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a well-structured, standard Arch Linux package recipe. It fetches a specific version tarball from the project's official GitHub releases endpoint, verifies it against a pinned SHA-256 checksum, and builds it using `make install`. There are no obfuscated commands, suspicious network destinations, dangerous operations (`eval`, `curl|bash`), or attempts to tamper with system files outside of the standard DESTDIR installation process.

The package is safely split into subpackages (`linux-passkey` and `gnome-shell-extension-linux-passkey`) using standard Arch conventions. The source is pinned to a specific version and hash, reducing the risk of an unexpected upstream compromise altering the build. No evidence of supply-chain attack code injection was found in this PKGBUILD.
</details>
<evidence>
</evidence>
<summary>Standard PKGBUILD, no malicious indicators found.</summary>
</security_assessment>

[2/3] Reviewing .SRCINFO...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD, no malicious indicators found.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This `.SRCINFO` file is a standard AUR metadata manifest. It defines two related packages (`linux-passkey` and `gnome-shell-extension-linux-passkey`) built from the same source release. The source is pinned to a specific version `0.1.0` on GitHub using an HTTPS URL and a specific `sha256sum`, which follows good security practices. The listed dependencies (Python, GTK4, GLib, Polkit, Systemd, etc.) are entirely appropriate for a GNOME Shell-integrated FIDO2/WebAuthn authenticator. No commands are executed, no obfuscated strings are present, and no external resources beyond the official upstream release are referenced. There is no evidence of malicious behavior or supply-chain attack indicators in this file.
</details>
<evidence></evidence>
<summary>Standard AUR metadata, no threats.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata, no threats.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 10,275
  Completion Tokens: 5,828
  Total Tokens: 16,103
  Total Cost: $0.001996
  Execution Time: 44.79 seconds

Final Status: SAFE


No issues found.
