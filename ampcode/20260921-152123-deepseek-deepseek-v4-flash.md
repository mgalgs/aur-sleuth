---
package: ampcode
pkgver: 0.0.1789992037_g15a507
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 9825
completion_tokens: 2833
total_tokens: 12658
cost: 0.00085882104
execution_time: 78.16
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-21T15:21:22Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard AUR .gitignore, no security issues.
  - file: .SRCINFO
    status: safe
    summary: Standard .SRCINFO metadata file; no malicious content.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD for official amp binary with pinned checksums; no malicious behavior found.
---

Materializing ampcode from local mirror...
Materialized ampcode
Analyzing ampcode AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only top-level variable assignments, including source arrays with URLs and checksums, and a function definition (`latestver()`). No code is executed at the global scope beyond these standard definitions. The `latestver()` function is not invoked during `makepkg --printsrcinfo`, so there is no risk of downloading or executing anything. The function definition itself does not trigger any dangerous behavior. Therefore, running `makepkg --printsrcinfo` on this PKGBUILD is safe.
</details>
<evidence></evidence>
<summary>No dangerous top-level code during sourcing.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous top-level code during sourcing.
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, .gitignore...
[0/3] Reviewing .SRCINFO, .gitignore, PKGBUILD...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This `.gitignore` file follows a standard pattern used in AUR git repos: it ignores everything by default and then whitelists specific file types that are relevant to the package (PKGBUILD, `.SRCINFO`, install scripts, patches, service files, etc.). There are no suspicious commands, network requests, obfuscated code, or any operations that could be considered malicious. The file is purely a git configuration file and contains no executable or harmful content.
</details>
<evidence></evidence>
<summary>Standard AUR .gitignore, no security issues.</summary>
</security_assessment>

[1/3] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed .gitignore. Status: SAFE -- Standard AUR .gitignore, no security issues.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard AUR .SRCINFO metadata file. It contains no executable code — only declarative fields: package name, version, description, architecture, dependencies, source URLs with SHA256 checksums, and license. The source URLs point to the application’s official domain (static.ampcode.com) over HTTPS, and the checksums are provided and not set to SKIP. There are no signs of obfuscation, network requests to untrusted hosts, file operations, or any other malicious activity. The file simply defines package metadata for the Arch Linux packaging system.
</details>
<evidence>
</evidence>
<summary>Standard .SRCINFO metadata file; no malicious content.</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard .SRCINFO metadata file; no malicious content.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD downloads a prebuilt binary from the project&apos;s own official domain (`https://static.ampcode.com`) over HTTPS and verifies SHA-256 checksums for both supported architectures. No checksums are `SKIP`ped. The `latestver()` function only fetches a version string over HTTPS; it is not invoked automatically in this file and does not execute downloaded code. The `package()` function uses standard `install -Dm755` to place the binary in `${pkgdir}/usr/bin/amp`, which is ordinary packaging behavior. There is no obfuscation, no `eval`/`base64` tricks, no writes outside `$pkgdir`, no post-install hooks, and no data exfiltration. The source provenance is consistent with the package&apos;s own upstream distribution chain. While downloading a prebuilt proprietary binary always carries some supply-chain risk, the pinned checksums and official HTTPS source keep this within normal AUR packaging practice.
</details>
<evidence></evidence>
<summary>Standard AUR PKGBUILD for official amp binary with pinned checksums; no malicious behavior found.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD for official amp binary with pinned checksums; no malicious behavior found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 9,825
  Completion Tokens: 2,833
  Total Tokens: 12,658
  Total Cost: $0.000859
  Execution Time: 78.16 seconds

Final Status: SAFE


No issues found.
