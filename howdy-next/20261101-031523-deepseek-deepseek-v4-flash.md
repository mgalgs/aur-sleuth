---
package: howdy-next
pkgver: 3.4.2
pkgrel: 2
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 12955
completion_tokens: 5905
total_tokens: 18860
cost: 0.002253615
execution_time: 18.66
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-11-01T03:15:21Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Declarative metadata; no malicious content found.
  - file: howdy-next.install
    status: safe
    summary: Informational install script with no malicious behavior.
  - file: PKGBUILD
    status: safe
    summary: Standard pinned-source PKGBUILD, no malicious code.
  - file: polkit-agent-helper-howdy.conf
    status: safe
    summary: Standard device permission config for Howdy.
---

Materializing howdy-next from local mirror...
Materialized howdy-next
Analyzing howdy-next AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD's global/top-level scope contains only static variable definitions, array assignments, and a simple string concatenation (`_tag=&quot;v${pkgver}&quot;`). There are no command substitutions, backtick expressions, or function invocations that would execute code during sourcing. The `source` array and checksums are merely strings and are not processed at parse time. The `build()`, `check()`, and `package()` functions are defined but not executed by `makepkg --printsrcinfo`. Therefore, no dangerous code runs during this narrow step.
</details>
<evidence></evidence>
<summary>No risky global code; sourcing is safe.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No risky global code; sourcing is safe.
Reviewing the 4 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/4] Reviewing .SRCINFO...
[0/4] Reviewing .SRCINFO, howdy-next.install...
[0/4] Reviewing .SRCINFO, howdy-next.install, PKGBUILD...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The `.SRCINFO` file is a declarative metadata file for AUR packaging. It contains the package description, version, dependencies, and source URLs. The source tarball is fetched from the upstream GitHub repository (nathawatc/howdy-next) at a pinned tag (v3.4.2) with a specific BLAKE2b checksum. The other source is a local configuration file for the polkit agent helper. No obfuscated code, suspicious network requests, or unexpected system commands are present. The file only describes the package and does not execute any operations. There is no evidence of injected malicious behavior; the content is consistent with standard AUR practices.
</details>
<evidence></evidence>
<summary>Declarative metadata; no malicious content found.</summary>
</security_assessment>

[1/4] Reviewing howdy-next.install, PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Declarative metadata; no malicious content found.
[1/4] Reviewing howdy-next.install, PKGBUILD, polkit-agent-helper-howdy.conf...
LLM auditresponse for howdy-next.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard Arch Linux `.install` script that runs `pre_install` and `post_install` hooks. It contains only `echo` commands that print informational messages to the user. No commands alter the filesystem, make network requests, execute external programs, decode obfuscated data, or perform any action beyond displaying text in the terminal. The instructions guide the user through manual post-installation steps (downloading models, editing PAM configuration) and include a warning to keep a root shell open — a responsible safety practice for packages that modify authentication modules. There is no evidence of injected malicious code or supply-chain attack behavior.
</details>
<evidence></evidence>
<summary>Informational install script with no malicious behavior.</summary>
</security_assessment>

[2/4] Reviewing PKGBUILD, polkit-agent-helper-howdy.conf...
+ Reviewed howdy-next.install. Status: SAFE -- Informational install script with no malicious behavior.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a textbook example of a well-structured, securely pinned package. The upstream source is fetched over HTTPS from the project’s own GitHub releases page (`nathawatc/howdy-next`) using a fixed tag (`v3.4.2`), and the integrity of the tarball is verified by a hard-coded BLAKE2b checksum. The build and package functions perform only standard CMake operations (configure, build, install) and install a systemd drop-in configuration file from a local source in the AUR repository. There is no use of eval, curl, wget, git pull, base64, obfuscated code, or any unexpected network requests. The maintainer email is an unconventional GitHub numeric ID format, but the content of the PKGBUILD itself contains no commands or logic that would exfiltrate data, install backdoors, or execute attacker-controlled code.
</details>
<evidence></evidence>
<summary>Standard pinned-source PKGBUILD, no malicious code.</summary>
</security_assessment>

[3/4] Reviewing polkit-agent-helper-howdy.conf...
+ Reviewed PKGBUILD. Status: SAFE -- Standard pinned-source PKGBUILD, no malicious code.
LLM auditresponse for polkit-agent-helper-howdy.conf:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a systemd service drop-in configuration for the polkit-agent-helper service used by Howdy. It disables PrivateDevices and explicitly allows access to video4linux devices and /dev/uinput, which are required for Howdy's face authentication functionality (camera access and keyboard input simulation). No malicious content is present.
</details>
<evidence></evidence>
<summary>Standard device permission config for Howdy.</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed polkit-agent-helper-howdy.conf. Status: SAFE -- Standard device permission config for Howdy.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 12,955
  Completion Tokens: 5,905
  Total Tokens: 18,860
  Total Cost: $0.002254
  Execution Time: 18.66 seconds

Final Status: SAFE


No issues found.
