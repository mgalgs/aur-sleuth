---
package: wayhud-bin
pkgver: 0.1.1
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 10310
completion_tokens: 5403
total_tokens: 15713
cost: 0.000591248
execution_time: 38.41
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-03T15:16:14Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata, no malicious content.
  - file: upstream.sh
    status: safe
    summary: Standard update helper, no malicious code.
  - file: PKGBUILD
    status: safe
    summary: Standard binary package with pinned checksum.
---

Materializing wayhud-bin from local mirror...
Materialized wayhud-bin
Analyzing wayhud-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The top-level scope of this PKGBUILD contains only standard variable assignments (pkgname, pkgver, url, source_x86_64, sha256sums_x86_64, etc.) and a function definition for `package()`. There are no command substitutions, backtick executions, eval statements, or any other shell constructs that would execute during `makepkg --printsrcinfo`. The source URL points to the project's own GitHub releases page, and the checksum is a valid pinned SHA256 hash. No malicious behavior is present in the parse-time scope.
</details>
<evidence></evidence>
<summary>PKGBUILD is clean and safe.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- PKGBUILD is clean and safe.
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, PKGBUILD...
[0/3] Reviewing .SRCINFO, PKGBUILD, upstream.sh...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard AUR `.SRCINFO` metadata file for the `wayhud-bin` package. It contains only declarative fields: description, version, upstream URL, architecture, dependencies, provides/conflicts, options, and a single source download from the project's own GitHub releases page with a pinned SHA-256 checksum. No executable code, scripts, obfuscation, suspicious network references, or unexpected system operations are present. The source URL points to the project's own releases on GitHub, which is the expected behavior for a binary package. The checksum is provided and not set to `SKIP`, ensuring integrity of the downloaded artifact. There is no evidence of malicious or unsafe behavior.
</details>
<evidence></evidence>
<summary>Standard AUR metadata, no malicious content.</summary>
</security_assessment>

[1/3] Reviewing PKGBUILD, upstream.sh...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata, no malicious content.
LLM auditresponse for upstream.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This script is a standard AUR maintainer helper for updating the `wayhud-bin` PKGBUILD to the latest GitHub release. It fetches release metadata from the project's own API, downloads the corresponding binary tarball, computes a SHA256 checksum, and updates version/source/checksum fields in the PKGBUILD. All network requests go to GitHub (api.github.com and github.com) – the project's official upstream. There is no obfuscation, no unexpected host, no execution of downloaded code beyond the intended workflow, and no exfiltration of data. The script behaves exactly as expected for an automated version bump and checksum update helper.
</details>
<evidence></evidence>
<summary>Standard update helper, no malicious code.</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed upstream.sh. Status: SAFE -- Standard update helper, no malicious code.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a straightforward binary package for `wayhud`, a Wayland HUD tool. It downloads a tarball from the project's own GitHub releases page with a pinned SHA256 checksum. The `package()` function performs standard installation of the binary, man page, documentation, and license file. There are no suspicious network requests, obfuscated code, dangerous commands, or any deviation from routine packaging practices. The checksum is pinned, not skipped, so the source integrity is verifiable. No evidence of supply-chain attack or malicious behavior.
</details>
<evidence></evidence>
<summary>Standard binary package with pinned checksum.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard binary package with pinned checksum.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 10,310
  Completion Tokens: 5,403
  Total Tokens: 15,713
  Total Cost: $0.000591
  Execution Time: 38.41 seconds

Final Status: SAFE


No issues found.
