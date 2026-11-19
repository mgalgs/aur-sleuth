---
package: gemini-api-mcp
pkgver: 0.1.0
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: e76320400488b1dad2302211f4f5cfaf8522c9b1
prompt_tokens: 27763
completion_tokens: 3796
total_tokens: 31559
cost: 0.003217305
execution_time: 38.96
files_reviewed: 9
files_skipped: 0
maintainer_files: 9
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 0
injection_attempts: 0
date: 2026-10-28T11:02:04Z
file_verdicts:
  - file: PKGBUILD
    status: safe
    summary: Standard Python package build; pinned checksums, no malicious operations, SAFE.
  - file: .SRCINFO
    status: safe
    summary: Standard AUR metadata file with no security issues.
  - file: README.md
    status: safe
    summary: README documentation only; no malicious or dangerous behavior found.
  - file: __init__.py
    status: safe
    summary: Trivial package initializer with only docstring and version; no suspicious behavior.
  - file: __main__.py
    status: safe
    summary: Standard Python entry point; no suspicious or malicious behavior found.
  - file: .gitignore
    status: safe
    summary: Standard .gitignore file, no security issues.
  - file: pyproject.toml
    status: safe
    summary: Standard pyproject.toml packaging metadata; no suspicious behavior found.
  - file: runner.py
    status: safe
    summary: Benign helper script; locates and executes gemini-api CLI with no malicious behavior.
  - file: server.py
    status: safe
    summary: "Safe: standard MCP wrapper around gemini-api CLI with no malicious behavior."
---

Materializing gemini-api-mcp from local mirror...
Materialized gemini-api-mcp
Analyzing gemini-api-mcp AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
Running `makepkg --printsrcinfo` only sources the PKGBUILD and executes its top-level scope. This PKGBUILD contains only static variable assignments (`pkgname`, `pkgver`, `source`, `sha256sums`, etc.) and function definitions (`prepare()`, `build()`, `package()`). There are no top-level command substitutions, no `eval`, no downloads, no network requests, and no file-modifying operations that would execute during sourcing. The function bodies are not run by `makepkg --printsrcinfo`, so they are out of scope for this narrow gate.
</details>
<evidence>
</evidence>
<summary>
No top-level dangerous code; only static variables and function definitions. Safe to print metadata.
</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No top-level dangerous code; only static variables and function definitions. Safe to print metadata.
Reviewing the 9 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/9] Reviewing .SRCINFO...
[0/9] Reviewing .SRCINFO, .gitignore...
[0/9] Reviewing .SRCINFO, .gitignore, PKGBUILD...
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard Arch packaging practices. It sources local files (pyproject.toml, README.md, and Python modules) with pinned sha256 checksums, builds a Python wheel with `python -m build`, and installs it with `python -m installer` into `$pkgdir`. There are no network requests at build time, no encoded or obfuscated commands, no use of curl/wget/eval, and no writes outside the package build/install directories.

The `prepare()` function simply creates a package subdirectory and copies the sourced Python files into it, which is a normal arrangement for a small multi-file Python package. Installing documentation into `$pkgdir/usr/share/doc` is also standard. There is nothing here that deviates from legitimate AUR packaging or that could indicate a supply-chain attack.
</details>
<evidence>
</evidence>
<summary>
Standard Python package build; pinned checksums, no malicious operations, SAFE.
</summary>
</security_assessment>

[0/9] Reviewing .SRCINFO, .gitignore, PKGBUILD, README.md...
[1/9] Reviewing .SRCINFO, .gitignore, README.md...
+ Reviewed PKGBUILD. Status: SAFE -- Standard Python package build; pinned checksums, no malicious operations, SAFE.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is `.SRCINFO`, a metadata descriptor generated for Arch Linux AUR packages. It contains no executable code, scripts, or commands. All entries are declarative: package name, description, version, upstream URL, dependencies, source file list, and SHA-256 checksums. The checksums are fully specified (none set to `SKIP`), the upstream URL points to an official GitHub repository (`google-gemini/gemini-api-cli`), and dependencies (`python`, `python-mcp`, `gemini-api-cli`) are consistent with the described purpose of an MCP server helper. There are no network requests, obfuscated strings, file manipulations, or any behavior that could exfiltrate data or execute attacker-controlled code. The content is entirely benign and follows standard AUR packaging practice.
</details>
<evidence>
</evidence>
<summary>Standard AUR metadata file with no security issues.</summary>
</security_assessment>

[2/9] Reviewing .gitignore, README.md...
+ Reviewed .SRCINFO. Status: SAFE -- Standard AUR metadata file with no security issues.
[2/9] Reviewing .gitignore, README.md, __init__.py...
LLM auditresponse for README.md:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a README.md documentation file for the `gemini-api-mcp` package. It only contains descriptive text, a tool table, configuration examples, and usage instructions. There is no executable code, no network requests, no obfuscation, no file-exfiltration logic, and no behavior that deviates from standard documentation.

The hardcoded `/home/twilight/Projects/gemini-api-mcp/...` paths are a minor quality/hygiene concern because they are developer-specific rather than portable install paths, but they are not malicious. The documentation describes legitimate upstream tool functionality and standard configuration steps, so the file is safe.
</details>
<evidence>
</evidence>
<summary>
README documentation only; no malicious or dangerous behavior found.</summary>
</security_assessment>

