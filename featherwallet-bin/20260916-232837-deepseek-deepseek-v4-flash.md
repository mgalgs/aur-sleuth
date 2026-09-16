---
package: featherwallet-bin
pkgver: 2.8.1
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 171a316e053e9c4b28731ccb1aa63b1168550d3a
prompt_tokens: 7799
completion_tokens: 1523
total_tokens: 9322
cost: 0.0008274735
execution_time: 70.05
files_reviewed: 2
files_skipped: 0
maintainer_files: 2
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-16T23:28:36Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard AUR .SRCINFO file, no security issues.
  - file: PKGBUILD
    status: safe
    summary: Standard binary PKGBUILD with pinned checksums and no suspicious behavior.
---

Materializing featherwallet-bin from local mirror...
Materialized featherwallet-bin
Analyzing featherwallet-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
Running `makepkg --printsrcinfo` only sources the top-level scope of this PKGBUILD. All top-level statements examined are standard variable declarations: `pkgname`, `pkgver`, `source`, `sha512sums`, dependency metadata, and related packaging fields. There is no top-level command substitution, `eval`, `curl`, `wget`, obfuscated encoding, or any code that would download, execute, or exfiltrate data during sourcing.

The `package()` function contains file installation commands, but this function is not executed by `makepkg --printsrcinfo`, so it is out of scope for this gate. The presence of `sha512sums` and the upstream source URLs is expected packaging practice; a `SKIP` or missing checksum would also not be grounds to block this step because no sources are downloaded or verified while running `makepkg --printsrcinfo`.

No genuinely malicious behavior is present at the top level. The command can be run safely.
</details>
<evidence></evidence>
<summary>Sourcing this PKGBUILD has only benign top-level variable assignments; no code executes during printsrcinfo.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Sourcing this PKGBUILD has only benign top-level variable assignments; no code executes during printsrcinfo.
Reviewing the 2 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/2] Reviewing .SRCINFO...
[0/2] Reviewing .SRCINFO, PKGBUILD...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This .SRCINFO file is a standard metadata file for an AUR binary package. It defines the package name, version, description, upstream URL, architecture, license, and provides/conflicts. The source array points to the official Feather wallet release (https://featherwallet.org/files/releases/linux/feather-2.8.1-linux.zip) and the upstream LICENSE file on GitHub. Both sources have sha512sums specified, which are standard for verifying integrity. There is no obfuscation, no dangerous commands (no eval, curl, wget, or bash executions), and no unexpected file operations. The file only contains declarative metadata. No security issues or supply-chain attack indicators are present.
</details>
<evidence>
</evidence>
<summary>Standard AUR .SRCINFO file, no security issues.</summary>
</security_assessment>

[1/2] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR .SRCINFO file, no security issues.
LLM auditresponse for PKGBUILD:
 <security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard packaging practices for a binary release. It downloads the application&apos;s official release zip and upstream LICENSE file from expected sources, verifies both with pinned SHA-512 checksums, and installs only the license file and the main binary into `$pkgdir`. There are no network calls during build or package, no use of `eval`, `curl | bash`, base64, obfuscation, or unexpected filesystem modifications.

The package uses the project&apos;s own domain and the upstream GitHub repository as sources, which is normal. The LICENSE checksum is pinned and the binary release checksum is pinned, so this is reproducible and not a supply-chain risk beyond trusting the upstream project itself. No evidence of malicious or injected code was found.
</details>
<evidence>
</evidence>
<summary>
Standard binary PKGBUILD with pinned checksums and no suspicious behavior.
</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard binary PKGBUILD with pinned checksums and no suspicious behavior.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 7,799
  Completion Tokens: 1,523
  Total Tokens: 9,322
  Total Cost: $0.000827
  Execution Time: 70.05 seconds

Final Status: SAFE


No issues found.
