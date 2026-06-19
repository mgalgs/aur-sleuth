---
package: graphify
pkgver: 0.8.42
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: openrouter.ai
base_url: https://openrouter.ai/api/v1
aur_sleuth_rev: 5790943c1b39200ecdf449522971aa7db90ade4a
prompt_tokens: 119785
completion_tokens: 10927
total_tokens: 130712
cost: 0.01274751
execution_time: 90.3
files_reviewed: 11
files_skipped: 1
date: 2026-06-19T06:22:33Z
file_verdicts:
  - file: graphifyy-0.8.42.tar.gz
    status: skipped
    summary: "Skipping binary file: graphifyy-0.8.42.tar.gz"
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD with no malicious content. Safe.
  - file: src/graphifyy-0.8.42/pyproject.toml
    status: safe
    summary: Standard pyproject.toml, no security concerns.
  - file: src/graphifyy-0.8.42/graphify/__main__.py
    status: safe
    summary: Legitimate package installation CLI; no malicious behavior found.
  - file: src/graphifyy-0.8.42/graphify/google_workspace.py
    status: safe
    summary: "Safe: legitimate Google Workspace export feature using official CLI."
  - file: src/graphifyy-0.8.42/graphify/security.py
    status: safe
    summary: Legitimate security module, no malicious behavior.
  - file: src/graphifyy-0.8.42/graphify/wiki.py
    status: safe
    summary: Standard wiki generator, no malicious code found.
  - file: src/graphifyy-0.8.42/graphify/ingest.py
    status: safe
    summary: Legitimate URL ingestion utility, no malicious behavior found.
  - file: src/graphifyy-0.8.42/graphify/llm.py
    status: safe
    summary: Legitimate LLM backend module; no evidence of supply-chain attack.
  - file: src/graphifyy-0.8.42/graphify/build.py
    status: safe
    summary: No malicious behavior detected; standard graph construction module.
  - file: src/graphifyy-0.8.42/graphify/hooks.py
    status: safe
    summary: Legitimate git hook installer for graphify; no malicious behavior.
  - file: src/graphifyy-0.8.42/graphify/serve.py
    status: safe
    summary: No evidence of malicious code; standard graph query server.
---

