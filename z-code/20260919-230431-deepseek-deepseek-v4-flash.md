---
package: z-code
pkgver: 3.14.0_7681
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 15774
completion_tokens: 15343
total_tokens: 31117
cost: 0.00178220560
execution_time: 224.83
files_reviewed: 5
files_skipped: 0
maintainer_files: 5
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-19T23:04:30Z
file_verdicts:
  - file: README.md
    status: safe
    summary: README-only documentation; no executable content or suspicious behavior found.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD, no malicious indicators.
  - file: z-code.desktop
    status: safe
    summary: Standard desktop entry file, no security issues.
  - file: .SRCINFO
    status: safe
    summary: Metadata-only .SRCINFO with pinned checksums from official Z.ai CDN; no malicious behavior.
  - file: z-code.sh
    status: safe
    summary: "Benign wrapper: reads user flags, execs ZCode. No malicious behavior present."
---

Materializing z-code from local mirror...
Materialized z-code
Analyzing z-code AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only standard variable assignments (pkgname, pkgver, source arrays, checksums, etc.) and a `package()` function definition. No command substitutions, backtick execution, or other top-level code that would run when the file is sourced by `makepkg --printsrcinfo`. All dangerous operations (downloading, extracting, etc.) are confined to the `package()` function, which is not executed during this step. Therefore, running `makepkg --printsrcinfo` is safe.
</details>
<evidence></evidence>
<summary>No dangerous top-level code present.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous top-level code present.
Reviewing the 5 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/5] Reviewing .SRCINFO...
[0/5] Reviewing .SRCINFO, PKGBUILD...
[0/5] Reviewing .SRCINFO, PKGBUILD, README.md...
LLM auditresponse for README.md:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a plain documentation `README.md` for the `z-code` AUR package. It contains only a short description of the package (an Electron-based AI coding agent desktop app from Z.ai), standard installation instructions using `paru -S z-code`, a note about conflict/replacement with other AUR packages, and a link to the maintainer's GitHub repository for feedback.

There is no executable content, no shell commands, no network fetch logic, no obfuscated data, and nothing that modifies the filesystem. The GitHub link is to the maintainer's own package collection, which is a normal location for AUR feedback. There is no evidence of injected malicious behavior, exfiltration, backdoors, or unexpected downloads. This file is consistent with ordinary package documentation and presents no security concern.
</details>
<evidence>
</evidence>
<summary>
README-only documentation; no executable content or suspicious behavior found.
</summary>
</security_assessment>

[1/5] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed README.md. Status: SAFE -- README-only documentation; no executable content or suspicious behavior found.
[1/5] Reviewing .SRCINFO, PKGBUILD, z-code.desktop...
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard AUR packaging conventions for an Electron-based desktop application. All source URLs point to the official upstream CDN (cdn-zcode.z.ai) and are pinned with hardcoded BLAKE2b checksums, ensuring integrity. The `package()` function performs routine operations: extracting the upstream .deb archive, installing wrapper scripts, cleaning up Debian packaging artifacts, copying license files, and setting permissions (including the standard setuid sandbox binary). There are no suspicious network requests, obfuscated commands, data exfiltration attempts, or execution of untrusted code. The file is SAFE.
</details>
<evidence>
</evidence>
<summary>Standard PKGBUILD, no malicious indicators.</summary>
</security_assessment>

[1/5] Reviewing .SRCINFO, PKGBUILD, z-code.desktop, z-code.sh...
[2/5] Reviewing .SRCINFO, z-code.desktop, z-code.sh...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD, no malicious indicators.
LLM auditresponse for z-code.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.desktop` file that simply defines a desktop launcher entry for the application "ZCode". It specifies the executable path (`/usr/bin/z-code`), icon, categories, MIME type, and keywords. There is no malicious code, no network requests, no system modifications, or any suspicious behavior. The file conforms to normal packaging practices and does not pose a security risk.
</details>
<evidence></evidence>
<summary>Standard desktop entry file, no security issues.</summary>
</security_assessment>

[3/5] Reviewing .SRCINFO, z-code.sh...
+ Reviewed z-code.desktop. Status: SAFE -- Standard desktop entry file, no security issues.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a metadata-only `.SRCINFO` file for the z-code AUR package. It contains no executable code, no build/install functions, and no shell statements. All referenced artifacts (two local source files and two per-architecture `.deb` binaries) have pinned BLAKE2b checksums; no checksum is set to `SKIP`. The external downloads come from `https://cdn-zcode.z.ai/`, which is Z.ai's official distribution endpoint for this application, so the network destinations are consistent with the package's stated purpose.

Pinning checksums for both local wrapper files and the upstream `.deb` packages is a sound supply-chain practice. There is no obfuscated content, no `eval`/`curl`/`wget`/base64 in this file, and no sign of exfiltration, backdoors, or tampering. The actual build logic would live in the separate `PKGBUILD`, which is not part of this file; based solely on the `.SRCINFO`, no malicious behavior is present.
</details>
<evidence></evidence>
<summary>Metadata-only .SRCINFO with pinned checksums from official Z.ai CDN; no malicious behavior.</summary>
</security_assessment>

[4/5] Reviewing z-code.sh...
+ Reviewed .SRCINFO. Status: SAFE -- Metadata-only .SRCINFO with pinned checksums from official Z.ai CDN; no malicious behavior.
LLM auditresponse for z-code.sh:
 <security_assessment>
<decision>SAFE</decision>
<details>
This is a standard launcher wrapper for the ZCode application. It reads a user-controlled configuration file (`${XDG_CONFIG_HOME}/z-code-flags.conf`), extracts non-comment, non-empty lines, treats each as a flag, and passes them to the ZCode binary at `/opt/ZCode/zcode` via `exec`.

The script performs no network operations, no calls to `eval`, `base64`, `curl`, or `wget`, no obfuscated or encoded content, and no file writes. All user-flag expansions are properly quoted (`"${ZCODE_USER_FLAGS[@]}"`, `"$@"`), so there is no command injection or glob-expansion risk. Even if a config line contained shell metacharacters, the content is stored in an array and passed as literal arguments to the application; the shell never interprets it as code.

The whitespace trimming uses standard, well-known Bash parameter expansion idioms. Running the package's own binary and reading a per-user flags file are ordinary, expected behaviors for this kind of wrapper. The only minor note is that each non-comment line is passed as a single argument (lines are not word-split on whitespace), which is a functional nuance, not a security concern. No malicious or dangerous behavior is present.
</details>
<evidence>
</evidence>
<summary>Benign wrapper: reads user flags, execs ZCode. No malicious behavior present.</summary>
</security_assessment>

[5/5] Reviewing ...
+ Reviewed z-code.sh. Status: SAFE -- Benign wrapper: reads user flags, execs ZCode. No malicious behavior present.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 15,774
  Completion Tokens: 15,343
  Total Tokens: 31,117
  Total Cost: $0.001782
  Execution Time: 224.83 seconds

Final Status: SAFE


No issues found.
