---
package: howdy-next
pkgver: 3.4.0
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 171a316e053e9c4b28731ccb1aa63b1168550d3a
prompt_tokens: 12692
completion_tokens: 1719
total_tokens: 14411
cost: 0.00107716140
execution_time: 23.92
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-12T11:19:19Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata with pinned upstream source and checksums; no malicious behavior found.
  - file: howdy-next.install
    status: safe
    summary: Informational install script with no malicious behavior.
  - file: polkit-agent-helper-howdy.conf
    status: safe
    summary: Standard device access policy for howdy; no malicious indicators.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD with no signs of malicious code.
---

Materializing howdy-next from local mirror...
Materialized howdy-next
Analyzing howdy-next AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD's global/top-level scope contains only standard variable assignments (pkgname, pkgver, pkgrel, etc.), arrays (depends, source, b2sums), and the definition of the `_tag` variable. There are no command substitutions, backticks, `$(...)`, `eval`, `curl`, `wget`, or any other executable statements at the global level. All executable code is confined to the `build()`, `check()`, and `package()` functions, which are not invoked during `makepkg --printsrcinfo`. Therefore, sourcing this PKGBUILD is safe.
</details>
<evidence></evidence>
<summary>Sourcing PKGBUILD is safe; no malicious top-level code.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Sourcing PKGBUILD is safe; no malicious top-level code.
Reviewing the 4 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/4] Reviewing .SRCINFO...
[0/4] Reviewing .SRCINFO, PKGBUILD...
[0/4] Reviewing .SRCINFO, PKGBUILD, howdy-next.install...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The `.SRCINFO` file is standard AUR package metadata for `howdy-next`. It declares the package name, version, dependencies, source tarball, and checksums. The source is fetched from the project's own upstream repository on Codeberg using HTTPS, and both source files have pinned BLAKE2 checksums. No unexpected download hosts, encoded commands, file operations, or post-install behavior is present in this metadata file.

The `install = howdy-next.install` entry references a separate install script that is not included in the provided content, so it cannot be reviewed here. The `polkit-agent-helper-howdy.conf` source is a configuration file, and the `b2sums` entries match the declared sources. Nothing in this file indicates malicious behavior, obfuscation, data exfiltration, or execution of untrusted code.
</details>
<evidence>
</evidence>
<summary>
Standard AUR metadata with pinned upstream source and checksums; no malicious behavior found.
</summary>
</security_assessment>

[1/4] Reviewing PKGBUILD, howdy-next.install...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata with pinned upstream source and checksums; no malicious behavior found.
[1/4] Reviewing PKGBUILD, howdy-next.install, polkit-agent-helper-howdy.conf...
LLM auditresponse for howdy-next.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard Arch Linux package install script (`.install`) that only prints setup instructions to the user. It contains no code execution beyond `echo` commands, no network requests, no file modifications, and no obfuscated or suspicious content. The instructions advise the user to keep a root shell open and run specific howdy commands, which is normal for a package that integrates with PAM and requires manual configuration.
</details>
<evidence></evidence>
<summary>Informational install script with no malicious behavior.</summary>
</security_assessment>

[2/4] Reviewing PKGBUILD, polkit-agent-helper-howdy.conf...
+ Reviewed howdy-next.install. Status: SAFE -- Informational install script with no malicious behavior.
LLM auditresponse for polkit-agent-helper-howdy.conf:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a systemd service override snippet for polkit-agent-helper-howdy. It grants read-write access to video4linux character devices and /dev/uinput, and disables the PrivateDevices sandboxing. This is standard configuration for face-recognition software like howdy, which needs camera access and the ability to inject keyboard events (via uinput) to automate authentication. There is no code, no network access, no obfuscation, and no deviation from the expected behavior of such a package.
</details>
<evidence></evidence>
<summary>Standard device access policy for howdy; no malicious indicators.</summary>
</security_assessment>

[3/4] Reviewing PKGBUILD...
+ Reviewed polkit-agent-helper-howdy.conf. Status: SAFE -- Standard device access policy for howdy; no malicious indicators.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard AUR packaging practices. It downloads the source tarball from the project's official Codeberg repository with a pinned version tag and provides BLAKE2 checksums for integrity verification. The build and install steps use cmake in a typical manner, with no unexpected commands. The only notable operation is installing a polkit override configuration file, which is documented as relaxing sandbox directives as recommended by polkit (see `polkit-agent-helper(8)`). This is a legitimate configuration change to support the application's PAM integration and is not malicious. No obfuscation, suspicious network requests, or data exfiltration is present.
</details>
<evidence></evidence>
<summary>Standard AUR PKGBUILD with no signs of malicious code.</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD with no signs of malicious code.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 12,692
  Completion Tokens: 1,719
  Total Tokens: 14,411
  Total Cost: $0.001077
  Execution Time: 23.92 seconds

Final Status: SAFE


No issues found.
