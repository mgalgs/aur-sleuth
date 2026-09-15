---
package: codex-app-unofficial
pkgver: 26.727.51351_launcher.35
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 171a316e053e9c4b28731ccb1aa63b1168550d3a
prompt_tokens: 10821
completion_tokens: 1898
total_tokens: 12719
cost: 0.001295153902
execution_time: 40.28
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-15T04:55:05Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata; no security issues found.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD with no malicious behavior.
  - file: codex-app-unofficial.install
    status: safe
    summary: Standard package lifecycle script; kills only its own app before upgrade/removal. SAFE.
---

Materializing codex-app-unofficial from local mirror...
Materialized codex-app-unofficial
Analyzing codex-app-unofficial AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD only contains static variable assignments and a `package()` function definition at the top level. No command substitutions, backticks, `eval`, or any other code that would execute during `makepkg --printsrcinfo`. The `source` array points to GitHub releases with valid checksums, and the `install` field is just a filename. There is no top-level code that could download or execute untrusted payloads, exfiltrate data, or perform other malicious actions. Running `makepkg --printsrcinfo` is safe.
</details>
<evidence>
</evidence>
<summary>No top-level execution risk found.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No top-level execution risk found.
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, PKGBUILD...
[0/3] Reviewing .SRCINFO, PKGBUILD, codex-app-unofficial.install...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This .SRCINFO file is a standard Arch User Repository metadata file. It declares package metadata, dependencies, and two source files (a tarball and a PNG icon) both from the project&#39;s own GitHub releases. SHA-256 checksums are provided for both sources. There is no obfuscated code, no unexpected network destinations, no execution of arbitrary commands, and no deviation from normal packaging practices. The file contains no executable content whatsoever.
</details>
<evidence></evidence>
<summary>Standard AUR metadata; no security issues found.</summary>
</security_assessment>

[1/3] Reviewing PKGBUILD, codex-app-unofficial.install...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata; no security issues found.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD is a straightforward packaging script for an unofficial Linux build of Codex (from OpenAI). It downloads a precompiled tarball and a PNG icon from the project's own GitHub releases, with checksums provided for both sources. The package() function installs the binary to `/opt/codex-app-linux`, creates a symlink in `/usr/bin`, installs the icon and a `.desktop` file, and copies the license. There are no obfuscated commands, no unusual network requests, no attempts to exfiltrate data, no execution of untrusted code from unknown sources, and no modifications outside the intended package directories. The use of `cp -a` to copy the extracted directory is normal packaging practice. The checksums are pinned, so integrity of the downloaded archive is verified. This file does not exhibit any signs of a supply-chain attack.
</details>
<evidence></evidence>
<summary>Standard AUR PKGBUILD with no malicious behavior.</summary>
</security_assessment>

[2/3] Reviewing codex-app-unofficial.install...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD with no malicious behavior.
LLM auditresponse for codex-app-unofficial.install:
<security_assessment>
<decision>SAFE</decision>
<details>
This `.install` script is a standard Arch package lifecycle hook. Its `post_install()` function only prints an informational message to the terminal; it performs no commands or side effects. The `_stop_running_codex_app()` function searches for the package's own installed binary path and terminates it before upgrade or removal, which is a normal and expected practice for desktop applications that should not be modified while running.

There is no obfuscation, no network access, no download-and-execute behavior, and no access to unrelated user data or system files. The `pgrep` pattern is scoped to `/opt/codex-app-linux/codex-app-linux-bin`, which is the application's own installed binary, so the kill operations are within the package's expected scope. This file shows no evidence of injected malicious code or supply-chain tampering.
</details>
<evidence></evidence>
<summary>
Standard package lifecycle script; kills only its own app before upgrade/removal. SAFE.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed codex-app-unofficial.install. Status: SAFE -- Standard package lifecycle script; kills only its own app before upgrade/removal. SAFE.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 10,821
  Completion Tokens: 1,898
  Total Tokens: 12,719
  Total Cost: $0.001295
  Execution Time: 40.28 seconds

Final Status: SAFE


No issues found.