[3/9] Reviewing .gitignore, __init__.py...
+ Reviewed README.md. Status: SAFE -- README documentation only; no malicious or dangerous behavior found.
[3/9] Reviewing .gitignore, __init__.py, __main__.py...
LLM auditresponse for __init__.py:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a trivial Python package initializer containing only a module docstring and a version string. There is no executable logic that performs network requests, filesystem modifications, subprocess execution, obfuscated code, or any other behavior outside standard packaging expectations. This appears to be a benign metadata stub for the gemini-api-mcp package.
</details>
<evidence>
</evidence>
<summary>
Trivial package initializer with only docstring and version; no suspicious behavior.</summary>
</security_assessment>

[3/9] Reviewing .gitignore, __init__.py, __main__.py, pyproject.toml...
[4/9] Reviewing .gitignore, __main__.py, pyproject.toml...
+ Reviewed __init__.py. Status: SAFE -- Trivial package initializer with only docstring and version; no suspicious behavior.
LLM auditresponse for __main__.py:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard Python entry point. It imports `main` from the package's own `gemini_api_mcp.server` module and invokes it when executed as the main script. There is no obfuscation, no network access, no dangerous command execution, no file manipulation, and no deviation from normal packaging conventions. The behavior is entirely consistent with a typical console script wrapper.
</details>
<evidence>
</evidence>
<summary>
Standard Python entry point; no suspicious or malicious behavior found.
</summary>
</security_assessment>

[4/9] Reviewing .gitignore, __main__.py, pyproject.toml, runner.py...
[5/9] Reviewing .gitignore, pyproject.toml, runner.py...
+ Reviewed __main__.py. Status: SAFE -- Standard Python entry point; no suspicious or malicious behavior found.
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `.gitignore` file for an AUR or Python package. It lists common build artifacts (`pkg/`, `src/`, `*.pkg.tar.*`, `*.log`, `dist/`, `*.whl`) to exclude from version control. There is no executable content, no network requests, no obfuscation, and no system modification commands. The file is entirely passive and poses no security risk.
</details>
<evidence></evidence>
<summary>Standard .gitignore file, no security issues.</summary>
</security_assessment>

[5/9] Reviewing .gitignore, pyproject.toml, runner.py, server.py...
[6/9] Reviewing pyproject.toml, runner.py, server.py...
+ Reviewed .gitignore. Status: SAFE -- Standard .gitignore file, no security issues.
LLM auditresponse for pyproject.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard Python project configuration file (`pyproject.toml`) for the `gemini-api-mcp` package. It declares metadata, one dependency (`mcp&gt;=2.0.0`), a console script entry point, and the `hatchling` build backend. There are no custom scripts, hooks, network requests, encoded data, file operations, or build steps that could execute untrusted content. The content is consistent with ordinary packaging practice and does not exhibit any supply-chain attack indicators. The unpinned dependency range (`&gt;=2.0.0`) is a normal version specifier, not evidence of malice.
</details>
<evidence>
</evidence>
<summary>
Standard pyproject.toml packaging metadata; no suspicious behavior found.</summary>
</security_assessment>

[7/9] Reviewing runner.py, server.py...
+ Reviewed pyproject.toml. Status: SAFE -- Standard pyproject.toml packaging metadata; no suspicious behavior found.
LLM auditresponse for runner.py:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a small CLI execution helper for the gemini-api package. It locates the gemini-api executable via an environment variable, PATH resolution, or standard install locations, then runs it with subprocess, capturing output and enforcing a timeout. There is no obfuscation, no network request, no file system modification beyond reading executable paths, and no execution of attacker-controlled content. The only potentially notable element is an error message that suggests installing via `curl ... | bash`, but this is purely informational text displayed to the user and is never executed by the script itself. This is consistent with ordinary packaging/helper functionality and contains no evidence of injected malicious code.
</details>
<evidence>
</evidence>
<summary>
Benign helper script; locates and executes gemini-api CLI with no malicious behavior.
</summary>
</security_assessment>

[8/9] Reviewing server.py...
+ Reviewed runner.py. Status: SAFE -- Benign helper script; locates and executes gemini-api CLI with no malicious behavior.
LLM auditresponse for server.py:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard MCP server wrapper for the `gemini-api` CLI. It defines tool functions that build command-line argument lists and pass them to `run_gemini_cli`, then return the command output. There is no obfuscated code, no unexpected network request, no download-and-execute behavior, no file exfiltration, and no tampering with system files. All operations are consistent with the package's stated purpose of exposing the Gemini CLI through the Model Context Protocol.

The `gemini_command` tool intentionally allows arbitrary `gemini-api` subcommands, but this is an upstream application feature rather than injected malicious code; it only invokes the package's own CLI. Overall, this is ordinary application code with no supply-chain attack indicators.
</details>
<evidence>
</evidence>
<summary>
Safe: standard MCP wrapper around gemini-api CLI with no malicious behavior.
</summary>
</security_assessment>

[9/9] Reviewing ...
+ Reviewed server.py. Status: SAFE -- Safe: standard MCP wrapper around gemini-api CLI with no malicious behavior.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 27,763
  Completion Tokens: 3,796
  Total Tokens: 31,559
  Total Cost: $0.003217
  Execution Time: 38.96 seconds

Final Status: SAFE


No issues found.
