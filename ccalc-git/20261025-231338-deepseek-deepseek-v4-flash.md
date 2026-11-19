---
package: ccalc-git
pkgver: 2.17.0.2.r9.gc8edd3e
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 7796
completion_tokens: 3710
total_tokens: 11506
cost: 0.001384656
execution_time: 34.08
files_reviewed: 2
files_skipped: 0
maintainer_files: 2
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-25T23:13:37Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Metadata file; no security concerns.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD, no evidence of malicious code.
---

Materializing ccalc-git from local mirror...
Materialized ccalc-git
Analyzing ccalc-git AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD only contains variable assignments and function definitions at the top level. No command substitutions, `eval`, or other executable constructs are present in the global scope. The `source=(git+$url)` array definition expands `$url` to a benign string at assignment time, but does not trigger any network activity or code execution. All potentially suspicious code (e.g., the `git describe` call, `sed` commands, `make` invocations) resides inside functions (`pkgver`, `prepare`, `build`, `check`, `package`) that are **not** executed during `makepkg --printsrcinfo`. Therefore, sourcing this PKGBUILD for metadata extraction poses no security risk.
</details>
<evidence></evidence>
<summary>No malicious top-level code; functions are not run.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious top-level code; functions are not run.
Reviewing the 2 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/2] Reviewing PKGBUILD...
[0/2] Reviewing PKGBUILD, .SRCINFO...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a package metadata file (`.SRCINFO`) for an AUR package. It contains only declarative fields such as package name, version, description, and source URL. No executable code, network requests, file operations, or obfuscated content is present. The use of `b2sums = SKIP` is standard for VCS sources and does not indicate malice. The source URL points to the project's legitimate upstream repository on GitHub. There is no evidence of any security threat.
</details>
<evidence></evidence>
<summary>Metadata file; no security concerns.</summary>
</security_assessment>

[1/2] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Metadata file; no security concerns.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a straightforward build recipe for the ccalc-git package. It clones the upstream repository from https://github.com/lcn2/calc, applies minor patches to the Makefile, builds with make, and installs the binaries. The use of a SKIP checksum and an unpinned VCS source is standard for -git packages and does not constitute a security threat. The only notable operation is moving `cscript` from `/usr/bin` to `/usr/share/calc/` in `package()`, but this is an intended part of the installation and not a supply-chain attack. There is no obfuscated code, no unexpected network requests, and no execution of untrusted content. The file conforms to normal packaging practices and shows no evidence of malicious injection.
</details>
<evidence></evidence>
<summary>Standard AUR PKGBUILD, no evidence of malicious code.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD, no evidence of malicious code.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 7,796
  Completion Tokens: 3,710
  Total Tokens: 11,506
  Total Cost: $0.001385
  Execution Time: 34.08 seconds

Final Status: SAFE


No issues found.
