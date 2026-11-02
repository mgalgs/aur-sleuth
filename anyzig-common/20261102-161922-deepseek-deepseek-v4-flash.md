---
package: anyzig-common
pkgbase: anyzig
pkgver: 2026_10_23
pkgrel: 2
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 13191
completion_tokens: 4698
total_tokens: 17889
cost: 0.002055417
execution_time: 102.6
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-11-02T16:19:22Z
file_verdicts:
  - file: .nvchecker.toml
    status: safe
    summary: Standard nvchecker config, no security concerns.
  - file: .gitignore
    status: safe
    summary: Standard .gitignore file; no malicious content.
  - file: .SRCINFO
    status: safe
    summary: Standard metadata file, no executable content.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD, no malicious code found.
---

anyzig-common is built from anyzig
Materializing anyzig-common from local mirror...
Materialized anyzig-common
Analyzing anyzig-common AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
Running `makepkg --printsrcinfo` sources only the PKGBUILD's global/top-level scope. This PKGBUILD contains only standard variable assignments (`pkgbase`, `pkgname`, `pkgver`, `arch`, `source`, `b2sums`, etc.) and function definitions for `prepare()`, `build()`, and `package_*()` functions. There are no top-level command substitutions, network requests, downloads, eval-style constructs, obfuscated strings, or file-modifying commands that would execute during sourcing.

The `source` array references the project's own GitHub tag archive over HTTPS and has a concrete b2sum, which is normal packaging practice. The code inside `prepare()`, `build()`, and `package_*()` cannot execute during `makepkg --printsrcinfo`, so any content there is outside the scope of this particular safety gate and should be reviewed in the full PKGBUILD audit.
</details>
<evidence>
</evidence>
<summary>
Top-level PKGBUILD contents are benign; printsrcinfo sourcing is safe.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Top-level PKGBUILD contents are benign; printsrcinfo sourcing is safe.
Reviewing the 4 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/4] Reviewing .SRCINFO...
[0/4] Reviewing .SRCINFO, .gitignore...
[0/4] Reviewing .SRCINFO, .gitignore, .nvchecker.toml...
LLM auditresponse for .nvchecker.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a configuration file for nvchecker, a standard tool used by AUR maintainers to automatically monitor upstream releases. It defines a git source with the package's own repository URL and a version prefix, which is normal and expected behavior. No code execution, network requests outside the ordinary, or any suspicious content is present.
</details>
<evidence>
</evidence>
<summary>Standard nvchecker config, no security concerns.</summary>
</security_assessment>

[0/4] Reviewing .SRCINFO, .gitignore, .nvchecker.toml, PKGBUILD...
[1/4] Reviewing .SRCINFO, .gitignore, PKGBUILD...
+ Reviewed .nvchecker.toml. Status: SAFE -- Standard nvchecker config, no security concerns.
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard .gitignore configuration for a git repository. It ignores all files except those specifically allowed (PKGBUILD, .SRCINFO, .gitignore, .nvchecker.toml, and *.patch). This file does not contain any executable code, network requests, system modifications, or any other behavior that could be considered malicious. It is purely a pattern-matching configuration for version control.
</details>
<evidence>
</evidence>
<summary>Standard .gitignore file; no malicious content.</summary>
</security_assessment>

[2/4] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore file; no malicious content.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>This is a standard .SRCINFO metadata file used by the AUR to describe package metadata. It contains only declarative fields (pkgbase, pkgname, pkgdesc, pkgver, pkgrel, url, arch, license, makedepends, source, b2sums, conflicts, depends). There are no executable commands, no network requests, no obfuscation, and no code of any kind. The source is a pinned release tarball with a BLAKE2b checksum, which is a secure practice. The use of HTML entities for greater-than/less-than signs is standard in .SRCINFO formatting. No security issues detected.</details>
<evidence></evidence>
<summary>Standard metadata file, no executable content.</summary>
</security_assessment>

[3/4] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard metadata file, no executable content.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD is a standard packaging file for an AUR package. It downloads a tagged tarball from the project's official GitHub repository with a verified BLAKE2b checksum. The `prepare()` function patches the upstream `build.zig` with a simple build fix, which is a normal packaging practice and does not introduce malicious code. There are no network requests, obfuscation, dangerous commands (eval, base64, curl pipe bash), or attempts to exfiltrate data. The build and package functions follow standard conventions. No evidence of supply chain attack or genuinely malicious behavior is present.
</details>
<evidence>
</evidence>
<summary>Standard AUR PKGBUILD, no malicious code found.</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD, no malicious code found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 13,191
  Completion Tokens: 4,698
  Total Tokens: 17,889
  Total Cost: $0.002055
  Execution Time: 102.60 seconds

Final Status: SAFE


No issues found.
