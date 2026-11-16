---
package: brave-origin-nightly-bin
pkgver: 1.102.10
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 3f8f339d2184315a824bf6b8e30068212deac13a
prompt_tokens: 16222
completion_tokens: 1978
total_tokens: 18200
cost: 0.00181602
execution_time: 12.01
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-11-16T16:06:24Z
file_verdicts:
  - file: MPL2
    status: safe
    summary: Standard open-source license text, no security issues.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata, no security concerns.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD with pinned checksums, no malicious content.
  - file: brave-origin-nightly-bin.sh
    status: safe
    summary: Standard browser wrapper, no security issues.
---

Materializing brave-origin-nightly-bin from local mirror...
Materialized brave-origin-nightly-bin
Analyzing brave-origin-nightly-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD's global/top-level scope contains only standard variable definitions (pkgname, pkgver, source arrays with URLs to the upstream GitHub release, sha512sums, etc.). There are no command substitutions, function calls, external command executions, or any other code that would run when the file is sourced by `makepkg --printsrcinfo`. The source URLs point to the official Brave Browser GitHub releases, which is the expected upstream. No dangerous behavior is present in the global scope.</details>
<evidence></evidence>
<summary>No dangerous code in global scope.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous code in global scope.
Reviewing the 4 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/4] Reviewing .SRCINFO...
[0/4] Reviewing .SRCINFO, PKGBUILD...
[0/4] Reviewing .SRCINFO, PKGBUILD, MPL2...
LLM auditresponse for MPL2:
<security_assessment>
<decision>SAFE</decision>
<details>
The file contains the full text of the Mozilla Public License Version 2.0. This is a standard open-source license file commonly distributed with software packages. There is no executable code, no network requests, no obfuscated content, and no instructions that could be interpreted as malicious. It poses no security risk.
</details>
<evidence></evidence>
<summary>Standard open-source license text, no security issues.</summary>
</security_assessment>

[1/4] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed MPL2. Status: SAFE -- Standard open-source license text, no security issues.
[1/4] Reviewing .SRCINFO, PKGBUILD, brave-origin-nightly-bin.sh...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The .SRCINFO file is a standard AUR package metadata file. It contains no executable code, obfuscated content, or suspicious network requests. The source URLs point to the official Brave browser GitHub releases, and checksums are provided. All dependencies and options are normal for a binary package. No evidence of malicious or supply-chain attack behavior is present.
</details>
<evidence>
</evidence>
<summary>Standard AUR metadata, no security concerns.</summary>
</security_assessment>

[2/4] Reviewing PKGBUILD, brave-origin-nightly-bin.sh...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata, no security concerns.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard AUR packaging practices for a binary release of the Brave Origin Nightly browser. All external sources are downloaded from the official Brave GitHub repository over HTTPS and have pinned SHA-512 checksums, ensuring integrity. The only operations in `prepare()` and `package()` are extracting the official `.deb`, removing a cron directory (likely to avoid unwanted background jobs), copying files, and setting the SUID bit on `chrome-sandbox` (a standard requirement for Chromium sandboxing). There is no obfuscated code, no unexpected network requests, no execution of untrusted content, and no exfiltration or backdoor behavior. The file is safe.
</details>
<evidence></evidence>
<summary>Standard AUR PKGBUILD with pinned checksums, no malicious content.</summary>
</security_assessment>

[3/4] Reviewing brave-origin-nightly-bin.sh...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD with pinned checksums, no malicious content.
LLM auditresponse for brave-origin-nightly-bin.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This script is a standard launch wrapper for the Brave Origin Nightly browser. It reads optional user flags from a configuration file, sets a default user data directory, and executes the browser binary from the system installation path. There are no network requests, code execution from untrusted sources, obfuscation, or system modifications beyond normal application startup. All operations are consistent with legitimate packaging practices.
</details>
<evidence>
</evidence>
<summary>Standard browser wrapper, no security issues.</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed brave-origin-nightly-bin.sh. Status: SAFE -- Standard browser wrapper, no security issues.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 16,222
  Completion Tokens: 1,978
  Total Tokens: 18,200
  Total Cost: $0.001816
  Execution Time: 12.01 seconds

Final Status: SAFE


No issues found.
