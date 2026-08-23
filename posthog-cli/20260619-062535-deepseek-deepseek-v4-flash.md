---
package: posthog-cli
pkgver: 0.7.28
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: openrouter.ai
base_url: https://openrouter.ai/api/v1
aur_sleuth_rev: 5790943c1b39200ecdf449522971aa7db90ade4a
prompt_tokens: 47329
completion_tokens: 8480
total_tokens: 55809
cost: 0.00578601
execution_time: 60.0
files_reviewed: 11
files_skipped: 1
date: 2026-06-19T06:25:35Z
file_verdicts:
  - file: posthog-cli-v0.7.28.tar.gz
    status: skipped
    summary: "Skipping binary file: posthog-cli-v0.7.28.tar.gz"
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD for Rust CLI; no security issues.
  - file: src/posthog-posthog-cli-v0.7.28/bin/build-schema-latest-versions.py
    status: safe
    summary: Build helper script, no malicious behavior found.
  - file: src/posthog-posthog-cli-v0.7.28/bin/build-taxonomy-json.py
    status: safe
    summary: Legitimate build script, no malicious behavior.
  - file: src/posthog-posthog-cli-v0.7.28/bin/sandbox_env.py
    status: safe
    summary: Standard local config file manager, no malicious activity.
  - file: src/posthog-posthog-cli-v0.7.28/bin/find_python_dependencies.py
    status: safe
    summary: Safe dependency analysis script; no malicious behavior.
  - file: src/posthog-posthog-cli-v0.7.28/bin/hobby-installer/Makefile
    status: safe
    summary: Standard Go Makefile with no malicious elements.
  - file: src/posthog-posthog-cli-v0.7.28/bin/build-dashboard-widget-types.py
    status: safe
    summary: Standard build codegen script, no malicious behavior.
  - file: src/posthog-posthog-cli-v0.7.28/bin/build-schema-python.sh
    status: safe
    summary: Standard build script, no security issues.
  - file: src/posthog-posthog-cli-v0.7.28/bin/check_uv_python_compatibility.py
    status: safe
    summary: Standard validation script; no malicious behavior detected.
  - file: src/posthog-posthog-cli-v0.7.28/bin/sandbox-entrypoint.py
    status: safe
    summary: Legitimate container entrypoint; no malicious injection or exfiltration.
  - file: src/posthog-posthog-cli-v0.7.28/bin/build-mcp-oauth-scopes.py
    status: safe
    summary: Safe build script for generating OAuth scope types.
---

