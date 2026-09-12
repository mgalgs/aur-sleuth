---
package: voltius-git
pkgver: 0.33.1.r0.ga93ed42a
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 171a316e053e9c4b28731ccb1aa63b1168550d3a
prompt_tokens: 10459
completion_tokens: 1515
total_tokens: 11974
cost: 0.001195206334
execution_time: 31.52
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-11T07:16:07Z
file_verdicts:
  - file: voltius.desktop
    status: safe
    summary: Standard desktop entry file, no security issues.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR .SRCINFO metadata; no malicious behavior present.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD with no signs of malice.
---

Materializing voltius-git from local mirror...
Materialized voltius-git
Analyzing voltius-git AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
Running `makepkg --printsrcinfo` only sources the PKGBUILD and executes top-level code. This PKGBUILD's top-level scope contains only standard variable definitions: package metadata, dependencies, the `source` array pointing to the project's own GitHub repository, and `sha256sums` with `SKIP` values. No top-level command substitutions, network downloads, file modifications, or code execution are present. Suspicious or heavier operations such as `npm install`, `pnpm install`, and `pnpm tauri build` are inside `prepare()` and `build()`, which are not executed during `--printsrcinfo`. The SKIP checksums are not grounds for failing this narrow gate.
</details>
<evidence>
</evidence>
<summary>
Top-level PKGBUILD scope is benign; only metadata definitions execute during --printsrcinfo.
</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Top-level PKGBUILD scope is benign; only metadata definitions execute during --printsrcinfo.
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, PKGBUILD...
[0/3] Reviewing .SRCINFO, PKGBUILD, voltius.desktop...
LLM auditresponse for voltius.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.desktop` file for the Voltius application. It contains only expected fields (Name, Comment, Exec, Icon, Categories, etc.) and no executable content, obfuscated data, or instructions. There are no network requests, file operations, or system modifications. The file is purely declarative and follows the freedesktop.org Desktop Entry specification. No security concerns identified.
</details>
<evidence></evidence>
<summary>Standard desktop entry file, no security issues.</summary>
</security_assessment>

[1/3] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed voltius.desktop. Status: SAFE -- Standard desktop entry file, no security issues.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard AUR `.SRCINFO` metadata file for the `voltius-git` package. It declares the package name, description, version, dependencies, and sources in the normal format used by AUR packaging. The source points to the project's own upstream Git repository (`git+https://github.com/VoltiusApp/voltius.git`) and a local desktop file source, which is consistent with ordinary AUR packaging practice.

The `sha256sums = SKIP` entries are expected for Git-based (`-git`) packages, since the upstream repository content is not fixed at packaging time. This is a standard trust/hygiene characteristic of VCS packages, not evidence of malware. There are no suspicious commands, network fetches outside the declared upstream source, encoded payloads, or file-manipulation operations in this file. It contains only declarative metadata.
</details>
<evidence>
</evidence>
<summary>
Standard AUR .SRCINFO metadata; no malicious behavior present.</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR .SRCINFO metadata; no malicious behavior present.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a standard AUR packaging file for the Voltius SSH/SFTP client. It clones the upstream repository from the official GitHub source, installs a pinned version of pnpm via npm (normal for Tauri builds), sets dummy Tauri signing keys (safe and required for building), and compiles the application using `pnpm install` and `pnpm tauri build`. The package function installs the resulting binary and associated files into the package directory. There are no obfuscated commands, no suspicious network connections beyond the declared upstream, no exfiltration of data, and no unexpected system modifications. The use of `SKIP` checksums is standard for VCS packages.
</details>
<evidence></evidence>
<summary>Standard AUR PKGBUILD with no signs of malice.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD with no signs of malice.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 10,459
  Completion Tokens: 1,515
  Total Tokens: 11,974
  Total Cost: $0.001195
  Execution Time: 31.52 seconds

Final Status: SAFE


No issues found.
