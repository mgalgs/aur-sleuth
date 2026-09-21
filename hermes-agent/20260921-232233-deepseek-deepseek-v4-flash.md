---
package: hermes-agent
pkgver: 0.21.4
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 15184
completion_tokens: 1999
total_tokens: 17183
cost: 0.00106345008
execution_time: 73.19
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-21T23:22:33Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard .gitignore; no malicious content.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD with no malicious code detected.
  - file: requirements.md
    status: safe
    summary: Documentation file, no executable code or suspicious content.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata with pinned checksum; no malicious behavior found.
---

Materializing hermes-agent from local mirror...
Materialized hermes-agent
Analyzing hermes-agent AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD's top-level scope consists entirely of variable definitions (pkgname, pkgver, depends, source, etc.) and function declarations (build, check, package). No command substitutions, eval statements, or dangerous operations are executed at parse time. Running `makepkg --printsrcinfo` will only source these definitions and function bodies; none of the potentially risky operations (npm ci, uv sync, rsync, file writes) run during this step. The source URL is a standard GitHub archive tarball and is not fetched or executed during metadata parsing.
</details>
<evidence></evidence>
<summary>No dangerous top-level code present.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous top-level code present.
Reviewing the 4 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/4] Reviewing .SRCINFO...
[0/4] Reviewing .SRCINFO, PKGBUILD...
[0/4] Reviewing .SRCINFO, PKGBUILD, .gitignore...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.gitignore` file used in AUR packaging. It lists common patterns to prevent build artifacts and intermediate files from being tracked in version control. No obfuscation, network requests, file manipulation, or any other suspicious behavior is present. The file is consistent with normal packaging practices and contains no evidence of a supply-chain attack.
</details>
<evidence></evidence>
<summary>Standard .gitignore; no malicious content.</summary>
</security_assessment>

[1/4] Reviewing .SRCINFO, PKGBUILD...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore; no malicious content.
[1/4] Reviewing .SRCINFO, PKGBUILD, requirements.md...
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard Arch Linux packaging practices. It downloads the upstream source from the official GitHub repository using a pinned version tag and a fixed SHA256 checksum. Build steps include npm ci, npm run build, and uv venv/sync, all of which are routine for Node.js/Python projects. The package() function installs files to /opt and creates a wrapper script under /usr/bin. No malicious behavior—such as data exfiltration, obfuscated commands, unexpected network requests, or tampering with system files—is present. The creation of a .pth file and a .git directory are benign workarounds for the application’s dependencies.
</details>
<evidence></evidence>
<summary>Standard AUR PKGBUILD with no malicious code detected.</summary>
</security_assessment>

[2/4] Reviewing .SRCINFO, requirements.md...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD with no malicious code detected.
LLM auditresponse for requirements.md:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a documentation file (`requirements.md`) that lists Python dependency declarations for the `hermes-agent` package. It consolidates information from `requirements.txt` and `pyproject.toml` files, specifying core runtime dependencies, optional feature groups, submodule dependencies, and a legacy convenience list. All contents are standard Python package references with version constraints (e.g., `openai&gt;=2.21.0,&lt;3`). There are no commands, no network requests, no obfuscation, no file operations, no system modifications, and no embedded executable code. This is purely informational documentation.
</details>
<evidence></evidence>
<summary>Documentation file, no executable code or suspicious content.</summary>
</security_assessment>

[3/4] Reviewing .SRCINFO...
+ Reviewed requirements.md. Status: SAFE -- Documentation file, no executable code or suspicious content.
LLM auditresponse for .SRCINFO:
 <security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard AUR `.SRCINFO` metadata file. It declares a package named `hermes-agent` from the official `NousResearch/hermes-agent` GitHub repository, with a pinned tarball URL and a pinned `sha256sum`. The dependencies listed are consistent with a desktop AI agent application that uses Node.js/Python and Chromium-based browser automation (nss, atk, cups, libdrm, mesa, pango, cairo, alsa-lib, etc.).

No code is present in this file, and no malicious operations such as data exfiltration, obfuscation, unexpected commands, or execution of untrusted content appear anywhere. The version string `pkgver = 0.21.4` not matching the source tag `v2026.9.21` is unusual and could indicate an upstream packaging inconsistency, but it is not by itself evidence of malicious behavior, and the checksum is pinned. The file conforms to normal AUR packaging practices.
</details>
<evidence>
</evidence>
<summary>
Standard AUR metadata with pinned checksum; no malicious behavior found.
</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata with pinned checksum; no malicious behavior found.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 15,184
  Completion Tokens: 1,999
  Total Tokens: 17,183
  Total Cost: $0.001063
  Execution Time: 73.19 seconds

Final Status: SAFE


No issues found.
