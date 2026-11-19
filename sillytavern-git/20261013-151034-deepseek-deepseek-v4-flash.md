---
package: sillytavern-git
pkgver: 1.12.13.r518.gb3a3b9d
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 8226
completion_tokens: 1102
total_tokens: 9328
cost: 0.000949130
execution_time: 39.33
files_reviewed: 2
files_skipped: 0
maintainer_files: 2
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-13T15:10:34Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata; no malicious content.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD; no malicious content.
---

Materializing sillytavern-git from local mirror...
Materialized sillytavern-git
Analyzing sillytavern-git AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only variable assignments and function definitions at the top level. No command substitutions, backtick expansions, or direct execution of external commands occur when this file is sourced for `makepkg --printsrcinfo`. The `pkgver()` and `package()` functions are defined but never invoked during this step. The source array uses a VCS URL with a SKIP checksum, which is normal for a `-git` package and poses no execution risk during parsing. Therefore, sourcing this file is safe.
</details>
<evidence></evidence>
<summary>No top-level executable code; safe.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No top-level executable code; safe.
Reviewing the 2 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/2] Reviewing .SRCINFO...
[0/2] Reviewing .SRCINFO, PKGBUILD...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The `.SRCINFO` file is a metadata descriptor for the AUR package. It declares the package name, version, description, dependencies, and source URL. The source points to the official upstream GitHub repository (`https://github.com/SillyTavern/SillyTavern.git`) with a branch specification (`staging`). The checksum is set to `SKIP`, which is normal and required for VCS (git-based) sources. No commands, network requests, file operations, or obfuscated code are present. The file contains only declarative key-value pairs and is consistent with standard AUR packaging practices. There is no evidence of malicious or suspicious behavior.
</details>
<evidence></evidence>
<summary>Standard AUR metadata; no malicious content.</summary>
</security_assessment>

[1/2] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata; no malicious content.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard AUR packaging practices for a Node.js application. It clones from the official upstream GitHub repository, runs `npm i` with production-only flags, installs the application to `/usr/share/sillytavern`, and creates a wrapper script at `/usr/bin/sillytavern`. The operations are all expected for this type of package:

- `npm i --no-audit --no-fund --loglevel=error --no-progress --omit=dev` is normal dependency installation with additional safety flags.
- The wrapper script creates a data directory under the user's home and launches the server with a `--dataRoot` flag.
- Cleanup of build-time paths from JSON files is a standard hygiene practice to avoid leaking build environment references.

No obfuscated code, unexpected network requests, exfiltration attempts, or dangerous command patterns are present. The checksum is correctly `SKIP` for a VCS source. The file is fully transparent and non-malicious.
</details>
<evidence></evidence>
<summary>Standard AUR PKGBUILD; no malicious content.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD; no malicious content.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 8,226
  Completion Tokens: 1,102
  Total Tokens: 9,328
  Total Cost: $0.000949
  Execution Time: 39.33 seconds

Final Status: SAFE


No issues found.
