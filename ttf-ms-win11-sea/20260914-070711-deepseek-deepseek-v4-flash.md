---
package: ttf-ms-win11-sea
pkgbase: ttf-ms-win11
pkgver: 10.0.26200.9445
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 171a316e053e9c4b28731ccb1aa63b1168550d3a
prompt_tokens: 35773
completion_tokens: 2458
total_tokens: 38231
cost: 0.003605289534
execution_time: 125.31
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-14T07:07:11Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: No malicious content; standard AUR metadata file.
  - file: .gitignore
    status: safe
    summary: Standard gitignore file, no security issues.
  - file: PKGBUILD
    status: safe
    summary: Standard local font PKGBUILD with no malicious code.
---

ttf-ms-win11-sea is built from ttf-ms-win11
Materializing ttf-ms-win11-sea from local mirror...
Materialized ttf-ms-win11-sea
Analyzing ttf-ms-win11-sea AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
 <security_assessment>
<decision>SAFE</decision>
<details>
Running `makepkg --printsrcinfo` only sources the top-level scope of this PKGBUILD. The top-level content consists primarily of package metadata, font filename arrays, a `source` array using local `file://` URLs, checksum arrays including `SKIP` values, `DLAGENTS` and other variable assignments, and function definitions for `_package()` and the split package functions.

Nothing in the executed top-level scope performs a network download, command substitution that invokes an external payload, base64/hex decoding, `eval`, or writes to system files. The `DLAGENTS` entry for `file::` only defines `/usr/bin/echo` as the helper for missing local font files; even if it were invoked later, it is not part of `makepkg --printsrcinfo` and would only print a user-facing error message, not execute an untrusted payload.

The `SKIP` checksums and local-file-only sources are not grounds to mark this step unsafe, because no sources are downloaded or verified during `makepkg --printsrcinfo`. Code inside `pkgver()`, `prepare()`, `build()`, and `package()` functions is not executed during this command and is therefore out of scope for this narrow gate.
</details>
<evidence></evidence>
<summary>
The PKGBUILD top-level scope is safe to source for `makepkg --printsrcinfo`. There is no evidence of malicious code that would execute during the metadata-printing step.
</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- The PKGBUILD top-level scope is safe to source for `makepkg --printsrcinfo`. There is no evidence of malicious code that would execute during the metadata-printing step.
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, .gitignore...
[0/3] Reviewing .SRCINFO, .gitignore, PKGBUILD...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This `.SRCINFO` file is a metadata file for the `ttf-ms-win11-sea` AUR package. It declares the package base, provides, conflicts, sources, and checksums. All sources are local `file://` URIs pointing to TrueType font files and a license file. There are no network requests, no executable code, no obfuscated commands, and no system modifications. The single `SKIP` checksum for `license.rtf` is a standard practice and not inherently malicious. No suspicious or dangerous behavior is present.
</details>
<evidence></evidence>
<summary>No malicious content; standard AUR metadata file.</summary>
</security_assessment>

[1/3] Reviewing .gitignore, PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- No malicious content; standard AUR metadata file.
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.gitignore` file for an AUR package. It lists common build artifacts (`src`, `pkg`, `*.pkg.tar*`), editor backups (`*~`), and font-related files (`*.ttf`, `*.ttc`, `*.fon`, `license.rtf`, `desktop.ini`). There is no code, no network requests, no obfuscation, and no system-modifying commands. It is purely a text file for version control hygiene.
</details>
<evidence></evidence>
<summary>Standard gitignore file, no security issues.</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed .gitignore. Status: SAFE -- Standard gitignore file, no security issues.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD installs Microsoft Windows 11 TrueType fonts from locally provided files. All sources use `file://` URIs, meaning no network downloads occur. The `DLAGENTS` override for `file://` only prints an error message if a font is missing—it does not execute any untrusted code. Hardcoded SHA-256 checksums are provided for every font file (license.rtf is `SKIP`, which is acceptable). The build and package functions perform only standard file installation into `/usr/share/fonts/TTF` and `/usr/share/licenses/`. There is no obfuscation, no execution of downloaded content, no data exfiltration, and no deviation from typical AUR font packaging practices. The package is safe.
</details>
<evidence></evidence>
<summary>Standard local font PKGBUILD with no malicious code.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard local font PKGBUILD with no malicious code.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 35,773
  Completion Tokens: 2,458
  Total Tokens: 38,231
  Total Cost: $0.003605
  Execution Time: 125.31 seconds

Final Status: SAFE


No issues found.