Cloning https://aur.archlinux.org/posthog-cli.git to /tmp/aur-sleuth/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-dg0g9hqb...
Cloned repository to /tmp/aur-sleuth/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-dg0g9hqb
Analyzing posthog-cli AUR package (working in /tmp/aur-sleuth/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-dg0g9hqb) with deepseek/deepseek-v4-flash from https://openrouter.ai/api/v1
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only standard variable definitions and function definitions. The top-level scope includes assigning `pkgver`, `source`, `sha256sums`, and `_srcdir`. No dangerous commands (curl, eval, etc.) are present at top-level. There is no `pkgver()` function defined. The `source` array points to a pinned GitHub release tarball with a valid SHA256 checksum. The only code that would execute during `--nobuild --nodeps --noprepare` is the top-level assignments, which are benign. The `prepare()`, `build()`, `check()`, and `package()` functions are not invoked in this step.
</details>
<summary>
Safe: no top-level dangerous code, pinned source with checksum.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete [grey50]-- Safe: no top-level dangerous code, pinned source with checksum.[/]
Running makepkg --nobuild --nodeps --noprepare to download sources for agent...
makepkg --nobuild --nodeps --noprepare successful
Running makepkg --printsrcinfo to get source files for agent...
makepkg --printsrcinfo successful
Reviewing required files...
[0/2] Reviewing posthog-cli-v0.7.28.tar.gz...
[0/2] Reviewing posthog-cli-v0.7.28.tar.gz, PKGBUILD...
[1/2] Reviewing PKGBUILD...
! Reviewed posthog-cli-v0.7.28.tar.gz. Status: SKIPPED -- Skipping binary file: posthog-cli-v0.7.28.tar.gz
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard Arch packaging practices for a Rust-based CLI tool. The source is fetched from the official PostHog GitHub repository with a pinned version tag and a valid SHA256 checksum, ensuring integrity. The build process uses `cargo fetch --locked`, `cargo build --frozen`, and `cargo test --frozen`, which are standard and safe. No obfuscated code, unexpected network requests, or dangerous commands (eval, curl, wget, etc.) are present. The package only installs the binary and license file. There are no signs of supply-chain attack or malicious behavior.
</details>
<summary>Standard PKGBUILD for Rust CLI; no security issues.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD for Rust CLI; no security issues.
Reviewed all required files.
Deciding which files to review next...
Note: 25361 files available for selection; offering the 50 highest-priority to the model. 18237 lower-priority file(s) were not offered.
LLM response for file selection:
src/posthog-posthog-cli-v0.7.28/bin/build-dashboard-widget-types.py
src/posthog-posthog-cli-v0.7.28/bin/build-mcp-oauth-scopes.py
src/posthog-posthog-cli-v0.7.28/bin/build-schema-latest-versions.py
src/posthog-posthog-cli-v0.7.28/bin/build-schema-python.sh
src/posthog-posthog-cli-v0.7.28/bin/build-taxonomy-json.py
src/posthog-posthog-cli-v0.7.28/bin/hobby-installer/Makefile
src/posthog-posthog-cli-v0.7.28/bin/sandbox-entrypoint.py
src/posthog-posthog-cli-v0.7.28/bin/sandbox_env.py
src/posthog-posthog-cli-v0.7.28/bin/find_python_dependencies.py
src/posthog-posthog-cli-v0.7.28/bin/check_uv_python_compatibility.py
Decided to review 10 additional files: src/posthog-posthog-cli-v0.7.28/bin/build-dashboard-widget-types.py, src/posthog-posthog-cli-v0.7.28/bin/build-mcp-oauth-scopes.py, src/posthog-posthog-cli-v0.7.28/bin/build-schema-latest-versions.py, src/posthog-posthog-cli-v0.7.28/bin/build-schema-python.sh, src/posthog-posthog-cli-v0.7.28/bin/build-taxonomy-json.py, src/posthog-posthog-cli-v0.7.28/bin/hobby-installer/Makefile, src/posthog-posthog-cli-v0.7.28/bin/sandbox-entrypoint.py, src/posthog-posthog-cli-v0.7.28/bin/sandbox_env.py, src/posthog-posthog-cli-v0.7.28/bin/find_python_dependencies.py, src/posthog-posthog-cli-v0.7.28/bin/check_uv_python_compatibility.py
Reviewing additional files...
Reviewing additional files...
[0/10] Reviewing src/posthog-posthog-cli-v0.7.28/bin/build-mcp-oauth-scopes.py...
[0/10] Reviewing src/posthog-posthog-cli-v0.7.28/bin/build-mcp-oauth-scopes.py, src/posthog-posthog-cli-v0.7.28/bin/build-dashboard-widget-types.py...
[0/10] Reviewing src/posthog-posthog-cli-v0.7.28/bin/build-mcp-oauth-scopes.py, src/posthog-posthog-cli-v0.7.28/bin/build-dashboard-widget-types.py, src/posthog-posthog-cli-v0.7.28/bin/build-schema-python.sh...
[0/10] Reviewing src/posthog-posthog-cli-v0.7.28/bin/build-mcp-oauth-scopes.py, src/posthog-posthog-cli-v0.7.28/bin/build-dashboard-widget-types.py, src/posthog-posthog-cli-v0.7.28/bin/build-schema-python.sh, src/posthog-posthog-cli-v0.7.28/bin/build-schema-latest-versions.py...
[0/10] Reviewing src/posthog-posthog-cli-v0.7.28/bin/build-mcp-oauth-scopes.py, src/posthog-posthog-cli-v0.7.28/bin/build-dashboard-widget-types.py, src/posthog-posthog-cli-v0.7.28/bin/build-schema-python.sh, src/posthog-posthog-cli-v0.7.28/bin/build-schema-latest-versions.py, src/posthog-posthog-cli-v0.7.28/bin/sandbox-entrypoint.py...
[0/10] Reviewing src/posthog-posthog-cli-v0.7.28/bin/build-mcp-oauth-scopes.py, src/posthog-posthog-cli-v0.7.28/bin/build-dashboard-widget-types.py, src/posthog-posthog-cli-v0.7.28/bin/build-schema-python.sh, src/posthog-posthog-cli-v0.7.28/bin/build-schema-latest-versions.py, src/posthog-posthog-cli-v0.7.28/bin/sandbox-entrypoint.py, src/posthog-posthog-cli-v0.7.28/bin/build-taxonomy-json.py...
[0/10] Reviewing src/posthog-posthog-cli-v0.7.28/bin/build-mcp-oauth-scopes.py, src/posthog-posthog-cli-v0.7.28/bin/build-dashboard-widget-types.py, src/posthog-posthog-cli-v0.7.28/bin/build-schema-python.sh, src/posthog-posthog-cli-v0.7.28/bin/build-schema-latest-versions.py, src/posthog-posthog-cli-v0.7.28/bin/sandbox-entrypoint.py, src/posthog-posthog-cli-v0.7.28/bin/build-taxonomy-json.py, src/posthog-posthog-cli-v0.7.28/bin/find_python_dependencies.py...
[0/10] Reviewing src/posthog-posthog-cli-v0.7.28/bin/build-mcp-oauth-scopes.py, src/posthog-posthog-cli-v0.7.28/bin/build-dashboard-widget-types.py, src/posthog-posthog-cli-v0.7.28/bin/build-schema-python.sh, src/posthog-posthog-cli-v0.7.28/bin/build-schema-latest-versions.py, src/posthog-posthog-cli-v0.7.28/bin/sandbox-entrypoint.py, src/posthog-posthog-cli-v0.7.28/bin/build-taxonomy-json.py, src/posthog-posthog-cli-v0.7.28/bin/find_python_dependencies.py, src/posthog-posthog-cli-v0.7.28/bin/hobby-installer/Makefile...
[0/10] Reviewing src/posthog-posthog-cli-v0.7.28/bin/build-mcp-oauth-scopes.py, src/posthog-posthog-cli-v0.7.28/bin/build-dashboard-widget-types.py, src/posthog-posthog-cli-v0.7.28/bin/build-schema-python.sh, src/posthog-posthog-cli-v0.7.28/bin/build-schema-latest-versions.py, src/posthog-posthog-cli-v0.7.28/bin/sandbox-entrypoint.py, src/posthog-posthog-cli-v0.7.28/bin/build-taxonomy-json.py, src/posthog-posthog-cli-v0.7.28/bin/find_python_dependencies.py, src/posthog-posthog-cli-v0.7.28/bin/hobby-installer/Makefile, src/posthog-posthog-cli-v0.7.28/bin/check_uv_python_compatibility.py...
[0/10] Reviewing src/posthog-posthog-cli-v0.7.28/bin/build-mcp-oauth-scopes.py, src/posthog-posthog-cli-v0.7.28/bin/build-dashboard-widget-types.py, src/posthog-posthog-cli-v0.7.28/bin/build-schema-python.sh, src/posthog-posthog-cli-v0.7.28/bin/build-schema-latest-versions.py, src/posthog-posthog-cli-v0.7.28/bin/sandbox-entrypoint.py, src/posthog-posthog-cli-v0.7.28/bin/build-taxonomy-json.py, src/posthog-posthog-cli-v0.7.28/bin/find_python_dependencies.py, src/posthog-posthog-cli-v0.7.28/bin/hobby-installer/Makefile, src/posthog-posthog-cli-v0.7.28/bin/check_uv_python_compatibility.py, src/posthog-posthog-cli-v0.7.28/bin/sandbox_env.py...
LLM auditresponse for build-schema-latest-versions.py:
<security_assessment>
<decision>SAFE</decision>
<details>
The script is a build helper that generates a JSON file (`latest-versions.json`) from the application's own schema migrations and formats it using `pnpm exec oxfmt`. It imports from `posthog.schema_migrations` and `posthog.utils`, which are internal modules of the `posthog-cli` project. There are no network requests, obfuscation, file operations outside the project tree, or unexpected commands. The use of `subprocess.run` with `pnpm exec oxfmt` is a normal development/build step. The script's behavior is entirely consistent with standard packaging and upstream development practices.
</details>
<summary>
Build helper script, no malicious behavior found.
</summary>
</security_assessment>

