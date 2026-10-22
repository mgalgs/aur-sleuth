---
package: artcraft
pkgver: 0.41.0
pkgrel: 3
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 10756
completion_tokens: 7370
total_tokens: 18126
cost: 0.002320136
execution_time: 149.07
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-22T07:21:23Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Static metadata file with no executable content.
  - file: .nvchecker.toml
    status: safe
    summary: Standard nvchecker config, no security issues.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD for a Tauri app, no malicious behavior found.
---

Materializing artcraft from local mirror...
Materialized artcraft
Analyzing artcraft AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The top-level/global scope of this PKGBUILD consists entirely of standard variable assignments (e.g., `pkgname`, `pkgver`, `depends`, `source`, `sha256sums`) and the definition of four shell functions (`_srcenv`, `prepare`, `build`, `package`). There are no command substitutions (`$()` or backticks), invocations of network tools (`curl`, `wget`), `eval` statements, or immediate function calls in the global scope that would execute when the file is sourced.

While the `prepare()` function contains a highly dangerous command (`npm ci --allow-git=all --dangerously-allow-all-scripts --no-audit --no-fund`), shell functions are not executed at definition time. Therefore, `makepkg --printsrcinfo` will only safely parse the variable declarations and function definitions, making this step completely safe.
</details>
<evidence></evidence>
<summary>Top-level scope has no executable payload.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Top-level scope has no executable payload.
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, .nvchecker.toml...
[0/3] Reviewing .SRCINFO, .nvchecker.toml, PKGBUILD...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This .SRCINFO file is purely a metadata descriptor for the AUR package. It contains package name, version, dependencies, and a pinned SHA256 checksum for the source tarball. There are no executable commands, no network calls, no obfuscated content, and no signs of injected malicious code. The source is pinned to a specific tag with a verified checksum, which follows proper packaging practices. No security concerns are present.
</details>
<evidence></evidence>
<summary>Static metadata file with no executable content.</summary>
</security_assessment>

[1/3] Reviewing .nvchecker.toml, PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Static metadata file with no executable content.
LLM auditresponse for .nvchecker.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard configuration file for `nvchecker`, a tool that monitors upstream releases of software packages. It defines the source as a Git repository on GitHub (`https://github.com/storytold/artcraft.git`), along with a version prefix and regular expression for matching tags. There are no executable commands, obfuscated content, network requests outside of the declared upstream source, or any attempt to fetch or run untrusted code. The file is a benign metadata file used solely for version‑checking automation.
</details>
<evidence></evidence>
<summary>Standard nvchecker config, no security issues.</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed .nvchecker.toml. Status: SAFE -- Standard nvchecker config, no security issues.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard AUR packaging practices for a Tauri-based application. It fetches the upstream source from the project's GitHub repository with a pinned sha256sum, ensuring integrity. All build steps (`cargo fetch`, `npm ci`, `cargo build`, and `npx`) are part of the upstream build system and are not injected by the package. The `--dangerously-allow-all-scripts` flag in `npm ci` allows the execution of npm postinstall scripts from the upstream lockfile; while this carries inherent supply-chain risk (as npm packages can run arbitrary code), it is explicitly part of the upstream build and not an injected malicious operation. There is no obfuscated code, no unexpected network requests (beyond fetching from the stated source and the npm registry), and no attempts to exfiltrate data or modify system files outside the package destination. The `cargo fetch --target host-tuple` uses a literal string "host-tuple" which is likely a packaging oversight (it should be a target triple), but it is not malicious. Overall, no evidence of genuinely malicious or dangerous behavior was found.
</details>
<evidence></evidence>
<summary>Standard AUR PKGBUILD for a Tauri app, no malicious behavior found.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD for a Tauri app, no malicious behavior found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 10,756
  Completion Tokens: 7,370
  Total Tokens: 18,126
  Total Cost: $0.002320
  Execution Time: 149.07 seconds

Final Status: SAFE


No issues found.
