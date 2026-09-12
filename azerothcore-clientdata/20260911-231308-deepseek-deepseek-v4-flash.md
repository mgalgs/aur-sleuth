---
package: azerothcore-clientdata
pkgver: 20.0
pkgrel: 3
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 171a316e053e9c4b28731ccb1aa63b1168550d3a
prompt_tokens: 9705
completion_tokens: 1489
total_tokens: 11194
cost: 0.00085762446
execution_time: 55.56
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-11T23:13:07Z
file_verdicts:
  - file: azerothcore-clientdata.install
    status: safe
    summary: Routine post-install config update for AzerothCore data directory.
  - file: .SRCINFO
    status: safe
    summary: Standard package metadata; no code to execute.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR package, no malicious content.
---

Materializing azerothcore-clientdata from local mirror...
Materialized azerothcore-clientdata
Analyzing azerothcore-clientdata AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The top-level scope of this PKGBUILD contains only static variable assignments and function definitions. No command substitutions, arithmetic expansions, or other dynamic code execution occurs during sourcing. The `source` array uses the `${pkgver}` variable, but that is a simple string substitution from a previously defined literal. There are no calls to `curl`, `wget`, `eval`, `base64`, or any other suspicious commands at the global level. Functions (`build()`, `package()`) are defined but not executed during `makepkg --printsrcinfo`. Therefore, sourcing this PKGBUILD poses no risk for this narrow gate.
</details>
<evidence></evidence>
<summary>Top-level scope is safe; no dynamic code execution.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Top-level scope is safe; no dynamic code execution.
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, PKGBUILD...
[0/3] Reviewing .SRCINFO, PKGBUILD, azerothcore-clientdata.install...
LLM auditresponse for azerothcore-clientdata.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The `.install` file defines standard post-installation and post-upgrade hooks for an Arch Linux package. It modifies a configuration file (`/etc/azerothcore/worldserver.conf`) by updating the `DataDir` setting to point to the application's data directory (`/usr/share/azerothcore/data`). This is a routine and expected operation for server software that needs a configured data path. There are no network requests, no obfuscated or dangerous commands, and no manipulation of files outside the application's scope. The script only operates on its own configuration file and does nothing that would indicate a supply-chain attack or malicious behavior.
</details>
<evidence></evidence>
<summary>Routine post-install config update for AzerothCore data directory.</summary>
</security_assessment>

[1/3] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed azerothcore-clientdata.install. Status: SAFE -- Routine post-install config update for AzerothCore data directory.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard AUR `.SRCINFO` metadata file for the `azerothcore-clientdata` package. It contains only declarative fields: package name, version, description, dependencies, source URL (pointing to the official GitHub releases of the upstream project), and a SHA-256 checksum. There are no executable instructions, no obfuscated code, no unexpected network destinations or file operations. The source is pinned to a specific version with a checksum, which is good practice. No malicious behavior is present.
</details>
<evidence></evidence>
<summary>Standard package metadata; no code to execute.</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed .SRCINFO. Status: SAFE -- Standard package metadata; no code to execute.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a standard AUR package for pre-extracted client map data for the AzerothCore WoW emulator. It downloads a release zip from the official GitHub repository (wowgaming/client-data) with a pinned checksum. The build step is a no‑op, and the package step simply copies extracted data directories (Cameras, dbc, maps, mmaps, vmaps) into `/usr/share/azerothcore/data`. There are no suspicious network requests (other than the declared upstream source), no obfuscated code, no dangerous commands like `eval`, `curl`, `wget`, `bash`, or `git pull`. The file follows standard packaging practices and contains no evidence of malicious or supply‑chain attack behavior.
</details>
<evidence></evidence>
<summary>Standard AUR package, no malicious content.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR package, no malicious content.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 9,705
  Completion Tokens: 1,489
  Total Tokens: 11,194
  Total Cost: $0.000858
  Execution Time: 55.56 seconds

Final Status: SAFE


No issues found.
