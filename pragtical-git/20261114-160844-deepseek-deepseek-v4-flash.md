---
package: pragtical-git
pkgver: 3.14.0.1792554969
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 3f8f339d2184315a824bf6b8e30068212deac13a
prompt_tokens: 8376
completion_tokens: 2717
total_tokens: 11093
cost: 0.00124290
execution_time: 14.33
files_reviewed: 2
files_skipped: 0
maintainer_files: 2
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-11-14T16:08:44Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata, no security issues.
  - file: PKGBUILD
    status: safe
    summary: Safe – standard VCS PKGBUILD for pragtical.
---

Materializing pragtical-git from local mirror...
Materialized pragtical-git
Analyzing pragtical-git AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
The PKGBUILD contains only variable assignments, array definitions, and function definitions at the top level. No command substitution, backticks, or dangerous commands (e.g., eval, curl, wget) are present in the global scope. The `provides` and `conflicts` lines use simple variable expansion (`$_pkgname`), which is safe standard practice. Therefore, running `makepkg --printsrcinfo` will source the PKGBUILD and define variables without executing any malicious code.

```xml
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only variable assignments, array definitions, and function definitions at the top level. No command substitution, backticks, or dangerous commands (e.g., eval, curl, wget) are present in the global scope. The `provides` and `conflicts` lines use simple variable expansion (`$_pkgname`), which is safe standard practice. Therefore, running `makepkg --printsrcinfo` will source the PKGBUILD and define variables without executing any malicious code.
</details>
<evidence>
</evidence>
<summary>No top-level malicious code found.</summary>
</security_assessment>
```

+ Initial PKGBUILD audit complete -- No top-level malicious code found.
Reviewing the 2 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/2] Reviewing .SRCINFO...
[0/2] Reviewing .SRCINFO, PKGBUILD...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The .SRCINFO file is a standard Arch Linux VCS package metadata file. It declares the package name, description, dependencies, and a source URL pointing to the official upstream GitHub repository. There is no executable code, no obfuscated content, no suspicious network destinations, and no commands that could perform malicious actions. The `sha256sums = SKIP` is expected for VCS packages and is not a security concern. Everything in this file conforms to normal AUR packaging practices.
</details>
<evidence></evidence>
<summary>Standard AUR metadata, no security issues.</summary>
</security_assessment>

[1/2] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata, no security issues.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a standard VCS (`-git`) package for the pragtical editor. It fetches the source directly from the project's upstream GitHub repository via `source=(&quot;git+https://github.com/pragtical/pragtical&quot;)` and builds with meson. No external network requests, obfuscated code, or suspicious commands are present. The `sha256sums=(&apos;SKIP&apos;)` is expected for VCS sources and not a security concern. The build process runs a Lua script (`pgo.lua`) only from the upstream source for profile‑guided optimization; this is normal upstream functionality. There is no evidence of data exfiltration, backdoors, or injection of attacker‑controlled code.
</details>
<evidence></evidence>
<summary>Safe – standard VCS PKGBUILD for pragtical.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Safe – standard VCS PKGBUILD for pragtical.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 8,376
  Completion Tokens: 2,717
  Total Tokens: 11,093
  Total Cost: $0.001243
  Execution Time: 14.33 seconds

Final Status: SAFE


No issues found.
