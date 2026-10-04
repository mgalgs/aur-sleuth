---
package: opencode-desktop-bin
pkgver: 2.0.22
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 15598
completion_tokens: 16781
total_tokens: 32379
cost: 0.001376480
execution_time: 481.37
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-02T15:08:52Z
file_verdicts:
  - file: LICENSE
    status: safe
    summary: Standard license file, no security issues.
  - file: .SRCINFO
    status: safe
    summary: Standard package metadata; no executable or suspicious content.
  - file: .gitignore
    status: safe
    summary: Standard .gitignore for AUR packages, safe.
  - file: PKGBUILD
    status: safe
    summary: Standard Electron packaging; no malicious or supply-chain behavior found.
---

Materializing opencode-desktop-bin from local mirror...
Materialized opencode-desktop-bin
Analyzing opencode-desktop-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
Running `makepkg --printsrcinfo` sources the PKGBUILD and executes only its top-level code. In the supplied content, the top-level consists of variable and array assignments, comments, and function definitions. The `curl ... | jq` pipeline appears inside a function body (it is closed by `}` before the `source=` arrays), and function bodies such as `pkgver()` and `package()` are not executed during `makepkg --printsrcinfo`. No top-level command substitution, `eval`, download-and-execute, or data-exfiltration is present. The potentially invasive commands inside `package()` are out of scope for this particular gate and will be reviewed in the full PKGBUILD audit.
</details>
<evidence></evidence>
</security_assessment>

+ Initial PKGBUILD audit complete -- SAFE
Reviewing the 4 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/4] Reviewing .SRCINFO...
[0/4] Reviewing .SRCINFO, .gitignore...
[0/4] Reviewing .SRCINFO, .gitignore, LICENSE...
LLM auditresponse for LICENSE:
<security_assessment>
<decision>SAFE</decision>
<details>
This file contains only the text of the MIT License, a standard open-source software license. It does not contain any executable instructions, network calls, obfuscated code, or any other indicators of malicious behavior. It is a passive legal document with no operational impact.
</details>
<evidence></evidence>
<summary>Standard license file, no security issues.</summary>
</security_assessment>

[0/4] Reviewing .SRCINFO, .gitignore, LICENSE, PKGBUILD...
[1/4] Reviewing .SRCINFO, .gitignore, PKGBUILD...
+ Reviewed LICENSE. Status: SAFE -- Standard license file, no security issues.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The .SRCINFO file is purely metadata defining package sources, checksums, and dependencies. It contains no executable code, no obfuscated strings, no network requests at runtime, and no file operations. The sources point to the official upstream project (opencode.ai and GitHub) with pinned checksums. All dependencies are standard system libraries and tools. There is no evidence of supply-chain attack or malicious behavior.
</details>
<evidence></evidence>
<summary>Standard package metadata; no executable or suspicious content.</summary>
</security_assessment>

[2/4] Reviewing .gitignore, PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard package metadata; no executable or suspicious content.
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard `.gitignore` configuration for an Arch User Repository package. It ignores all files by default and then explicitly whitelists essential packaging files and common auxiliary files (`PKGBUILD`, `.SRCINFO`, `*.install`, `*.patch`, etc.). There are no commands, network requests, obfuscated code, or references to external sources. The file performs no operations at all—it merely defines version-control exclusion patterns. No security concerns exist.</details>
<evidence></evidence>
<summary>Standard .gitignore for AUR packages, safe.</summary>
</security_assessment>

[3/4] Reviewing PKGBUILD...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore for AUR packages, safe.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows normal AUR packaging practices for a prebuilt Electron application. It downloads the package from the official opencode.ai domain, pins SHA-256 checksums for the license and per-architecture binaries, extracts the .deb with bsdtar, prunes bundled runtime files, and installs desktop integration files. The `latestver()` function is a maintainer helper and is not run during package build.

The only unusual part is the embedded `main.mjs` shim that monkey-patches `app.setPath` and creates a symlink for the bundled CLI under the application's own userData directory. While this is nonstandard, it is transparent, does not fetch or execute remote code, does not exfiltrate data, and does not modify files outside the package and the application's own userData. The visible code contains no obfuscation, no suspicious encoded commands, and no backdoor behavior. Minor concerns such as word-splitting user flags or using `/dev/stdin` for installs are packaging choices, not evidence of malice.
</details>
<evidence></evidence>
<summary>Standard Electron packaging; no malicious or supply-chain behavior found.</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard Electron packaging; no malicious or supply-chain behavior found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 15,598
  Completion Tokens: 16,781
  Total Tokens: 32,379
  Total Cost: $0.001376
  Execution Time: 481.37 seconds

Final Status: SAFE


No issues found.
