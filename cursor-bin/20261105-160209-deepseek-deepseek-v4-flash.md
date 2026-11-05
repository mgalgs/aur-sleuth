---
package: cursor-bin
pkgver: 3.29.9
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 12992
completion_tokens: 2190
total_tokens: 15182
cost: 0.001580852
execution_time: 41.46
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-11-05T16:02:09Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard .gitignore file with no issues.
  - file: PKGBUILD
    status: safe
    summary: Standard binary repackage; no malicious behavior found.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata; no malicious content.
  - file: rg.sh
    status: safe
    summary: Safe wrapper script for ripgrep argument translation.
---

Materializing cursor-bin from local mirror...
Materialized cursor-bin
Analyzing cursor-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The top-level scope of this PKGBUILD contains only standard variable definitions (e.g., `pkgname`, `pkgver`, `source`, `sha512sums`) and no command substitutions, backtick expansions, or function calls that would execute code during `makepkg --printsrcinfo`. The `package()` function is defined but not executed at parse time, so it is out of scope for this gate. There is no evidence of obfuscated code, dangerous commands (like `curl`, `wget`, `eval`, `base64`), or any other malicious behavior in the global scope.
</details>
<evidence></evidence>
<summary>Global scope has no executable code; sourcing is safe.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Global scope has no executable code; sourcing is safe.
Reviewing the 4 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/4] Reviewing .SRCINFO...
[0/4] Reviewing .SRCINFO, .gitignore...
[0/4] Reviewing .SRCINFO, .gitignore, PKGBUILD...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard `.gitignore` file for the `cursor-bin` AUR package. It lists build artifacts, package files, and generated content to be excluded from version control. There is no executable code, no network requests, no obfuscation, and no system modification commands. This file poses no security risk.
</details>
<evidence></evidence>
<summary>Standard .gitignore file with no issues.</summary>
</security_assessment>

[1/4] Reviewing .SRCINFO, PKGBUILD...
[1/4] Reviewing .SRCINFO, PKGBUILD, rg.sh...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore file with no issues.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard packaging practices for a binary (‑bin) package. It downloads the official Cursor .deb from the upstream domain (`downloads.cursor.com`), verifies it with a SHA‑512 checksum, and then extracts and relocates its contents with expected modifications (symlinks to system binaries, adapting helper scripts from the VSCode packaging repository). All file operations are confined to the package&#39;s own intended install paths (`$pkgdir`). There are no obfuscated commands, suspicious network destinations, data exfiltration, or backdoors. The `SKIP` entry is overridden with a valid hash on the next line, so the binary is actually verified.
</details>
<evidence></evidence>
<summary>Standard binary repackage; no malicious behavior found.</summary>
</security_assessment>

[2/4] Reviewing .SRCINFO, rg.sh...
+ Reviewed PKGBUILD. Status: SAFE -- Standard binary repackage; no malicious behavior found.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The `.SRCINFO` file is a standard metadata file for the Arch User Repository (AUR) package `cursor-bin`. It contains only declarative key-value pairs describing the package name, version, architecture, dependencies, sources, and checksums. No executable code, obfuscated strings, or suspicious network destinations are present. All sources point to the official upstream (downloads.cursor.com) and the official Arch Linux packaging repository (gitlab.archlinux.org). All four checksums are provided (none are skipped). There is no evidence of malicious behavior or supply-chain attack in this file.
</details>
<evidence></evidence>
<summary>Standard AUR metadata; no malicious content.</summary>
</security_assessment>

[3/4] Reviewing rg.sh...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata; no malicious content.
LLM auditresponse for rg.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a simple wrapper script that invokes `/usr/bin/rg` (ripgrep) after replacing the argument `--cursor-ignore` with `--ignore-file`. There is no obfuscation, network activity, data exfiltration, or execution of untrusted code. The script performs a straightforward string substitution in the argument list and then executes the legitimate `rg` binary. This is a standard integration helper for the Cursor editor and poses no security risk.
</details>
<evidence>
</evidence>
<summary>Safe wrapper script for ripgrep argument translation.</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed rg.sh. Status: SAFE -- Safe wrapper script for ripgrep argument translation.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 12,992
  Completion Tokens: 2,190
  Total Tokens: 15,182
  Total Cost: $0.001581
  Execution Time: 41.46 seconds

Final Status: SAFE


No issues found.
