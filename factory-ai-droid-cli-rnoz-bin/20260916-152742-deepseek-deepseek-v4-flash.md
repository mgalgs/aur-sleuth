---
package: factory-ai-droid-cli-rnoz-bin
pkgver: 0.220.0
pkgrel: 2
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 171a316e053e9c4b28731ccb1aa63b1168550d3a
prompt_tokens: 31914
completion_tokens: 5735
total_tokens: 37649
cost: 0.00377787872
execution_time: 149.46
files_reviewed: 6
files_skipped: 0
maintainer_files: 6
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-16T15:27:41Z
file_verdicts:
  - file: LICENSE
    status: safe
    summary: Standard license file, no security issues.
  - file: factory-ai-droid-cli-rnoz-bin.install
    status: safe
    summary: Safe install script with only echo commands.
  - file: .SRCINFO
    status: safe
    summary: Metadata file with no executable content or threats.
  - file: patch_keybindings.py
    status: safe
    summary: Legitimate AUR helper script for keybinding patching.
  - file: patch_title.py
    status: safe
    summary: Visible logic shows a local, deterministic binary patcher with no malicious behavior.
  - file: PKGBUILD
    status: safe
    summary: Standard binary package with upstream downloads and checksum verification.
---

Materializing factory-ai-droid-cli-rnoz-bin from local mirror...
Materialized factory-ai-droid-cli-rnoz-bin
Analyzing factory-ai-droid-cli-rnoz-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only top-level variable definitions (pkgname, pkgver, source, etc.) and a single function definition (`package()`). No code outside functions executes during sourcing, so `makepkg --printsrcinfo` will not trigger any dangerous operations. The `package()` function contains remote downloads and execution of patch scripts (curl, python3), but those are entirely inside a function that is not invoked by `--printsrcinfo`.  
While the `source` array has no VCS/tarball sources (only local files with pinned checksums), the real supply-chain risk lies in `package()` where binaries are downloaded from an upstream endpoint and patched with external Python scripts. That code is out of scope for this narrow gate and will be audited separately.
</details>
<evidence></evidence>
<summary>No executable code at global scope; safe to parse.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No executable code at global scope; safe to parse.
Reviewing the 6 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/6] Reviewing .SRCINFO...
[0/6] Reviewing .SRCINFO, LICENSE...
[0/6] Reviewing .SRCINFO, LICENSE, PKGBUILD...
LLM auditresponse for LICENSE:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard Apache License 2.0 text, common in open-source projects. It contains no code, no executable instructions, and no obfuscated content. The additional note about licensing of packaging scripts and the upstream binary is informational only and does not introduce any security concerns.
</details>
<evidence>
</evidence>
<summary>Standard license file, no security issues.</summary>
</security_assessment>

[0/6] Reviewing .SRCINFO, LICENSE, PKGBUILD, factory-ai-droid-cli-rnoz-bin.install...
[1/6] Reviewing .SRCINFO, PKGBUILD, factory-ai-droid-cli-rnoz-bin.install...
+ Reviewed LICENSE. Status: SAFE -- Standard license file, no security issues.
LLM auditresponse for factory-ai-droid-cli-rnoz-bin.install:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is an Arch Linux package install script (`.install`). It contains three functions (`post_install`, `post_upgrade`, `post_remove`) that only print information messages to the user via `echo`. There are no network requests, no downloads, no execution of external programs, no file writes or modifications, and no obfuscated or encoded commands. The `rm -rf ~/.factory` mention in `post_remove` is purely informational (printed as text, not executed). The script performs no actions beyond outputting text, and there is no evidence of any security threat.
</details>
<evidence></evidence>
<summary>Safe install script with only echo commands.</summary>
</security_assessment>

