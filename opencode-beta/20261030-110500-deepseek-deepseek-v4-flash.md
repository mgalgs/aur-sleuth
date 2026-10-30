---
package: opencode-beta
pkgver: 2.2.3
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 12521
completion_tokens: 9401
total_tokens: 21922
cost: 0.002850393
execution_time: 47.23
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-30T11:05:00Z
file_verdicts:
  - file: LICENSE
    status: safe
    summary: Standard MIT license file, no security issues.
  - file: opencode2
    status: safe
    summary: Standard wrapper script, no security issues.
  - file: .SRCINFO
    status: safe
    summary: Standard metadata file with pinned sources and checksums.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD with pinned checksums and legitimate sources.
---

Materializing opencode-beta from local mirror...
Materialized opencode-beta
Analyzing opencode-beta AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The top-level (global) scope of this PKGBUILD consists solely of variable assignments (strings, arrays) and the definition of the `package()` function. There are no command substitutions (`$(...)` or backticks), arithmetic evaluations, invocations of `eval`, or calls to external programs (`curl`, `wget`, etc.) in the global scope. The source arrays define standard URLs pointing to the official npm registry, which aligns with the package's stated upstream origin at GitHub. Since `makepkg --printsrcinfo` only executes the global scope, and this scope contains no executable statements beyond variable definitions and function declarations, running this command is safe. Code inside `package()` is explicitly out of scope for this specific gate and will be audited separately.
</details>
<evidence>
</evidence>
<summary>
Only variable declarations in global scope.
</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Only variable declarations in global scope.
Reviewing the 4 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/4] Reviewing .SRCINFO...
[0/4] Reviewing .SRCINFO, LICENSE...
[0/4] Reviewing .SRCINFO, LICENSE, PKGBUILD...
LLM auditresponse for LICENSE:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard MIT License text. It contains no executable code, no network requests, no file operations, and no instructions of any kind. There is no potential for malicious behavior. It is a straightforward license file commonly included in open-source projects.
</details>
<evidence>
</evidence>
<summary>Standard MIT license file, no security issues.</summary>
</security_assessment>

[0/4] Reviewing .SRCINFO, LICENSE, PKGBUILD, opencode2...
[1/4] Reviewing .SRCINFO, PKGBUILD, opencode2...
+ Reviewed LICENSE. Status: SAFE -- Standard MIT license file, no security issues.
LLM auditresponse for opencode2:
<security_assessment>
<decision>SAFE</decision>
<details>
**Analysis of `opencode2`:** This is a minimal shell script that acts as a wrapper, forwarding all arguments to the `opencode` binary located in the same directory. The script contains no network requests, downloads, obfuscated code, or system modifications. It is a standard packaging pattern for launchers or symlinks. No evidence of malicious behavior was found.
</details>
<evidence>
</evidence>
<summary>Standard wrapper script, no security issues.</summary>
</security_assessment>

[2/4] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed opencode2. Status: SAFE -- Standard wrapper script, no security issues.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The `.SRCINFO` file is metadata for an AUR package. It does not contain any executable code, obfuscated or otherwise. All source URLs point to the legitimate npmjs.org registry (`registry.npmjs.org`) under the `@opencode` organization, which is consistent with the upstream URL (`github.com/anomalyco/opencode`). Specific, non-SKIP SHA-256 checksums are provided for every source file, which aligns with good security practices. There is no evidence of data exfiltration, malicious downloads, system modifications, or any behavior that deviates from standard AUR packaging metadata.

The `conflicts` directive overlapping with the `provides` directive is an unusual packaging quirk (likely a logic error in the metadata generation) but not a security vulnerability. It does not represent a genuine threat.
</details>
<evidence>
</evidence>
<summary>Standard metadata file with pinned sources and checksums.</summary>
</security_assessment>

[3/4] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard metadata file with pinned sources and checksums.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard practices for distributing prebuilt binaries from an upstream release. The source URLs point to the official npm registry for the @opencode/cli package, and the sha256sums are pinned for integrity verification. The package() function only installs the extracted binaries and license file into the package directory. There is no obfuscated code, no use of dangerous commands (eval, curl, wget, base64), no unexpected network requests, and no injection of malicious payloads. The file is consistent with a legitimate AUR package.
</details>
<evidence>
</evidence>
<summary>
Standard PKGBUILD with pinned checksums and legitimate sources.</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD with pinned checksums and legitimate sources.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 12,521
  Completion Tokens: 9,401
  Total Tokens: 21,922
  Total Cost: $0.002850
  Execution Time: 47.23 seconds

Final Status: SAFE


No issues found.