[1/10] Reviewing src/posthog-posthog-cli-v0.7.28/bin/build-mcp-oauth-scopes.py, src/posthog-posthog-cli-v0.7.28/bin/build-dashboard-widget-types.py, src/posthog-posthog-cli-v0.7.28/bin/build-schema-python.sh, src/posthog-posthog-cli-v0.7.28/bin/sandbox-entrypoint.py, src/posthog-posthog-cli-v0.7.28/bin/build-taxonomy-json.py, src/posthog-posthog-cli-v0.7.28/bin/find_python_dependencies.py, src/posthog-posthog-cli-v0.7.28/bin/hobby-installer/Makefile, src/posthog-posthog-cli-v0.7.28/bin/check_uv_python_compatibility.py, src/posthog-posthog-cli-v0.7.28/bin/sandbox_env.py...
+ Reviewed src/posthog-posthog-cli-v0.7.28/bin/build-schema-latest-versions.py. Status: SAFE -- Build helper script, no malicious behavior found.
LLM auditresponse for build-taxonomy-json.py:
<security_assessment>
<decision>SAFE</decision>
<details>
The script is a standard build helper that generates a JSON file from internal taxonomy definitions and formats it using `pnpm exec oxfmt`. It performs no network requests, downloads, obfuscation, or system modifications outside the project&#x27;s own source tree. All operations (importing local modules, writing a JSON file, running a formatter) are routine for the upstream project&#x27;s build system. There is no evidence of injected malicious code or supply-chain attack.
</details>
<summary>Legitimate build script, no malicious behavior.</summary>
</security_assessment>

