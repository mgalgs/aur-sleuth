---
package: plasma-login-manager-kenning
pkgbase: kenning
pkgver: 0.8.1
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 3f8f339d2184315a824bf6b8e30068212deac13a
prompt_tokens: 14133
completion_tokens: 5433
total_tokens: 19566
cost: 0.00224991
execution_time: 33.72
files_reviewed: 3
files_skipped: 4
maintainer_files: 7
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 1
injection_attempts: 0
date: 2026-11-14T08:06:17Z
file_verdicts:
  - file: PKGBUILD
    status: safe
    summary: No malicious indicators found; standard AUR PKGBUILD.
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
  - file: kenning.install
    status: safe
    summary: Standard install script, no malicious behavior found.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata, no malicious indicators found.
---

plasma-login-manager-kenning is built from kenning
Materializing plasma-login-manager-kenning from local mirror...
Materialized plasma-login-manager-kenning
Analyzing plasma-login-manager-kenning AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
Running `makepkg --printsrcinfo` sources only the global/top-level scope of the PKGBUILD. The top-level code consists solely of variable assignments (pkgbase, pkgname, pkgver, source, checksums, etc.) and function definitions (prepare, build, package_*). No command substitutions, eval, or other executable code is present at global scope. The function bodies are defined but not invoked during this step. No malicious actions can execute from sourcing this PKGBUILD for metadata printing.
</details>
<evidence>
</evidence>
<summary>No executable code at top level; sourcing is safe.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No executable code at top level; sourcing is safe.
Note: 1 remote source(s) have no checksum (sha256sums=SKIP), so the bytes are not verifiable: https://download.kde.org/stable/plasma/6.8.2/plasma-login-manager-6.8.2.tar.xz.sig
Reviewing the 7 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/7] Reviewing .SRCINFO...
[0/7] Reviewing .SRCINFO, PKGBUILD...
[0/7] Reviewing .SRCINFO, PKGBUILD, kenning.install...
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard AUR packaging patterns. It fetches sources from the project's own GitHub repository, the official KDE download server, and the OpenCV model zoo (with pinned commits). The build uses `cmake` and `ninja` as expected. Install operations place files into standard system paths (`/usr/lib/`, `/usr/share/libalpm/hooks`, etc.) and are typical for a package that integrates a face‑unlock utility with the Plasma login manager.  
The `sha256sums` entries for the OpenCV model files are set to `SKIP`, which is a trust/hygiene choice but is explicitly NOT considered evidence of malice per the auditing criteria. No obfuscation, unexpected network requests, or system modifications outside the package's scope are present.
</details>
<evidence></evidence>
<summary>No malicious indicators found; standard AUR PKGBUILD.</summary>
</security_assessment>

