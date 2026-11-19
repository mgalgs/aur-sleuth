---
package: claude-mem
pkgver: 15.9.0
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 11650
completion_tokens: 1880
total_tokens: 13530
cost: 0.001402310
execution_time: 20.55
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-11-04T20:18:32Z
file_verdicts:
  - file: LICENSE
    status: safe
    summary: Standard MIT license file, no security concerns.
  - file: .SRCINFO
    status: safe
    summary: Standard package metadata file, no malicious content.
  - file: claude-mem-worker.service
    status: safe
    summary: Standard service definition, no malicious content.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD with no malicious indicators.
---

Materializing claude-mem from local mirror...
Materialized claude-mem
Analyzing claude-mem AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The top-level scope of this PKGBUILD contains only static variable assignments (pkgname, pkgver, pkgrel, pkgdesc, arch, url, license, depends, makedepends, source, noextract, sha256sums) and a single function definition for `package()`. There are no command substitutions, backticks, `eval`, `source`, or any other code execution constructs in the global scope. The `package()` function is not executed during `makepkg --printsrcinfo` — only its definition is parsed. Therefore, sourcing this PKGBUILD to print metadata is safe.
</details>
<evidence></evidence>
<summary>No top-level code execution found; safe to parse.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No top-level code execution found; safe to parse.
Reviewing the 4 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/4] Reviewing PKGBUILD...
[0/4] Reviewing PKGBUILD, LICENSE...
[0/4] Reviewing PKGBUILD, LICENSE, .SRCINFO...
LLM auditresponse for LICENSE:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard MIT License text, containing only legal boilerplate and copyright information. There is no executable code, no network operations, no obfuscation, and no system-level commands. No security issues are present.
</details>
<evidence></evidence>
<summary>Standard MIT license file, no security concerns.</summary>
</security_assessment>

[1/4] Reviewing PKGBUILD, .SRCINFO...
+ Reviewed LICENSE. Status: SAFE -- Standard MIT license file, no security concerns.
[1/4] Reviewing PKGBUILD, .SRCINFO, claude-mem-worker.service...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The .SRCINFO file is a standard package metadata file for an AUR package. It defines the package name, version, description, upstream URL, dependencies, and sources with pinned SHA-256 checksums. There is no executable code, no obfuscation, no suspicious network requests, and no evidence of malicious behavior. The sources are fetched from the official npm registry and a local service file, both with verified checksums. This file follows normal AUR packaging practices and contains no injected malicious content.
</details>
<evidence></evidence>
<summary>Standard package metadata file, no malicious content.</summary>
</security_assessment>

[2/4] Reviewing PKGBUILD, claude-mem-worker.service...
+ Reviewed .SRCINFO. Status: SAFE -- Standard package metadata file, no malicious content.
LLM auditresponse for claude-mem-worker.service:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard systemd service unit file for the `claude-mem` package. It runs the upstream application's worker script using `bun`, sets a `PATH` environment variable (including the user's local bin directory and system paths), and configures restart behavior. There are no signs of malicious activity: no network requests, no obfuscated code, no unusual file operations, and no commands that could exfiltrate data or execute untrusted code. The service follows normal packaging practices for AUR packages.
</details>
<evidence></evidence>
<summary>Standard service definition, no malicious content.</summary>
</security_assessment>

[3/4] Reviewing PKGBUILD...
+ Reviewed claude-mem-worker.service. Status: SAFE -- Standard service definition, no malicious content.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard AUR packaging practices for an npm-based package. The source is fetched from the official npm registry with a pinned sha256 checksum, and the systemd service file also has a pinned checksum. The `package()` function performs a standard `npm install` from the local verified tarball, followed by routine cleanup (removing build-dir references, fixing ownership) and installation of the service file and license. No suspicious network requests, obfuscated code, or unusual system modifications are present. The use of `npm install` may trigger upstream lifecycle scripts, but that is inherent to npm packaging and not an indication of supply-chain injection in the PKGBUILD itself.
</details>
<evidence></evidence>
<summary>Standard AUR PKGBUILD with no malicious indicators.</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD with no malicious indicators.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 11,650
  Completion Tokens: 1,880
  Total Tokens: 13,530
  Total Cost: $0.001402
  Execution Time: 20.55 seconds

Final Status: SAFE


No issues found.
