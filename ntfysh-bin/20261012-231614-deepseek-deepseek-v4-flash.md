---
package: ntfysh-bin
pkgver: 2.30.0
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 15159
completion_tokens: 2235
total_tokens: 17394
cost: 0.0030108741
execution_time: 35.77
files_reviewed: 5
files_skipped: 0
maintainer_files: 5
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-12T23:16:13Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard AUR .gitignore; no malicious content or suspicious behavior detected.
  - file: .nvchecker.toml
    status: safe
    summary: Routine nvchecker config for upstream ntfy releases; no malicious behavior.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata with pinned upstream checksums; no malicious behavior found.
  - file: ntfy.sysusers
    status: safe
    summary: Standard sysusers snippet creating an unprivileged ntfy service account; no malicious behavior.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR binary package; pinned checksums, official upstream source, no malicious behavior.
---

Materializing ntfysh-bin from local mirror...
Materialized ntfysh-bin
Analyzing ntfysh-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD only contains top-level variable assignments, source array definitions, checksum arrays, and a `package()` function. `makepkg --printsrcinfo` sources the PKGBUILD and executes only global/top-level code; none of the top-level statements perform command substitution, network requests, downloads, or execution of external payloads. The URLs in the source arrays point to the project's own official GitHub releases, which is normal packaging practice and does not trigger any action during `--printsrcinfo`.

The only function defined, `package()`, contains installation logic, but it is not executed during `makepkg --printsrcinfo`. There is no obfuscated code, no encoding tricks, and no top-level code that could exfiltrate data or run arbitrary commands. Running `makepkg --printsrcinfo` on this PKGBUILD is safe.
</details>
<evidence>
</evidence>
<summary>
No dangerous top-level code; only variables, arrays, and package(). Safe for printsrcinfo.
</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous top-level code; only variables, arrays, and package(). Safe for printsrcinfo.
Reviewing the 5 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/5] Reviewing .SRCINFO...
[0/5] Reviewing .SRCINFO, .gitignore...
[0/5] Reviewing .SRCINFO, .gitignore, .nvchecker.toml...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard `.gitignore` used in an AUR package repository. It ignores all files by default and then explicitly un-ignores only the packaging-related files needed for the AUR repository: `.gitignore`, `.SRCINFO`, `PKGBUILD`, `ntfy.sysusers`, and `.nvchecker.toml`. This is a routine pattern for AUR package repositories where only packaging metadata is tracked in git. No commands, network requests, obfuscated content, or file operations are present. There is no evidence of malicious or dangerous behavior.
</details>
<evidence>
</evidence>
<summary>
Standard AUR .gitignore; no malicious content or suspicious behavior detected.</summary>
</security_assessment>

[0/5] Reviewing .SRCINFO, .gitignore, .nvchecker.toml, PKGBUILD...
[1/5] Reviewing .SRCINFO, .nvchecker.toml, PKGBUILD...
+ Reviewed .gitignore. Status: SAFE -- Standard AUR .gitignore; no malicious content or suspicious behavior detected.
LLM auditresponse for .nvchecker.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard nvchecker configuration used by AUR maintainers to automatically detect new upstream releases. It specifies the ntfysh-bin package's upstream source as the GitHub repository `binwiederhier/ntfy`, uses the latest release, and sets a version prefix of `v`. There are no network requests to unexpected hosts, no code execution, no obfuscation, and no file manipulation. The configuration is consistent with routine AUR packaging maintenance.
</details>
<evidence>
</evidence>
<summary>
Routine nvchecker config for upstream ntfy releases; no malicious behavior.
</summary>
</security_assessment>

[2/5] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed .nvchecker.toml. Status: SAFE -- Routine nvchecker config for upstream ntfy releases; no malicious behavior.
[2/5] Reviewing .SRCINFO, PKGBUILD, ntfy.sysusers...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This .SRCINFO describes a standard AUR binary package for ntfysh. All sources are downloaded from the project's official GitHub releases page (github.com/binwiederhier/ntfy), matching the package URL. Each source archive has a pinned SHA-256 checksum rather than SKIP, and the in-repo sysusers file also has a checksum. There are no suspicious commands, no network operations outside normal source fetching, no encoded or obfuscated content, and no unexpected file operations. The architecture-specific sources and checksums are normal for a prebuilt binary package.

The package installs prebuilt upstream binaries and declares conflicts/provides for `ntfy`, which is consistent with a drop-in replacement package. No evidence of malicious or supply-chain behavior was found.
</details>
<evidence>
</evidence>
<summary>
Standard AUR metadata with pinned upstream checksums; no malicious behavior found.</summary>
</security_assessment>

[3/5] Reviewing PKGBUILD, ntfy.sysusers...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata with pinned upstream checksums; no malicious behavior found.
LLM auditresponse for ntfy.sysusers:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard systemd sysusers.d configuration snippet. It defines a single system user `ntfy` with no fixed UID (`-`), the description `ntfy user`, and no home directory or shell (`-`). This is a routine packaging configuration for creating an unprivileged service account for the ntfy application. There are no commands, network operations, file modifications, or any other executable or obfuscated behavior. Nothing in this file deviates from normal packaging practice or indicates a supply-chain risk.
</details>
<evidence>
</evidence>
<summary>
Standard sysusers snippet creating an unprivileged ntfy service account; no malicious behavior.
</summary>
</security_assessment>

[4/5] Reviewing PKGBUILD...
+ Reviewed ntfy.sysusers. Status: SAFE -- Standard sysusers snippet creating an unprivileged ntfy service account; no malicious behavior.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a standard binary packaging file for the ntfy push notification service. It downloads prebuilt release tarballs from the project's official GitHub releases URL, with pinned versions and valid sha256 checksums for the main source and all architecture-specific tarballs.

The `package()` function only installs the prebuilt `ntfy` binary, systemd service files, configuration files, documentation, and a sysusers configuration into the package directory. There is no use of `eval`, `base64`, `curl`, `wget`, or any obfuscated code. No data is exfiltrated, no unexpected network requests are made, and no commands modify the host system outside standard `makepkg` packaging practice.

The only minor consideration is that this is a prebuilt binary package, so the binary itself is not inspected here; however, that is normal for `-bin` AUR packages and does not indicate a supply-chain attack in the PKGBUILD.
</details>
<evidence>
</evidence>
<summary>
Standard AUR binary package; pinned checksums, official upstream source, no malicious behavior.
</summary>
</security_assessment>

[5/5] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR binary package; pinned checksums, official upstream source, no malicious behavior.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 15,159
  Completion Tokens: 2,235
  Total Tokens: 17,394
  Total Cost: $0.003011
  Execution Time: 35.77 seconds

Final Status: SAFE


No issues found.
