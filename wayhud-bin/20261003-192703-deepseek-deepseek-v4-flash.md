---
package: wayhud-bin
pkgver: 0.1.2
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 10251
completion_tokens: 2210
total_tokens: 12461
cost: 0.000410788
execution_time: 158.88
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-03T19:27:02Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Static metadata file, no malicious content.
  - file: upstream.sh
    status: safe
    summary: Standard AUR update helper; no malicious behavior detected.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR binary package with pinned checksum, no malice detected.
---

Materializing wayhud-bin from local mirror...
Materialized wayhud-bin
Analyzing wayhud-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains no top-level code that executes commands during sourcing. All variable assignments, source definitions, and checksums are static. The `package()` function, which contains file installation logic, is not executed during `makepkg --printsrcinfo`. There are no command substitutions, backticks, `eval`, or other dynamic execution in the global scope. The source URL points to the official GitHub releases page, and checksums are provided. No security concerns for this narrow gate.
</details>
<evidence></evidence>
<summary>No dangerous top-level execution during sourcing.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous top-level execution during sourcing.
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, PKGBUILD...
[0/3] Reviewing .SRCINFO, PKGBUILD, upstream.sh...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This .SRCINFO file is simply a metadata descriptor for the AUR package wayhud-bin. It contains no executable code, no obfuscated commands, and no network requests beyond declaring a source tarball URL from the project&#x27;s own GitHub releases page. The checksum is pinned (not SKIP), and all dependencies are standard Wayland-related libraries. There is no evidence of malicious or dangerous behavior.
</details>
<evidence></evidence>
<summary>Static metadata file, no malicious content.</summary>
</security_assessment>

[1/3] Reviewing PKGBUILD, upstream.sh...
+ Reviewed .SRCINFO. Status: SAFE -- Static metadata file, no malicious content.
LLM auditresponse for upstream.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This script is a standard AUR maintainer helper for the `wayhud-bin` package. It queries the GitHub API to find the latest release version, downloads the corresponding binary tarball from the official upstream repository (`xifan2333/wayhud`), computes its SHA256 checksum, and updates the PKGBUILD with the new version, URL, and checksum. All network requests are to the project&#39;s own GitHub repository (api.github.com and github.com). No code from the downloaded tarball is executed; the script only modifies the PKGBUILD file. There is no obfuscation, no use of dangerous commands (`eval`, `base64`, `curl|bash`), no exfiltration of local data, and no changes to system files outside the package&#39;s own directory. The behavior is entirely consistent with normal AUR packaging practices.
</details>
<evidence>
</evidence>
<summary>
Standard AUR update helper; no malicious behavior detected.
</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed upstream.sh. Status: SAFE -- Standard AUR update helper; no malicious behavior detected.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a standard AUR binary package that downloads a prebuilt release tarball from the project's own GitHub releases page. The checksum is pinned and validated. There is no evidence of malicious code injection, obfuscated operations, or unexpected network activity. The only noteworthy item is the use of setuid permission (`4755`) on the installed binary, which allows the binary to run with elevated privileges. While this is a potential security concern (privilege escalation if the binary has vulnerabilities), it is not inherently malicious; it may be required for the application's intended functionality (e.g., accessing Wayland compositor overlays or setting real-time scheduling). The package itself does not contain any signs of a supply-chain attack, such as downloading code from untrusted sources, exfiltrating data, or tampering with system files beyond its own installation paths.
</details>
<evidence></evidence>
<summary>Standard AUR binary package with pinned checksum, no malice detected.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR binary package with pinned checksum, no malice detected.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 10,251
  Completion Tokens: 2,210
  Total Tokens: 12,461
  Total Cost: $0.000411
  Execution Time: 158.88 seconds

Final Status: SAFE


No issues found.
