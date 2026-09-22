---
package: brave-origin-beta-bin
pkgver: 1.97.45
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 16553
completion_tokens: 6324
total_tokens: 22877
cost: 0.001430849
execution_time: 156.76
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-22T15:24:10Z
file_verdicts:
  - file: MPL2
    status: safe
    summary: File is standard MPL-2.0 license text; no security issues found.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD; no malicious behavior detected.
  - file: .SRCINFO
    status: safe
    summary: Metadata-only .SRCINFO file with official upstream URLs and checksums; no malicious behavior found.
  - file: brave-origin-beta-bin.sh
    status: safe
    summary: Standard browser launcher wrapper; no malware, network, or obfuscation found.
---

Materializing brave-origin-beta-bin from local mirror...
Materialized brave-origin-beta-bin
Analyzing brave-origin-beta-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD's global/top-level scope contains only plain variable assignments (pkgname, pkgver, arch, depends, source arrays, sha512sums, etc.) followed by definitions of `prepare()` and `package()`. There are no top-level command substitutions, `eval` calls, backtick expressions, or any other executable statements that would run when the file is sourced. Therefore, `makepkg --printsrcinfo` will simply source these variable definitions and print metadata without performing network requests or executing payloads.

The bodies of `prepare()` and `package()` are not executed by `makepkg --printsrcinfo`, so they are out of scope for this narrow gate (they are deferred to the full PKGBUILD audit). The source URLs point to Brave's official GitHub releases for the package's own upstream binary, and the checksums are not evaluated during this step. No genuinely malicious top-level behavior exists.
</details>
<evidence></evidence>
<summary>Only variable assignments at global scope; no executable code when sourced.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Only variable assignments at global scope; no executable code when sourced.
Reviewing the 4 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/4] Reviewing .SRCINFO...
[0/4] Reviewing .SRCINFO, MPL2...
[0/4] Reviewing .SRCINFO, MPL2, PKGBUILD...
LLM auditresponse for MPL2:
<security_assessment>
<decision>SAFE</decision>
<details>
This file contains only the text of the Mozilla Public License Version 2.0. It is a standard software license document and contains no executable code, network operations, file manipulation, obfuscated content, or packaging logic. There are no security concerns associated with this file.
</details>
<evidence></evidence>
<summary>File is standard MPL-2.0 license text; no security issues found.</summary>
</security_assessment>

[0/4] Reviewing .SRCINFO, MPL2, PKGBUILD, brave-origin-beta-bin.sh...
[1/4] Reviewing .SRCINFO, PKGBUILD, brave-origin-beta-bin.sh...
+ Reviewed MPL2. Status: SAFE -- File is standard MPL-2.0 license text; no security issues found.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard AUR packaging practices for a binary Chromium-based browser. It downloads the official .deb package from the Brave GitHub releases over HTTPS, extracts it, removes a cron directory (which is a normal cleanup step), and installs the binaries and support files. The only setuid binary is `chrome-sandbox` (chmod 4755), which is expected for Chromium-based browsers to enable sandboxing. All source checksums are provided and verified. There are no obfuscated commands, unexpected network requests, data exfiltration, or backdoors. The file is safe.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD; no malicious behavior detected.</summary>
</security_assessment>

[2/4] Reviewing .SRCINFO, brave-origin-beta-bin.sh...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD; no malicious behavior detected.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a `.SRCINFO` metadata file for the `brave-origin-beta-bin` AUR package. It contains only package metadata: names, versions, descriptions, dependencies, license, architecture declarations, upstream download URLs, and SHA-512 checksums. There is no executable code, shell syntax, installer logic, or post-install script present in this file.

The download sources point to the official Brave GitHub releases for the `v1.97.45` release, and both the x86_64 and aarch64 `.deb` binaries have pinned SHA-512 checksums. The helper script `brave-origin-beta-bin.sh` also has a checksum. Everything here is consistent with normal AUR packaging practice. There is no evidence of obfuscation, data exfiltration, unexpected network behavior, or execution of attacker-controlled code.
</details>
<evidence>
</evidence>
<summary>
Metadata-only .SRCINFO file with official upstream URLs and checksums; no malicious behavior found.</summary>
</security_assessment>

[3/4] Reviewing brave-origin-beta-bin.sh...
+ Reviewed .SRCINFO. Status: SAFE -- Metadata-only .SRCINFO file with official upstream URLs and checksums; no malicious behavior found.
LLM auditresponse for brave-origin-beta-bin.sh:
 <security_assessment>
<decision>SAFE</decision>
<details>
This is a standard Chromium-based browser launcher script, equivalent to the well-known Arch `chromium-browser` wrapper. It performs three routine tasks: it computes the XDG config directory, optionally reads a user&#39;s own flags file at `$XDG_CONFIG_HOME/brave-origin-beta-flags.conf` (stripping comment lines with `sed`), and then `exec`s the application binary installed at `/opt/brave.com/brave-origin/brave-origin`.

There is no evidence of supply-chain compromise. The script makes no network requests, downloads nothing, executes no `curl`/`wget`, and uses no `eval`, `base64`, hex/octal encoding, or other obfuscation. The `$(cat ... | sed ...)` pipeline reads only the user&#39;s own configuration file and the resulting value is passed as an argument; the file contents are never evaluated as shell code, so shell metacharacters in the flags file cannot cause command injection. The `CHROME_USER_DATA_DIR` assignment is a normal per-user data-dir override, and the final `exec` runs a fixed absolute path.

The only minor observations are hygiene/quality items: the flags file path is referenced without quotes when tested with `-f` (harmless in practice), flags are passed as a single quoted argument rather than being word-split, and the flags file is trusted from the user&#39;s own home directory. These are functional or local-threat-model nuances common to this genre of wrapper script, not malicious behavior. The script is consistent with ordinary packaging practices and does not exhibit any red flags.
</details>
<evidence>
</evidence>
<summary>Standard browser launcher wrapper; no malware, network, or obfuscation found.</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed brave-origin-beta-bin.sh. Status: SAFE -- Standard browser launcher wrapper; no malware, network, or obfuscation found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 16,553
  Completion Tokens: 6,324
  Total Tokens: 22,877
  Total Cost: $0.001431
  Execution Time: 156.76 seconds

Final Status: SAFE


No issues found.
