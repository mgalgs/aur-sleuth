---
package: dsh-tui-bin
pkgver: 0.10.0beta.5
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 171a316e053e9c4b28731ccb1aa63b1168550d3a
prompt_tokens: 9847
completion_tokens: 1625
total_tokens: 11472
cost: 0.00109831442
execution_time: 34.02
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-05T19:13:09Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata, no malicious content.
  - file: dsh-tui-bin.install
    status: safe
    summary: Standard post-install script, no malicious behavior.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD for npm package; no malicious content.
---

Materializing dsh-tui-bin from local mirror...
Materialized dsh-tui-bin
Analyzing dsh-tui-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only standard variable definitions in its global scope: metadata, dependency lists, source URLs, and checksums. There are no command substitutions, function calls, or any code that executes at parse time. All dangerous operations (npm install, file copying, permission changes) are confined to `prepare()` and `package()` functions, which are not executed by `makepkg --printsrcinfo`. Therefore, sourcing this PKGBUILD to print .SRCINFO is safe.
</details>
<evidence></evidence>
<summary>No dangerous global code; safe to parse.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous global code; safe to parse.
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, PKGBUILD...
[0/3] Reviewing .SRCINFO, PKGBUILD, dsh-tui-bin.install...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.SRCINFO` metadata file for an AUR package. It defines package variables, dependencies, source (a tarball from npm registry with a pinned sha256sum), and an install script. There is no code, obfuscation, or suspicious behavior. The source is from the official npm registry with a verified checksum. All fields are typical for an AUR binary package. No evidence of supply chain attack or malicious intent.
</details>
<evidence></evidence>
<summary>Standard AUR metadata, no malicious content.</summary>
</security_assessment>

[1/3] Reviewing PKGBUILD, dsh-tui-bin.install...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata, no malicious content.
LLM auditresponse for dsh-tui-bin.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard Arch Linux package install script (`dsh-tui-bin.install`). It defines `post_install()` and `post_upgrade()` hooks that call `sync_profile()`. The `sync_profile()` function determines the first regular user (UID ≥ 1000 and < 65534) or uses `SUDO_USER`, then runs `/usr/bin/dsh-tui update` as that user with a 300-second timeout. This is a routine post-install routine to trigger the application's own profile synchronization, typical for packages that need to initialize or update user data after installation. There is no network activity outside the application's own binary, no obfuscated code, no dangerous commands, and no exfiltration or backdoor behavior. The script follows standard AUR packaging practices.
</details>
<evidence></evidence>
<summary>Standard post-install script, no malicious behavior.</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed dsh-tui-bin.install. Status: SAFE -- Standard post-install script, no malicious behavior.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard AUR packaging practices for a prebuilt npm package. The source is fetched from the official npm registry with a pinned SHA-256 checksum, ensuring integrity. The `prepare()` function runs `npm install` with the downloaded tarball, setting a custom prefix and cache directory under `$srcdir` – no external network access at build time beyond the declared source. The `package()` function copies files into `$pkgdir` and sets standard permissions. There are no obfuscated commands, no suspicious network requests, no data exfiltration, and no unexpected system modifications. The package depends on `deepseek-harness` and `nodejs`, consistent with its description as a TUI launcher.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD for npm package; no malicious content.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD for npm package; no malicious content.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 9,847
  Completion Tokens: 1,625
  Total Tokens: 11,472
  Total Cost: $0.001098
  Execution Time: 34.02 seconds

Final Status: SAFE


No issues found.
