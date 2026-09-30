---
package: howdy-next-git
pkgver: 3.4.1.r0.g31fea0c
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 12828
completion_tokens: 3232
total_tokens: 16060
cost: 0.0007022288
execution_time: 63.9
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-20T11:36:53Z
file_verdicts:
  - file: howdy-next.install
    status: safe
    summary: Informational install script, no malicious content found.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD with no malicious indicators.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata; no malicious content.
  - file: polkit-agent-helper-howdy.conf
    status: safe
    summary: Standard device-access configuration for a face-authentication service; no malicious behavior.
---

Materializing howdy-next-git from local mirror...
Materialized howdy-next-git
Analyzing howdy-next-git AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD only contains standard variable assignments, array definitions, and a function definition (`pkgver()`). No top-level command substitutions, network requests, obfuscated code, or other dangerous operations are present. The `source` array points to the project's own upstream repository, which is expected. There is no code that would execute during `makepkg --printsrcinfo` that could cause harm. The SKIP checksum for the git source is standard practice for VCS packages and poses no risk at the parsing stage.
</details>
<evidence></evidence>
<summary>Safe: no top-level malicious code in PKGBUILD.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Safe: no top-level malicious code in PKGBUILD.
Reviewing the 4 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/4] Reviewing .SRCINFO...
[0/4] Reviewing .SRCINFO, PKGBUILD...
[0/4] Reviewing .SRCINFO, PKGBUILD, howdy-next.install...
LLM auditresponse for howdy-next.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard Arch Linux .install script that only outputs informational messages to the user during package installation. The `pre_install` function issues a warning to keep a root shell open while configuring PAM, which is standard security advice for packages that modify PAM configuration. The `post_install` function prints setup instructions for the howdy authentication system (downloading models, configuring camera, testing, adding face, and configuring PAM). There are no network requests, file operations, obfuscated code, or other malicious behaviors. This is entirely normal packaging practice.
</details>
<evidence></evidence>
<summary>Informational install script, no malicious content found.</summary>
</security_assessment>

[0/4] Reviewing .SRCINFO, PKGBUILD, howdy-next.install, polkit-agent-helper-howdy.conf...
[1/4] Reviewing .SRCINFO, PKGBUILD, polkit-agent-helper-howdy.conf...
+ Reviewed howdy-next.install. Status: SAFE -- Informational install script, no malicious content found.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard Arch packaging conventions for a VCS (git) package. The source is fetched from the project's own upstream repository on Codeberg. The checksum for the git source is correctly set to `SKIP` (required for VCS sources). The build uses cmake and installs files into the package directory. The only system modifications are legitimate: removal of a license file (covered by Arch's licenses package) and installation of a polkit overrides file to relax sandbox directives as recommended by polkit documentation. No evidence of malicious code injection, data exfiltration, unexpected network requests, or obfuscated commands.
</details>
<evidence></evidence>
<summary>Standard AUR PKGBUILD with no malicious indicators.</summary>
</security_assessment>

[2/4] Reviewing .SRCINFO, polkit-agent-helper-howdy.conf...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD with no malicious indicators.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `.SRCINFO` is a standard metadata file for the AUR package `howdy-next-git`. It contains package description, dependencies, source URLs, and checksums. The `source` entry points to the upstream Git repository on Codeberg, which is expected. The `b2sums` for the VCS source is `SKIP`, which is normal for `-git` packages and not a security concern. The `polkit-agent-helper-howdy.conf` file has a hardcoded BLAKE2b checksum, indicating the file is pinned. No executable code, network requests, or obfuscated content is present. The file adheres to standard AUR packaging practices and does not exhibit any signs of malicious activity.
</details>
<evidence></evidence>
<summary>Standard AUR metadata; no malicious content.</summary>
</security_assessment>

[3/4] Reviewing polkit-agent-helper-howdy.conf...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata; no malicious content.
LLM auditresponse for polkit-agent-helper-howdy.conf:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a systemd service drop-in (or polkit agent unit configuration) for howdy, a face-recognition authentication program. The settings grant read/write access to the system's video4linux devices (the IR/web camera used for face capture) and /dev/uinput (used to inject keystrokes, i.e., type the user's password, once a face is recognized). `PrivateDevices=no` simply disables the device-namespace sandbox, which is a permissive but non-malicious choice when a service needs direct hardware access.

These permissions match the application's stated purpose of replacing password authentication with facial recognition. They do not enable data exfiltration, remote code execution, credential theft, or tampering with unrelated system files. There is no obfuscation, no network activity, and no untrusted content involved. This is a normal device-permission configuration for a face-authentication daemon.
</details>
<evidence>

</evidence>
<summary>Standard device-access configuration for a face-authentication service; no malicious behavior.</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed polkit-agent-helper-howdy.conf. Status: SAFE -- Standard device-access configuration for a face-authentication service; no malicious behavior.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 12,828
  Completion Tokens: 3,232
  Total Tokens: 16,060
  Total Cost: $0.000702
  Execution Time: 63.90 seconds

Final Status: SAFE


No issues found.