[2/10] Reviewing src/posthog-posthog-cli-v0.7.28/bin/build-mcp-oauth-scopes.py, src/posthog-posthog-cli-v0.7.28/bin/build-dashboard-widget-types.py, src/posthog-posthog-cli-v0.7.28/bin/build-schema-python.sh, src/posthog-posthog-cli-v0.7.28/bin/sandbox-entrypoint.py, src/posthog-posthog-cli-v0.7.28/bin/find_python_dependencies.py, src/posthog-posthog-cli-v0.7.28/bin/hobby-installer/Makefile, src/posthog-posthog-cli-v0.7.28/bin/check_uv_python_compatibility.py, src/posthog-posthog-cli-v0.7.28/bin/sandbox_env.py...
+ Reviewed src/posthog-posthog-cli-v0.7.28/bin/build-taxonomy-json.py. Status: SAFE -- Legitimate build script, no malicious behavior.
LLM auditresponse for sandbox_env.py:
<security_assessment>
<decision>SAFE</decision>
<details>
This file implements a local configuration manager for a PostHog development sandbox. It creates, reads, and writes a `sandbox.env` file with restricted permissions (0600). It parses environment variable assignments with comments and renders a markdown context block for CLAUDE.md. There is no obfuscation, no network requests, no execution of remote code, and no system modifications outside its own application scope. All operations are confined to managing a secrets file in a local registry directory. The behavior is consistent with legitimate packaging and user workflow automation.
</details>
<summary>Standard local config file manager, no malicious activity.</summary>
</security_assessment>

[3/10] Reviewing src/posthog-posthog-cli-v0.7.28/bin/build-mcp-oauth-scopes.py, src/posthog-posthog-cli-v0.7.28/bin/build-dashboard-widget-types.py, src/posthog-posthog-cli-v0.7.28/bin/build-schema-python.sh, src/posthog-posthog-cli-v0.7.28/bin/sandbox-entrypoint.py, src/posthog-posthog-cli-v0.7.28/bin/find_python_dependencies.py, src/posthog-posthog-cli-v0.7.28/bin/hobby-installer/Makefile, src/posthog-posthog-cli-v0.7.28/bin/check_uv_python_compatibility.py...
+ Reviewed src/posthog-posthog-cli-v0.7.28/bin/sandbox_env.py. Status: SAFE -- Standard local config file manager, no malicious activity.
LLM auditresponse for find_python_dependencies.py:
<security_assessment>
<decision>SAFE</decision>
<details>
This script is a developer tool that uses the `grimp` library to build an import graph of local Python packages and find dependency relationships for a given entrypoint module. Its purpose is to determine which files affect a worker rebuild, a standard CI/development task.

The script performs only local file operations: it reads Python modules from the repository to resolve module names to file paths (e.g., `posthog/utils.py`), uses `os.path.isfile` for existence checks, and writes JSON output to stdout. There are no network requests, no execution of downloaded content, no obfuscated code, and no dangerous commands like `eval`, `base64`, `curl`, or `wget`. The fallback on error is conservative (assuming all changes affect the entrypoint) but not malicious.

