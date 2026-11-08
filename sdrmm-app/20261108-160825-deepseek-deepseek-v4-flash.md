---
package: sdrmm-app
pkgbase: sdrmm
pkgver: 2.4.3
pkgrel: 2
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 17157
completion_tokens: 1728
total_tokens: 18885
cost: 0.001875783
execution_time: 40.7
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-11-08T16:08:24Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata file, no security issues.
  - file: .gitignore
    status: safe
    summary: Standard .gitignore file; no security concerns.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD, no malicious indicators.
  - file: sdrmm.service
    status: safe
    summary: Standard systemd service unit file, no security issues.
---

sdrmm-app is built from sdrmm
Materializing sdrmm-app from local mirror...
Materialized sdrmm-app
Analyzing sdrmm-app AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD's global/top-level scope contains only static variable assignments, a case statement, and function definitions. There are no command substitutions, backticks, `eval`, `curl`, `wget`, or any other operations that would execute during `makepkg --printsrcinfo`. The `source()` array defines URLs but does not trigger downloads. All potentially dangerous code resides within `prepare()`, `build()`, `check()`, and the packaging functions, which are not sourced during this step. Therefore, running `makepkg --printsrcinfo` is safe.
</details>
<evidence></evidence>
<summary>No dangerous top-level code; safe to parse.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous top-level code; safe to parse.
Reviewing the 4 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/4] Reviewing .SRCINFO...
[0/4] Reviewing .SRCINFO, PKGBUILD...
[0/4] Reviewing .SRCINFO, PKGBUILD, .gitignore...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The `.SRCINFO` file is a standard Arch Linux package metadata file. It defines the package name, version, dependencies, and source URLs. All sources are pinned to specific release tarballs with valid SHA-256 checksums—no `SKIP` values are present. The upstream sources (GitHub for the main app and fdkaac, fossies.org for ffmpeg) are legitimate and correspond to the package's stated purpose. No obfuscation, suspicious network requests, or dangerous commands are present. The file does not contain any executable code; it is purely declarative.
</details>
<evidence></evidence>
<summary>Standard AUR metadata file, no security issues.</summary>
</security_assessment>

[1/4] Reviewing PKGBUILD, .gitignore...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata file, no security issues.
[1/4] Reviewing PKGBUILD, .gitignore, sdrmm.service...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard `.gitignore` file used to prevent build artifacts and generated archives from being tracked in version control.  The patterns listed (`pkg/`, `src/`, `*.tar.gz`, etc.) are routine for AUR package maintenance.  No executable code, network requests, or suspicious operations are present.  There is no evidence of malicious intent.
</details>
<evidence></evidence>
<summary>Standard .gitignore file; no security concerns.</summary>
</security_assessment>

[2/4] Reviewing PKGBUILD, sdrmm.service...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore file; no security concerns.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard Arch Linux packaging practices for a Rust + custom FFmpeg build. All source URLs point to the project's official GitHub releases or well-known mirrors (Fossies). Checksums are provided and pinned for all non-VCS sources. The only external network activity in build time is `cargo fetch --locked` from crates.io, which is standard for Rust packages. The check function verifies that private media libraries resolve through the intended `$tree/usr/lib/sdrmm` RPATH rather than system paths, which is a reasonable packaging integrity test. No obfuscated code, suspicious network destinations, file exfiltration, or backdoor mechanisms are present. The `SDRMM_RELEASE` variable is deliberately unset to block the app's built-in updater, ensuring updates go through pacman—a security-conscious choice. The file is consistent with a well-maintained AUR package and contains no malicious or unexpected behavior.
</details>
<evidence/>
<summary>Standard PKGBUILD, no malicious indicators.</summary>
</security_assessment>

[3/4] Reviewing sdrmm.service...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD, no malicious indicators.
LLM auditresponse for sdrmm.service:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard systemd service unit file for the sdrmm application. It defines a simple service that runs `/usr/bin/sdrmm` with an optional environment file from the user's configuration directory. There are no network requests, obfuscated code, file operations outside the application's scope, or any commands that could be exploited. The `EnvironmentFile` uses `-` to suppress errors if the file does not exist, which is normal. No evidence of malicious behavior.
</details>
<evidence></evidence>
<summary>Standard systemd service unit file, no security issues.</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed sdrmm.service. Status: SAFE -- Standard systemd service unit file, no security issues.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 17,157
  Completion Tokens: 1,728
  Total Tokens: 18,885
  Total Cost: $0.001876
  Execution Time: 40.70 seconds

Final Status: SAFE


No issues found.
