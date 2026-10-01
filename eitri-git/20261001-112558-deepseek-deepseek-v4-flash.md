---
package: eitri-git
pkgver: 0.2.0.0.gd0d362e
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 16199
completion_tokens: 2077
total_tokens: 18276
cost: 0.000854826
execution_time: 43.0
files_reviewed: 2
files_skipped: 0
maintainer_files: 2
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-01T11:25:57Z
file_verdicts:
  - file: PKGBUILD
    status: safe
    summary: Standard AUR -git PKGBUILD, no signs of malicious code.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata. No malicious content.
---

Materializing eitri-git from local mirror...
Materialized eitri-git
Analyzing eitri-git AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD&#39;s global/top-level scope contains only standard variable assignments (pkgname, pkgver, source, sha256sums, etc.) and function definitions (pkgver, prepare, build, package). There are no command substitutions, backticks, eval invocations, or any other executable code at the top level that would run during `makepkg --printsrcinfo`. All potentially risky operations (curl, git operations, cargo builds) reside inside prepare() and build(), which are not executed by this command. Sourcing this PKGBUILD is safe.
</details>
<evidence></evidence>
<summary>No malicious top-level code; sourcing is safe.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious top-level code; sourcing is safe.
Reviewing the 2 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/2] Reviewing .SRCINFO...
[0/2] Reviewing .SRCINFO, PKGBUILD...
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard AUR -git packaging practices. All source entries are either VCS clones (git repositories from the project's own GitHub organization) or a pinned Node.js tarball from the official nodejs.org with a valid SHA-256 checksum. The `sha256sums` entries are `SKIP` for the three git repos, which is expected and required for VCS sources. The `curl` call in `prepare()` fetches a pinned Skia archive whose URL and SHA-256 are read from the project's own `packaging/pins.env` and verified before use — this is a normal build dependency fetch for the skia-bindings crate, not an unexpected download. There is no execution of unchecked downloaded code, no obfuscation, no data exfiltration, and no manipulation of system files outside the application's own scope. All operations are transparent and consistent with building the upstream project from source.
</details>
<evidence></evidence>
<summary>Standard AUR -git PKGBUILD, no signs of malicious code.</summary>
</security_assessment>

[1/2] Reviewing .SRCINFO...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR -git PKGBUILD, no signs of malicious code.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This `.SRCINFO` file is a standard metadata declaration for an AUR `-git` package. It defines the package name, version, description, upstream URLs, dependencies, and four source entries. Three of the sources are git repositories from the maintainer&#8217;s own GitHub account (the main `eitri` repo, a forked `neovide` branch, and the `verdandi` library), all with `sha256sums = SKIP`, which is normal and required for VCS sources. The fourth source is an official Node.js binary tarball downloaded from nodejs.org and includes a valid SHA-256 checksum. There is no executable code, no obfuscation, no unexpected network destinations, and no instructions anywhere in this file&#8212;it is purely a static metadata file describing where source code will be fetched during build. No supply-chain attack indicators are present.
</details>
<evidence></evidence>
<summary>Standard AUR metadata. No malicious content.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata. No malicious content.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 16,199
  Completion Tokens: 2,077
  Total Tokens: 18,276
  Total Cost: $0.000855
  Execution Time: 43.00 seconds

Final Status: SAFE


No issues found.
