---
package: herdr-app-bin
pkgver: 0.1.13
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 8194
completion_tokens: 1403
total_tokens: 9597
cost: 0.001001000
execution_time: 19.94
files_reviewed: 2
files_skipped: 0
maintainer_files: 2
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-11-05T12:10:02Z
file_verdicts:
  - file: PKGBUILD
    status: safe
    summary: Benign PKGBUILD with pinned upstream binaries and standard install steps.
  - file: .SRCINFO
    status: safe
    summary: Standard package metadata file, no malicious content.
---

Materializing herdr-app-bin from local mirror...
Materialized herdr-app-bin
Analyzing herdr-app-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>The PKGBUILD contains only static variable assignments and a function definition at the global scope. There are no command substitutions, no `eval`, no external command executions, and no network operations that would execute when sourcing the file. The `package()` function is defined but not invoked during `makepkg --printsrcinfo`. All sources use HTTPS from the package's own upstream domain (`releases.herdr.dev`) and include checksums. No malicious or suspicious top-level code is present.</details>
<evidence></evidence>
<summary>No dangerous top-level code in PKGBUILD.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous top-level code in PKGBUILD.
Reviewing the 2 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/2] Reviewing .SRCINFO...
[0/2] Reviewing .SRCINFO, PKGBUILD...
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a standard `-bin` package: it downloads prebuilt application tarballs from the project's own releases domain (`releases.herdr.dev`) with pinned SHA-256 checksums for both architectures, then installs the binary, icon, desktop entry, and license files into the package directory. There are no suspicious network requests, no obfuscated code, no dynamic execution of downloaded content, and no operations outside normal packaging scope.

The desktop entry is created via a static heredoc and installed to the package directory, which is routine. Dependencies include `herdr-core` with a version requirement, also normal for this type of application package. Nothing in this file deviates from expected AUR packaging practices or indicates a supply-chain attack.
</details>
<evidence></evidence>
<summary>Benign PKGBUILD with pinned upstream binaries and standard install steps.</summary>
</security_assessment>

[1/2] Reviewing .SRCINFO...
+ Reviewed PKGBUILD. Status: SAFE -- Benign PKGBUILD with pinned upstream binaries and standard install steps.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The `.SRCINFO` file is a metadata-only description of the `herdr-app-bin` package. It declares package name, version, dependencies, architecture-specific source URLs with pinned SHA256 checksums, and other standard fields. All source URLs point to `releases.herdr.dev`, which is the project's own official release domain. No executable code, obfuscation, or suspicious commands are present. The use of pinned checksums (not `SKIP`) confirms that the sources are verified against expected hashes. There are no indicators of a supply-chain attack.
</details>
<evidence>
</evidence>
<summary>Standard package metadata file, no malicious content.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed .SRCINFO. Status: SAFE -- Standard package metadata file, no malicious content.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 8,194
  Completion Tokens: 1,403
  Total Tokens: 9,597
  Total Cost: $0.001001
  Execution Time: 19.94 seconds

Final Status: SAFE


No issues found.
