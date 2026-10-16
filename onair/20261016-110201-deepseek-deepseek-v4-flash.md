---
package: onair
pkgver: 0.2.5
pkgrel: 5
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 14202
completion_tokens: 3244
total_tokens: 17446
cost: 0.001882790
execution_time: 45.26
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-16T11:02:00Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard metadata file, no security issues.
  - file: onair-package-hints.patch
    status: safe
    summary: Patch only updates help text for Arch package.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD with pinned source and no malicious content.
---

Materializing onair from local mirror...
Materialized onair
Analyzing onair AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The operation `makepkg --printsrcinfo` only sources the PKGBUILD file to evaluate global variable assignments and function declarations. In this PKGBUILD, the global/top-level scope is limited to static variable definitions for metadata (`pkgname`, `pkgver`, `depends`, `source`, `sha256sums`, etc.) and function definitions (`prepare()`, `build()`, `package()`). There are no command substitutions, backticks, or direct invocations of dangerous commands like `eval`, `curl`, or `wget` in the top-level scope. The `$pkgname` and `$pkgver` variable expansions in the `source` array resolve to static strings and do not trigger network requests or execute external code during sourcing. The `::` separator in the source array is a standard makepkg convention and is treated as a literal string character during the shell assignment. The `prepare()`, `build()`, and `package()` functions are correctly scoped and will not execute during the parsing phase, so they are out of scope for this specific gate.
</details>
<evidence></evidence>
<summary>No top-level execution risk in global scope.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No top-level execution risk in global scope.
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing PKGBUILD...
[0/3] Reviewing PKGBUILD, .SRCINFO...
[0/3] Reviewing PKGBUILD, .SRCINFO, onair-package-hints.patch...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This .SRCINFO file contains only standard package metadata: package name, version, description, dependencies, and source references. The sources are fetched from the project&#39;s own GitHub repository (tagged release v0.2.5), and both tarball and patch have explicit sha256 checksums (not SKIP). There is no executable code, no obfuscation, no unexpected network destinations, and no signs of malicious injection. The file conforms to normal AUR packaging practices.
</details>
<evidence></evidence>
<summary>Standard metadata file, no security issues.</summary>
</security_assessment>

[1/3] Reviewing PKGBUILD, onair-package-hints.patch...
+ Reviewed .SRCINFO. Status: SAFE -- Standard metadata file, no security issues.
LLM auditresponse for onair-package-hints.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
The patch modifies user-facing help strings in the OnAir application to reflect that the Arch Linux onair package already installs the necessary udev rules and kernel driver blacklist files. Instead of telling users to run a separate `install-udev-rules.sh` script, the patch instructs them to reload already-installed udev rules using standard `sudo udevadm` commands. All changes are purely cosmetic and affect only text displayed to the user. There is no execution of commands, no network requests, no obfuscation, and no modification of system files outside the application&#x27;s own scope. This is a routine packaging adjustment with no security concerns.
</details>
<evidence></evidence>
<summary>Patch only updates help text for Arch package.</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed onair-package-hints.patch. Status: SAFE -- Patch only updates help text for Arch package.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard Arch packaging practices. It fetches a tarball from the project's official GitHub repository with a pinned SHA256 checksum. The build uses CMake with standard flags and installs only the intended binaries. The only modification is a patch that rewords udev-rule hints for the packaging environment, which is a routine upstream compatibility adjustment. There are no suspicious network requests (only the declared upstream tarball), no eval, no base64, no curl|bash, no unexpected file operations, and no obfuscated code. The `-Wno-error=format-security` flag is a known workaround for an upstream code issue that passes runtime format strings to ImGui::Text, which is not a security concern in the context of the PKGBUILD itself. The package is safe.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD with pinned source and no malicious content.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD with pinned source and no malicious content.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 14,202
  Completion Tokens: 3,244
  Total Tokens: 17,446
  Total Cost: $0.001883
  Execution Time: 45.26 seconds

Final Status: SAFE


No issues found.
