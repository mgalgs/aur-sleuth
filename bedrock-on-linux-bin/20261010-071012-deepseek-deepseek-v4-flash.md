---
package: bedrock-on-linux-bin
pkgver: 2.2.9
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 8918
completion_tokens: 1345
total_tokens: 10263
cost: 0.0018205898
execution_time: 22.12
files_reviewed: 2
files_skipped: 0
maintainer_files: 2
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-10T07:10:12Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard metadata, no malicious content detected.
  - file: PKGBUILD
    status: safe
    summary: Standard bin PKGBUILD with pinned checksum, no malicious activity.
---

Materializing bedrock-on-linux-bin from local mirror...
Materialized bedrock-on-linux-bin
Analyzing bedrock-on-linux-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
Running `makepkg --printsrcinfo` only sources the top-level scope of this PKGBUILD. The top-level content consists entirely of static variable assignments: package metadata, dependencies, source URL, a pinned SHA256 checksum, and `noextract`. There are no top-level command substitutions, function calls, network operations, or encoded/obfuscated commands that would execute during sourcing.

The `prepare()` and `package()` functions contain file operations (chmod, appimage extraction, install, sed, find/cp), but these functions are not executed by `makepkg --printsrcinfo`. Any concerns about those functions belong to the full PKGBUILD audit, not this narrow gate. The source is fetched from the project's own GitHub releases URL with a pinned checksum, which is consistent with normal packaging practice.
</details>
<evidence>
</evidence>
<summary>
Top-level is static metadata only; no code executes during printsrcinfo. Safe.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Top-level is static metadata only; no code executes during printsrcinfo. Safe.
Reviewing the 2 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/2] Reviewing .SRCINFO...
[0/2] Reviewing .SRCINFO, PKGBUILD...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The .SRCINFO file contains only package metadata: name, version, dependencies, source URL with a pinned SHA-256 checksum, and upstream license and author information. There is no executable code, obfuscation, or suspicious network requests. The source points to the project's own GitHub releases, and the provided checksum ensures integrity. This file follows standard AUR packaging practices for a prebuilt binary package.
</details>
<evidence></evidence>
<summary>Standard metadata, no malicious content detected.</summary>
</security_assessment>

[1/2] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard metadata, no malicious content detected.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD uses standard AppImage packaging practices. The source is pinned with a SHA256 checksum, and the `prepare()` function extracts the AppImage with `--appimage-extract`, which is the intended mechanism for accessing contents inside an AppImage without executing the application. No network requests, obfuscated commands, or dangerous operations are present. All actions in `package()` copy files from the extracted `squashfs-root` (LICENSE, .desktop, icons) and adjust the `.desktop` file for the package's install path. There is no evidence of exfiltration, backdoors, or injection of malicious code.
</details>
<evidence></evidence>
<summary>Standard bin PKGBUILD with pinned checksum, no malicious activity.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard bin PKGBUILD with pinned checksum, no malicious activity.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 8,918
  Completion Tokens: 1,345
  Total Tokens: 10,263
  Total Cost: $0.001821
  Execution Time: 22.12 seconds

Final Status: SAFE


No issues found.
