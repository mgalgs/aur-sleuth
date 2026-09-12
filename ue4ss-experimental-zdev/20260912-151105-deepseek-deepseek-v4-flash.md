---
package: ue4ss-experimental-zdev
pkgver: 3.0.1_1132_g3fe75235
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 171a316e053e9c4b28731ccb1aa63b1168550d3a
prompt_tokens: 15697
completion_tokens: 3940
total_tokens: 19637
cost: 0.00155466738
execution_time: 240.56
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-12T15:11:04Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Benign .gitignore file, no security issues.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD with pinned sources and no malicious behavior.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata file with pinned checksums.
  - file: ue4ss-install
    status: safe
    summary: Legitimate deployment helper, no malicious behavior found.
---

Materializing ue4ss-experimental-zdev from local mirror...
Materialized ue4ss-experimental-zdev
Analyzing ue4ss-experimental-zdev AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only top-level variable assignments (pkgname, pkgver, source, sha256sums, etc.) and function definitions (latestver, package). No command substitutions, backticks, `eval`, `curl`, `wget`, or other dangerous commands execute during sourcing. The only dynamic content is the parameter expansion in `_verstr` and the source URL construction, both of which are safe string operations. No malicious code runs at global scope, so `makepkg --printsrcinfo` is safe to execute.
</details>
<evidence></evidence>
<summary>No top-level malicious code; safe to printsrcinfo.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No top-level malicious code; safe to printsrcinfo.
Reviewing the 4 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/4] Reviewing .SRCINFO...
[0/4] Reviewing .SRCINFO, .gitignore...
[0/4] Reviewing .SRCINFO, .gitignore, PKGBUILD...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard `.gitignore` configuration for an AUR package repository. It ignores all files by default and explicitly whitelists only the essential files needed for the package: `.gitignore`, `.SRCINFO`, `PKGBUILD`, the deploy helper script `ue4ss-install`, and auxiliary file types (`.install`, `.patch`, `.diff`). There are no commands, network requests, obfuscated code, or any operations that could affect system security. The file simply controls which files are tracked by git, which is a normal and expected practice for AUR package maintenance. No malicious indicators are present.
</details>
<evidence></evidence>
<summary>Benign .gitignore file, no security issues.</summary>
</security_assessment>

[0/4] Reviewing .SRCINFO, .gitignore, PKGBUILD, ue4ss-install...
[1/4] Reviewing .SRCINFO, PKGBUILD, ue4ss-install...
+ Reviewed .gitignore. Status: SAFE -- Benign .gitignore file, no security issues.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard AUR packaging practices for a package that ships Windows DLL mods for use under Wine/Proton.  The source is pinned with a SHA-256 checksum and originates from the official UE4SS-RE/RE-UE4SS GitHub repository using an append-only tag (not a mutable `-latest` ref).  The `ue4ss-install` helper is also checksummed.  

The `package()` function performs only routine file operations: copying the extracted payload to `/usr/share/ue4ss`, removing documentation files, and installing the helper script to `/usr/bin`.  There are no network requests, no execution of downloaded code, no obfuscation, no exfiltration attempts, and no unexpected system modifications.  

The `latestver()` helper queries the GitHub API to display the newest version as a convenience for maintainers; it is not invoked during normal building or installation.  The package is entirely benign and exhibits no signs of a supply-chain attack.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD with pinned sources and no malicious behavior.</summary>
</security_assessment>

[2/4] Reviewing .SRCINFO, ue4ss-install...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD with pinned sources and no malicious behavior.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The .SRCINFO file is a metadata file describing the AUR package `ue4ss-experimental-zdev`. It lists two source files: a zip archive downloaded from the project's official GitHub releases page (`https://github.com/UE4SS-RE/RE-UE4SS/releases/download/experimental/...`) and a local file named `ue4ss-install`. Both sources have pinned SHA-256 checksums. There is no executable code, no obfuscation, and no suspicious network destinations. The package options `!strip` and `!debug` are standard for debug/dev builds. The file conforms to normal AUR packaging practices and does not exhibit any indicators of supply-chain compromise or malicious intent.
</details>
<evidence></evidence>
<summary>Standard AUR metadata file with pinned checksums.</summary>
</security_assessment>

[3/4] Reviewing ue4ss-install...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata file with pinned checksums.
LLM auditresponse for ue4ss-install:
<security_assessment>
<decision>SAFE</decision>
<details>
The script is a straightforward deployment tool for UE4SS. It copies or symlinks files from the packaged payload directory `/usr/share/ue4ss` into a user‑specified game directory. There is no network access, no encoded or obfuscated commands, no exfiltration of data, and no execution of external code beyond standard file operations (`cp`, `ln`, `rm -rf`). The uninstall function removes only the top‑level entries that match the payload's contents, which is expected behavior for clean removal. All operations are confined to the target directory provided by the user. The script does not modify system files, run unexpected processes, or fetch any content from remote hosts. It follows normal packaging helper patterns and contains no evidence of malicious injection.
</details>
<evidence></evidence>
<summary>Legitimate deployment helper, no malicious behavior found.</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed ue4ss-install. Status: SAFE -- Legitimate deployment helper, no malicious behavior found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 15,697
  Completion Tokens: 3,940
  Total Tokens: 19,637
  Total Cost: $0.001555
  Execution Time: 240.56 seconds

Final Status: SAFE


No issues found.
