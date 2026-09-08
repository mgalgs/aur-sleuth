---
package: hermes-agent
pkgver: 0.21.1
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 171a316e053e9c4b28731ccb1aa63b1168550d3a
prompt_tokens: 15045
completion_tokens: 2177
total_tokens: 17222
cost: 0.00165939046
execution_time: 30.66
files_reviewed: 4
files_skipped: 0
maintainer_files: 4
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-09-08T19:02:51Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard gitignore file with no malicious content.
  - file: .SRCINFO
    status: safe
    summary: Standard metadata file, no malicious content found.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD with no malicious content.
  - file: requirements.md
    status: safe
    summary: Static dependency documentation with no malicious code.
---

Materializing hermes-agent from local mirror...
Materialized hermes-agent
Analyzing hermes-agent AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD&#39;s global scope consists only of static variable assignments (pkgname, pkgver, source, sha256sums, etc.) with no command substitutions, backticks, evals, or any other code that would execute when sourced. All downloads and build/install logic are contained within functions (`build()`, `check()`, `package()`) which are not invoked by `makepkg --printsrcinfo`. The source array points to the official GitHub archive using HTTPS with a pinned sha256sum (not SKIP). There is no risk of malicious execution during the metadata parsing step.
</details>
<evidence></evidence>
<summary>No dangerous code in global scope; safe to parse.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous code in global scope; safe to parse.
Reviewing the 4 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/4] Reviewing .SRCINFO...
[0/4] Reviewing .SRCINFO, .gitignore...
[0/4] Reviewing .SRCINFO, .gitignore, PKGBUILD...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard `.gitignore` file used to exclude build artifacts and local files from version control. The patterns listed (`.cecli*`, `hermes-agent`, `src*`, `pkg*`, `*.pkg.tar.zst`) are typical for an Arch Linux package build directory, ignoring editor temporary files, the built agent binary, source extraction directories, package build directories, and built package archives. No executable code, network requests, or suspicious operations are present. The file contains only plain text ignore patterns and poses no security risk.
</details>
<evidence></evidence>
<summary>Standard gitignore file with no malicious content.</summary>
</security_assessment>

[0/4] Reviewing .SRCINFO, .gitignore, PKGBUILD, requirements.md...
[1/4] Reviewing .SRCINFO, PKGBUILD, requirements.md...
+ Reviewed .gitignore. Status: SAFE -- Standard gitignore file with no malicious content.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard AUR `.SRCINFO` metadata file for the `hermes-agent` package. It declares the package name, version, dependencies, and source URL. The source is a tarball from the official upstream GitHub repository (`https://github.com/NousResearch/hermes-agent`), and the checksum is provided (not skipped). All listed dependencies are typical for a project involving Python, Node.js, and headless browser automation (e.g., `nss`, `atk`, `cups`, `mesa`). There is no embedded code, no suspicious URLs, no obfuscation, and no instructions that deviate from standard packaging practices. The file is purely declarative and contains no executable content.
</details>
<evidence></evidence>
<summary>Standard metadata file, no malicious content found.</summary>
</security_assessment>

[2/4] Reviewing PKGBUILD, requirements.md...
+ Reviewed .SRCINFO. Status: SAFE -- Standard metadata file, no malicious content found.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard Arch packaging practices for a Python+Node.js application. The source is pinned to a specific tag with a fixed SHA-256 checksum, providing integrity verification. Dependencies are managed through `npm ci --ignore-scripts` (which respects lock files and disables build scripts on the npm side) and `uv sync --locked` (which respects the Python lock file). The build and package functions perform only expected operations: building web and TUI frontends, creating a relocatable Python virtual environment, copying files to `/opt`, and generating a wrapper script. No untrusted network requests, obfuscated code, or data exfiltration mechanisms are present. The creation of a `.pth` file and stub `build.mjs` are normal workarounds to ensure the packaged application works correctly under `/opt`.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD with no malicious content.</summary>
</security_assessment>

[3/4] Reviewing requirements.md...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD with no malicious content.
LLM auditresponse for requirements.md:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a static Markdown document that consolidates dependency declarations from the package&#39;s `requirements.txt`, `pyproject.toml`, and `tinker-atropos/pyproject.toml`. It contains only Python package names with version constraints (e.g., `openai`, `anthropic`, `requests`). There are no executable commands, obfuscated code, network requests, or file operations. All referenced dependencies point to standard PyPI packages or official GitHub repositories for the project&#39;s own submodule dependencies (e.g., `atroposlib` and `tinker` via git). No signs of malicious or injected behavior are present.
</details>
<evidence></evidence>
<summary>Static dependency documentation with no malicious code.</summary>
</security_assessment>

[4/4] Reviewing ...
+ Reviewed requirements.md. Status: SAFE -- Static dependency documentation with no malicious code.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 15,045
  Completion Tokens: 2,177
  Total Tokens: 17,222
  Total Cost: $0.001659
  Execution Time: 30.66 seconds

Final Status: SAFE


No issues found.
