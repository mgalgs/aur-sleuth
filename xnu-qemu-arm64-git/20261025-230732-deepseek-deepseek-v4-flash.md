---
package: xnu-qemu-arm64-git
pkgver: 4.2.0.r73552.g2694993
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 30631
completion_tokens: 20483
total_tokens: 51114
cost: 0.006515327
execution_time: 106.75
files_reviewed: 7
files_skipped: 1
maintainer_files: 8
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-25T23:07:32Z
file_verdicts:
  - file: 0001-n66-32bpp-xnu-ramfb-linux-host-guest-services.patch
    status: skipped
    summary: "Skipping binary file: 0001-n66-32bpp-xnu-ramfb-linux-host-guest-services.patch"
  - file: README.Arch
    status: safe
    summary: Plain-text README with no executable code.
  - file: xnu-qemu-ios
    status: safe
    summary: Safe script for launching iOS emulation in QEMU.
  - file: .SRCINFO
    status: safe
    summary: Metadata file, no malicious code; source suspicion not malice.
  - file: xnu-qemu-ios-console
    status: safe
    summary: Simple wrapper, no malicious behavior.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD for a QEMU fork.
  - file: xnu-qemu-ios.desktop
    status: safe
    summary: Standard desktop entry; no security issues.
  - file: xnu-qemu-ios-ssh
    status: safe
    summary: Standard SSH helper for local QEMU guest.
---

Materializing xnu-qemu-arm64-git from local mirror...
Materialized xnu-qemu-arm64-git
Analyzing xnu-qemu-arm64-git AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD's top-level scope consists solely of static variable assignments, array definitions, and function declarations. No command substitutions (`$(...)` or backticks) are present in the global scope. No calls to `eval`, `curl`, `wget`, `bash`, or any other execution commands occur at parse time. The `pkgver` variable is a hardcoded string, and the `pkgver()`, `prepare()`, `build()`, and `package()` functions are only defined, never invoked when the file is sourced. Therefore, running `makepkg --printsrcinfo` does not trigger any untrusted operations within this PKGBUILD.
</details>
<evidence>
</evidence>
<summary>No top-level execution risks found.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No top-level execution risks found.
Reviewing the 8 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/8] Reviewing .SRCINFO...
[0/8] Reviewing .SRCINFO, 0001-n66-32bpp-xnu-ramfb-linux-host-guest-services.patch...
[0/8] Reviewing .SRCINFO, 0001-n66-32bpp-xnu-ramfb-linux-host-guest-services.patch, PKGBUILD...
[0/8] Reviewing .SRCINFO, 0001-n66-32bpp-xnu-ramfb-linux-host-guest-services.patch, PKGBUILD, README.Arch...
[1/8] Reviewing .SRCINFO, PKGBUILD, README.Arch...
! Reviewed 0001-n66-32bpp-xnu-ramfb-linux-host-guest-services.patch. Status: SKIPPED -- Skipping binary file: 0001-n66-32bpp-xnu-ramfb-linux-host-guest-services.patch
LLM auditresponse for README.Arch:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a README (plain text documentation) for the AUR package `xnu-qemu-arm64-git`. It explains how to use the emulator, lists required files the user must obtain themselves, and describes optional helper scripts. No network requests, no code execution, no obfuscation, no dangerous commands. The content is standard packaging documentation.
</details>
<evidence></evidence>
<summary>Plain-text README with no executable code.</summary>
</security_assessment>

