---
package: claude-desktop-extra
pkgver: 2.31226.0
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 18881
completion_tokens: 4559
total_tokens: 23440
cost: 0.0059431417
execution_time: 103.81
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-09T15:14:44Z
file_verdicts:
  - file: PKGBUILD
    status: safe
    summary: "Standard AUR PKGBUILD: pinned checksums, expected install steps, no malicious behavior."
  - file: claude-desktop-extra.install
    status: safe
    summary: "Standard install hook: sandbox permissions, AppArmor profile, cache refresh; no malicious behavior."
  - file: .SRCINFO
    status: safe
    summary: No malicious content; .SRCINFO contains only descriptive package metadata.
---

Materializing claude-desktop-extra from local mirror...
Materialized claude-desktop-extra
Analyzing claude-desktop-extra AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only top-level variable definitions (pkgname, pkgver, depends, source, sha256sums, etc.) and a `package()` function definition. There are no command substitutions via `$(...)` or backticks, no `eval`, no `curl`/`wget` calls, no file reads or writes, and no other code execution at global scope. The `package()` function is defined but not invoked during `makepkg --printsrcinfo`, which only sources the global scope. All variable expansions use standard shell parameter expansion (e.g., `${pkgver}`) for constructing source URLs — this is normal PKGBUILD practice, not code execution. Sourcing this file poses no risk.
</details>
<evidence></evidence>
<summary>No exec at global scope; safe to parse.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No exec at global scope; safe to parse.
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing PKGBUILD...
[0/3] Reviewing PKGBUILD, claude-desktop-extra.install...
[0/3] Reviewing PKGBUILD, claude-desktop-extra.install, .SRCINFO...
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is consistent with ordinary AUR packaging practices. It downloads a prebuilt tarball from the maintainer's own GitHub releases with pinned SHA-256 checksums for x86_64 and aarch64, then installs the extracted tree into /usr/lib/claude-desktop, installs a launcher, desktop entry, icons, MIME definitions, GNOME search provider files, and license. All file operations are confined to the package destination ($pkgdir), and the SUID bit on chrome-sandbox is normal for packaging Electron/Chromium-based applications.

No obfuscated code, dynamic payload execution, unexpected network calls, or exfiltration behaviors are present. The source originates from the package's own upstream repository rather than an unrelated host, and the checksums are pinned rather than SKIP. Trusting a maintainer-built binary bundle is a supply-chain hygiene consideration, but it is not evidence of injected malicious behavior in this file.
</details>
<evidence>
</evidence>
<summary>
Standard AUR PKGBUILD: pinned checksums, expected install steps, no malicious behavior.
</summary>
</security_assessment>

[1/3] Reviewing claude-desktop-extra.install, .SRCINFO...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD: pinned checksums, expected install steps, no malicious behavior.
LLM auditresponse for claude-desktop-extra.install:
<security_assessment>
<decision>SAFE</decision>
<details>
This is an Arch package install script (`.install`) for `claude-desktop-extra`. It performs routine post-install tasks: making the bundled Chromium `chrome-sandbox` SUID root with mode 4755, writing and loading an AppArmor profile that allowlists the application for user namespaces, and refreshing desktop/icon caches. It also prints informational notes about optional Cowork VM dependencies and a package rename transition.

No network requests, downloads, obfuscated code, or file operations outside the package's own scope were found. Setting the sandbox SUID and writing an AppArmor profile for the application are expected packaging actions that mirror the upstream vendor's own postinst behavior; they adjust system security policy to support the application but do not exfiltrate data or install backdoors. The script handles failures safely (`|| true`) and only removes its own AppArmor profile on uninstall. This is standard AUR packaging practice, not malicious behavior.
</details>
<evidence>
</evidence>
<summary>
Standard install hook: sandbox permissions, AppArmor profile, cache refresh; no malicious behavior.
</summary>
</security_assessment>

[2/3] Reviewing .SRCINFO...
+ Reviewed claude-desktop-extra.install. Status: SAFE -- Standard install hook: sandbox permissions, AppArmor profile, cache refresh; no malicious behavior.
LLM auditresponse for .SRCINFO:
 <security_assessment>
<decision>SAFE</decision>
<details>
The file is a `.SRCINFO` metadata file containing only the package base name and description. It contains no functions, no source URLs, no build or install logic, and no executable content whatsoever. There are no network operations, no file system modifications, no obfuscation, and no commands that could be used to exfiltrate data or execute attacker-controlled code. The description simply states the package purpose: providing Claude Desktop with extra features for distributions upstream does not support. There is nothing here that deviates from standard packaging metadata, and no evidence of injected or malicious behavior.
</details>
<evidence>
</evidence>
<summary>No malicious content; .SRCINFO contains only descriptive package metadata.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed .SRCINFO. Status: SAFE -- No malicious content; .SRCINFO contains only descriptive package metadata.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 18,881
  Completion Tokens: 4,559
  Total Tokens: 23,440
  Total Cost: $0.005943
  Execution Time: 103.81 seconds

Final Status: SAFE


No issues found.
