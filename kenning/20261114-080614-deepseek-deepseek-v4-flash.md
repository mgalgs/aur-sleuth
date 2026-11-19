---
package: kenning
pkgver: 0.8.1
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 3f8f339d2184315a824bf6b8e30068212deac13a
prompt_tokens: 14188
completion_tokens: 4201
total_tokens: 18389
cost: 0.00203310
execution_time: 33.11
files_reviewed: 3
files_skipped: 4
maintainer_files: 7
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 1
injection_attempts: 0
date: 2026-11-14T08:06:13Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata file, no security issues.
  - file: keys/pgp/0AAC775BB6437A8D9AF7A3ACFE0784117FBCE11D.asc
    status: skipped
    summary: "Skipping binary file: 0AAC775BB6437A8D9AF7A3ACFE0784117FBCE11D.asc"
  - file: keys/pgp/1FA881591C26B276D7A5518EEAAF29B42A678C20.asc
    status: skipped
    summary: "Skipping binary file: 1FA881591C26B276D7A5518EEAAF29B42A678C20.asc"
  - file: keys/pgp/D07BD8662C56CB291B316EB2F5675605C74E02CF.asc
    status: skipped
    summary: "Skipping binary file: D07BD8662C56CB291B316EB2F5675605C74E02CF.asc"
  - file: keys/pgp/E0A3EB202F8E57528E13E72FD7574483BB57B18D.asc
    status: skipped
    summary: "Skipping binary file: E0A3EB202F8E57528E13E72FD7574483BB57B18D.asc"
  - file: PKGBUILD
    status: safe
    summary: No signs of malicious code; standard packaging.
  - file: kenning.install
    status: safe
    summary: Standard AUR install script, no malicious behavior detected.
---

Materializing kenning from local mirror...
Materialized kenning
Analyzing kenning AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD only contains variable definitions, array assignments, and function definitions at the top level. No commands are executed outside of function bodies. `makepkg --printsrcinfo` sources the file, which triggers only these assignments; no potentially dangerous operations (e.g., `eval`, `curl`, `base64`, command substitution) are present in the global scope. The `prepare()` and `build()` functions, which contain command invocations, are not called during this parsing step. Therefore, sourcing this PKGBUILD is safe.
</details>
<evidence></evidence>
<summary>No top‑level execution, safe to parse.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No top‑level execution, safe to parse.
Note: 1 remote source(s) have no checksum (sha256sums=SKIP), so the bytes are not verifiable: https://download.kde.org/stable/plasma/6.8.2/plasma-login-manager-6.8.2.tar.xz.sig
Reviewing the 7 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/7] Reviewing PKGBUILD...
[0/7] Reviewing PKGBUILD, .SRCINFO...
[0/7] Reviewing PKGBUILD, .SRCINFO, kenning.install...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This .SRCINFO file is a standard AUR metadata file generated from the PKGBUILD. It contains no executable code or scripts. All source URLs point to expected locations: the project&#39;s own GitHub repository, the official KDE download server for plasma-login-manager, and the OpenCV model zoo with pinned commit references. Checksums are provided for all downloads except the PGP signature file (SKIP is appropriate for signature verification). Dependencies and package descriptions are consistent with a face unlock utility for KDE Plasma. There is no evidence of malicious behavior such as obfuscation, network exfiltration, or unexpected commands.
</details>
<evidence></evidence>
<summary>Standard AUR metadata file, no security issues.</summary>
</security_assessment>