Cloning https://aur.archlinux.org/graphify.git to /tmp/aur-sleuth/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-v231oygv...
Cloned repository to /tmp/aur-sleuth/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-v231oygv
Analyzing graphify AUR package (working in /tmp/aur-sleuth/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-v231oygv) with deepseek/deepseek-v4-flash from https://openrouter.ai/api/v1
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD defines standard variables and arrays in its global scope. No top-level command substitutions, dangerous function calls, or obfuscated code are present. The `source` array points to a legitimate PyPI tarball with a valid SHA256 checksum. There is no `pkgver()` function. The `build()` and `package()` functions are not executed during `makepkg --nobuild --nodeps --noprepare` or `makepkg --printsrcinfo`. Therefore, fetching the source and sourcing the PKGBUILD poses no security risk.
</details>
<summary>Standard PKGBUILD with no dangerous global code.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete [grey50]-- Standard PKGBUILD with no dangerous global code.[/]
Running makepkg --nobuild --nodeps --noprepare to download sources for agent...
makepkg --nobuild --nodeps --noprepare successful
Running makepkg --printsrcinfo to get source files for agent...
makepkg --printsrcinfo successful
Reviewing required files...
[0/2] Reviewing PKGBUILD...
[0/2] Reviewing PKGBUILD, graphifyy-0.8.42.tar.gz...
[1/2] Reviewing PKGBUILD...
! Reviewed graphifyy-0.8.42.tar.gz. Status: SKIPPED -- Skipping binary file: graphifyy-0.8.42.tar.gz
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard Arch packaging practices. The source is fetched from the official Python Package Index (files.pythonhosted.org) with a pinned SHA256 checksum, ensuring integrity. The build and package steps use standard Python build tooling (`python -m build`, `python -m installer`) and do not include any suspicious commands like `eval`, `curl`, `wget`, or obfuscated scripts. There is no evidence of data exfiltration, backdoors, or execution of untrusted code. The only notable observation is that the `_name` variable is set to `graphifyy` (with a double 'y') while the package name is `graphify`; this may cause a source URL mismatch (e.g., `graphifyy-0.8.42.tar.gz` instead of `graphify-0.8.42.tar.gz`), but that is a packaging error—not a security threat. Even if the URL were incorrect, it would cause a build failure, not a supply-chain risk. No genuinely malicious behavior is present.
</details>
<summary>
Standard PKGBUILD with no malicious content. Safe.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD with no malicious content. Safe.
Reviewed all required files.
Deciding which files to review next...
Note: 267 files available for selection; offering the 50 highest-priority to the model. 120 lower-priority file(s) were not offered.
LLM response for file selection:
src/graphifyy-0.8.42/graphify/__main__.py
src/graphifyy-0.8.42/graphify/build.py
src/graphifyy-0.8.42/graphify/hooks.py
src/graphifyy-0.8.42/graphify/security.py
src/graphifyy-0.8.42/graphify/llm.py
src/graphifyy-0.8.42/graphify/google_workspace.py
src/graphifyy-0.8.42/graphify/wiki.py
src/graphifyy-0.8.42/graphify/serve.py
src/graphifyy-0.8.42/graphify/ingest.py
src/graphifyy-0.8.42/pyproject.toml
Decided to review 10 additional files: src/graphifyy-0.8.42/graphify/__main__.py, src/graphifyy-0.8.42/graphify/build.py, src/graphifyy-0.8.42/graphify/hooks.py, src/graphifyy-0.8.42/graphify/security.py, src/graphifyy-0.8.42/graphify/llm.py, src/graphifyy-0.8.42/graphify/google_workspace.py, src/graphifyy-0.8.42/graphify/wiki.py, src/graphifyy-0.8.42/graphify/serve.py, src/graphifyy-0.8.42/graphify/ingest.py, src/graphifyy-0.8.42/pyproject.toml
Reviewing additional files...
Reviewing additional files...
[0/10] Reviewing src/graphifyy-0.8.42/graphify/__main__.py...
[0/10] Reviewing src/graphifyy-0.8.42/graphify/__main__.py, src/graphifyy-0.8.42/graphify/build.py...
[0/10] Reviewing src/graphifyy-0.8.42/graphify/__main__.py, src/graphifyy-0.8.42/graphify/build.py, src/graphifyy-0.8.42/graphify/hooks.py...
[0/10] Reviewing src/graphifyy-0.8.42/graphify/__main__.py, src/graphifyy-0.8.42/graphify/build.py, src/graphifyy-0.8.42/graphify/hooks.py, src/graphifyy-0.8.42/graphify/llm.py...
[0/10] Reviewing src/graphifyy-0.8.42/graphify/__main__.py, src/graphifyy-0.8.42/graphify/build.py, src/graphifyy-0.8.42/graphify/hooks.py, src/graphifyy-0.8.42/graphify/llm.py, src/graphifyy-0.8.42/graphify/google_workspace.py...
[0/10] Reviewing src/graphifyy-0.8.42/graphify/__main__.py, src/graphifyy-0.8.42/graphify/build.py, src/graphifyy-0.8.42/graphify/hooks.py, src/graphifyy-0.8.42/graphify/llm.py, src/graphifyy-0.8.42/graphify/google_workspace.py, src/graphifyy-0.8.42/graphify/wiki.py...
[0/10] Reviewing src/graphifyy-0.8.42/graphify/__main__.py, src/graphifyy-0.8.42/graphify/build.py, src/graphifyy-0.8.42/graphify/hooks.py, src/graphifyy-0.8.42/graphify/llm.py, src/graphifyy-0.8.42/graphify/google_workspace.py, src/graphifyy-0.8.42/graphify/wiki.py, src/graphifyy-0.8.42/graphify/serve.py...
[0/10] Reviewing src/graphifyy-0.8.42/graphify/__main__.py, src/graphifyy-0.8.42/graphify/build.py, src/graphifyy-0.8.42/graphify/hooks.py, src/graphifyy-0.8.42/graphify/llm.py, src/graphifyy-0.8.42/graphify/google_workspace.py, src/graphifyy-0.8.42/graphify/wiki.py, src/graphifyy-0.8.42/graphify/serve.py, src/graphifyy-0.8.42/graphify/ingest.py...
[0/10] Reviewing src/graphifyy-0.8.42/graphify/__main__.py, src/graphifyy-0.8.42/graphify/build.py, src/graphifyy-0.8.42/graphify/hooks.py, src/graphifyy-0.8.42/graphify/llm.py, src/graphifyy-0.8.42/graphify/google_workspace.py, src/graphifyy-0.8.42/graphify/wiki.py, src/graphifyy-0.8.42/graphify/serve.py, src/graphifyy-0.8.42/graphify/ingest.py, src/graphifyy-0.8.42/graphify/security.py...
[0/10] Reviewing src/graphifyy-0.8.42/graphify/__main__.py, src/graphifyy-0.8.42/graphify/build.py, src/graphifyy-0.8.42/graphify/hooks.py, src/graphifyy-0.8.42/graphify/llm.py, src/graphifyy-0.8.42/graphify/google_workspace.py, src/graphifyy-0.8.42/graphify/wiki.py, src/graphifyy-0.8.42/graphify/serve.py, src/graphifyy-0.8.42/graphify/ingest.py, src/graphifyy-0.8.42/graphify/security.py, src/graphifyy-0.8.42/pyproject.toml...
LLM auditresponse for pyproject.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
This `pyproject.toml` is a standard Python project configuration file for the `graphifyy` package. It defines build system requirements, project metadata, dependencies (including numerous tree-sitter language bindings), optional dependency groups, entry-point scripts, and tool configurations (pytest, bandit, ruff, pyright). There is no obfuscated code, no network requests initiated by this file, no execution of arbitrary commands, and no attempts to exfiltrate data. The only scripts defined (`graphify` and `graphify-mcp`) point to functions within the package itself. All content is declarative and consistent with normal Python packaging practices. No security issues are present.
</details>
<summary>Standard pyproject.toml, no security concerns.</summary>
</security_assessment>

