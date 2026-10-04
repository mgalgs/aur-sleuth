---
package: searxng-rama
pkgver: r9809.19ffbcd
pkgrel: 3
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 19860
completion_tokens: 2627
total_tokens: 22487
cost: 0.000703192
execution_time: 36.4
files_reviewed: 3
files_skipped: 0
maintainer_files: 3
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-03T07:16:20Z
file_verdicts:
  - file: .SRCINFO
    status: safe
    summary: Standard .SRCINFO with no malicious content.
  - file: searxng-rama.install
    status: safe
    summary: Standard package install script, no malicious behavior.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD with no malicious indicators found.
---

Materializing searxng-rama from local mirror...
Materialized searxng-rama
Analyzing searxng-rama AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD's top-level scope (the part evaluated by `makepkg --printsrcinfo`) contains only standard variable definitions—pkgname, pkgver, source array, etc.—and function definitions for `pkgver()`, `build()`, and `package()`. There is no top-level code that executes commands, downloads data, or performs any other dangerous operation. All potentially risky actions (git operations, npm builds, pip installs, file copies) are only inside the `build()` and `package()` functions, which are **not** executed during `makepkg --printsrcinfo`. Therefore, sourcing this PKGBUILD to print metadata is safe.
</details>
<evidence>
</evidence>
<summary>No dangerous top-level code; printsrcinfo safe.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous top-level code; printsrcinfo safe.
Reviewing the 3 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/3] Reviewing .SRCINFO...
[0/3] Reviewing .SRCINFO, PKGBUILD...
[0/3] Reviewing .SRCINFO, PKGBUILD, searxng-rama.install...
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The .SRCINFO file contains only package metadata, dependencies, and source references. Both sources are git repositories from GitHub, which is standard practice for AUR packages. The b2sums are set to SKIP, which is expected for VCS sources (git) and is not a security issue. No commands, obfuscated code, network requests, or file operations are present in this file. The file describes a package that combines upstream searxng with a custom theme from a fork, which matches the package description. There is no evidence of malicious behavior or supply chain attack indicators.
</details>
<evidence></evidence>
<summary>Standard .SRCINFO with no malicious content.</summary>
</security_assessment>

[1/3] Reviewing PKGBUILD, searxng-rama.install...
+ Reviewed .SRCINFO. Status: SAFE -- Standard .SRCINFO with no malicious content.
LLM auditresponse for searxng-rama.install:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard Arch Linux `.install` script for the `searxng-rama` package. It handles user creation, secret key generation, permission setting, systemd management, and virtual environment recovery. All operations are conventional for a package that deploys a Python-based web service. The `post_upgrade()` virtual environment rebuild uses `pip install` from the local `requirements.txt` file, fetching packages from PyPI — this is expected behavior, not a supply-chain attack. No code is obfuscated, no data is exfiltrated, and no unexpected network destinations are contacted. The script contains no malicious elements.
</details>
<evidence></evidence>
<summary>Standard package install script, no malicious behavior.</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed searxng-rama.install. Status: SAFE -- Standard package install script, no malicious behavior.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard AUR packaging practices for a VCS-based package. It clones two git repositories (the upstream SearXNG and the maintainer's RAMA theme repository) and builds the application with npm and Python tooling. No obfuscated commands, hidden network requests, or data exfiltration mechanisms are present. The build process uses `--ignore-scripts` for npm to prevent arbitrary script execution and applies sensible systemd security hardening (`PrivateTmp`, `NoNewPrivileges`). The secret key placeholder is intentionally left unset for per-machine generation during installation. All configuration changes (port, bind address, instance name) are expected customization for the RAMA edition. The unpacked sources and maintainer scripts are treated as upstream functionality rather than injected malicious code.
</details>
<evidence></evidence>
<summary>Standard AUR PKGBUILD with no malicious indicators found.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD with no malicious indicators found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 19,860
  Completion Tokens: 2,627
  Total Tokens: 22,487
  Total Cost: $0.000703
  Execution Time: 36.40 seconds

Final Status: SAFE


No issues found.
