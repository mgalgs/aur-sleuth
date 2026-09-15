---
package: passkeyd
pkgver: 1.9.0
pkgrel: 9
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 171a316e053e9c4b28731ccb1aa63b1168550d3a
prompt_tokens: 12665
completion_tokens: 2168
total_tokens: 14833
cost: 0.00111628566
execution_time: 23.94
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-12T19:24:52Z
file_verdicts:
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD, no malicious activity.
  - file: .SRCINFO
    status: safe
    summary: Safe declarative metadata file for passkeyd.
  - file: passkeyd.install
    status: safe
    summary: Telemetry present, but no malicious injection.
---

Materializing passkeyd from local mirror...
Materialized passkeyd
Analyzing passkeyd AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only standard top-level variable definitions (pkgname, pkgver, source, sha256sums, etc.) and the definition of the `package()` function. No code in the global scope executes commands, fetches remote content, or performs any action beyond variable assignment. Running `makepkg --printsrcinfo` simply sources these definitions; no dangerous operations occur during this step.
</details>
<evidence></evidence>
<summary>No malicious top-level code; safe to source.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious top-level code; safe to source.
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, PKGBUILD...
[0/3] Reviewing .SRCINFO, PKGBUILD, passkeyd.install...
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD for `passkeyd` is a standard packaging script that fetches a precompiled tarball from the project's GitHub releases page and installs binaries, configuration files, systemd service, and icons into appropriate system directories. The tarball checksum is pinned (no SKIP), ensuring integrity. There are no network operations beyond the declared source download, no obfuscated commands, no eval/base64 usage, and no execution of fetched code outside the standard package install process. The `conflicts` with `openrc` and `runit` are atypical but not malicious—likely an assertion by the maintainer that the package is incompatible with those init systems. No evidence of supply-chain attack or exfiltration is present.
</details>
<evidence></evidence>
<summary>Standard AUR PKGBUILD, no malicious activity.</summary>
</security_assessment>

[1/3] Reviewing .SRCINFO, passkeyd.install...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD, no malicious activity.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The `.SRCINFO` file is a declarative metadata file for the AUR package. It defines the package name, version, dependencies, and source location. The source is fetched from the project's official GitHub releases page (`https://github.com/bjn7/passkeyd/releases/download/v1.9.0/passkeyd-x86_64-unknown-linux-gnu.tar.gz`) and includes a fixed SHA-256 checksum (`b0b900bd6e4da5fcb8bc9babc176da893e2ff9ba89eb72316ca5b5e06247e6b2`), which pins the download and verifies its integrity. No code execution, network requests for unexpected hosts, obfuscation, or suspicious operations are present in this file. It only contains package metadata and an `install` script reference (the install script itself is not included for review here). This file is consistent with standard AUR packaging practices and poses no security risk.
</details>
<evidence>
</evidence>
<summary>Safe declarative metadata file for passkeyd.</summary>
</security_assessment>

[2/3] Reviewing passkeyd.install...
+ Reviewed .SRCINFO. Status: SAFE -- Safe declarative metadata file for passkeyd.
LLM auditresponse for passkeyd.install:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard Arch Linux `.install` script that configures the passkeyd package after installation. The script prompts the user to choose a UI frontend (ice, kde, gtk) and updates `/etc/passkeyd.conf` accordingly.  

A telemetry function `_send_telemetry` sends a non-sensitive event to a PostHog analytics server (eu.i.posthog.com) containing only a random identifier, the chosen UI, version, system language, and (for upgrades) install date and days since installation. No sensitive local data (keys, tokens, personal files) is collected or exfiltrated. The telemetry is a privacy consideration but not a supply-chain attack or security threat. The script does not download or execute untrusted code, does not obfuscate commands, and only modifies its own configuration file. All operations are consistent with the stated purpose of the package.  
</details>
<evidence>
</evidence>
<summary>Telemetry present, but no malicious injection.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed passkeyd.install. Status: SAFE -- Telemetry present, but no malicious injection.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 12,665
  Completion Tokens: 2,168
  Total Tokens: 14,833
  Total Cost: $0.001116
  Execution Time: 23.94 seconds

Final Status: SAFE


No issues found.
