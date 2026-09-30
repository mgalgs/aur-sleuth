---
package: mihomo-party-bin
pkgver: 2.0.3
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 12634
completion_tokens: 2172
total_tokens: 14806
cost: 0.00060373768
execution_time: 30.28
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-20T15:09:28Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata; no malicious content found.
  - file: mihomo-party.install
    status: safe
    summary: Standard install script with benign user notes.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD with setuid sidecar binaries.
  - file: mihomo-party.sh
    status: safe
    summary: Standard launcher script, no suspicious behavior.
---

Materializing mihomo-party-bin from local mirror...
Materialized mihomo-party-bin
Analyzing mihomo-party-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only top-level variable definitions (pkgname, pkgver, source, checksums, etc.) and a `package()` function. No command substitutions, subshell executions, function calls, or any other executable statements are present in the global scope. Since `makepkg --printsrcinfo` only sources the top-level code and does not execute `package()` or other functions, there is no risk of malicious code execution during this step.</details>
<evidence></evidence>
<summary>No dangerous top-level code execution.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous top-level code execution.
Reviewing the 4 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/4] Reviewing .SRCINFO...
[0/4] Reviewing .SRCINFO, PKGBUILD...
[0/4] Reviewing .SRCINFO, PKGBUILD, mihomo-party.install...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard AUR `.SRCINFO` metadata file. It defines package metadata (name, version, dependencies, conflicts) and sources for two architectures (x86_64 and aarch64). Both source URLs point to the project's own GitHub releases, and each has a corresponding SHA-256 checksum. The only unusual item is the `install` field pointing to `mihomo-party.install`, which is a typical post-install script for AUR packages; its contents are not provided here, so we cannot evaluate it, but the mere presence of an install file is not inherently unsafe. No dangerous commands, obfuscation, or unexpected network destinations are present. The package fetches its binary from the official upstream project repository, which is expected for a `-bin` package.
</details>
<evidence></evidence>
<summary>Standard AUR metadata; no malicious content found.</summary>
</security_assessment>

[0/4] Reviewing .SRCINFO, PKGBUILD, mihomo-party.install, mihomo-party.sh...
[1/4] Reviewing PKGBUILD, mihomo-party.install, mihomo-party.sh...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata; no malicious content found.
LLM auditresponse for mihomo-party.install:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.install` script for an AUR package. It defines simple terminal color helper functions and a `post_install()` function that prints user‑facing notes about configuration file location and the launcher command. No network requests, file operations, code execution, or obfuscated content are present. The script does exactly what a packaging install hook should do: inform the user.
</details>
<evidence></evidence>
<summary>Standard install script with benign user notes.</summary>
</security_assessment>

[2/4] Reviewing PKGBUILD, mihomo-party.sh...
+ Reviewed mihomo-party.install. Status: SAFE -- Standard install script with benign user notes.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard practices for a binary AUR package. It downloads a `.deb` archive from the official GitHub releases (`https://github.com/mihomo-party-org/mihomo-party/releases`), extracts it with `bsdtar`, sets executable permissions, and installs a small wrapper script. SHA256 checksums are pinned for each architecture, ensuring download integrity.

The use of `chmod +sx` on sidecar binaries (`mihomo`, `mihomo-alpha`, `mihomo-smart`) sets the setuid bit, which is a security concern in general but appears to be intentional upstream functionality (likely needed for network configuration operations). This is not evidence of a supply-chain attack injected by the AUR maintainer; it is a packaging decision mirroring what the upstream application expects. No obfuscated code, unexpected network requests, or dangerous commands (eval, curl piping, etc.) are present. The reference to an `.install` script is standard and would require separate analysis.
</details>
<evidence>
</evidence>
<summary>Standard PKGBUILD with setuid sidecar binaries.</summary>
</security_assessment>

[3/4] Reviewing mihomo-party.sh...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD with setuid sidecar binaries.
LLM auditresponse for mihomo-party.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This script is a standard launcher for the mihomo-party application. It reads optional user-defined flags from a configuration file in `$XDG_CONFIG_HOME/mihomo-party-flags.conf` and passes them along with command-line arguments to the main binary located at `/opt/clash-party/mihomo-party`. There are no network requests, no obfuscated code, no dangerous commands (eval, curl, wget, etc.), and no unexpected file operations. The script follows common packaging practices for providing a user-configurable wrapper. No supply-chain attack indicators are present.
</details>
<evidence></evidence>
<summary>Standard launcher script, no suspicious behavior.</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed mihomo-party.sh. Status: SAFE -- Standard launcher script, no suspicious behavior.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 12,634
  Completion Tokens: 2,172
  Total Tokens: 14,806
  Total Cost: $0.000604
  Execution Time: 30.28 seconds

Final Status: SAFE


No issues found.
