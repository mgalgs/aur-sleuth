---
package: cursor-bin
pkgver: 3.28.5
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 13390
completion_tokens: 2940
total_tokens: 16330
cost: 0.001753570
execution_time: 29.49
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-28T19:10:08Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard AUR .gitignore listing build artifacts; no malicious behavior found.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata with pinned checksums and official sources; no security issues found.
  - file: rg.sh
    status: safe
    summary: Simple ripgrep argument wrapper with no malicious or suspicious behavior.
  - file: PKGBUILD
    status: safe
    summary: Standard pinned prebuilt AUR PKGBUILD; no suspicious behavior or injected code.
---

Materializing cursor-bin from local mirror...
Materialized cursor-bin
Analyzing cursor-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
Running `makepkg --printsrcinfo` only sources the global/top-level scope of this PKGBUILD. The top-level content consists solely of normal metadata variables (`pkgname`, `pkgver`, `arch`, `depends`, etc.), the `source` array, checksum arrays, `noextract`, and a `package()` function definition. There are no top-level command substitutions, no `eval`, `curl`, `wget`, base64 decoding, or any other executable operations that would run while the PKGBUILD is sourced.

The `package()` function contains file extraction, symlinking, and patching logic, but it is only defined here and does not execute during `makepkg --printsrcinfo`. It will need to be examined in the full audit, but it is out of scope for this narrow gate. The `SKIP` checksum for the Cursor `.deb` is also not grounds for an UNSAFE decision at this step, since no sources are downloaded or verified during `--printsrcinfo`.
</details>
<evidence>
</evidence>
<summary>
No top-level code execution; sourcing the PKGBUILD is safe for --printsrcinfo.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No top-level code execution; sourcing the PKGBUILD is safe for --printsrcinfo.
Reviewing the 4 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/4] Reviewing .SRCINFO...
[0/4] Reviewing .SRCINFO, .gitignore...
[0/4] Reviewing .SRCINFO, .gitignore, PKGBUILD...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard `.gitignore` used in an AUR package repository. It lists build artifacts and local packaging outputs such as the downloaded AppImage, the built `.pkg.tar.zst` package, and files extracted into `pkg/` and `src/` during the `makepkg` process. Ignoring these paths is normal AUR maintenance practice to avoid committing generated or downloaded files to the git repository.
No commands, network operations, obfuscated content, or system modifications are present. The file contains only plain file-path lines and does not pose any security risk.
</details>
<evidence>
</evidence>
<summary>
Standard AUR .gitignore listing build artifacts; no malicious behavior found.
</summary>
</security_assessment>

[0/4] Reviewing .SRCINFO, .gitignore, PKGBUILD, rg.sh...
[1/4] Reviewing .SRCINFO, PKGBUILD, rg.sh...
+ Reviewed .gitignore. Status: SAFE -- Standard AUR .gitignore listing build artifacts; no malicious behavior found.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The `.SRCINFO` file is a standard AUR package metadata file. It declares the `cursor-bin` package, its version, dependencies, architecture, and source files with pinned SHA-512 checksums. All sources are legitimate: the official Cursor download URL from `downloads.cursor.com`, helper scripts from the Arch Linux packaging repository on `gitlab.archlinux.org`, and a local `rg.sh` file. No malicious commands, obfuscated content, network exfiltration, or unexpected file operations are present. The use of checksums for all four sources is consistent with normal packaging practice.
</details>
<evidence>
</evidence>
<summary>
Standard AUR metadata with pinned checksums and official sources; no security issues found.
</summary>
</security_assessment>

[2/4] Reviewing PKGBUILD, rg.sh...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata with pinned checksums and official sources; no security issues found.
LLM auditresponse for rg.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a minimal shell wrapper that execs `/usr/bin/rg` and replaces any occurrence of `--cursor-ignore` in the argument list with `--ignore-file`. It performs no network access, no downloads, no obfuscated code, no file writes, and no execution of untrusted content. The substitution is a straightforward argument transformation consistent with adapting ripgrep for use by an application. No supply-chain or malicious behavior is present.
</details>
<evidence>
</evidence>
<summary>
Simple ripgrep argument wrapper with no malicious or suspicious behavior.</summary>
</security_assessment>

[3/4] Reviewing PKGBUILD...
+ Reviewed rg.sh. Status: SAFE -- Simple ripgrep argument wrapper with no malicious or suspicious behavior.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard AUR packaging practices for a prebuilt binary package. It downloads the Cursor .deb from the vendor's official domain (downloads.cursor.com) with a pinned commit and a SHA-512 checksum for the .deb. The helper scripts are fetched from the official Arch Linux GitLab packaging repository (gitlab.archlinux.org). No unexpected network endpoints, encoded payloads, eval-style execution, or data exfiltration are present.

The package steps are routine: extract the .deb, install files into `$pkgdir`, create symlinks, and patch upstream launcher scripts to use the system Electron and renamed paths. The sed and install commands operate only on files from the package sources and the package destination; they do not touch unrelated system files or execute downloaded code at build time. No evidence of malicious or injected code was found.
</details>
<evidence>
</evidence>
<summary>
Standard pinned prebuilt AUR PKGBUILD; no suspicious behavior or injected code.
</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard pinned prebuilt AUR PKGBUILD; no suspicious behavior or injected code.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 13,390
  Completion Tokens: 2,940
  Total Tokens: 16,330
  Total Cost: $0.001754
  Execution Time: 29.49 seconds

Final Status: SAFE


No issues found.
