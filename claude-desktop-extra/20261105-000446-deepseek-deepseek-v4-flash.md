---
package: claude-desktop-extra
pkgver: 4.16336.0
pkgrel: 3
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 20432
completion_tokens: 5679
total_tokens: 26111
cost: 0.002892890
execution_time: 75.75
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-11-05T00:04:45Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata file with no executable code.
  - file: claude-desktop-extra.install
    status: safe
    summary: Install hook performs standard sandbox, AppArmor, and cache setup only; no malicious behavior.
  - file: PKGBUILD
    status: safe
    summary: No evidence of malicious or dangerous behavior.
---

Materializing claude-desktop-extra from local mirror...
Materialized claude-desktop-extra
Analyzing claude-desktop-extra AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only standard variable definitions (pkgname, pkgver, depends, source arrays, etc.) and one function definition (`package()`). There are no command substitutions (`$(...)` or backticks), no `eval` calls, no network operations, no file writes, and no function invocations at the global scope. All code that performs actions lives inside the `package()` function, which is **not executed** by `makepkg --printsrcinfo`. The global scope is purely declarative, so sourcing this PKGBUILD to extract metadata is safe.
</details>
<evidence></evidence>
<summary>No top-level executable code; only variable definitions and a function definition.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No top-level executable code; only variable definitions and a function definition.
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, PKGBUILD...
[0/3] Reviewing .SRCINFO, PKGBUILD, claude-desktop-extra.install...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The .SRCINFO file is a metadata descriptor for the AUR package. It contains package name, version, description, dependencies, and two source tarballs (x86_64 and aarch64) hosted on the same GitHub repository under the same maintainer. Each source tarball is pinned with a SHA256 checksum, ensuring integrity. There are no executable instructions, no network requests to unexpected hosts, no obfuscation, and no file operations. All content is declarative and follows standard AUR packaging practices.
</details>
<evidence>
</evidence>
<summary>Standard AUR metadata file with no executable code.</summary>
</security_assessment>

[1/3] Reviewing PKGBUILD, claude-desktop-extra.install...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata file with no executable code.
LLM auditresponse for claude-desktop-extra.install:
<security_assessment>
<decision>SAFE</decision>
<details>
This pacman install hook performs routine packaging operations for a Chromium-based desktop application. Setting `/usr/lib/claude-desktop/chrome-sandbox` to owner root with mode 4755 mirrors the standard Chromium setuid sandbox setup used by the official Claude Desktop package and many other Chromium-based applications. Writing an AppArmor profile with `flags=(unconfined)` and `userns` to `/etc/apparmor.d/` is also a well-known pattern for allowing Chromium's namespace sandbox on systems that restrict unprivileged user namespaces, and it is loaded only when AppArmor is active.

The remaining operations are limited to refreshing desktop/icon caches and printing informational notes about optional dependencies and a package rename. The script reads `/etc/pacman.conf` with `grep` only to detect a legacy repository section and display a migration hint. There are no network requests, no downloads or execution of remote code, no obfuscated or encoded commands, no exfiltration of local data, and no modification of unrelated system files. All file operations target the application's own sandbox binary, the package's own AppArmor profile, and standard desktop cache locations. The SUID bit and AppArmor exception are security-relevant, but they are intentional and expected for this application class, not evidence of a supply-chain attack.
</details>
<evidence>
</evidence>
<summary>
Install hook performs standard sandbox, AppArmor, and cache setup only; no malicious behavior.
</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed claude-desktop-extra.install. Status: SAFE -- Install hook performs standard sandbox, AppArmor, and cache setup only; no malicious behavior.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a standard, well-documented AUR packaging script. The source tarball is fetched from the project's official GitHub releases and is integrity-checked with a pinned SHA256 hash, ensuring build-time supply-chain integrity. The `package()` function performs only routine operations: extracting the tarball, installing files to `/usr/lib/claude-desktop`, writing a `.desktop` entry, installing icons, MIME types, a GNOME search provider, and opt-in TPM access rules/polkit actions. All of these correspond directly to the stated features of the package (Computer Use, Cowork VM, Claude Code). The SUID bit is set on `chrome-sandbox` which is standard and required for Chromium sandboxing. No network requests are made during the build, no obfuscated or encoded code is executed, and no data is exfiltrated. The maintainer provides transparent commentary for every dependency and configuration file. There is no evidence of injected malicious code.
</details>
<evidence></evidence>
<summary>No evidence of malicious or dangerous behavior.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- No evidence of malicious or dangerous behavior.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 20,432
  Completion Tokens: 5,679
  Total Tokens: 26,111
  Total Cost: $0.002893
  Execution Time: 75.75 seconds

Final Status: SAFE


No issues found.