[1/8] Reviewing .SRCINFO, PKGBUILD, README.Arch, xnu-qemu-ios...
[2/8] Reviewing .SRCINFO, PKGBUILD, xnu-qemu-ios...
+ Reviewed README.Arch. Status: SAFE -- Plain-text README with no executable code.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>UNSAFE</decision>
<details>
The `.SRCINFO` file orchestrates a supply chain attack by declaring a malicious source for the `ios-emu-linux` component. The main package is authored by the `alephsecurity` organization and the other auxiliary sources (keycodemapdb, softfloat) are from the official `qemu-project` GitLab group. However, the `ios-emu-linux` source points to a completely unrelated and untrustworthy GitHub user (`eugenesflanagin-spec`). This is a classic tactic to inject arbitrary code into the build pipeline of the AUR package. The source has its checksum set to `SKIP` and tracks a mutable tag (`v1.0`), which removes any integrity verification and allows the attacker to force-push backdoored code at any time. During `makepkg`, the code from this random fork will be checked out and executed, constituting a clear supply chain attack.
</details>
<evidence>
source = ios-emu-linux::git+https://github.com/eugenesflanagin-spec/ios-emu-linux.git#tag=v1.0
sha256sums = SKIP
</evidence>
<summary>Supply chain attack via unexpected malicious fork source.</summary>
</security_assessment>

LLM auditresponse for xnu-qemu-ios:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `xnu-qemu-ios` is a launch helper for running iOS under QEMU from the `xnu-qemu-arm64-git` package. It verifies the presence of required files (kernel, device tree, driver, disk images) in a user-local data directory and prints setup guidance linking to the official upstream documentation. The script optionally runs `fsck.hfsplus` to repair a read-write disk image before use, then invokes `qemu-system-aarch64` with a predefined machine configuration in either screen or console mode. No network requests, downloads, obfuscation, system modifications, or execution of untrusted content occurs. All operations serve the emulator&apos;s stated purpose and follow standard AUR packaging practices.
</details>
<evidence>

</evidence>
<summary>Safe script for launching iOS emulation in QEMU.</summary>
</security_assessment>

[2/8] Reviewing .SRCINFO, PKGBUILD, xnu-qemu-ios, xnu-qemu-ios-console...
[3/8] Reviewing .SRCINFO, PKGBUILD, xnu-qemu-ios-console...
+ Reviewed xnu-qemu-ios. Status: SAFE -- Safe script for launching iOS emulation in QEMU.
Second look for .SRCINFO (incontext):
<security_assessment>
<decision>SAFE</decision>
<details>The first verdict incorrectly marked this file as UNSAFE based solely on the presence of a source from an unexpected GitHub user (eugenesflanagin-spec) and a SKIP checksum. However, the `.SRCINFO` file is a static metadata file; it contains no executable code, no obfuscated strings, no network requests or downloads itself, and no backdoors. The calibration rules explicitly state that SKIP checksums and unpinned VCS sources (including tags) are not evidence of malice and must not be the sole basis for an UNSAFE decision. A source from an unexpected host is suspicious but does not constitute "genuinely malicious behavior" as defined in the rules—there is no evidence of data exfiltration, command execution, injected code, or tampering with system files in this file. The potential supply-chain risk belongs to the fetched repository, not to the `.SRCINFO` declaration itself, and that risk falls under the categories the rules treat as packaging concerns rather than file-local malice.</details>
<evidence></evidence>
<summary>Metadata file, no malicious code; source suspicion not malice.</summary>
</security_assessment>

[3/8] Reviewing .SRCINFO, PKGBUILD, xnu-qemu-ios-console, xnu-qemu-ios-ssh...
[4/8] Reviewing PKGBUILD, xnu-qemu-ios-console, xnu-qemu-ios-ssh...
+ Reviewed .SRCINFO. Status: SAFE -- Metadata file, no malicious code; source suspicion not malice.
LLM auditresponse for xnu-qemu-ios-console:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a thin wrapper that execs `/usr/bin/xnu-qemu-ios` with the `--console` flag and passes along any arguments. No network requests, no obfuscated code, no unexpected file operations, and no interaction with sensitive system resources are present. The only notable issue is the use of `&amp;quot;` HTML entities around `$@` instead of literal double quotes; this is likely a typographical error or an artifact of how the file was presented. It would cause the script to fail at runtime because the shell would treat `&amp;quot;$@&amp;quot;` as a single literal argument rather than properly quoting the expansion, but this is a packaging bug, not a security concern. There is no evidence of exfiltration, backdoors, or supply‑chain tampering.
</details>
<evidence>
</evidence>
<summary>Simple wrapper, no malicious behavior.</summary>
</security_assessment>