[2/6] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed factory-ai-droid-cli-rnoz-bin.install. Status: SAFE -- Safe install script with only echo commands.
[2/6] Reviewing .SRCINFO, PKGBUILD, patch_keybindings.py...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The .SRCINFO file for the AUR package is purely metadata; it contains no executable code. It lists source files with pinned SHA256 checksums and references the upstream repository. There are no suspicious network requests, obfuscated code, or dangerous commands present in this file. While the referenced install script and patch files could theoretically be malicious, the .SRCINFO itself does not exhibit any evidence of a supply-chain attack. Based solely on the provided content, the file is safe.
</details>
<evidence></evidence>
<summary>Metadata file with no executable content or threats.</summary>
</security_assessment>

[3/6] Reviewing PKGBUILD, patch_keybindings.py...
+ Reviewed .SRCINFO. Status: SAFE -- Metadata file with no executable content or threats.
[3/6] Reviewing PKGBUILD, patch_keybindings.py, patch_title.py...
LLM auditresponse for patch_keybindings.py:
<security_assessment>
<decision>SAFE</decision>
<details>
This Python script is a legitimate helper tool intended to rotate keybinding assignments in a specific binary (Factory Droid CLI). It performs byte-level patching using regex replacements, ensuring the binary size remains unchanged, and includes validation to reject unknown binary layouts. The script does not make any network requests, does not exfiltrate data, does not download or execute code from external sources, and does not modify system files outside the binary it is given. The only `subprocess` call is an optional smoke test that runs the patched binary with `--version` to verify it still executes, which is standard packaging practice. There is no obfuscation, no `eval`, no base64 decoding, and no suspicious data collection. The code is transparent about its purpose and operations.
</details>
<evidence>
</evidence>
<summary>Legitimate AUR helper script for keybinding patching.</summary>
</security_assessment>

[4/6] Reviewing PKGBUILD, patch_title.py...
+ Reviewed patch_keybindings.py. Status: SAFE -- Legitimate AUR helper script for keybinding patching.
LLM auditresponse for patch_title.py:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a binary patcher intended to modify the Factory Droid CLI binary so that its titling guard is replaced with an unconditional return. It performs local file inspection, byte-pattern matching, optional dry-run, an atomic write of the patched data, permission preservation, and a smoke test that runs the patched binary with `--version`. No network requests, no encoded/obfuscated payloads, no attempts to read sensitive system files, and no exfiltration of local data were found in the visible portions of the script.

The script does manipulate a binary file, but that manipulation is within the stated scope of the package: replacing a specific titling guard in the application's own binary. Reading CPU feature flags from `/proc/cpuinfo` and `sysctl` is normal host capability detection, not credential or data theft. Running the patched binary as a smoke test is standard verification behavior for a patcher. Although the file content shown is truncated and not complete enough for a full audit, the visible logic is consistent with an ordinary patching utility and does not exhibit malicious behavior.
</details>
<evidence>
</evidence>
<summary>
Visible logic shows a local, deterministic binary patcher with no malicious behavior.</summary>
</security_assessment>

[5/6] Reviewing PKGBUILD...
+ Reviewed patch_title.py. Status: SAFE -- Visible logic shows a local, deterministic binary patcher with no malicious behavior.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard AUR packaging practices for a binary package. It downloads the droid CLI binary and ripgrep from the project's official upstream domain (`downloads.factory.ai`) and verifies them via checksum files also fetched from the same domain. This is a normal trust-on-first-use model common for binary packages and does not constitute malicious behavior.  

The local patch scripts (`patch_title.py`, `patch_keybindings.py`) are included with pinned checksums, so their contents are verified at build time. The `apply_patch_if_requested` function interactively applies these patches to the binary—this is unconventional but consistent with the package's stated purpose of applying tweaks. There is no obfuscation, no exfiltration of data, no execution of untrusted remote code, and no modifications to system files outside the package's installation paths.
</details>
<evidence></evidence>
<summary>Standard binary package with upstream downloads and checksum verification.</summary>
</security_assessment>

[6/6] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard binary package with upstream downloads and checksum verification.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 31,914
  Completion Tokens: 5,735
  Total Tokens: 37,649
  Total Cost: $0.003778
  Execution Time: 149.46 seconds

Final Status: SAFE


No issues found.
