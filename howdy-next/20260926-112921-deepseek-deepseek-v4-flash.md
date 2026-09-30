---
package: howdy-next
pkgver: 3.4.2
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 12676
completion_tokens: 1963
total_tokens: 14639
cost: 0.00078095808
execution_time: 27.78
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-26T11:29:21Z
file_verdicts:
  - file: howdy-next.install
    status: safe
    summary: Informational install script, no malicious code.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD with pinned checksums, no malicious code.
  - file: polkit-agent-helper-howdy.conf
    status: safe
    summary: Standard PolKit config, no malicious content.
  - file: .SRCINFO
    status: safe
    summary: Standard package metadata; no malicious or suspicious behavior found.
---

Materializing howdy-next from local mirror...
Materialized howdy-next
Analyzing howdy-next AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
Sourcing this PKGBUILD is safe. The global scope contains only standard variable definitions (pkgname, pkgver, source, checksums, etc.) with no command substitutions, backticks, or other executable code. No functions are called at top-level. The `install=howdy-next.install` line does not execute that file during `makepkg --printsrcinfo`. The source URL points to the project's own upstream repository (codeberg.org), and checksums are provided (not SKIPped). No malicious content or unexpected behavior is present.
</details>
<evidence></evidence>
<summary>Global scope contains only standard variable definitions; no code execution risk.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Global scope contains only standard variable definitions; no code execution risk.
Reviewing the 4 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/4] Reviewing .SRCINFO...
[0/4] Reviewing .SRCINFO, howdy-next.install...
[0/4] Reviewing .SRCINFO, howdy-next.install, PKGBUILD...
LLM auditresponse for howdy-next.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `howdy-next.install` contains only `pre_install()` and `post_install()` functions that print informational messages to the terminal. These messages instruct the user to manually perform setup steps such as downloading models, configuring the camera, and adding PAM configuration. There are no network requests, no dangerous commands (e.g., `eval`, `curl`, `wget`), no obfuscated code, and no file operations other than `echo`. The content is consistent with standard AUR install scripts that provide user guidance. No malicious behavior is present.
</details>
<evidence></evidence>
<summary>Informational install script, no malicious code.</summary>
</security_assessment>

[0/4] Reviewing .SRCINFO, howdy-next.install, PKGBUILD, polkit-agent-helper-howdy.conf...
[1/4] Reviewing .SRCINFO, PKGBUILD, polkit-agent-helper-howdy.conf...
+ Reviewed howdy-next.install. Status: SAFE -- Informational install script, no malicious code.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard Arch packaging practices. It downloads a tarball from the project&#x27;s own upstream repository (codeberg.org) with pinned BLAKE2 checksums. The build uses cmake, and the package stage installs files into $pkgdir. The only modifications are removing the bundled LICENSE (standard for Arch) and installing a polkit drop-in config from a file included in the AUR source. There are no suspicious network requests, obfuscated code, dangerous commands, or unexpected system modifications. The polkit config is documented as recommended by polkit(8) for the package&#x27;s functionality. No signs of supply-chain attack or malicious injection.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD with pinned checksums, no malicious code.</summary>
</security_assessment>

[2/4] Reviewing .SRCINFO, polkit-agent-helper-howdy.conf...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD with pinned checksums, no malicious code.
LLM auditresponse for polkit-agent-helper-howdy.conf:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a PolKit configuration fragment for the Howdy face-authentication helper agent. It grants read-write access to video4linux devices and `/dev/uinput`, both of which are necessary for Howdy's stated functionality: capturing webcam images and simulating keyboard input during authentication. The content is static, contains no executable code, no network references, no obfuscation, and no attempts to alter system files or exfiltrate data. This is a standard packaging file and does not exhibit any malicious or supply-chain attack patterns.
</details>
<evidence></evidence>
<summary>Standard PolKit config, no malicious content.</summary>
</security_assessment>

[3/4] Reviewing .SRCINFO...
+ Reviewed polkit-agent-helper-howdy.conf. Status: SAFE -- Standard PolKit config, no malicious content.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard AUR `.SRCINFO` metadata file. It declares the `howdy-next` package, its upstream URL, dependencies, and two sources: the upstream tarball from the project's own Codeberg repository and a local polkit helper configuration file. The checksums are provided as pinned `b2sums` values rather than `SKIP`, and the tarball is fetched over HTTPS from the project's declared upstream. No build, prepare, install, or post-install script logic is present in this metadata file, and there are no network requests, encoded commands, unexpected file operations, or references to unrelated hosts. The entries are consistent with normal packaging practice.
</details>
<evidence>
</evidence>
<summary>
Standard package metadata; no malicious or suspicious behavior found.
</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed .SRCINFO. Status: SAFE -- Standard package metadata; no malicious or suspicious behavior found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 12,676
  Completion Tokens: 1,963
  Total Tokens: 14,639
  Total Cost: $0.000781
  Execution Time: 27.78 seconds

Final Status: SAFE


No issues found.
