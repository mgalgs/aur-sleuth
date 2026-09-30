---
package: opencode-beta
pkgver: 2.0.8
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 171a316e053e9c4b28731ccb1aa63b1168550d3a
prompt_tokens: 12284
completion_tokens: 2614
total_tokens: 14898
cost: 0.001551668272
execution_time: 73.85
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-18T11:16:01Z
file_verdicts:
  - file: LICENSE
    status: safe
    summary: Standard MIT license text; no security concerns present.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD with pinned checksums and no malicious behavior.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata, no security issues.
  - file: opencode2
    status: safe
    summary: Benign wrapper script that derives its directory from $0 and execs the sibling opencode binary.
---

Materializing opencode-beta from local mirror...
Materialized opencode-beta
Analyzing opencode-beta AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD only contains variable assignments (pkgname, pkgver, pkgrel, etc.) and a `package()` function. No top-level code executes command substitutions, network requests, file operations, or any other potentially dangerous actions. The `makepkg --printsrcinfo` command merely sources the PKGBUILD, which will simply define these variables and functions without executing any harmful code. The `package()` function is not invoked during this step.
</details>
<evidence></evidence>
<summary>No dangerous top-level code execution.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous top-level code execution.
Reviewing the 4 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/4] Reviewing .SRCINFO...
[0/4] Reviewing .SRCINFO, LICENSE...
[0/4] Reviewing .SRCINFO, LICENSE, PKGBUILD...
LLM auditresponse for LICENSE:
 <security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard MIT License text. It contains only the standard license grant and liability notice for the opencode project. There are no executable instructions, no network operations, no encoding or obfuscation, no file manipulation, and no system modifications. It is purely a legal notice file, which is a conventional and expected file in any AUR package. Nothing in this file deviates from standard packaging practice or indicates any supply-chain risk.
</details>
<evidence></evidence>
<summary>Standard MIT license text; no security concerns present.</summary>
</security_assessment>

[0/4] Reviewing .SRCINFO, LICENSE, PKGBUILD, opencode2...
[1/4] Reviewing .SRCINFO, PKGBUILD, opencode2...
+ Reviewed LICENSE. Status: SAFE -- Standard MIT license text; no security concerns present.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard AUR practices for distributing a prebuilt binary from the official npm registry (registry.npmjs.org). All sources are fetched over HTTPS with pinned SHA-256 checksums. The package function only installs the binary and license file to standard locations. There are no suspicious commands, no obfuscation, no network requests beyond the declared sources, and no attempts to modify system files outside the package scope. The file is consistent with a legitimate binary package distribution.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD with pinned checksums and no malicious behavior.</summary>
</security_assessment>

[2/4] Reviewing .SRCINFO, opencode2...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD with pinned checksums and no malicious behavior.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This .SRCINFO file is standard AUR package metadata for the opencode-beta package. It declares upstream sources from the official npm registry (npmjs.org) and the project's GitHub repository. All source entries include SHA-256 checksums (no SKIP), and there are no obfuscated commands, suspicious network destinations, or unexpected file operations. The file does not contain any executable code or instructions; it is purely declarative metadata. No evidence of supply-chain attack or malicious behavior is present.
</details>
<evidence></evidence>
<summary>Standard AUR metadata, no security issues.</summary>
</security_assessment>

[3/4] Reviewing opencode2...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata, no security issues.
LLM auditresponse for opencode2:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a minimal and standard POSIX shell wrapper that forwards execution to a sibling binary named `opencode` located in the same directory, passing through all command-line arguments. This pattern is typical for Arch packages that install multiple executables from a single package.

There is no malicious behavior present: no network requests, no downloads, no file operations outside of executing the intended companion binary, no environment or credential theft, and no encoded or obfuscated code. All arguments are properly quoted (`"$@"`), so there is no argument injection. The only potential nuance is that `dirname "$0"` resolves relative to the invocation path rather than dereferencing symlinks, which can affect which `opencode` binary is executed if the script is invoked in an unusual way (e.g., from an attacker-controlled current directory). However, this requires the attacker to already control the current directory or PATH, is standard behavior for this kind of wrapper, and is not evidence of injected malicious code in the package itself.
</details>
<evidence>
</evidence>
<summary>Benign wrapper script that derives its directory from $0 and execs the sibling opencode binary.</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed opencode2. Status: SAFE -- Benign wrapper script that derives its directory from $0 and execs the sibling opencode binary.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 12,284
  Completion Tokens: 2,614
  Total Tokens: 14,898
  Total Cost: $0.001552
  Execution Time: 73.85 seconds

Final Status: SAFE


No issues found.
