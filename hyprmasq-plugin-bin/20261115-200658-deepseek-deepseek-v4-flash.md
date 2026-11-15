---
package: hyprmasq-plugin-bin
pkgver: 0.3.1
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 3f8f339d2184315a824bf6b8e30068212deac13a
prompt_tokens: 13663
completion_tokens: 2274
total_tokens: 15937
cost: 0.00163899
execution_time: 18.88
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-11-15T20:06:58Z
file_verdicts:
  - file: hyprland-builds
    status: safe
    summary: Static data file; no executable or dangerous content.
  - file: .SRCINFO
    status: safe
    summary: Static metadata file; no security issues detected.
  - file: hyprmasq_plugin.lua
    status: safe
    summary: Standard plugin loader; no security concerns.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD for a prebuilt plugin, no malicious content.
---

Materializing hyprmasq-plugin-bin from local mirror...
Materialized hyprmasq-plugin-bin
Analyzing hyprmasq-plugin-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD's global/top-level scope only contains standard variable definitions (pkgname, pkgver, source, sha256sums, etc.) and a simple loop that appends URL strings to the source array. No commands are executed at the top level that would perform network requests, exfiltrate data, run arbitrary code, or modify the system. The `package()` function, which contains file installation logic, is only defined and not invoked during `makepkg --printsrcinfo`. Therefore, sourcing this PKGBUILD to print SRCINFO is safe.
</details>
<evidence></evidence>
<summary>No dangerous top-level code; safe to source.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous top-level code; safe to source.
Reviewing the 4 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/4] Reviewing .SRCINFO...
[0/4] Reviewing .SRCINFO, PKGBUILD...
[0/4] Reviewing .SRCINFO, PKGBUILD, hyprland-builds...
LLM auditresponse for hyprland-builds:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `hyprland-builds` is a simple data file containing two lines that map build hashes to version strings. It includes a comment referencing the upstream source (`github.com/nyrda/hyprmasq`). There are no commands, network operations, encoded data, or any other potentially malicious content. The file serves purely as a lookup table for plugin compatibility and does not perform any actions during packaging or installation.
</details>
<evidence>
</evidence>
<summary>Static data file; no executable or dangerous content.</summary>
</security_assessment>

[0/4] Reviewing .SRCINFO, PKGBUILD, hyprland-builds, hyprmasq_plugin.lua...
[1/4] Reviewing .SRCINFO, PKGBUILD, hyprmasq_plugin.lua...
+ Reviewed hyprland-builds. Status: SAFE -- Static data file; no executable or dangerous content.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `hyprmasq-plugin-bin/.SRCINFO` is a static metadata file for an Arch User Repository package. It contains only package descriptions, URLs, dependencies, source URLs pointing to the project's official GitHub repository, and pinned SHA-256 checksums. No executable code, obfuscated content, or suspicious operations are present. Sources are all from the project's own upstream, and checksums are provided, behaving as expected from standard packaging. There are no signs of malicious intent or supply-chain attack indicators.
</details>
<evidence>

</evidence>
<summary>Static metadata file; no security issues detected.</summary>
</security_assessment>

[2/4] Reviewing PKGBUILD, hyprmasq_plugin.lua...
+ Reviewed .SRCINFO. Status: SAFE -- Static metadata file; no security issues detected.
LLM auditresponse for hyprmasq_plugin.lua:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a straightforward Lua script for loading the hyprmasq plugin into Hyprland. It constructs a path using the Hyprland version, checks if the corresponding `.so` file exists locally, and loads it via the Hyprland API `hl.plugin.load()`. If the file is missing, it displays a notification to the user. No network requests, obfuscation, or dangerous operations are present. The behavior is consistent with a standard plugin loader and does not introduce any supply-chain attack vectors.
</details>
<evidence></evidence>
<summary>Standard plugin loader; no security concerns.</summary>
</security_assessment>

[3/4] Reviewing PKGBUILD...
+ Reviewed hyprmasq_plugin.lua. Status: SAFE -- Standard plugin loader; no security concerns.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard AUR packaging practices for a prebuilt binary plugin. All sources are fetched from the official GitHub repository of the upstream project (`github.com/nyrda/hyprmasq`), and checksums are provided and verified. The build and install steps consist only of copying files, reading a local source file (`hyprland-builds`) to create symlinks, and installing a Lua configuration file. There is no obfuscated code, no dangerous commands like `eval`, `curl|bash`, or unexpected network requests. No data exfiltration, backdoors, or tampering with system files outside the package scope is present.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD for a prebuilt plugin, no malicious content.</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD for a prebuilt plugin, no malicious content.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 13,663
  Completion Tokens: 2,274
  Total Tokens: 15,937
  Total Cost: $0.001639
  Execution Time: 18.88 seconds

Final Status: SAFE


No issues found.
