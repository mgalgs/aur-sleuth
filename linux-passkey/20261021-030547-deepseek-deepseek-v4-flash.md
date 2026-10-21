---
package: linux-passkey
pkgver: 0.1.0
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 10330
completion_tokens: 3448
total_tokens: 13778
cost: 0.001567566
execution_time: 34.9
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-21T03:05:46Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata file, no security issues found.
  - file: linux-passkey.install
    status: safe
    summary: Standard post-install script for kernel module and udev rules.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD with pinned source and safe build commands.
---

Materializing linux-passkey from local mirror...
Materialized linux-passkey
Analyzing linux-passkey AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
No top-level command substitutions or executable statements are present. The entire top-level scope consists solely of static variable definitions (strings, arrays) and two function definitions (`package_linux-passkey` and `package_gnome-shell-extension-linux-passkey`), which are not invoked during `makepkg --printsrcinfo`. The `source` array contains a URL with variable interpolation, but that is merely a string assignment and does not trigger any network activity or code execution at parse time. There are no dangerous commands (eval, curl, wget, base64, etc.) in the global scope. Therefore, sourcing this PKGBUILD for metadata extraction is safe.
</details>
<evidence></evidence>
<summary>No execution risk at parse time.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No execution risk at parse time.
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, linux-passkey.install...
[0/3] Reviewing .SRCINFO, linux-passkey.install, PKGBUILD...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard `.SRCINFO` metadata file for an AUR package. It defines two split packages (`linux-passkey` and `gnome-shell-extension-linux-passkey`) with a pinned source tarball from the project's own GitHub releases, including a verified SHA-256 checksum. There are no suspicious network requests, obfuscated code, dangerous command execution, or unexpected file operations. All dependencies and options are normal for this type of application. No evidence of a supply-chain attack or malicious intent is present.
</details>
<evidence></evidence>
<summary>Standard AUR metadata file, no security issues found.</summary>
</security_assessment>

[1/3] Reviewing linux-passkey.install, PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata file, no security issues found.
LLM auditresponse for linux-passkey.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard Arch Linux .install script that loads the uhid kernel module at post-install/post-upgrade, reloads udev rules, and prints user instructions. There is no malicious behavior: no network requests, no code execution from external sources, no obfuscation, no exfiltration of data. The script only interacts with the local system in ways required by the package's kernel module and udev rules.
</details>
<evidence></evidence>
<summary>Standard post-install script for kernel module and udev rules.</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed linux-passkey.install. Status: SAFE -- Standard post-install script for kernel module and udev rules.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD downloads a pinned tarball from the official GitHub releases of the Linux-Passkey project. The sha256sums array provides a fixed checksum, ensuring integrity. The build commands are standard `make install-*` invocations within the extracted source. No network requests beyond the specified source tarball, no eval/base64/curl|bash patterns, and no unexpected file or system operations. The dependency and conflict declarations are normal packaging metadata. There is no evidence of malicious or supply-chain attack behavior.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD with pinned source and safe build commands.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD with pinned source and safe build commands.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 10,330
  Completion Tokens: 3,448
  Total Tokens: 13,778
  Total Cost: $0.001568
  Execution Time: 34.90 seconds

Final Status: SAFE


No issues found.
