---
package: cursor-bin
pkgver: 3.23.23
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 13079
completion_tokens: 2337
total_tokens: 15416
cost: 0.00338373
execution_time: 102.89
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-05T19:07:02Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard gitignore file, no security concerns.
  - file: .SRCINFO
    status: safe
    summary: Standard .SRCINFO with pinned checksums, no suspicious content.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD with no malicious content.
  - file: rg.sh
    status: safe
    summary: Convenience wrapper; no malicious behavior.
---

Materializing cursor-bin from local mirror...
Materialized cursor-bin
Analyzing cursor-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD's global scope contains only static variable and array assignments, comments, and a function definition (`package()`). There are no top-level command substitutions, backtick executions, `eval`, `exec`, `curl`, `wget`, or any other constructs that would execute arbitrary code during `makepkg --printsrcinfo`. All values are plain strings or arrays of strings. The function definitions are not invoked during sourcing. Therefore, there is no risk of malicious code execution at this stage. The later SHA512 sum override for index 0 is unusual but not dangerous in itself, and does not cause execution.
</details>
<evidence>
</evidence>
<summary>No top-level executable code; sourcing is safe.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No top-level executable code; sourcing is safe.
Reviewing the 4 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/4] Reviewing .SRCINFO...
[0/4] Reviewing .SRCINFO, .gitignore...
[0/4] Reviewing .SRCINFO, .gitignore, PKGBUILD...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard `.gitignore` file used to prevent version control from tracking build artifacts, downloaded binaries, and generated package files. It contains only file and directory paths with no executable content, network operations, or obfuscation. There is no evidence of malicious behavior.
</details>
<evidence></evidence>
<summary>Standard gitignore file, no security concerns.</summary>
</security_assessment>

[1/4] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed .gitignore. Status: SAFE -- Standard gitignore file, no security concerns.
[1/4] Reviewing .SRCINFO, PKGBUILD, rg.sh...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard AUR `.SRCINFO` metadata file for the `cursor-bin` package. It defines package metadata, dependencies, and four source entries with pinned SHA-512 checksums (no `SKIP` entries). The sources point to the official Cursor download URL and two legitimate Arch Linux GitLab packaging repository URLs (for Visual Studio Code helper scripts), plus a local file `rg.sh`. No checksums are skipped, and no URLs point to untrusted or unexpected origins. The file contains no executable instructions, obfuscated content, or any command that could perform malicious operations. It is a purely declarative metadata file used by `makepkg` to fetch and verify sources. There are no supply‑chain attack indicators.
</details>
<evidence></evidence>
<summary>Standard .SRCINFO with pinned checksums, no suspicious content.</summary>
</security_assessment>

[2/4] Reviewing PKGBUILD, rg.sh...
+ Reviewed .SRCINFO. Status: SAFE -- Standard .SRCINFO with pinned checksums, no suspicious content.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>This PKGBUILD for cursor-bin follows standard Arch packaging practices. It fetches the upstream Cursor .deb from the official downloads.cursor.com URL (with a pinned commit hash) and also fetches helper scripts from the Arch Linux GitLab repository (code.sh, code.mjs, rg.sh) with explicit SHA-512 checksums for integrity. The package() function extracts the .deb, integrates the editor with the system&apos;s Electron and Node.js, installs custom launcher scripts, and creates the necessary symlinks. There are no obfuscated commands, network requests to unexpected hosts, execution of fetched code during the build (other than extracting archives), or data exfiltration attempts. All operations are confined to the package&apos;s own directories and are necessary for the application to function on Arch Linux. No security issues found.</details>
<evidence></evidence>
<summary>Standard AUR PKGBUILD with no malicious content.</summary>
</security_assessment>

[3/4] Reviewing rg.sh...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD with no malicious content.
LLM auditresponse for rg.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
The script is a simple wrapper that replaces `--cursor-ignore` with `--ignore-file` in the arguments passed to `/usr/bin/rg`. It performs no network operations, no downloads, no obfuscation, and no system modifications beyond executing the intended binary with transformed arguments. This is a normal convenience script for a text editor that uses ripgrep.
</details>
<evidence></evidence>
<summary>Convenience wrapper; no malicious behavior.</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed rg.sh. Status: SAFE -- Convenience wrapper; no malicious behavior.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 13,079
  Completion Tokens: 2,337
  Total Tokens: 15,416
  Total Cost: $0.003384
  Execution Time: 102.89 seconds

Final Status: SAFE


No issues found.