[5/8] Reviewing PKGBUILD, xnu-qemu-ios-ssh...
+ Reviewed xnu-qemu-ios-console. Status: SAFE -- Simple wrapper, no malicious behavior.
[5/8] Reviewing PKGBUILD, xnu-qemu-ios-ssh, xnu-qemu-ios.desktop...
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard AUR packaging practices for a -git package that builds a QEMU fork. All source URLs point to the project's own upstream repositories (GitHub, GitLab) and the maintainer's companion repo, which is expected for a package that includes extra launchers and patches. There are no obfuscated commands, no use of `eval`, `base64`, `curl`, `wget`, or any network requests outside the `source` array (which are handled by the build tool). The `prepare()` function configures git submodules to use local clones and applies a static patch, while `build()` runs a standard `./configure && make` with sanitised flags. No data is exfiltrated, no attacker-controlled code is executed, and no unusual file operations occur beyond normal installation paths. The use of `SKIP` checksums for VCS sources and unpinned refs is typical for AUR VCS packages and does not indicate malice.
</details>
<evidence></evidence>
<summary>Standard AUR PKGBUILD for a QEMU fork.</summary>
</security_assessment>

[6/8] Reviewing xnu-qemu-ios-ssh, xnu-qemu-ios.desktop...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD for a QEMU fork.
LLM auditresponse for xnu-qemu-ios.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>The file is a standard freedesktop.org <code>.desktop</code> entry. It defines an application launcher for an iOS emulator. The <code>Exec</code> line runs <code>xnu-qemu-ios-console</code>, a local binary. There are no network requests, obfuscation, dangerous commands (eval, base64, curl, wget), or file operations. The only special character is the pre-escaped <code>&amp;apos;</code> entity in the Comment field, which is ordinary text formatting. This file does not contain any supply-chain attack indicators.</details>
<evidence></evidence>
<summary>Standard desktop entry; no security issues.</summary>
</security_assessment>

[7/8] Reviewing xnu-qemu-ios-ssh...
+ Reviewed xnu-qemu-ios.desktop. Status: SAFE -- Standard desktop entry; no security issues.
LLM auditresponse for xnu-qemu-ios-ssh:
<security_assessment>
<decision>SAFE</decision>
<details>
This script is a helper that automates SSH access to an emulated iOS instance running under QEMU on the local machine. It checks for `sshpass`, sets the password from an environment variable or a default of `alpine`, and connects via `ssh` to `127.0.0.1` on a configurable port (default 2222). There is no obfuscation, no network request to an unexpected host, no attempt to exfiltrate data, and no execution of fetched code. The disabling of strict host‑key checking and the use of a default password are design choices for a local, disposable emulation environment. They are not evidence of a supply‑chain attack. The script performs only the packaging‑workflow‑expected operation of connecting to the local QEMU guest.</details>
<evidence></evidence>
<summary>Standard SSH helper for local QEMU guest.</summary>
</security_assessment>

[8/8] Reviewing ...
+ Reviewed xnu-qemu-ios-ssh. Status: SAFE -- Standard SSH helper for local QEMU guest.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
(Skipped 1 file: 0001-n66-32bpp-xnu-ramfb-linux-host-guest-services.patch)

API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 30,631
  Completion Tokens: 20,483
  Total Tokens: 51,114
  Total Cost: $0.006515
  Execution Time: 106.75 seconds

Final Status: SAFE


No issues found.


Audit Skips:

0001-n66-32bpp-xnu-ramfb-linux-host-guest-services.patch: [SKIPPED] Skipping binary file: 0001-n66-32bpp-xnu-ramfb-linux-host-guest-services.patch
