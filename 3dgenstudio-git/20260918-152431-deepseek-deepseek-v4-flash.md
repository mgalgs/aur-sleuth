---
package: 3dgenstudio-git
pkgver: rf4d9cd0
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 171a316e053e9c4b28731ccb1aa63b1168550d3a
prompt_tokens: 9300
completion_tokens: 1973
total_tokens: 11273
cost: 0.00066018064
execution_time: 60.37
files_reviewed: 2
files_skipped: 0
maintainer_files: 2
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-18T15:24:31Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata, no malicious content.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD with benign launcher script.
---

Materializing 3dgenstudio-git from local mirror...
Materialized 3dgenstudio-git
Analyzing 3dgenstudio-git AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The top-level scope of this PKGBUILD only contains standard variable definitions (pkgname, pkgver, source, etc.) and function declarations (pkgver, build, package). No commands, command substitutions, or evaluations are executed at global scope. The base64 decode and other suspicious content reside inside the `package()` function, which is not run during `makepkg --printsrcinfo`. Therefore, sourcing this PKGBUILD poses no immediate danger.
</details>
<evidence></evidence>
<summary>No dangerous top-level code found.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous top-level code found.
Reviewing the 2 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/2] Reviewing .SRCINFO...
[0/2] Reviewing .SRCINFO, PKGBUILD...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The `.SRCINFO` file is a standard AUR metadata file containing only package declarations and dependency information. It does not contain any executable code, scripts, or instructions. The source points to the package's official upstream GitHub repository (`https://github.com/visualbruno/3DGenStudio.git`). The `sha256sums = SKIP` is expected for VCS (`-git`) packages and is not a security concern. There is no evidence of obfuscation, network requests outside the upstream, or any malicious behavior.
</details>
<evidence>
</evidence>
<summary>Standard AUR metadata, no malicious content.</summary>
</security_assessment>

[1/2] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata, no malicious content.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard AUR packaging practices for a VCS (git) package. It clones the upstream repo, builds with `npm ci` and `npm run build`, prunes dev dependencies, and installs the production tree into `/opt`. The base64-encoded script decoded to a launcher that starts the Node backend and opens the browser. It only connects to `localhost:3001`, uses `xdg-open` for the browser, and performs no external network requests or data exfiltration. There is no obfuscated or malicious code; the base64 embedding is a common method to inline small helper scripts in PKGBUILDs without a separate file. No dangerous commands like `eval`, `curl`, `wget`, or `exec` of untrusted content appear. The file is clean.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD with benign launcher script.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD with benign launcher script.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 9,300
  Completion Tokens: 1,973
  Total Tokens: 11,273
  Total Cost: $0.000660
  Execution Time: 60.37 seconds

Final Status: SAFE


No issues found.