[1/10] Reviewing src/graphifyy-0.8.42/graphify/__main__.py, src/graphifyy-0.8.42/graphify/build.py, src/graphifyy-0.8.42/graphify/hooks.py, src/graphifyy-0.8.42/graphify/llm.py, src/graphifyy-0.8.42/graphify/google_workspace.py, src/graphifyy-0.8.42/graphify/wiki.py, src/graphifyy-0.8.42/graphify/serve.py, src/graphifyy-0.8.42/graphify/ingest.py, src/graphifyy-0.8.42/graphify/security.py...
+ Reviewed src/graphifyy-0.8.42/pyproject.toml. Status: SAFE -- Standard pyproject.toml, no security concerns.
LLM auditresponse for __main__.py:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `__main__.py` is the CLI entry point for the graphify package. It handles installing skills for various AI coding assistants (Claude Code, Gemini, VS Code Copilot, etc.) by copying packaged skill files, writing configuration files, and setting up hooks. All operations are standard packaging behavior: file I/O, directory creation, and configuration writing within the application's intended scope (e.g., `.claude`, `.gemini`, `.copilot` directories). There are no network requests, no downloads from unexpected hosts, no obfuscated code, and no backdoors. The inline shell commands in hook definitions (`_SETTINGS_HOOK`, `_READ_SETTINGS_HOOK`) are part of the normal skill installation process for Claude Code and are not evidence of malicious behavior. The use of atomic file operations (`os.replace`, `shutil.copytree`) indicates careful implementation rather than malice. No supply-chain attack indicators were found.
</details>
<summary>Legitimate package installation CLI; no malicious behavior found.</summary>
</security_assessment>

[2/10] Reviewing src/graphifyy-0.8.42/graphify/build.py, src/graphifyy-0.8.42/graphify/hooks.py, src/graphifyy-0.8.42/graphify/llm.py, src/graphifyy-0.8.42/graphify/google_workspace.py, src/graphifyy-0.8.42/graphify/wiki.py, src/graphifyy-0.8.42/graphify/serve.py, src/graphifyy-0.8.42/graphify/ingest.py, src/graphifyy-0.8.42/graphify/security.py...
+ Reviewed src/graphifyy-0.8.42/graphify/__main__.py. Status: SAFE -- Legitimate package installation CLI; no malicious behavior found.
LLM auditresponse for google_workspace.py:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `google_workspace.py` is a well-structured module that implements optional Google Workspace shortcut export functionality for the Graphify application. It reads local `.gdoc`/`.gsheet`/`.gslides` shortcut files (small JSON pointers), extracts Drive file IDs, and uses the official `gws` CLI (from github.com/googleworkspace/cli) to export the actual document content to Markdown sidecars. All network calls go exclusively to Google Drive via the user-authenticated `gws` tool, which is the expected behavior for this feature. There is no obfuscated code, no suspicious data exfiltration, no unexpected file system modifications, and no injection of untrusted code. The code follows standard Python packaging practices with proper error handling and temporary file cleanup. The only external dependency is the `gws` CLI, which is documented and from a legitimate source. No evidence of malicious or supply-chain attack indicators.
</details>
<summary>Safe: legitimate Google Workspace export feature using official CLI.</summary>
</security_assessment>