[0/7] Reviewing .SRCINFO, PKGBUILD, kenning.install, keys/pgp/0AAC775BB6437A8D9AF7A3ACFE0784117FBCE11D.asc...
[1/7] Reviewing .SRCINFO, kenning.install, keys/pgp/0AAC775BB6437A8D9AF7A3ACFE0784117FBCE11D.asc...
+ Reviewed PKGBUILD. Status: SAFE -- No malicious indicators found; standard AUR PKGBUILD.
[2/7] Reviewing .SRCINFO, kenning.install...
! Reviewed keys/pgp/0AAC775BB6437A8D9AF7A3ACFE0784117FBCE11D.asc. Status: SKIPPED -- Skipping binary file: 0AAC775BB6437A8D9AF7A3ACFE0784117FBCE11D.asc
[2/7] Reviewing .SRCINFO, kenning.install, keys/pgp/1FA881591C26B276D7A5518EEAAF29B42A678C20.asc...
[3/7] Reviewing .SRCINFO, kenning.install...
! Reviewed keys/pgp/1FA881591C26B276D7A5518EEAAF29B42A678C20.asc. Status: SKIPPED -- Skipping binary file: 1FA881591C26B276D7A5518EEAAF29B42A678C20.asc
[3/7] Reviewing .SRCINFO, kenning.install, keys/pgp/D07BD8662C56CB291B316EB2F5675605C74E02CF.asc...
[4/7] Reviewing .SRCINFO, kenning.install...
! Reviewed keys/pgp/D07BD8662C56CB291B316EB2F5675605C74E02CF.asc. Status: SKIPPED -- Skipping binary file: D07BD8662C56CB291B316EB2F5675605C74E02CF.asc
[4/7] Reviewing .SRCINFO, kenning.install, keys/pgp/E0A3EB202F8E57528E13E72FD7574483BB57B18D.asc...
[5/7] Reviewing .SRCINFO, kenning.install...
! Reviewed keys/pgp/E0A3EB202F8E57528E13E72FD7574483BB57B18D.asc. Status: SKIPPED -- Skipping binary file: E0A3EB202F8E57528E13E72FD7574483BB57B18D.asc
LLM auditresponse for kenning.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The script performs standard package installation tasks: creating a system user, setting up secure directories for face model data, migrating configuration and data from a previous package name (`plasma-faceunlock`), starting systemd services, and cleaning up old snapshot data. All file operations are confined to the package's own paths (`/etc/kenning`, `/var/lib/kenning`, `/etc/faceunlock`, `/etc/xdg`, `/usr/local/share`). The helper binary `/usr/lib/kenning/pam-tidy` is part of the package itself. No network requests, obfuscated code, or execution of untrusted content is present. The script is consistent with legitimate AUR packaging practices.
</details>
<evidence></evidence>
<summary>Standard install script, no malicious behavior found.</summary>
</security_assessment>

[6/7] Reviewing .SRCINFO...
+ Reviewed kenning.install. Status: SAFE -- Standard install script, no malicious behavior found.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The .SRCINFO file is metadata for the AUR package, containing source URLs, dependencies, checksums, and configuration. No executable code, obfuscation, or suspicious commands are present. All sources are from the project&#39;s own GitHub, KDE&#39;s official download server, and OpenCV&#39;s model zoo, with pinned commits or version tags. Checksums are provided for all source files except the GPG signature file, where SKIP is standard. The dependency lists are appropriate for a KDE Plasma face-unlock integration. There is no evidence of exfiltration, backdoors, or any operation that deviates from normal packaging practices.
</details>
<evidence></evidence>
<summary>Standard AUR metadata, no malicious indicators found.</summary>
</security_assessment>

[7/7] Reviewing ...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata, no malicious indicators found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
(Skipped 4 files: 0AAC775BB6437A8D9AF7A3ACFE0784117FBCE11D.asc, 1FA881591C26B276D7A5518EEAAF29B42A678C20.asc, D07BD8662C56CB291B316EB2F5675605C74E02CF.asc, E0A3EB202F8E57528E13E72FD7574483BB57B18D.asc)

API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 14,133
  Completion Tokens: 5,433
  Total Tokens: 19,566
  Total Cost: $0.002250
  Execution Time: 33.72 seconds

Final Status: SAFE


No issues found.


Audit Skips:

keys/pgp/0AAC775BB6437A8D9AF7A3ACFE0784117FBCE11D.asc: [SKIPPED] Skipping binary file: 0AAC775BB6437A8D9AF7A3ACFE0784117FBCE11D.asc

keys/pgp/1FA881591C26B276D7A5518EEAAF29B42A678C20.asc: [SKIPPED] Skipping binary file: 1FA881591C26B276D7A5518EEAAF29B42A678C20.asc

keys/pgp/D07BD8662C56CB291B316EB2F5675605C74E02CF.asc: [SKIPPED] Skipping binary file: D07BD8662C56CB291B316EB2F5675605C74E02CF.asc

keys/pgp/E0A3EB202F8E57528E13E72FD7574483BB57B18D.asc: [SKIPPED] Skipping binary file: E0A3EB202F8E57528E13E72FD7574483BB57B18D.asc
