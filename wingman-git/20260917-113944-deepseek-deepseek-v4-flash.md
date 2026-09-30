---
package: wingman-git
pkgver: 0.1.4.r74.g06aee8b
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 171a316e053e9c4b28731ccb1aa63b1168550d3a
prompt_tokens: 10806
completion_tokens: 7406
total_tokens: 18212
cost: 0.002269908508
execution_time: 207.24
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-17T11:39:43Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard AUR .SRCINFO, no malicious content.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR VCS PKGBUILD, no malicious indicators.
  - file: wingman-git.install
    status: safe
    summary: Legitimate package install script; scoped capability grants only; no malicious behavior found.
---

Materializing wingman-git from local mirror...
Materialized wingman-git
Analyzing wingman-git AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The global/top-level scope of this PKGBUILD contains only declarative variable assignments: `pkgname`, `pkgver`, `pkgrel`, `pkgdesc`, `arch`, `url`, `license`, `depends`, `makedepends`, `provides`, `conflicts`, `install`, `source`, and `sha256sums`. There are no global command substitutions, no network operations, no encoded/obfuscated content, and nothing that executes at source time. The `source` array points to the package's own upstream GitHub repository (`https://github.com/dsandall/wingman.git`), which is standard and expected for a `-git` package. The `sha256sums=('SKIP')` is normal for VCS sources and irrelevant to this step since no sources are downloaded during `makepkg --printsrcinfo`.

The `pkgver()`, `build()`, and `package()` functions are merely defined, not executed when the PKGBUILD is sourced for `--printsrcinfo`. Since `pkgver` is already set in the global scope, makepkg will not invoke the function during this step. Even the function contents (grep/sed on `pyproject.toml`, git rev-list/rev-parse, python build/install) are ordinary packaging logic that would be covered in the full audit. No malicious code would execute by running `makepkg --printsrcinfo` on this file.
</details>
<evidence></evidence>
<summary>Global scope is declarative only; no execution risk during makepkg --printsrcinfo.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Global scope is declarative only; no execution risk during makepkg --printsrcinfo.
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, PKGBUILD...
[0/3] Reviewing .SRCINFO, PKGBUILD, wingman-git.install...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This .SRCINFO file contains standard metadata for an AUR VCS package. It declares the upstream source from the project's own GitHub repository, lists dependencies (python, netbird, libcap, polkit, etc.) and build tools (git, python-build, etc.). The `sha256sums = SKIP` entry is normal for VCS packages and not an indicator of malice. There is no obfuscated code, suspicious network requests, or system modification directives present. The referenced install script (`wingman-git.install`) is not included in this file, so we cannot assess it here, but the .SRCINFO itself is benign.
</details>
<evidence>
</evidence>
<summary>Standard AUR .SRCINFO, no malicious content.</summary>
</security_assessment>

[1/3] Reviewing PKGBUILD, wingman-git.install...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR .SRCINFO, no malicious content.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard AUR packaging practices for a VCS-based Python project. It clones the upstream source from the project's own GitHub repository, builds a Python wheel, and installs the application along with supporting configuration files (pacman hook, polkit rule, license, documentation). No obfuscated code, unexpected network requests, or system modifications beyond the declared packaging scope are present. The `sha256sums` are set to `SKIP`, which is normal for VCS sources and not a security concern. The `.install` file is referenced but not provided here; its absence does not indicate malice. Everything in this file is consistent with the stated purpose of the package.
</details>
<evidence></evidence>
<summary>Standard AUR VCS PKGBUILD, no malicious indicators.</summary>
</security_assessment>

[2/3] Reviewing wingman-git.install...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR VCS PKGBUILD, no malicious indicators.
LLM auditresponse for wingman-git.install:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard Arch package `.install` script for a rootless mesh-VPN companion (wingman/netbird). `post_install()` and `post_upgrade()` call `_apply_cap()`, which runs `setcap` to grant `cap_net_admin,cap_net_raw,cap_net_bind_service` on the package's own `/usr/bin/netbird` binary. Granting a VPN daemon the ability to create network interfaces and bind port 53 is consistent with the stated rootless design (the same pattern Tailscale and similar tools use); the capability grant is scoped to a single binary and is not a privilege-escalation or backdoor. The rest of the script is a quoted heredoc of informational usage text (including the suggestion to run `loginctl enable-linger`), which performs no action and executes nothing.

No network requests, no downloads, no execution of fetched code, no obfuscation or encoding, no unexpected file writes, and no tampering with unrelated system files were found. The failure branch merely prints a reminder for the user to run `setcap` manually. Minor observations: the capability grant is reapplied on upgrade because pacman strips capabilities (noted in the script's own comment), and the quoted heredoc prints `$USER` literally rather than expanding it (a cosmetic nit). These are hygiene/cosmetic issues, not security threats. There is no evidence of injected or malicious code.
</details>
<evidence>
</evidence>
<summary>Legitimate package install script; scoped capability grants only; no malicious behavior found.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed wingman-git.install. Status: SAFE -- Legitimate package install script; scoped capability grants only; no malicious behavior found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 10,806
  Completion Tokens: 7,406
  Total Tokens: 18,212
  Total Cost: $0.002270
  Execution Time: 207.24 seconds

Final Status: SAFE


No issues found.
