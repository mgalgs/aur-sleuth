---
package: t3code-nightly-bin
pkgver: 0.0.46_nightly.20261005.2676
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 9786
completion_tokens: 1094
total_tokens: 10880
cost: 0.00169390
execution_time: 18.49
files_reviewed: 2
files_skipped: 0
maintainer_files: 2
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-05T15:07:34Z
file_verdicts:
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD with no malicious indicators found.
  - file: .SRCINFO
    status: safe
    summary: Standard metadata; no malicious content.
---

Materializing t3code-nightly-bin from local mirror...
Materialized t3code-nightly-bin
Analyzing t3code-nightly-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
Running `makepkg --printsrcinfo` only sources the PKGBUILD and executes its global/top-level scope. In this file, the top-level scope consists solely of variable assignments, the `source` array, checksum declarations, and function definitions. There are no top-level command substitutions, no network fetches, no `eval`/`base64`/`curl|bash`, and no file-modifying commands at global scope.

The `prepare()` and `package()` functions contain AppImage extraction, file installation, and a setuid `chrome-sandbox` setup, but these functions are not executed by `makepkg --printsrcinfo`. They should be reviewed in the full PKGBUILD audit, but they are out of scope for this narrow gate. Nothing in the global scope poses an execution risk for `makepkg --printsrcinfo`.
</details>
<evidence>
</evidence>
<summary>
Top-level PKGBUILD scope contains only safe variable and source definitions.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Top-level PKGBUILD scope contains only safe variable and source definitions.
Reviewing the 2 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/2] Reviewing .SRCINFO...
[0/2] Reviewing .SRCINFO, PKGBUILD...
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard AUR packaging practices for a prebuilt binary (AppImage) package. It downloads the AppImage from the official GitHub releases page of the upstream project (`github.com/pingdotgg/t3code`), verifies it with pinned sha256sums, extracts it, installs files to `/opt/t3code-nightly-bin/`, creates a wrapper script in `/usr/bin/`, and registers desktop integration files. There is no obfuscated code, no unexpected network requests, no execution of untrusted code from arbitrary sources, and no exfiltration of local data. The `chmod 4755` on `chrome-sandbox` is typical for Electron/Chromium-based applications and not a sign of malice. The entire build process is transparent and consistent with the package's stated purpose of providing a nightly binary of a control surface for coding agents.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD with no malicious indicators found.</summary>
</security_assessment>

[1/2] Reviewing .SRCINFO...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD with no malicious indicators found.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The `.SRCINFO` file is metadata for an AUR package. It defines two sources: an AppImage binary and a LICENSE file, both fetched from the official GitHub repository of the project (`pingdotgg/t3code`). The checksums are provided and non-SKIP. There is no executable code, obfuscation, or suspicious network destinations. The file conforms to standard packaging practices.
</details>
<evidence></evidence>
<summary>Standard metadata; no malicious content.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed .SRCINFO. Status: SAFE -- Standard metadata; no malicious content.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 9,786
  Completion Tokens: 1,094
  Total Tokens: 10,880
  Total Cost: $0.001694
  Execution Time: 18.49 seconds

Final Status: SAFE


No issues found.
