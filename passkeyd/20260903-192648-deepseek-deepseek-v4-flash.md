---
package: passkeyd
pkgver: 1.9.2
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 171a316e053e9c4b28731ccb1aa63b1168550d3a
prompt_tokens: 12651
completion_tokens: 2084
total_tokens: 14735
cost: 0.00133509222
execution_time: 48.3
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-03T19:26:47Z
file_verdicts:
  - file: PKGBUILD
    status: safe
    summary: Clean PKGBUILD with verified source from official GitHub.
  - file: .SRCINFO
    status: safe
    summary: Standard metadata file with no malicious content.
  - file: passkeyd.install
    status: safe
    summary: Telemetry present, no malicious behavior detected.
---

Materializing passkeyd from local mirror...
Materialized passkeyd
Analyzing passkeyd AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only standard top-level variable definitions (pkgname, pkgver, source, sha256sums, etc.) and function definitions (package()). No command substitutions, eval, backticks, or any other code that would execute during sourcing. The `$pkgver` variable expansion in the source URL is a static string interpolation, not a command. There is no top-level code that could download, exfiltrate, or execute anything malicious. Therefore, running `makepkg --printsrcinfo` is safe.
</details>
<evidence>
</evidence>
<summary>No dangerous top-level code; safe to parse.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous top-level code; safe to parse.
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, PKGBUILD...
[0/3] Reviewing .SRCINFO, PKGBUILD, passkeyd.install...
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD downloads a precompiled binary tarball from the project&#x27;s official GitHub releases page (`github.com/bjn7/passkeyd`) and verifies it with a fixed SHA256 checksum. The `package()` function installs binaries, configuration files, a systemd service, and icons into the package directory. There are no obfuscated commands, unexpected network requests, or any code that deviates from standard packaging practices. All operations are typical for a binary package distribution. No supply-chain attack indicators are present.
</details>
<evidence>
</evidence>
<summary>Clean PKGBUILD with verified source from official GitHub.</summary>
</security_assessment>

[1/3] Reviewing .SRCINFO, passkeyd.install...
+ Reviewed PKGBUILD. Status: SAFE -- Clean PKGBUILD with verified source from official GitHub.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The .SRCINFO file is purely metadata describing the package: name, version, dependencies, and source location. The source is a tarball from the project's own GitHub releases page with a specific SHA256 checksum (not SKIP). There is no executable code, no network requests, no obfuscation, and no deviation from standard AUR packaging practices. The file poses no supply-chain risk by itself.
</details>
<evidence></evidence>
<summary>Standard metadata file with no malicious content.</summary>
</security_assessment>

[2/3] Reviewing passkeyd.install...
+ Reviewed .SRCINFO. Status: SAFE -- Standard metadata file with no malicious content.
LLM auditresponse for passkeyd.install:
<security_assessment>
<decision>SAFE</decision>
<details>
This install script performs expected package configuration: prompting the user for a UI choice, updating `/etc/passkeyd.conf` accordingly, and providing upgrade instructions. The only network activity is a telemetry call to `eu.i.posthog.com` via curl, which sends the selected UI, system language, and a generated anonymous ID. Telemetry is a privacy concern, not a supply-chain attack. No code downloads, execution of untrusted content, exfiltration of sensitive data, or obfuscated commands are present. The script behaves as a normal AUR `.install` file.
</details>
<evidence></evidence>
<summary>Telemetry present, no malicious behavior detected.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed passkeyd.install. Status: SAFE -- Telemetry present, no malicious behavior detected.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 12,651
  Completion Tokens: 2,084
  Total Tokens: 14,735
  Total Cost: $0.001335
  Execution Time: 48.30 seconds

Final Status: SAFE


No issues found.