[0/7] Reviewing PKGBUILD, .SRCINFO, kenning.install, keys/pgp/0AAC775BB6437A8D9AF7A3ACFE0784117FBCE11D.asc...
[1/7] Reviewing PKGBUILD, kenning.install, keys/pgp/0AAC775BB6437A8D9AF7A3ACFE0784117FBCE11D.asc...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata file, no security issues.
[2/7] Reviewing PKGBUILD, kenning.install...
! Reviewed keys/pgp/0AAC775BB6437A8D9AF7A3ACFE0784117FBCE11D.asc. Status: SKIPPED -- Skipping binary file: 0AAC775BB6437A8D9AF7A3ACFE0784117FBCE11D.asc
[2/7] Reviewing PKGBUILD, kenning.install, keys/pgp/1FA881591C26B276D7A5518EEAAF29B42A678C20.asc...
[2/7] Reviewing PKGBUILD, kenning.install, keys/pgp/1FA881591C26B276D7A5518EEAAF29B42A678C20.asc, keys/pgp/D07BD8662C56CB291B316EB2F5675605C74E02CF.asc...
[3/7] Reviewing PKGBUILD, kenning.install, keys/pgp/D07BD8662C56CB291B316EB2F5675605C74E02CF.asc...
! Reviewed keys/pgp/1FA881591C26B276D7A5518EEAAF29B42A678C20.asc. Status: SKIPPED -- Skipping binary file: 1FA881591C26B276D7A5518EEAAF29B42A678C20.asc
[3/7] Reviewing PKGBUILD, kenning.install, keys/pgp/D07BD8662C56CB291B316EB2F5675605C74E02CF.asc, keys/pgp/E0A3EB202F8E57528E13E72FD7574483BB57B18D.asc...
[4/7] Reviewing PKGBUILD, kenning.install, keys/pgp/E0A3EB202F8E57528E13E72FD7574483BB57B18D.asc...
! Reviewed keys/pgp/D07BD8662C56CB291B316EB2F5675605C74E02CF.asc. Status: SKIPPED -- Skipping binary file: D07BD8662C56CB291B316EB2F5675605C74E02CF.asc
[5/7] Reviewing PKGBUILD, kenning.install...
! Reviewed keys/pgp/E0A3EB202F8E57528E13E72FD7574483BB57B18D.asc. Status: SKIPPED -- Skipping binary file: E0A3EB202F8E57528E13E72FD7574483BB57B18D.asc
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows normal AUR packaging practices for a face‑unlock package that builds both the application and a patched Plasma login manager. All source URLs point to the project&#x27;s own GitHub releases, the official KDE stable download, and known OpenCV model repositories (all HTTPS). The two model files are pinned to specific commits. Checksums are provided for the tarballs and models (one SKIP for a `.sig` file, which is standard). No obfuscated code, dangerous commands (eval, curl|bash, base64), backdoors, or exfiltration attempts are present. The `prepare()` step runs a script from the upstream tarball to apply a patch, which is expected build behavior. The file does not inject or retrieve any code outside the declared sources.
</details>
<evidence>
</evidence>
<summary>No signs of malicious code; standard packaging.</summary>
</security_assessment>

[6/7] Reviewing kenning.install...
+ Reviewed PKGBUILD. Status: SAFE -- No signs of malicious code; standard packaging.
LLM auditresponse for kenning.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard pacman install script for the AUR package `kenning`. It performs routine packaging tasks:

*   Creates a dedicated system user and sets up secure directories under `/etc/kenning` for face model data – normal for a service that manages sensitive biometric data.
*   Handles migration from a previous package name (`plasma-faceunlock`) by moving configuration and model files, then cleaning up the old directory – expected behavior during a rename.
*   Starts a systemd socket/service and triggers a helper binary (`/usr/lib/kenning/pam-tidy`) to manage PAM configuration – part of the package's intended functionality.
*   Cleans up old snapshot data in `/var/lib/kenning` during upgrades – an application-specific housekeeping task.

All commands (mkdir, chown, chmod, find, cp, mv, rm, systemctl, systemd-sysusers) are used in their normal context. There are no obfuscated strings, no network requests, no execution of fetched or base64-decoded code, and no operations that exfiltrate data or modify files outside the package's own scope. The script follows standard AUR packaging conventions and contains no evidence of a supply-chain attack.
</details>
<evidence></evidence>
<summary>Standard AUR install script, no malicious behavior detected.</summary>
</security_assessment>

[7/7] Reviewing ...
+ Reviewed kenning.install. Status: SAFE -- Standard AUR install script, no malicious behavior detected.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
(Skipped 4 files: 0AAC775BB6437A8D9AF7A3ACFE0784117FBCE11D.asc, 1FA881591C26B276D7A5518EEAAF29B42A678C20.asc, D07BD8662C56CB291B316EB2F5675605C74E02CF.asc, E0A3EB202F8E57528E13E72FD7574483BB57B18D.asc)

API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 14,188
  Completion Tokens: 4,201
  Total Tokens: 18,389
  Total Cost: $0.002033
  Execution Time: 33.11 seconds

Final Status: SAFE


No issues found.


Audit Skips:

keys/pgp/0AAC775BB6437A8D9AF7A3ACFE0784117FBCE11D.asc: [SKIPPED] Skipping binary file: 0AAC775BB6437A8D9AF7A3ACFE0784117FBCE11D.asc

keys/pgp/1FA881591C26B276D7A5518EEAAF29B42A678C20.asc: [SKIPPED] Skipping binary file: 1FA881591C26B276D7A5518EEAAF29B42A678C20.asc

keys/pgp/D07BD8662C56CB291B316EB2F5675605C74E02CF.asc: [SKIPPED] Skipping binary file: D07BD8662C56CB291B316EB2F5675605C74E02CF.asc

keys/pgp/E0A3EB202F8E57528E13E72FD7574483BB57B18D.asc: [SKIPPED] Skipping binary file: E0A3EB202F8E57528E13E72FD7574483BB57B18D.asc