[3/10] Reviewing src/graphifyy-0.8.42/graphify/build.py, src/graphifyy-0.8.42/graphify/hooks.py, src/graphifyy-0.8.42/graphify/llm.py, src/graphifyy-0.8.42/graphify/wiki.py, src/graphifyy-0.8.42/graphify/serve.py, src/graphifyy-0.8.42/graphify/ingest.py, src/graphifyy-0.8.42/graphify/security.py...
+ Reviewed src/graphifyy-0.8.42/graphify/google_workspace.py. Status: SAFE -- Safe: legitimate Google Workspace export feature using official CLI.
LLM auditresponse for security.py:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `security.py` is a well-structured security helper module that implements defensive measures for URL validation (SSRF protection via DNS resolution and IP range blocking), safe HTTP fetching with size caps, path traversal guards, and input sanitization. All network operations are restricted to `http`/`https` schemes, redirects are re-validated, and private/reserved IP ranges are blocked to prevent SSRF attacks. No obfuscated code, suspicious downloads, data exfiltration, or system modifications are present. The code uses only standard library modules and follows conventional packaging practices. The environment variable `GRAPHIFY_MAX_GRAPH_BYTES` is a normal user-controlled configuration mechanism. There is no evidence of supply-chain compromise or malicious behavior.
</details>
<summary>Legitimate security module, no malicious behavior.</summary>
</security_assessment>

[4/10] Reviewing src/graphifyy-0.8.42/graphify/build.py, src/graphifyy-0.8.42/graphify/hooks.py, src/graphifyy-0.8.42/graphify/llm.py, src/graphifyy-0.8.42/graphify/wiki.py, src/graphifyy-0.8.42/graphify/serve.py, src/graphifyy-0.8.42/graphify/ingest.py...
+ Reviewed src/graphifyy-0.8.42/graphify/security.py. Status: SAFE -- Legitimate security module, no malicious behavior.
LLM auditresponse for wiki.py:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `wiki.py` is a standard Python module that generates markdown wiki articles from a knowledge graph. It performs no network requests, no code execution, and no obfuscated/encoded commands. All file operations are confined to the output directory specified by the caller, and filenames are sanitized via `_safe_filename()` which strips reserved characters and limits length. The deletion of existing `.md` files at the start of `to_wiki()` is a routine cleanup within the managed output directory, not a supply-chain attack. The code imports only from standard library (`pathlib`, `collections`, `re`, `sys`) and from the package's own `graphify.build` module. No suspicious patterns or injected malicious behavior are present.
</details>
<summary>Standard wiki generator, no malicious code found.</summary>
</security_assessment>

[5/10] Reviewing src/graphifyy-0.8.42/graphify/build.py, src/graphifyy-0.8.42/graphify/hooks.py, src/graphifyy-0.8.42/graphify/llm.py, src/graphifyy-0.8.42/graphify/serve.py, src/graphifyy-0.8.42/graphify/ingest.py...
+ Reviewed src/graphifyy-0.8.42/graphify/wiki.py. Status: SAFE -- Standard wiki generator, no malicious code found.
LLM auditresponse for ingest.py:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a utility for fetching URLs (tweets, arXiv papers, webpages, PDFs, images, YouTube) and saving them as markdown files with YAML frontmatter, which is the intended functionality of the graphify package. The code uses safe wrappers (`safe_fetch`, `safe_fetch_text`, `validate_url`) from the package itself, fetches only from expected or user-provided URLs, and includes proper YAML escaping (`_yaml_str`) to prevent injection attacks. There is no obfuscation, no execution of fetched code, no exfiltration of local data, and no network connections to unexpected hosts. The `ingest` function follows standard packaging patterns and does not contain any indicators of a supply-chain attack.
</details>
<summary>Legitimate URL ingestion utility, no malicious behavior found.</summary>
</security_assessment>

[6/10] Reviewing src/graphifyy-0.8.42/graphify/build.py, src/graphifyy-0.8.42/graphify/hooks.py, src/graphifyy-0.8.42/graphify/llm.py, src/graphifyy-0.8.42/graphify/serve.py...
+ Reviewed src/graphifyy-0.8.42/graphify/ingest.py. Status: SAFE -- Legitimate URL ingestion utility, no malicious behavior found.
LLM auditresponse for llm.py:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a legitimate backend abstraction module for interacting with multiple LLM APIs (Claude, OpenAI, Gemini, etc.) as part of the `graphify` knowledge-graph extraction tool. The code is security-conscious, with injection sentinel neutralization, SSRF protection for Ollama URLs, provider base URL validation, and input caps. The base64 usage is for standard image encoding to vision APIs, and the subprocess calls are for the Claude Code CLI backend (`claude -p`). All network destinations are the expected upstream API endpoints. No obfuscated code, data exfiltration, backdoor, or malicious payloads are present.
</details>
<summary>
Legitimate LLM backend module; no evidence of supply-chain attack.
</summary>
</security_assessment>

