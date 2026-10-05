---
package: omarchy-flux
pkgver: 0.14.0
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 10750
completion_tokens: 3410
total_tokens: 14160
cost: 0.00468730
execution_time: 57.17
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-05T11:14:23Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata file, no malicious content.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD with no malicious indicators.
  - file: omarchy-flux.install
    status: safe
    summary: "Standard install script running package's own lifecycle hooks; no malicious behavior found."
---

Materializing omarchy-flux from local mirror...
Materialized omarchy-flux
Analyzing omarchy-flux AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD's top-level scope contains only standard variable assignments and function definitions. No command substitutions, downloads, `eval`, `curl`, `wget`, or other executable statements run while the file is sourced by `makepkg --printsrcinfo`.

The `if` branch simply sets the `source` and `sha256sums` arrays. The `else` branch defines a `pkgver()` function, but function bodies are not executed during `--printsrcinfo`. Likewise, `_src()`, `build()`, `check()`, and `package()` are only invoked in later build phases and are out of scope for this gate.
</details>
<evidence>
</evidence>
<summary>
Top-level scope is inert; only definitions and array assignments. Safe to parse.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Top-level scope is inert; only definitions and array assignments. Safe to parse.
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, PKGBUILD...
[0/3] Reviewing .SRCINFO, PKGBUILD, omarchy-flux.install...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is the .SRCINFO metadata for the omarchy-flux AUR package. It only contains declarative package metadata such as name, version, dependencies, and source URLs. The source points to an official release tarball on GitHub with a specific SHA-256 checksum. There are no executable commands, obfuscated content, network requests, or file operations. No supply-chain attack indicators are present. The file conforms to standard AUR packaging metadata.
</details>
<evidence></evidence>
<summary>Standard AUR metadata file, no malicious content.</summary>
</security_assessment>

[1/3] Reviewing PKGBUILD, omarchy-flux.install...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata file, no malicious content.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard AUR packaging practices. The source is pinned to a specific release tarball with a verified SHA256 checksum. The build, check, and package functions invoke the upstream Makefiles and Go test commands without any unusual operations. There is no obfuscation, no unexpected network requests, no execution of downloaded code outside the declared source, and no manipulation of system files beyond the standard `make install` into `$pkgdir`. The conditional VCS handling (when `_source_url` is empty) is a normal pattern for -git style packages. No evidence of supply-chain injection or malicious behavior is present in this file.
</details>
<evidence></evidence>
<summary>Standard AUR PKGBUILD with no malicious indicators.</summary>
</security_assessment>

[2/3] Reviewing omarchy-flux.install...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD with no malicious indicators.
LLM auditresponse for omarchy-flux.install:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard Arch Linux `.install` script. It invokes package-provided shell scripts from `/usr/share/flux/` during the `post_install`, `post_upgrade`, and `pre_remove` phases. Those scripts are expected to be installed into the package's own directory by the PKGBUILD, so executing them with `sh` is normal packaging behavior.

There is no evidence of malicious behavior: no network requests, no downloading/executing remote code, no obfuscation or encoding, no dangerous variable expansion, no file tampering outside the package's own scope, and no credential or data exfiltration. The script simply delegates lifecycle hooks to the package's own helper scripts. While the referenced scripts themselves are not shown here and would warrant their own review, nothing in this file deviates from ordinary Arch packaging practices.
</details>
<evidence>
</evidence>
<summary>
Standard install script running package's own lifecycle hooks; no malicious behavior found.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed omarchy-flux.install. Status: SAFE -- Standard install script running package's own lifecycle hooks; no malicious behavior found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 10,750
  Completion Tokens: 3,410
  Total Tokens: 14,160
  Total Cost: $0.004687
  Execution Time: 57.17 seconds

Final Status: SAFE


No issues found.