No evidence of exfiltration, backdoors, credential theft, or any behavior outside the stated purpose of analyzing import dependencies is present. This is legitimate upstream tooling for the posthog project.
</details>
<summary>Safe dependency analysis script; no malicious behavior.</summary>
</security_assessment>

[4/10] Reviewing src/posthog-posthog-cli-v0.7.28/bin/build-mcp-oauth-scopes.py, src/posthog-posthog-cli-v0.7.28/bin/build-dashboard-widget-types.py, src/posthog-posthog-cli-v0.7.28/bin/build-schema-python.sh, src/posthog-posthog-cli-v0.7.28/bin/sandbox-entrypoint.py, src/posthog-posthog-cli-v0.7.28/bin/hobby-installer/Makefile, src/posthog-posthog-cli-v0.7.28/bin/check_uv_python_compatibility.py...
+ Reviewed src/posthog-posthog-cli-v0.7.28/bin/find_python_dependencies.py. Status: SAFE -- Safe dependency analysis script; no malicious behavior.
LLM auditresponse for Makefile:
<security_assessment>
<decision>SAFE</decision>
<details>
This Makefile is a standard Go build automation file for the `hobby-installer` project. It defines targets for building, cleaning, testing, and managing dependencies. All commands are standard Go toolchain operations (`go build`, `go test`, `go mod download`, `go mod tidy`) and file removal (`rm -f`). There are no suspicious network requests (no `curl`, `wget`, or similar), no encoded/obfuscated commands, no system file modifications outside the project directory, and no execution of external untrusted code. The `demo` and `run` targets simply execute the compiled binary. Everything aligns with normal packaging and development practices.
</details>
<summary>Standard Go Makefile with no malicious elements.</summary>
</security_assessment>

[5/10] Reviewing src/posthog-posthog-cli-v0.7.28/bin/build-mcp-oauth-scopes.py, src/posthog-posthog-cli-v0.7.28/bin/build-dashboard-widget-types.py, src/posthog-posthog-cli-v0.7.28/bin/build-schema-python.sh, src/posthog-posthog-cli-v0.7.28/bin/sandbox-entrypoint.py, src/posthog-posthog-cli-v0.7.28/bin/check_uv_python_compatibility.py...
+ Reviewed src/posthog-posthog-cli-v0.7.28/bin/hobby-installer/Makefile. Status: SAFE -- Standard Go Makefile with no malicious elements.
LLM auditresponse for build-dashboard-widget-types.py:
<security_assessment>
<decision>SAFE</decision>
<details>
This Python script is a code generation tool for PostHog's dashboard widgets, reading backend constants and widget specs (from the project's own Django models) and emitting frontend JSON configuration files into the project's source tree under `products/dashboards/frontend/generated/`. It performs no network requests, does not download or execute external code, uses no obfuscation, and does not access sensitive system files. Standard Django setup and imports are expected for an application-internal build step. There is no evidence of supply-chain injection or malicious behavior; the script operates entirely within the project's own codebase and build system.
</details>
<summary>Standard build codegen script, no malicious behavior.</summary>
</security_assessment>

[6/10] Reviewing src/posthog-posthog-cli-v0.7.28/bin/build-mcp-oauth-scopes.py, src/posthog-posthog-cli-v0.7.28/bin/build-schema-python.sh, src/posthog-posthog-cli-v0.7.28/bin/sandbox-entrypoint.py, src/posthog-posthog-cli-v0.7.28/bin/check_uv_python_compatibility.py...
+ Reviewed src/posthog-posthog-cli-v0.7.28/bin/build-dashboard-widget-types.py. Status: SAFE -- Standard build codegen script, no malicious behavior.
LLM auditresponse for build-schema-python.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
The script is a standard build helper that generates Python schema files from a JSON schema using `datamodel-codegen`, applies local patches, splits enums, and formats the output with `ruff`. All operations are local file manipulations; there are no network requests, no execution of untrusted code, no obfuscation, and no dangerous commands. The script follows normal AUR packaging practices and does not exhibit any malicious behavior.
</details>
<summary>Standard build script, no security issues.</summary>
</security_assessment>

