---
package: ue4ss-experimental-zdev
pkgver: 3.0.1_1127_g2bfa839f
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 171a316e053e9c4b28731ccb1aa63b1168550d3a
prompt_tokens: 15781
completion_tokens: 2547
total_tokens: 18328
cost: 0.001753500
execution_time: 73.64
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-08T19:09:49Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard .gitignore with packaging file whitelist; no security concerns found.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD with no malicious indicators.
  - file: ue4ss-install
    status: safe
    summary: Standard deployment script, no malicious behavior.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata, no malicious content.
---

Materializing ue4ss-experimental-zdev from local mirror...
Materialized ue4ss-experimental-zdev
Analyzing ue4ss-experimental-zdev AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The top-level scope of this PKGBUILD consists solely of variable assignments (pkgname, pkgver, pkgrel, pkgdesc, arch, url, license, depends, optdepends, provides, conflicts, options, _verstr, source, sha256sums) and function definitions (latestver, package). No command substitutions, external command executions, or other code that runs at source time are present. The function bodies contain potentially dangerous commands (gh api, grep, sort, tr, install, cp, chmod, rm, etc.), but these are only executed when the functions are explicitly called, which does not happen during `makepkg --printsrcinfo`. Therefore, sourcing this PKGBUILD is safe.
</details>
<evidence></evidence>
<summary>Sourcing PKGBUILD is safe for --printsrcinfo.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Sourcing PKGBUILD is safe for --printsrcinfo.
Reviewing the 4 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/4] Reviewing .SRCINFO...
[0/4] Reviewing .SRCINFO, .gitignore...
[0/4] Reviewing .SRCINFO, .gitignore, PKGBUILD...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard `.gitignore` for an AUR package repository. It ignores all files by default and whitelists packaging-related files such as the PKGBUILD, .SRCINFO, install scripts, patches, and a deploy helper script named `ue4ss-install`. There are no commands, network operations, obfuscated content, or file-manipulation behaviors. The whitelist of `ue4ss-install` is consistent with including a helper script in the `source=()` array, which is normal AUR packaging practice. No security issues are present.
</details>
<evidence>
</evidence>
<summary>
Standard .gitignore with packaging file whitelist; no security concerns found.</summary>
</security_assessment>

[0/4] Reviewing .SRCINFO, .gitignore, PKGBUILD, ue4ss-install...
[1/4] Reviewing .SRCINFO, PKGBUILD, ue4ss-install...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore with packaging file whitelist; no security concerns found.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD for the AUR package `ue4ss-experimental-zdev` follows standard Arch packaging practices. The source is an official GitHub release asset from the UE4SS-RE repository, pinned with a specific version and a valid SHA-256 checksum. The `latestver()` helper function uses `gh` to query the GitHub API for version bumping; it is not executed during the build process and does not download or run any code. The `package()` function only copies files into `$pkgdir`, removes a few non-essential items, and installs a pre-verified helper script. There are no dangerous commands, obfuscated code, unexpected network requests, or exfiltration of local data. No malicious or supply-chain attack indicators are present.
</details>
<evidence>
</evidence>
<summary>Standard AUR PKGBUILD with no malicious indicators.</summary>
</security_assessment>

[2/4] Reviewing .SRCINFO, ue4ss-install...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD with no malicious indicators.
LLM auditresponse for ue4ss-install:
<security_assessment>
<decision>SAFE</decision>
<details>
The script `ue4ss-install` is a transparent deployment helper for the UE4SS modding tool. It performs no network operations, no obfuscated code execution, and no dangerous commands (such as `eval`, `curl`, `wget`, or `base64`). All operations involve copying or symlinking files from the package-managed `/usr/share/ue4ss` directory to a user-specified game folder, with support for config preservation, force overwrite, and uninstallation. The script uses standard shell practices (`set -euo pipefail`, proper quoting, helper functions) and contains no evidence of injected malicious behavior.
</details>
<evidence></evidence>
<summary>Standard deployment script, no malicious behavior.</summary>
</security_assessment>

[3/4] Reviewing .SRCINFO...
+ Reviewed ue4ss-install. Status: SAFE -- Standard deployment script, no malicious behavior.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The .SRCINFO file contains only standard package metadata for an AUR package. It defines the package name, version, description, dependencies, and sources. The primary source is a ZIP archive downloaded from the official UE4SS GitHub releases page, which is the expected upstream location. Both sources have SHA256 checksums provided. There are no commands, scripts, or encoded data that could perform malicious actions. The file does not attempt to execute code, exfiltrate data, or deviate from normal AUR packaging practices.
</details>
<evidence></evidence>
<summary>Standard AUR metadata, no malicious content.</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata, no malicious content.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 15,781
  Completion Tokens: 2,547
  Total Tokens: 18,328
  Total Cost: $0.001754
  Execution Time: 73.64 seconds

Final Status: SAFE


No issues found.
