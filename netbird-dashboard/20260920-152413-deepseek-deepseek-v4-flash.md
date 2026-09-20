---
package: netbird-dashboard
pkgver: 2.92.0
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 16447
completion_tokens: 2186
total_tokens: 18633
cost: 0.00074032364
execution_time: 21.83
files_reviewed: 5
files_skipped: 0
maintainer_files: 5
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-20T15:24:13Z
file_verdicts:
  - file: netbird-dashboard-generate
    status: safe
    summary: Standard environment substitution script, no malicious activity.
  - file: .SRCINFO
    status: safe
    summary: Standard metadata file, no malicious content.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD with pinned checksums; no evidence of malicious behavior.
  - file: netbird-dashboard.env
    status: safe
    summary: Safe configuration file with no malicious content.
  - file: netbird-dashboard.hook
    status: safe
    summary: Standard pacman hook, no security issues detected.
---

Materializing netbird-dashboard from local mirror...
Materialized netbird-dashboard
Analyzing netbird-dashboard AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD only contains standard variable assignments, arrays, and function definitions at the top level. No command substitutions, eval calls, network requests, or other dangerous operations are present in the global scope. The `build()` and `package()` functions are defined but not executed during `makepkg --printsrcinfo`. The source URLs and checksums are plain static strings. There is no risk of malicious code execution when sourcing this file for metadata printing.
</details>
<evidence>
</evidence>
<summary>No dangerous code at top level.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous code at top level.
Reviewing the 5 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/5] Reviewing .SRCINFO...
[0/5] Reviewing .SRCINFO, PKGBUILD...
[0/5] Reviewing .SRCINFO, PKGBUILD, netbird-dashboard-generate...
LLM auditresponse for netbird-dashboard-generate:
<security_assessment>
<decision>SAFE</decision>
<details>
This script is a straightforward environment variable substitution tool for the Netbird dashboard. It sources a configuration file, reads environment variables, and uses `envsubst` to replace placeholders in static files within `/usr/share/webapps/netbird-dashboard`. The output is placed in `/var/lib/netbird-dashboard` (or a custom directory) to avoid being overwritten by package upgrades. All operations are confined to these directories—no network requests, no execution of external code, no obfuscation. The variable whitelist is explicitly bounded to match the upstream `init_react_envs.sh`, preventing unintended substitutions. No behaviors indicative of a supply-chain attack are present.
</details>
<evidence>
</evidence>
<summary>Standard environment substitution script, no malicious activity.</summary>
</security_assessment>

[0/5] Reviewing .SRCINFO, PKGBUILD, netbird-dashboard-generate, netbird-dashboard.env...
[1/5] Reviewing .SRCINFO, PKGBUILD, netbird-dashboard.env...
+ Reviewed netbird-dashboard-generate. Status: SAFE -- Standard environment substitution script, no malicious activity.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard AUR .SRCINFO metadata file. It contains no executable code, only package metadata such as version, dependencies, and checksums. All sources are fetched from the official upstream GitHub repository (netbirdio/dashboard) using a tagged release archive. No suspicious URLs, obfuscated content, or dangerous commands are present. The checksums are all explicitly provided (not SKIP), ensuring source integrity. This file poses no security threat.
</details>
<evidence></evidence>
<summary>Standard metadata file, no malicious content.</summary>
</security_assessment>

[1/5] Reviewing .SRCINFO, PKGBUILD, netbird-dashboard.env, netbird-dashboard.hook...
[2/5] Reviewing PKGBUILD, netbird-dashboard.env, netbird-dashboard.hook...
+ Reviewed .SRCINFO. Status: SAFE -- Standard metadata file, no malicious content.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard AUR packaging practices. It downloads the netbird-dashboard source tarball from the project's official GitHub releases URL, pins all four source files with sha512 checksums, and uses Node.js/npm to build the upstream project. The `package()` function copies built output and auxiliary files into the package directory, installs license/configuration files, and installs a libalpm hook. There is no obfuscated code, no unexpected network behavior, no curl-piped-to-shell execution, and no access to sensitive system files.

The `npm install` step is part of the upstream build process and is expected for a Node.js dashboard project. While dependency resolution during `npm install` carries the usual upstream supply-chain considerations, that is a general packaging trust concern rather than evidence of injected malicious code in this AUR file. The helper scripts referenced in the `source` array are not included in the provided content, but the PKGBUILD itself shows no red flags.
</details>
<evidence>
</evidence>
<summary>
Standard AUR PKGBUILD with pinned checksums; no evidence of malicious behavior.
</summary>
</security_assessment>

[3/5] Reviewing netbird-dashboard.env, netbird-dashboard.hook...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD with pinned checksums; no evidence of malicious behavior.
LLM auditresponse for netbird-dashboard.env:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `netbird-dashboard.env` is a configuration template for the NetBird dashboard. It contains only commented-out environment variable assignments and explanatory comments. There are no executable commands, network requests, obfuscated strings, or any other suspicious content. The file serves a benign purpose—configuring the dashboard's authentication and output paths—and does not deviate from standard packaging practices.
</details>
<evidence>
</evidence>
<summary>Safe configuration file with no malicious content.</summary>
</security_assessment>

[4/5] Reviewing netbird-dashboard.hook...
+ Reviewed netbird-dashboard.env. Status: SAFE -- Safe configuration file with no malicious content.
LLM auditresponse for netbird-dashboard.hook:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard pacman hook file that triggers after installation or upgrade of the `netbird-dashboard` package. It runs `/usr/bin/netbird-dashboard-generate`, which is expected to be a binary provided by the package itself. If the command fails (e.g., because configuration is missing), it prints a helpful message. There is no evidence of malicious behavior such as network requests, data exfiltration, obfuscation, or execution of untrusted code. The hook follows normal Arch packaging practices for post-transaction configuration regeneration.
</details>
<evidence></evidence>
<summary>Standard pacman hook, no security issues detected.</summary>
</security_assessment>

[5/5] Reviewing ...
+ Reviewed netbird-dashboard.hook. Status: SAFE -- Standard pacman hook, no security issues detected.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 16,447
  Completion Tokens: 2,186
  Total Tokens: 18,633
  Total Cost: $0.000740
  Execution Time: 21.83 seconds

Final Status: SAFE


No issues found.
