---
package: decky-loader
pkgver: 3.2.10
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 12887
completion_tokens: 2514
total_tokens: 15401
cost: 0.001630265
execution_time: 36.72
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-26T11:22:46Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata, no security issues.
  - file: decky-loader-helper
    status: safe
    summary: Standard packaging helper, no malicious behavior.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD with no malicious indicators.
  - file: "decky-loader@.service"
    status: safe
    summary: Standard systemd service unit, no malicious behavior.
---

Materializing decky-loader from local mirror...
Materialized decky-loader
Analyzing decky-loader AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only variable definitions and function definitions at the top level. No command substitutions, backtick expressions, or other executable code exists outside the `pkgver()`, `build()`, or `package()` functions. Therefore sourcing this PKGBUILD for `makepkg --printsrcinfo` does not execute any potentially malicious code. All operations that could be considered dangerous (sed, pnpm, poetry, install) are confined within the function bodies and will not run during this parsing step.
</details>
<evidence></evidence>
<summary>No dangerous top-level code; safe to source.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous top-level code; safe to source.
Reviewing the 4 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/4] Reviewing .SRCINFO...
[0/4] Reviewing .SRCINFO, PKGBUILD...
[0/4] Reviewing .SRCINFO, PKGBUILD, decky-loader-helper...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The .SRCINFO file is standard AUR metadata for the decky-loader package. It defines the package name, version, dependencies, and sources. All source URLs point to the official GitHub repository (https://github.com/SteamDeckHomebrew/decky-loader) with a pinned version tag (v3.2.10). Checksums are provided and are not set to SKIP, meaning the integrity of the downloaded tarballs is verified. No executable code, obfuscation, suspicious network requests, or unexpected file operations are present. The file contains only declarative package configuration.
</details>
<evidence>
</evidence>
<summary>Standard AUR metadata, no security issues.</summary>
</security_assessment>

[1/4] Reviewing PKGBUILD, decky-loader-helper...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata, no security issues.
[1/4] Reviewing PKGBUILD, decky-loader-helper, decky-loader@.service...
LLM auditresponse for decky-loader-helper:
<security_assessment>
<decision>SAFE</decision>
<details>
The script performs routine setup operations for the decky-loader package: it creates a data directory under the target user's home, writes a version file, and ensures a Steam debugging flag file exists. All paths are restricted to the user's home directory, and file ownership is set explicitly. There are no network requests, obfuscated commands, or unexpected system modifications. The script does not execute any user-controlled input in a dangerous context (e.g., eval, curl, wget). This is a standard helper script for AUR packaging.
</details>
<evidence></evidence>
<summary>Standard packaging helper, no malicious behavior.</summary>
</security_assessment>

[2/4] Reviewing PKGBUILD, decky-loader@.service...
+ Reviewed decky-loader-helper. Status: SAFE -- Standard packaging helper, no malicious behavior.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard Arch packaging practices. All sources are pinned with SHA-256 checksums. The build process uses the official upstream repository and standard tooling (pnpm, poetry). No suspicious network requests, obfuscated code, or unexpected system modifications are present. The only patches adjust Python version compatibility and service file paths, which are normal packaging adjustments.
</details>
<evidence>
</evidence>
<summary>Standard AUR PKGBUILD with no malicious indicators.</summary>
</security_assessment>

[3/4] Reviewing decky-loader@.service...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD with no malicious indicators.
LLM auditresponse for decky-loader@.service:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard systemd service unit for the decky-loader application. It defines a service that runs `/usr/bin/decky-loader` as root with environment variables derived from `${HOMEBREW_FOLDER}`. No obfuscation, network requests, or unexpected commands are present. Running as root is a design choice that may be necessary for the plugin loader’s hardware access, but it is not evidence of a supply‑chain attack. The use of `${HOMEBREW_FOLDER}` could be a trust concern if set by an untrusted user, but that is a configuration‑time risk, not an injected malicious behavior in this file.
</details>
<evidence></evidence>
<summary>Standard systemd service unit, no malicious behavior.</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed decky-loader@.service. Status: SAFE -- Standard systemd service unit, no malicious behavior.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 12,887
  Completion Tokens: 2,514
  Total Tokens: 15,401
  Total Cost: $0.001630
  Execution Time: 36.72 seconds

Final Status: SAFE


No issues found.