[7/10] Reviewing src/graphifyy-0.8.42/graphify/build.py, src/graphifyy-0.8.42/graphify/hooks.py, src/graphifyy-0.8.42/graphify/serve.py...
+ Reviewed src/graphifyy-0.8.42/graphify/llm.py. Status: SAFE -- Legitimate LLM backend module; no evidence of supply-chain attack.
LLM auditresponse for build.py:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `build.py` is a standard Python module for building and merging NetworkX graphs from extraction data. It imports only standard library modules (`json`, `os`, `re`, `sys`, `unicodedata`, `pathlib`) and legitimate package dependencies (`networkx`, and internal modules like `graphify.validate`, `graphify.dedup`, `graphify.security`). There are no suspicious network requests, obfuscated commands, encoded payloads, or system modifications outside of normal file I/O (reading/writing JSON graph files). The code performs path normalization, deduplication, and graph construction—all expected functionality for a dependency graph builder. No evidence of exfiltration, backdoors, or supply-chain attack patterns was found.
</details>
<summary>No malicious behavior detected; standard graph construction module.</summary>
</security_assessment>

[8/10] Reviewing src/graphifyy-0.8.42/graphify/hooks.py, src/graphifyy-0.8.42/graphify/serve.py...
+ Reviewed src/graphifyy-0.8.42/graphify/build.py. Status: SAFE -- No malicious behavior detected; standard graph construction module.
LLM auditresponse for hooks.py:
<security_assessment>
<decision>SAFE</decision>
<details>
This file implements git hook installation for the graphify application. It generates post-commit and post-checkout shell scripts that rebuild a knowledge graph after commits or branch switches. The code includes security-conscious measures: it validates that custom `core.hooksPath` values stay within the repository root, applies a character allowlist when embedding the pinned Python interpreter path into shell scripts, and verifies that any Python interpreter found via `.graphify_python` or shebang probing can actually import the graphify module before using it. The rebuild logic is called from the graphify package itself (`graphify.watch._rebuild_code`), which is expected upstream functionality. There is no evidence of data exfiltration, code download from unexpected hosts, obfuscated commands, or any behavior that deviates from the application's stated purpose of automatically rebuilding a knowledge graph.
</details>
<summary>Legitimate git hook installer for graphify; no malicious behavior.</summary>
</security_assessment>

[9/10] Reviewing src/graphifyy-0.8.42/graphify/serve.py...
+ Reviewed src/graphifyy-0.8.42/graphify/hooks.py. Status: SAFE -- Legitimate git hook installer for graphify; no malicious behavior.
LLM auditresponse for serve.py:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `serve.py` is an MCP (Model Context Protocol) server for the graphify knowledge graph tool. It builds a server that exposes graph query tools over stdio or Streamable HTTP. The code is consistent with standard packaging practices for a Python-based MCP server.  

The `_filter_blank_stdin()` function uses `os.pipe()` and `os.dup2()` to create a background thread that filters blank lines from stdin. This is a workaround for MCP stdio transport transport issues where blank lines trigger parsing errors, not a mechanism for data exfiltration or code injection. All other code reads from local files, loads modules from the graphify package, and serves the graph over the configured transport. The HTTP transport includes a simple API-key middleware that does standard header authentication with constant-time comparison.  

No network requests are made to unexpected hosts, no obfuscated or encoded code is present, and no system files outside the application's scope are modified. The file is a normal server implementation for the graphify knowledge graph tool.
</details>
<summary>No evidence of malicious code; standard graph query server.</summary>
</security_assessment>

[10/10] Reviewing ...
+ Reviewed src/graphifyy-0.8.42/graphify/serve.py. Status: SAFE -- No evidence of malicious code; standard graph query server.
Reviewed all additional files.
Reviewed additional files.
Audit complete! Result: No issues found
(Skipped 1 file: graphifyy-0.8.42.tar.gz)

API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 119,785
  Completion Tokens: 10,927
  Total Tokens: 130,712
  Total Cost: $0.012748
  Execution Time: 90.30 seconds
Full audit report can be found in /tmp/aur-sleuth/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-report-graphify.txt
Final Status: SAFE


No issues found.


Audit Skips:

/tmp/aur-sleuth/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-v231oygv/graphifyy-0.8.42.tar.gz: [SKIPPED] Skipping binary file: graphifyy-0.8.42.tar.gz
