---
package: satmod
pkgver: 1.0.1
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 34381
completion_tokens: 6285
total_tokens: 40666
cost: 0.004272541
execution_time: 82.78
files_reviewed: 5
files_skipped: 0
maintainer_files: 5
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-22T19:08:22Z
file_verdicts:
  - file: LICENSE
    status: safe
    summary: Standard license file, no security issues.
  - file: PKGBUILD
    status: safe
    summary: Clean PKGBUILD with pinned sources and standard operations.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata; no malicious content.
  - file: satmod.install
    status: safe
    summary: Informational post-install message only, no malicious actions.
  - file: satmod
    status: safe
    summary: Legitimate modding tool; no injected malicious code.
---

Materializing satmod from local mirror...
Materialized satmod
Analyzing satmod AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
Sourcing this PKGBUILD for `makepkg --printsrcinfo` is safe. The global/top-level scope contains only static variable and array assignments (`pkgname`, `pkgver`, `pkgrel`, `pkgdesc`, `arch`, `url`, `license`, `depends`, `options`, `install`, `_commit`, `source`, `sha256sums`). There are no command substitutions, no `eval`, no `curl`/`wget`, no network requests, and no file-modifying operations executed during sourcing.

The `package()` function contains install/file operations, but functions are not executed during `makepkg --printsrcinfo`; those will be audited separately in the full review. No top-level malicious behavior was found.
</details>
<evidence>
</evidence>
<summary>
Top-level PKGBUILD is static; no code executes during printsrcinfo. Safe.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Top-level PKGBUILD is static; no code executes during printsrcinfo. Safe.
Reviewing the 5 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/5] Reviewing .SRCINFO...
[0/5] Reviewing .SRCINFO, LICENSE...
[0/5] Reviewing .SRCINFO, LICENSE, PKGBUILD...
LLM auditresponse for LICENSE:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a plain-text license file (MIT-like). It contains no executable code, no network requests, no obfuscated content, and no system modifications. It is standard legal text and poses no security risk.
</details>
<evidence></evidence>
<summary>Standard license file, no security issues.</summary>
</security_assessment>

[0/5] Reviewing .SRCINFO, LICENSE, PKGBUILD, satmod...
[1/5] Reviewing .SRCINFO, PKGBUILD, satmod...
+ Reviewed LICENSE. Status: SAFE -- Standard license file, no security issues.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard packaging practices. All sources are pinned: the first source is a tarball downloaded from GitHub&#39;s codeload service with a specific commit hash and SHA-256 checksum; the second and third sources are local files also with checksums. The package() function performs routine operations: copying files, setting permissions, creating a symlink, and installing license files. No network requests are made beyond the declared upstream source. There is no obfuscated code, no dangerous commands (eval, base64, curl|bash, etc.), and no modifications to files outside the package&#39;s own installation directories. The file contains no evidence of injected malicious behavior.
</details>
<evidence></evidence>
<summary>Clean PKGBUILD with pinned sources and standard operations.</summary>
</security_assessment>

[1/5] Reviewing .SRCINFO, PKGBUILD, satmod, satmod.install...
[2/5] Reviewing .SRCINFO, satmod, satmod.install...
+ Reviewed PKGBUILD. Status: SAFE -- Clean PKGBUILD with pinned sources and standard operations.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The .SRCINFO file is metadata only: it defines package name, version, dependencies, source URLs, and checksums. No executable code, no network requests, no obfuscation, and no system-modification commands are present. The source URLs point to the project&#39;s own GitHub repository using HTTPS, and the checksums are pinned (not SKIP). All dependencies are plausible for a Wine-based modding toolchain. There is no evidence of supply-chain tampering or malicious intent in this file.
</details>
<evidence></evidence>
<summary>Standard AUR metadata; no malicious content.</summary>
</security_assessment>

[3/5] Reviewing satmod, satmod.install...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata; no malicious content.
LLM auditresponse for satmod.install:
<security_assessment>
<decision>SAFE</decision>
<details>
This file defines post-install hooks for the `satmod` package. Both `post_install` and `post_upgrade` only print a non‑executable guidance message urging the user to run `satmod setup --json` manually. There are no network requests, no execution of downloaded code, no file operations, no obfuscation, and no system modifications. The script is purely informational, performing only the standard packaging convention of printing setup instructions.
</details>
<evidence></evidence>
<summary>Informational post-install message only, no malicious actions.</summary>
</security_assessment>

[4/5] Reviewing satmod...
+ Reviewed satmod.install. Status: SAFE -- Informational post-install message only, no malicious actions.
LLM auditresponse for satmod:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a Python script that is part of the `satmod` package, which provides tooling for modding Satisfactory (Unreal Engine game) using a Wine‑managed MSVC/SDK toolchain and Wwise audio. It operates as a user‑side utility, not a PKGBUILD.

All network interactions are standard for the package’s purpose:
* `git clone` of the upstream mod project from `github.com/satisfactorymodding/SatisfactoryModLoader` and subsequent `git fetch`/`git merge --ff-only` from `origin` – these are expected operations on the user’s own clone.
* Download of a `wwise‑cli` binary from a GitHub release (`github.com/mircearoata/wwise‑cli`) with explicit SHA‑256 and size verification before execution. This is a pinned, integrity‑checked dependency, not an obfuscated or untrusted payload.

The script implements careful security measures:
* Checks that the user is not root and that target paths are user‑owned and writable.
* Strips Wwise credentials from the environment for all child processes except the one that specifically needs them (`wwise‑cli`).
* Refuses to operate on directories that are git‑tracked (prevents accidental deletion of version‑controlled content).
* Hardcodes a source pin and validates it across runs to prevent path confusion.

No obfuscated code, base64‑decoded commands, backdoors, reverse shells, data exfiltration, or modification of system files outside the application’s scope are present. The behavior is consistent with a legitimate modding tool; the binary downloads and git operations serve the intended functionality (toolchain provisioning and project management) and are not injected malice.
</details>
<evidence></evidence>
<summary>Legitimate modding tool; no injected malicious code.</summary>
</security_assessment>

[5/5] Reviewing ...
+ Reviewed satmod. Status: SAFE -- Legitimate modding tool; no injected malicious code.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 34,381
  Completion Tokens: 6,285
  Total Tokens: 40,666
  Total Cost: $0.004273
  Execution Time: 82.78 seconds

Final Status: SAFE


No issues found.
