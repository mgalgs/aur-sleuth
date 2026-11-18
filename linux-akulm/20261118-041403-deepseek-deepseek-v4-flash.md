---
package: linux-akulm
pkgver: 0.4.0
pkgrel: 2
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 3f8f339d2184315a824bf6b8e30068212deac13a
prompt_tokens: 7878
completion_tokens: 1888
total_tokens: 9766
cost: 0.00104886
execution_time: 15.3
files_reviewed: 2
files_skipped: 0
maintainer_files: 2
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-11-18T04:14:03Z
file_verdicts:
  - file: PKGBUILD
    status: safe
    summary: Clean PKGBUILD with verified upstream sources.
  - file: .SRCINFO
    status: safe
    summary: "AUR metadata is clean; sources are pinned and from the project's GitHub."
---

Materializing linux-akulm from local mirror...
Materialized linux-akulm
Analyzing linux-akulm AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD's global scope consists solely of standard variable definitions (`pkgname`, `pkgver`, `pkgrel`, `pkgdesc`, `arch`, `url`, `license`, `depends`, `source`, `sha256sums`). There are no command substitutions, backtick executions, `eval`, `curl`, `wget`, or any other dangerous constructs that would execute during sourcing. The `package()` function is defined but is not executed by `makepkg --printsrcinfo`. Therefore, running `makepkg --printsrcinfo` on this file is safe.
</details>
<evidence></evidence>
<summary>No dangerous global code to execute.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous global code to execute.
Reviewing the 2 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/2] Reviewing .SRCINFO...
[0/2] Reviewing .SRCINFO, PKGBUILD...
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD downloads four files from the official upstream GitHub repository (bebehei/akulm) via HTTPS and verifies them with pinned SHA256 checksums. The `package()` function only installs these files into the standard system paths (`/usr/share/libalpm/hooks/`, `/usr/lib/tmpfiles.d/`, `/usr/bin/`) using `install`. No network requests beyond the declared sources, no obfuscated commands, no dangerous operations (curl, eval, base64, etc.), and no modifications to files outside the package directory. The package is a straightforward set of pacman hooks and a helper script for managing loadable kernel modules after system updates, which aligns with its stated purpose. There is no evidence of injected malicious code or supply-chain attack indicators.
</details>
<evidence></evidence>
<summary>Clean PKGBUILD with verified upstream sources.</summary>
</security_assessment>

[1/2] Reviewing .SRCINFO...
+ Reviewed PKGBUILD. Status: SAFE -- Clean PKGBUILD with verified upstream sources.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The `.SRCINFO` file is a standard AUR metadata file. It declares a package that installs pacman hooks for managing loadable kernel modules after system upgrades. All source files are fetched via HTTPS from the project&#39;s own GitHub repository (`raw.githubusercontent.com/bebehei/akulm/master/`), and each source has a pinned SHA-256 checksum, ensuring build-time integrity. Dependencies are limited to `pacman` and `rsync`, which are consistent with the package&#39;s stated purpose. No suspicious network destinations, obfuscated data, dangerous commands, or references to unrelated hosts appear. The file contains no executable content and follows normal AUR packaging practice.
</details>
<evidence>

</evidence>
<summary>AUR metadata is clean; sources are pinned and from the project&#39;s GitHub.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed .SRCINFO. Status: SAFE -- AUR metadata is clean; sources are pinned and from the project's GitHub.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 7,878
  Completion Tokens: 1,888
  Total Tokens: 9,766
  Total Cost: $0.001049
  Execution Time: 15.30 seconds

Final Status: SAFE


No issues found.