[7/10] Reviewing src/posthog-posthog-cli-v0.7.28/bin/build-mcp-oauth-scopes.py, src/posthog-posthog-cli-v0.7.28/bin/sandbox-entrypoint.py, src/posthog-posthog-cli-v0.7.28/bin/check_uv_python_compatibility.py...
+ Reviewed src/posthog-posthog-cli-v0.7.28/bin/build-schema-python.sh. Status: SAFE -- Standard build script, no security issues.
LLM auditresponse for check_uv_python_compatibility.py:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a validation script for the posthog-cli project's uv configuration. It reads local configuration files (pyproject.toml, GitHub workflow YAMLs, flox manifest) and runs `uvx` to check version compatibility. All operations are confined to the repository's own files and the official uv toolchain. There is no obfuscation, no unexpected network requests, no data exfiltration, and no execution of attacker-controlled code. The subprocess call to `uvx` is a standard development workflow operation. The script is well-documented and serves a legitimate purpose in CI and local development.
</details>
<summary>
Standard validation script; no malicious behavior detected.
</summary>
</security_assessment>

[8/10] Reviewing src/posthog-posthog-cli-v0.7.28/bin/build-mcp-oauth-scopes.py, src/posthog-posthog-cli-v0.7.28/bin/sandbox-entrypoint.py...
+ Reviewed src/posthog-posthog-cli-v0.7.28/bin/check_uv_python_compatibility.py. Status: SAFE -- Standard validation script; no malicious behavior detected.
LLM auditresponse for sandbox-entrypoint.py:
<security_assessment>
<decision>SAFE</decision>
<details>
This script is the entrypoint for a PostHog development sandbox container. It performs routine container setup: creating a non‑root user, starting sshd, seeding SSH/git/Claude config, and orchestrating dependency installation (uv sync, pnpm install, cargo fetch) and database migrations. All network destinations are either internal container service names (clickhouse:8123, db, kafka:9092) or standard package registries (PyPI, npm, crates.io) via the project’s own build tooling. No code is fetched from unexpected hosts, no obfuscated commands are present, and no data is exfiltrated. The script modifies `/etc/passwd` and `/etc/environment` only to establish the sandbox environment – standard operational practice for container images that need user entries and environment propagation.

While some configuration choices (bypassing Claude’s permission prompts, copying SSH keys and credentials into the container, muting host permission policies) are intentionally relaxed for a disposable, isolated development sandbox, these are upstream design decisions for the application’s developer‑experience container, not evidence of an injected supply‑chain attack. The script does not contain backdoors, reverse shells, credential theft, or any code that deviates from its stated purpose of booting a self‑contained development environment.
</details>
<summary>Legitimate container entrypoint; no malicious injection or exfiltration.</summary>
</security_assessment>

[9/10] Reviewing src/posthog-posthog-cli-v0.7.28/bin/build-mcp-oauth-scopes.py...
+ Reviewed src/posthog-posthog-cli-v0.7.28/bin/sandbox-entrypoint.py. Status: SAFE -- Legitimate container entrypoint; no malicious injection or exfiltration.
LLM auditresponse for build-mcp-oauth-scopes.py:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard build-time code generation script for the PostHog project. It reads a local Python file (`posthog/scopes.py`) using `runpy.run_path`, extracts a list of OAuth scopes, and writes them to a TypeScript file under `services/mcp/src/lib/`. The purpose is to keep the OAuth scope list in sync between the Python backend and the TypeScript MCP server.

There are no network requests, no execution of external code, no obfuscation, and no file operations outside the project repository. The script is well-documented and performs a routine build task. No security issues are present.
</details>
<summary>Safe build script for generating OAuth scope types.</summary>
</security_assessment>

[10/10] Reviewing ...
+ Reviewed src/posthog-posthog-cli-v0.7.28/bin/build-mcp-oauth-scopes.py. Status: SAFE -- Safe build script for generating OAuth scope types.
Reviewed all additional files.
Reviewed additional files.
Audit complete! Result: No issues found
(Skipped 1 file: posthog-cli-v0.7.28.tar.gz)

API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 47,329
  Completion Tokens: 8,480
  Total Tokens: 55,809
  Total Cost: $0.005786
  Execution Time: 60.00 seconds
Full audit report can be found in /tmp/aur-sleuth/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-report-posthog-cli.txt
Final Status: SAFE


No issues found.


Audit Skips:

/tmp/aur-sleuth/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-dg0g9hqb/posthog-cli-v0.7.28.tar.gz: [SKIPPED] Skipping binary file: posthog-cli-v0.7.28.tar.gz
