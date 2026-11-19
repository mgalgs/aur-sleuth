---
package: brave-origin-nightly-bin
pkgver: 1.101.3
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 16645
completion_tokens: 8353
total_tokens: 24998
cost: 0.003034941
execution_time: 63.74
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-29T15:11:52Z
file_verdicts:
  - file: MPL2
    status: safe
    summary: License text only; no executable or malicious content detected.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata with pinned upstream sources and checksums; no malicious behavior found.
  - file: brave-origin-nightly-bin.sh
    status: safe
    summary: Standard browser launcher wrapper; reads local flags and executes the packaged binary. No malicious behavior found.
  - file: PKGBUILD
    status: safe
    summary: Standard pinned prebuilt browser package; no malicious behavior found.
---

Materializing brave-origin-nightly-bin from local mirror...
Materialized brave-origin-nightly-bin
Analyzing brave-origin-nightly-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The global scope of this PKGBUILD contains only standard variable definitions, package metadata arrays, and function definitions (`prepare()`, `package()`). There are no top-level command substitutions (`$()` or backticks), `eval` calls, network fetches, or data exfiltration attempts. The `source` array is a standard makepkg variable assignment (containing the wrapper script name `$pkgname.sh`) and does not trigger execution of any external files during the sourcing of the PKGBUILD. All `sha512sums` are fully specified. No genuinely malicious code is present in the global scope, so running `makepkg --printsrcinfo` to parse metadata is safe.
</details>
<evidence></evidence>
<summary>PKGBUILD has no malicious global scope code.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- PKGBUILD has no malicious global scope code.
Reviewing the 4 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/4] Reviewing MPL2...
[0/4] Reviewing MPL2, PKGBUILD...
[0/4] Reviewing MPL2, PKGBUILD, .SRCINFO...
LLM auditresponse for MPL2:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is the verbatim Mozilla Public License Version 2.0 text. It contains only license terms, definitions, and legal disclaimers. There is no executable code, no network requests, no file operations, no obfuscated content, and nothing that deviates from standard packaging practice. A license file is a normal and expected component of a package.
</details>
<evidence>
</evidence>
<summary>
License text only; no executable or malicious content detected.</summary>
</security_assessment>

[0/4] Reviewing MPL2, PKGBUILD, .SRCINFO, brave-origin-nightly-bin.sh...
[1/4] Reviewing PKGBUILD, .SRCINFO, brave-origin-nightly-bin.sh...
+ Reviewed MPL2. Status: SAFE -- License text only; no executable or malicious content detected.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This `.SRCINFO` file is package metadata for `brave-origin-nightly-bin`. It declares the package version, dependencies, architecture-specific source URLs, and SHA-512 checksums. The sources point to the official Brave GitHub releases page (`github.com/brave/brave-browser/releases`) for the corresponding version, which is an expected upstream source. Both the x86_64 and aarch64 `.deb` archives have pinned SHA-512 checksums, and the local helper script also has a checksum.

There is no evidence of malicious behavior in this file: no suspicious network endpoints, no encoded or obfuscated commands, no unexpected file operations, and no deviation from standard AUR packaging metadata. The only file whose contents are not shown here is `brave-origin-nightly-bin.sh`; based on this metadata alone, its checksum is pinned and no red flags are present.
</details>
<evidence>
</evidence>
<summary>
Standard AUR metadata with pinned upstream sources and checksums; no malicious behavior found.
</summary>
</security_assessment>

[2/4] Reviewing PKGBUILD, brave-origin-nightly-bin.sh...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata with pinned upstream sources and checksums; no malicious behavior found.
LLM auditresponse for brave-origin-nightly-bin.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard application launcher wrapper for a Chromium-based browser. It defines a config directory, reads an optional user flags file from `$XDG_CONFIG_HOME`, strips comments, and launches the installed binary at `/opt/brave.com/brave-origin-nightly/brave-origin` while passing user flags, environment flags, and command-line arguments.

There is no suspicious network activity, no downloading or execution of remote content, no obfuscated or encoded commands, and no modification of files outside the application's own configuration scope. Reading a user-controlled flags file and passing it to the browser is expected behavior. The use of `cat` and `sed` is benign. The script does not contain any injected malicious behavior.
</details>
<evidence>
</evidence>
<summary>
Standard browser launcher wrapper; reads local flags and executes the packaged binary. No malicious behavior found.
</summary>
</security_assessment>

[3/4] Reviewing PKGBUILD...
+ Reviewed brave-origin-nightly-bin.sh. Status: SAFE -- Standard browser launcher wrapper; reads local flags and executes the packaged binary. No malicious behavior found.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD packages a prebuilt Brave Origin Nightly release from the official Brave GitHub repository. The sources are version-pinned, the upstream `.deb` archives have per-architecture SHA-512 checksums, and the launcher script has its own checksum. No obfuscated code, encoded payloads, unexpected network calls, or dynamically fetched content appears in the file.

The `prepare()` and `package()` functions perform standard extraction and installation steps. The `rm -rf` targets only the package's own extracted tree, specifically an upstream `cron` directory. The `chmod 4755` on `chrome-sandbox` is the standard setuid sandbox setup used by Chromium-based browser packages; it is security-sensitive but expected for this type of application. No evidence of exfiltration, backdoors, or tampering with files outside the package's install scope was found.
</details>
<evidence></evidence>
<summary>Standard pinned prebuilt browser package; no malicious behavior found.</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard pinned prebuilt browser package; no malicious behavior found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 16,645
  Completion Tokens: 8,353
  Total Tokens: 24,998
  Total Cost: $0.003035
  Execution Time: 63.74 seconds

Final Status: SAFE


No issues found.
