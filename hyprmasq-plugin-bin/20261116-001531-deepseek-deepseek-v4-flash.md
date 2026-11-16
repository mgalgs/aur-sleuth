---
package: hyprmasq-plugin-bin
pkgver: 0.3.2
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 3f8f339d2184315a824bf6b8e30068212deac13a
prompt_tokens: 13752
completion_tokens: 5634
total_tokens: 19386
cost: 0.00225180
execution_time: 31.36
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-11-16T00:15:30Z
file_verdicts:
  - file: hyprland-builds
    status: safe
    summary: Plain text hash list, no executable content.
  - file: hyprmasq_plugin.lua
    status: safe
    summary: No malicious behavior; standard plugin loader.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata; no malicious content detected.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD with pinned checksums, no malicious operations.
---

Materializing hyprmasq-plugin-bin from local mirror...
Materialized hyprmasq-plugin-bin
Analyzing hyprmasq-plugin-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The global/top-level code in this PKGBUILD consists entirely of standard variable definitions (pkgname, pkgver, pkgrel, pkgdesc, etc.) and a `for` loop that appends URLs to the `source` array. No command substitutions, external program invocations (curl, wget, eval, etc.), or other potentially dangerous operations are executed at the top level. The `package()` function is present but is not invoked by `makepkg --printsrcinfo`. There is no mechanism for data exfiltration, downloading of untrusted payloads, or any other malicious behavior during sourcing. The PKGBUILD is safe to source for metadata extraction.
</details>
<evidence></evidence>
<summary>No top-level code is executed that would cause harm.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No top-level code is executed that would cause harm.
Reviewing the 4 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/4] Reviewing .SRCINFO...
[0/4] Reviewing .SRCINFO, PKGBUILD...
[0/4] Reviewing .SRCINFO, PKGBUILD, hyprland-builds...
LLM auditresponse for hyprland-builds:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `hyprland-builds` contains a list of known good build hashes and version identifiers for the hyprmasq plugin. It includes a comment referencing the upstream source for generating such lists. There is no executable code, no network requests, no obfuscation, and no system modifications. The content is purely declarative data used for integrity verification of pre-built binaries, which is standard practice in AUR packages providing binary releases.
</details>
<evidence></evidence>
<summary>Plain text hash list, no executable content.</summary>
</security_assessment>

[1/4] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed hyprland-builds. Status: SAFE -- Plain text hash list, no executable content.
[1/4] Reviewing .SRCINFO, PKGBUILD, hyprmasq_plugin.lua...
LLM auditresponse for hyprmasq_plugin.lua:
<security_assessment>
<decision>SAFE</decision>
<details>
The script loads a Hyprland plugin from a version-specific system path. It checks for the existence of the `.so` file, loads it if present, or displays a notification otherwise. No network requests, command execution, obfuscation, or unusual file operations occur. The version string comes from Hyprland's own API and is not user-controlled, so there is no path traversal risk. The code is a straightforward, benign plugin loader consistent with standard packaging practices.
</details>
<evidence></evidence>
<summary>No malicious behavior; standard plugin loader.</summary>
</security_assessment>

[2/4] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed hyprmasq_plugin.lua. Status: SAFE -- No malicious behavior; standard plugin loader.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This .SRCINFO file is standard AUR metadata describing a prebuilt binary package (hyprmasq-plugin-bin). All sources are fetched from the project's own GitHub repository (nyrda/hyprmasq) using HTTPS, and every source entry has a corresponding SHA-256 checksum. No sources are skipped, no unexpected URLs appear, and there is no executable logic embedded in this file. The dependency on hyprland and the prebuilt .so files for specific hyprland versions are expected for a plugin package. No evidence of malicious behavior, obfuscation, or supply-chain attack indicators was found.
</details>
<evidence></evidence>
<summary>Standard AUR metadata; no malicious content detected.</summary>
</security_assessment>

[3/4] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata; no malicious content detected.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard packaging practices for a prebuilt Hyprland plugin distributed via the AUR. All source files have pinned checksums (no `SKIP` entries), preventing tampering at download time. The `source` array fetches `.so` binaries from the project's own GitHub releases and a `LICENSE` file from the upstream repository—expected behaviour for a binary package. The `package()` function uses only standard shell commands (`install`, `awk`, `ln -s`) to install plugin binaries, build-version mapping files, a Lua loader configuration, and the license. No network requests, obfuscated code, base64 decoding, or dangerous operations (e.g., `eval`, `curl`&#47;`bash`) are present. The symlink creation from the `hyprland-builds` file is a normal mechanism for mapping multiple Hyprland versions to the appropriate plugin binary and is not inherently suspicious. There is no evidence of malicious intent or any deviation from legitimate packaging workflow.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD with pinned checksums, no malicious operations.</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD with pinned checksums, no malicious operations.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 13,752
  Completion Tokens: 5,634
  Total Tokens: 19,386
  Total Cost: $0.002252
  Execution Time: 31.36 seconds

Final Status: SAFE


No issues found.
