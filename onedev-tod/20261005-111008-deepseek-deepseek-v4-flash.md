---
package: onedev-tod
pkgver: 4.3.4
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 9888
completion_tokens: 1593
total_tokens: 11481
cost: 0.00233568
execution_time: 26.96
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-05T11:10:07Z
file_verdicts:
  - file: PKGBUILD
    status: safe
    summary: Standard Go package build, no malicious content.
  - file: updater.yaml
    status: safe
    summary: AUR maintainer helper config; no malicious content.
  - file: .SRCINFO
    status: safe
    summary: Standard package metadata, no security concerns.
---

Materializing onedev-tod from local mirror...
Materialized onedev-tod
Analyzing onedev-tod AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
Running `makepkg --printsrcinfo` sources the PKGBUILD and executes only its global/top-level scope. In this PKGBUILD, the top-level scope consists solely of variable assignments: package metadata, dependency arrays, the `source` array, and checksums. There are no top-level command substitutions, no `eval`, no `curl`, `wget`, `git pull`, or other commands that could download or execute code at source time.

The `prepare()`, `build()`, `check()`, and `package()` functions contain build/install operations, but those are not executed by `makepkg --printsrcinfo` and are out of scope for this gate. The checksum is present, though even a missing or SKIPped checksum would not make this step unsafe because no sources are fetched or verified during `--printsrcinfo`. No malicious or suspicious top-level behavior was found.
</details>
<evidence>
</evidence>
<summary>
Top-level scope contains only safe variable definitions; no commands execute during --printsrcinfo.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Top-level scope contains only safe variable definitions; no commands execute during --printsrcinfo.
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, PKGBUILD...
[0/3] Reviewing .SRCINFO, PKGBUILD, updater.yaml...
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard Arch Linux packaging practices for a Go-based CLI application. It downloads a tarball from the project's official GitHub mirror with a pinned checksum, downloads Go module dependencies, builds with Go flags for PIE and external linking, runs tests, and installs the binary and documentation files. There are no unexpected network requests, obfuscated code, dangerous commands, or modifications to system files outside the package's scope. All operations are transparent and typical for an AUR package.
</details>
<evidence></evidence>
<summary>Standard Go package build, no malicious content.</summary>
</security_assessment>

[1/3] Reviewing .SRCINFO, updater.yaml...
+ Reviewed PKGBUILD. Status: SAFE -- Standard Go package build, no malicious content.
LLM auditresponse for updater.yaml:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a configuration file for an automated updater tool. It specifies the upstream repository (theonedev/tod) and a verification command that runs `tod version` to confirm the installed binary works. There is no malicious code, no network requests to unexpected hosts, and no dangerous operations. This is a standard helper for AUR maintainers to streamline version bumps.
</details>
<evidence></evidence>
<summary>AUR maintainer helper config; no malicious content.</summary>
</security_assessment>

[2/3] Reviewing .SRCINFO...
+ Reviewed updater.yaml. Status: SAFE -- AUR maintainer helper config; no malicious content.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard Arch Linux package metadata file (.SRCINFO) for the onedev-tod package. It contains only package description, dependencies, source URL, and checksums. The source is fetched from the official GitHub repository with a pinned version (v4.3.4) and a corresponding BLAKE2b checksum. There is no executable code, no network connections to unexpected hosts, no obfuscation, and no dangerous operations. The file follows normal packaging practices. No security issues found.
</details>
<evidence>
</evidence>
<summary>Standard package metadata, no security concerns.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed .SRCINFO. Status: SAFE -- Standard package metadata, no security concerns.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 9,888
  Completion Tokens: 1,593
  Total Tokens: 11,481
  Total Cost: $0.002336
  Execution Time: 26.96 seconds

Final Status: SAFE


No issues found.
