---
package: ledger-live-bin
pkgver: 4.24.0
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 10715
completion_tokens: 2717
total_tokens: 13432
cost: 0.001469559
execution_time: 69.66
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-15T15:10:20Z
file_verdicts:
  - file: .nvchecker.toml
    status: safe
    summary: Standard nvchecker config for version tracking.
  - file: .SRCINFO
    status: safe
    summary: Safe AUR metadata with verified upstream downloads.
  - file: PKGBUILD
    status: safe
    summary: Standard binary repackaging of official Ledger AppImage; no malicious behavior found.
---

Materializing ledger-live-bin from local mirror...
Materialized ledger-live-bin
Analyzing ledger-live-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only static variable assignments and array definitions at the top level. There are no command substitutions, function calls, or executable code outside of function bodies. The `source` array defines URLs for the AppImage and license file, but these are not downloaded or executed during `makepkg --printsrcinfo`. The `prepare()`, `build()`, and `package()` functions contain AppImage extraction and file manipulation, but they are not sourced or executed by this command. Therefore, running `makepkg --printsrcinfo` on this PKGBUILD poses no risk of executing malicious code.
</details>
<evidence></evidence>
<summary>Top-level code is static and safe.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Top-level code is static and safe.
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, .nvchecker.toml...
[0/3] Reviewing .SRCINFO, .nvchecker.toml, PKGBUILD...
LLM auditresponse for .nvchecker.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard configuration file for `nvchecker`, a tool used to monitor for new releases of software. It defines a regular expression source that fetches a YAML file from the official Ledger Live download server (`download.live.ledger.com`) and extracts a version number using the pattern `version: ([0-9]+\.[0-9]+\.[0-9]+)`. There is no executable code, no network requests to unexpected hosts, no obfuscation, and no attempt to exfiltrate data or modify system files. The configuration is ordinary and expected for an AUR package that tracks upstream releases.
</details>
<evidence></evidence>
<summary>Standard nvchecker config for version tracking.</summary>
</security_assessment>

[1/3] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed .nvchecker.toml. Status: SAFE -- Standard nvchecker config for version tracking.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The .SRCINFO file is standard metadata for an AUR package. It declares the package source as an official AppImage from Ledger's own download server (`download.live.ledger.com`) with a pinned version and a matching SHA512 checksum. The second source is the upstream LICENSE file hosted on GitHub under the LedgerHQ organization, also checksummed. No malicious URLs, obfuscated entries, or suspicious commands are present. The dependency `ledger-udev` is appropriate for hardware wallet support. There are no signs of a supply-chain attack or injected malicious behavior.
</details>
<evidence>
</evidence>
<summary>Safe AUR metadata with verified upstream downloads.</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Safe AUR metadata with verified upstream downloads.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD packages the official Ledger Live Desktop AppImage from `download.live.ledger.com`, with the license fetched from the official LedgerHQ GitHub repository. Both sources are pinned to the release version and have committed sha512 checksums. The `prepare()` function extracts the AppImage, edits the desktop entry, and removes `AppRun` and `resources/app-update.yml`, which is normal and expected behavior when repackaging a third-party AppImage to disable its self-update mechanism.

The `package()` function only installs files into `$pkgdir`, creates symlinks and icon entries, and installs the license. There are no suspicious network operations, no encoded or obfuscated commands, no writes outside the package directory, and no evidence of data exfiltration or backdoor behavior. This is a standard binary repackaging PKGBUILD.
</details>
<evidence></evidence>
<summary>Standard binary repackaging of official Ledger AppImage; no malicious behavior found.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard binary repackaging of official Ledger AppImage; no malicious behavior found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 10,715
  Completion Tokens: 2,717
  Total Tokens: 13,432
  Total Cost: $0.001470
  Execution Time: 69.66 seconds

Final Status: SAFE


No issues found.
