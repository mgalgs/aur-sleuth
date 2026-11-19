---
package: brave-origin-nightly-bin
pkgver: 1.101.8
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 16630
completion_tokens: 7817
total_tokens: 24447
cost: 0.002936024
execution_time: 65.16
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-30T15:10:59Z
file_verdicts:
  - file: MPL2
    status: safe
    summary: File is standard MPL-2.0 license text; no security issues found.
  - file: .SRCINFO
    status: safe
    summary: Standard .SRCINFO with pinned checksums from official Brave releases; no malicious content detected.
  - file: brave-origin-nightly-bin.sh
    status: safe
    summary: Standard browser wrapper script; no malicious behavior detected.
  - file: PKGBUILD
    status: safe
    summary: Standard pinned-version package with official sources and checksums; no malicious behavior found.
---

Materializing brave-origin-nightly-bin from local mirror...
Materialized brave-origin-nightly-bin
Analyzing brave-origin-nightly-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The top-level (global) scope of this PKGBUILD consists entirely of standard variable assignments (`pkgname`, `pkgver`, `source`, `sha512sums`, etc.) and function definitions (`prepare()`, `package()`). No command substitutions, backticks, `eval`, network calls (`curl`, `wget`), or any other executable statements exist outside of the function bodies. Therefore, sourcing the PKGBUILD for `makepkg --printsrcinfo` will only set variables and define functions, posing no risk of executing malicious code.
</details>
<evidence></evidence>
<summary>No executable code in global scope.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No executable code in global scope.
Reviewing the 4 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/4] Reviewing .SRCINFO...
[0/4] Reviewing .SRCINFO, MPL2...
[0/4] Reviewing .SRCINFO, MPL2, PKGBUILD...
LLM auditresponse for MPL2:
<security_assessment>
<decision>SAFE</decision>
<details>
The provided file is the verbatim text of the Mozilla Public License Version 2.0. It contains no executable code, no network requests, no file operations, no obfuscated content, and no packaging logic. It is a standard software license file commonly included in packages and source distributions. There is no evidence of malicious or injected behavior.
</details>
<evidence>
</evidence>
<summary>
File is standard MPL-2.0 license text; no security issues found.
</summary>
</security_assessment>

[0/4] Reviewing .SRCINFO, MPL2, PKGBUILD, brave-origin-nightly-bin.sh...
[1/4] Reviewing .SRCINFO, PKGBUILD, brave-origin-nightly-bin.sh...
+ Reviewed MPL2. Status: SAFE -- File is standard MPL-2.0 license text; no security issues found.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This .SRCINFO file describes a standard binary AUR package for the Brave Origin Nightly browser. It declares metadata only (pkgver, arch, dependencies, sources, checksums) and contains no executable code. All upstream sources are downloaded from the official Brave project GitHub releases page (`https://github.com/brave/brave-browser/releases`), which is the expected and legitimate origin for this package. Both the x86_64 and aarch64 `.deb` bundles, as well as the local helper script `brave-origin-nightly-bin.sh`, have pinned SHA-512 checksums, which is good supply-chain hygiene — there are no `SKIP` hashes or unpinned sources here.

There is no evidence of obfuscation, suspicious network destinations, encoded payloads, or file operations beyond what normal packaging requires. The dependencies and optdepends are all standard runtime libraries for a Chromium-based browser. This file is consistent with ordinary, trustworthy AUR packaging practices.
</details>
<evidence>
</evidence>
<summary>
Standard .SRCINFO with pinned checksums from official Brave releases; no malicious content detected.
</summary>
</security_assessment>

[2/4] Reviewing PKGBUILD, brave-origin-nightly-bin.sh...
+ Reviewed .SRCINFO. Status: SAFE -- Standard .SRCINFO with pinned checksums from official Brave releases; no malicious content detected.
LLM auditresponse for brave-origin-nightly-bin.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard launcher wrapper for a prebuilt browser package. It reads an optional user flags file from `$XDG_CONFIG_HOME`, strips comments via `sed`, sets a default Chromium user data directory if none is provided, and then `exec`s the installed browser binary with the supplied flags and arguments.

There is no suspicious network activity, no encoded or obfuscated commands, no download-and-execute behavior, and no access to sensitive files. The script does not modify anything outside the application's own configuration paths. The unquoted `cat $USER_FLAGS_FILE` is a minor robustness concern for unusual config paths, but it is not malicious and is consistent with common packaging wrappers.
</details>
<evidence>
</evidence>
<summary>
Standard browser wrapper script; no malicious behavior detected.</summary>
</security_assessment>

[3/4] Reviewing PKGBUILD...
+ Reviewed brave-origin-nightly-bin.sh. Status: SAFE -- Standard browser wrapper script; no malicious behavior detected.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD downloads a pinned-version `.deb` from Brave's official GitHub releases over HTTPS and verifies it with fixed SHA-512 checksums for both architectures. The local wrapper script also has a checksum. No `eval`, `base64`, `curl|bash`, or unexpected network operations appear anywhere in the file.

Prepare and package are standard packaging steps: the `.deb` payload is extracted, an upstream cron directory is removed from inside the application directory, files are copied into `$pkgdir`, a launcher wrapper is installed, and the upstream `chrome-sandbox` helper is given setuid mode 4755. The setuid bit on Chromium's sandbox helper is a normal requirement for Chromium-based browsers and applies only to the packaged binary; it is not an injected backdoor or data exfiltration. No files outside the package's own install scope are modified.
</details>
<evidence>
</evidence>
<summary>
Standard pinned-version package with official sources and checksums; no malicious behavior found.
</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard pinned-version package with official sources and checksums; no malicious behavior found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 16,630
  Completion Tokens: 7,817
  Total Tokens: 24,447
  Total Cost: $0.002936
  Execution Time: 65.16 seconds

Final Status: SAFE


No issues found.
