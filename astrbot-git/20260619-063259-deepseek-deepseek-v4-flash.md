---
package: astrbot-git
pkgver: 4.26.0.beta.8.r7.g5888631ed
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: openrouter.ai
base_url: https://openrouter.ai/api/v1
aur_sleuth_rev: 5790943c1b39200ecdf449522971aa7db90ade4a
prompt_tokens: 48058
completion_tokens: 9018
total_tokens: 57076
cost: 0.00594846
execution_time: 81.62
files_reviewed: 13
files_skipped: 0
date: 2026-06-19T06:32:59Z
file_verdicts:
  - file: tmpl.conf
    status: safe
    summary: Configuration template with placeholders, no security issues.
  - file: astrbot-git.install
    status: safe
    summary: Routine AUR install script; no malicious indicators.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR -git PKGBUILD, no malicious behavior found.
  - file: src/AstrBot/astrbot/core/agent/agent.py
    status: safe
    summary: No malicious content; standard dataclass definition.
  - file: src/AstrBot/astrbot/__init__.py
    status: safe
    summary: Standard logger initialization, no security concerns.
  - file: src/AstrBot/astrbot/cli/__main__.py
    status: safe
    summary: Standard CLI entry point; no security concerns.
  - file: "astrbot@.service"
    status: safe
    summary: Standard systemd service file, no malicious content.
  - file: src/AstrBot/astrbot/builtin_stars/builtin_commands/commands/admin.py
    status: safe
    summary: Standard application code; no malicious behavior detected.
  - file: src/AstrBot/astrbot/api/all.py
    status: safe
    summary: Standard Python re-export module, no threats.
  - file: src/AstrBot/Makefile
    status: safe
    summary: Standard development Makefile, no security issues.
  - file: src/AstrBot/astrbot/api/web.py
    status: safe
    summary: Clean plugin web API helpers; no malicious behavior found.
  - file: src/AstrBot/astrbot/cli/commands/cmd_plug.py
    status: safe
    summary: Standard plugin management CLI, no malicious behavior found.
  - file: src/AstrBot/astrbot/core/agent/mcp_client.py
    status: safe
    summary: MCP client code is standard and contains no malicious behavior.
---

Cloning https://aur.archlinux.org/astrbot-git.git to /tmp/aur-sleuth/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-g1skwvkv...
Cloned repository to /tmp/aur-sleuth/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-g1skwvkv
Analyzing astrbot-git AUR package (working in /tmp/aur-sleuth/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-g1skwvkv) with deepseek/deepseek-v4-flash from https://openrouter.ai/api/v1
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains standard top-level variable assignments, a `pkgver()` function, and function definitions for `check()` and `package()` that are not executed by the requested commands. The only top-level code that runs during `makepkg --nobuild --nodeps --noprepare` is sourcing the PKGBUILD and executing `pkgver()`. In `pkgver()`, the only network operation is `git fetch --tags origin dev 2&gt;/dev/null || true`, which fetches tags from the project&#39;s own GitHub repository. This is a normal versioning step for VCS packages; it does not download or execute arbitrary code. All other commands (`git describe`, `git rev-list`, `git rev-parse`, `sed`, `printf`) are purely informational and safe. The `source` array references the project&#39;s own Git repository and local auxiliary files – no unexpected or malicious URLs are involved. There is no obfuscated code, no data exfiltration, and no code execution from untrusted sources at this stage.
</details>
<summary>Only standard VCS versioning; no malicious code executed.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete [grey50]-- Only standard VCS versioning; no malicious code executed.[/]
Running makepkg --nobuild --nodeps --noprepare to download sources for agent...
makepkg --nobuild --nodeps --noprepare successful
Running makepkg --printsrcinfo to get source files for agent...
makepkg --printsrcinfo successful
Reviewing required files...
[0/3] Reviewing PKGBUILD...
[0/3] Reviewing PKGBUILD, astrbot-git.install...
[0/3] Reviewing PKGBUILD, astrbot-git.install, tmpl.conf...
LLM auditresponse for tmpl.conf:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a configuration template for the AstrBot application. It contains only variable placeholders (e.g., `${INSTANCE_NAME}`, `${ASTRBOT_ROOT}`) and environment variable defaults. There is no executable code, no network requests, no file operations, no obfuscation, and no deviation from standard packaging practices. Including template configuration files is normal for AUR packages.
</details>
<summary>Configuration template with placeholders, no security issues.</summary>
</security_assessment>

[1/3] Reviewing PKGBUILD, astrbot-git.install...
+ Reviewed tmpl.conf. Status: SAFE -- Configuration template with placeholders, no security issues.
LLM auditresponse for astrbot-git.install:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard AUR post-install script for the `astrbot-git` package. It sets up a dedicated system user (`astrbot`), creates required directories under `/var/lib/astrbot` and `/var/cache/astrbot`, adjusts ownership, and runs `systemctl daemon-reload`. It also calls `astrbotctl sync --all` to synchronize instances, which is an expected upstream command. There are no suspicious network downloads, no obfuscated or encoded commands, no eval or base64 usage, and no interaction with unrelated system files. The script performs only routine administrative tasks consistent with the package's purpose.
</details>
<summary>
Routine AUR install script; no malicious indicators.</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed astrbot-git.install. Status: SAFE -- Routine AUR install script; no malicious indicators.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard AUR packaging practices for a `-git` package. The git source is fetched from the project's own upstream repository (GitHub), and all checksums are correctly set to `SKIP` for a VCS source. The `pkgver()` function performs a `git fetch --tags origin dev` solely for version string generation; this fetches tag metadata from the same remote, not executable code, and is a common pattern in `-git` PKGBUILDs to derive a sensible version. The `check()` function runs Python syntax and symbol checks on specific files inside the upstream source — these are legitimate validation steps. The `package()` function only installs files from the source and the upstream checkout into their expected locations. No obfuscated code, unexpected network requests (other than the declared upstream), dangerous commands like `eval`/`base64`, or file operations outside the package's own scope are present.
</details>
<summary>Standard AUR -git PKGBUILD, no malicious behavior found.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR -git PKGBUILD, no malicious behavior found.
Reviewed all required files.
Deciding which files to review next...
Note: 1490 files available for selection; offering the 50 highest-priority to the model. 1156 lower-priority file(s) were not offered.
LLM response for file selection:
src/AstrBot/Makefile
astrbot@.service
src/AstrBot/astrbot/__init__.py
src/AstrBot/astrbot/api/web.py
src/AstrBot/astrbot/api/all.py
src/AstrBot/astrbot/cli/commands/cmd_plug.py
src/AstrBot/astrbot/core/agent/mcp_client.py
src/AstrBot/astrbot/builtin_stars/builtin_commands/commands/admin.py
src/AstrBot/astrbot/cli/__main__.py
src/AstrBot/astrbot/core/agent/agent.py
Decided to review 10 additional files: src/AstrBot/Makefile, astrbot@.service, src/AstrBot/astrbot/__init__.py, src/AstrBot/astrbot/api/web.py, src/AstrBot/astrbot/api/all.py, src/AstrBot/astrbot/cli/commands/cmd_plug.py, src/AstrBot/astrbot/core/agent/mcp_client.py, src/AstrBot/astrbot/builtin_stars/builtin_commands/commands/admin.py, src/AstrBot/astrbot/cli/__main__.py, src/AstrBot/astrbot/core/agent/agent.py
Reviewing additional files...
Reviewing additional files...
[0/10] Reviewing src/AstrBot/Makefile...
[0/10] Reviewing src/AstrBot/Makefile, astrbot@.service...
[0/10] Reviewing src/AstrBot/Makefile, astrbot@.service, src/AstrBot/astrbot/__init__.py...
[0/10] Reviewing src/AstrBot/Makefile, astrbot@.service, src/AstrBot/astrbot/__init__.py, src/AstrBot/astrbot/api/web.py...
[0/10] Reviewing src/AstrBot/Makefile, astrbot@.service, src/AstrBot/astrbot/__init__.py, src/AstrBot/astrbot/api/web.py, src/AstrBot/astrbot/api/all.py...
[0/10] Reviewing src/AstrBot/Makefile, astrbot@.service, src/AstrBot/astrbot/__init__.py, src/AstrBot/astrbot/api/web.py, src/AstrBot/astrbot/api/all.py, src/AstrBot/astrbot/cli/commands/cmd_plug.py...
[0/10] Reviewing src/AstrBot/Makefile, astrbot@.service, src/AstrBot/astrbot/__init__.py, src/AstrBot/astrbot/api/web.py, src/AstrBot/astrbot/api/all.py, src/AstrBot/astrbot/cli/commands/cmd_plug.py, src/AstrBot/astrbot/core/agent/mcp_client.py...
[0/10] Reviewing src/AstrBot/Makefile, astrbot@.service, src/AstrBot/astrbot/__init__.py, src/AstrBot/astrbot/api/web.py, src/AstrBot/astrbot/api/all.py, src/AstrBot/astrbot/cli/commands/cmd_plug.py, src/AstrBot/astrbot/core/agent/mcp_client.py, src/AstrBot/astrbot/builtin_stars/builtin_commands/commands/admin.py...
[0/10] Reviewing src/AstrBot/Makefile, astrbot@.service, src/AstrBot/astrbot/__init__.py, src/AstrBot/astrbot/api/web.py, src/AstrBot/astrbot/api/all.py, src/AstrBot/astrbot/cli/commands/cmd_plug.py, src/AstrBot/astrbot/core/agent/mcp_client.py, src/AstrBot/astrbot/builtin_stars/builtin_commands/commands/admin.py, src/AstrBot/astrbot/cli/__main__.py...
[0/10] Reviewing src/AstrBot/Makefile, astrbot@.service, src/AstrBot/astrbot/__init__.py, src/AstrBot/astrbot/api/web.py, src/AstrBot/astrbot/api/all.py, src/AstrBot/astrbot/cli/commands/cmd_plug.py, src/AstrBot/astrbot/core/agent/mcp_client.py, src/AstrBot/astrbot/builtin_stars/builtin_commands/commands/admin.py, src/AstrBot/astrbot/cli/__main__.py, src/AstrBot/astrbot/core/agent/agent.py...
LLM auditresponse for agent.py:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `agent.py` is a simple Python dataclass definition for an `Agent` class. It imports from local modules (`hooks`, `run_context`, `tool`) and defines fields for name, instructions, tools, run hooks, and begin dialogs. There are no network requests, file operations, obfuscated code, or any dangerous commands. The code is consistent with standard application logic and does not exhibit any behavior indicative of a supply-chain attack.
</details>
<summary>No malicious content; standard dataclass definition.</summary>
</security_assessment>

[1/10] Reviewing src/AstrBot/Makefile, astrbot@.service, src/AstrBot/astrbot/__init__.py, src/AstrBot/astrbot/api/web.py, src/AstrBot/astrbot/api/all.py, src/AstrBot/astrbot/cli/commands/cmd_plug.py, src/AstrBot/astrbot/core/agent/mcp_client.py, src/AstrBot/astrbot/builtin_stars/builtin_commands/commands/admin.py, src/AstrBot/astrbot/cli/__main__.py...
+ Reviewed src/AstrBot/astrbot/core/agent/agent.py. Status: SAFE -- No malicious content; standard dataclass definition.
LLM auditresponse for __init__.py:
<security_assessment>
<decision>SAFE</decision>
<details>
The file contains only standard Python code that imports a logging utility and initializes a logger. There are no network requests, obfuscated commands, file operations, or any other indicators of malicious behavior. This is a typical entry point for a Python package.
</details>
<summary>Standard logger initialization, no security concerns.</summary>
</security_assessment>

[2/10] Reviewing src/AstrBot/Makefile, astrbot@.service, src/AstrBot/astrbot/api/web.py, src/AstrBot/astrbot/api/all.py, src/AstrBot/astrbot/cli/commands/cmd_plug.py, src/AstrBot/astrbot/core/agent/mcp_client.py, src/AstrBot/astrbot/builtin_stars/builtin_commands/commands/admin.py, src/AstrBot/astrbot/cli/__main__.py...
+ Reviewed src/AstrBot/astrbot/__init__.py. Status: SAFE -- Standard logger initialization, no security concerns.
LLM auditresponse for __main__.py:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard Python CLI entry point using the Click library. It defines a command group with subcommands (init, run, help, plug, conf, password) imported from the package's `.commands` module. There are no network requests, obfuscated code, unexpected file operations, system modifications, or any other indicators of malicious behavior. The file only displays a logo, version info, and delegates to subcommands. No deviation from normal packaging or application entry point practices.
</details>
<summary>Standard CLI entry point; no security concerns.</summary>
</security_assessment>

[3/10] Reviewing src/AstrBot/Makefile, astrbot@.service, src/AstrBot/astrbot/api/web.py, src/AstrBot/astrbot/api/all.py, src/AstrBot/astrbot/cli/commands/cmd_plug.py, src/AstrBot/astrbot/core/agent/mcp_client.py, src/AstrBot/astrbot/builtin_stars/builtin_commands/commands/admin.py...
+ Reviewed src/AstrBot/astrbot/cli/__main__.py. Status: SAFE -- Standard CLI entry point; no security concerns.
LLM auditresponse for astrbot@.service:
<security_assessment>
<decision>SAFE</decision>
<details>
The systemd service file defines a standard template for running AstrBot instances as a system service. All environment variables, paths, and the `ExecStart` command refer only to the package's own tools (`astrbotctl`) and its own data directories (`/var/lib/astrbot`, `/var/cache/astrbot`, `/opt/astrbot`). There are no unexpected network requests, encoded or hidden commands, or attempts to access or exfiltrate files outside the application's scope. The security hardening directives (`NoNewPrivileges`, `PrivateTmp`, `ProtectSystem`, `ProtectHome`) are standard and appropriate for sandboxing a service. No malicious behavior is present.
</details>
<summary>Standard systemd service file, no malicious content.</summary>
</security_assessment>

[4/10] Reviewing src/AstrBot/Makefile, src/AstrBot/astrbot/api/web.py, src/AstrBot/astrbot/api/all.py, src/AstrBot/astrbot/cli/commands/cmd_plug.py, src/AstrBot/astrbot/core/agent/mcp_client.py, src/AstrBot/astrbot/builtin_stars/builtin_commands/commands/admin.py...
+ Reviewed astrbot@.service. Status: SAFE -- Standard systemd service file, no malicious content.
LLM auditresponse for admin.py:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `admin.py` defines an `AdminCommands` class with a method `update_dashboard` that calls `download_dashboard` with a version string derived from the application's own `VERSION` constant. This is standard application functionality: it updates the management dashboard by downloading assets from the project's own infrastructure. There is no obfuscation, no unexpected network destinations, no exfiltration of data, and no execution of untrusted code. The imports are from the application's own modules (`astrbot.api`, `astrbot.core.config.default`, `astrbot.core.utils.io`), which is expected for a legitimate package. No supply-chain attack indicators are present.
</details>
<summary>Standard application code; no malicious behavior detected.</summary>
</security_assessment>

[5/10] Reviewing src/AstrBot/Makefile, src/AstrBot/astrbot/api/web.py, src/AstrBot/astrbot/api/all.py, src/AstrBot/astrbot/cli/commands/cmd_plug.py, src/AstrBot/astrbot/core/agent/mcp_client.py...
+ Reviewed src/AstrBot/astrbot/builtin_stars/builtin_commands/commands/admin.py. Status: SAFE -- Standard application code; no malicious behavior detected.
LLM auditresponse for all.py:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `all.py` is a Python module that re-exports various components (classes, functions, modules) from the `astrbot` package. It consists solely of import statements and linting suppression comments. There are no network requests, file operations, obfuscated code, execution of external commands, or any other behavior that could be considered malicious or indicative of a supply-chain attack. This is a standard pattern in Python packages to provide a convenient import interface for users.
</details>
<summary>Standard Python re-export module, no threats.</summary>
</security_assessment>

[6/10] Reviewing src/AstrBot/Makefile, src/AstrBot/astrbot/api/web.py, src/AstrBot/astrbot/cli/commands/cmd_plug.py, src/AstrBot/astrbot/core/agent/mcp_client.py...
+ Reviewed src/AstrBot/astrbot/api/all.py. Status: SAFE -- Standard Python re-export module, no threats.
LLM auditresponse for Makefile:
<security_assessment>
<decision>SAFE</decision>
<details>
The Makefile provides standard development workflow targets: creating and removing git worktrees, and running test environments via a script in `./scripts/pr_test_env.sh`. There is no obfuscated code, no network requests, no unexpected file operations, and no attempts to download or execute external content. The `%:` target is a common Makefile pattern to ignore extra arguments and does not introduce any security risk. All operations are confined to local repository management and execution of a local script, which is normal for a development Makefile. No evidence of malicious behavior.
</details>
<summary>Standard development Makefile, no security issues.</summary>
</security_assessment>

[7/10] Reviewing src/AstrBot/astrbot/api/web.py, src/AstrBot/astrbot/cli/commands/cmd_plug.py, src/AstrBot/astrbot/core/agent/mcp_client.py...
+ Reviewed src/AstrBot/Makefile. Status: SAFE -- Standard development Makefile, no security issues.
LLM auditresponse for web.py:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `web.py` contains standard Python helper classes and functions for a plugin web API layer built on FastAPI/Starlette. It defines wrappers for HTTP requests (`PluginRequest`), uploaded files (`PluginUploadFile`), a multi-dict for query/form parameters (`PluginMultiDict`), and response constructors (`json_response`, `error_response`, `file_response`, `stream_response`). There is no obfuscated code, no execution of external commands, no network requests to unexpected hosts, no eval/base64 decoding, and no file operations outside the expected scope of saving uploaded files at a caller-provided path (which is normal application functionality). The code is consistent with its stated purpose and does not contain any evidence of a supply-chain attack or malicious injection.
</details>
<summary>
Clean plugin web API helpers; no malicious behavior found.
</summary>
</security_assessment>

[8/10] Reviewing src/AstrBot/astrbot/cli/commands/cmd_plug.py, src/AstrBot/astrbot/core/agent/mcp_client.py...
+ Reviewed src/AstrBot/astrbot/api/web.py. Status: SAFE -- Clean plugin web API helpers; no malicious behavior found.
LLM auditresponse for cmd_plug.py:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `cmd_plug.py` is a standard CLI tool for managing AstrBot plugins (create, list, install, remove, update). All network operations (downloading a template from `https://github.com/Soulter/helloworld` and plugin installation/update via `manage_plugin`) are part of the application's normal functionality. The code contains no obfuscation, no base64 decoding, no eval, no exfiltration, and no unexpected file operations beyond deleting plugin directories (`shutil.rmtree`) and writing metadata files.

A minor hygiene concern is that user-supplied strings (plugin name, author, description) are written directly into a Python file (`main.py`) via string replacement. While this could allow injection in theory, it is a self-inflicted risk to the user running the tool, not a supply-chain attack vector. The file does not contain any injected malicious code; all actions are consistent with the stated purpose of plugin management.
</details>
<summary>Standard plugin management CLI, no malicious behavior found.</summary>
</security_assessment>

[9/10] Reviewing src/AstrBot/astrbot/core/agent/mcp_client.py...
+ Reviewed src/AstrBot/astrbot/cli/commands/cmd_plug.py. Status: SAFE -- Standard plugin management CLI, no malicious behavior found.
LLM auditresponse for mcp_client.py:
<security_assessment>
<decision>SAFE</decision>
<details>
This file implements an MCP (Model Context Protocol) client for the astrbot project. It contains standard functionality for connecting to MCP servers over SSE, Streamable HTTP, or stdio transports, validating configurations, and calling tools. The code includes security measures such as a deny-list of dangerous shell commands (e.g., `bash`, `curl`, `sudo`), an allow-list of permitted launchers (e.g., `python`, `node`), and validation functions that reject inline code flags and unsafe Docker arguments. The allow-list can be overridden via an environment variable, but this is an intentional design feature for advanced users, not malicious injection. No obfuscated code, unexpected network destinations, data exfiltration, or backdoors are present. The file is consistent with the normal behavior of an MCP client library and does not exhibit any signs of a supply-chain attack.
</details>
<summary>MCP client code is standard and contains no malicious behavior.</summary>
</security_assessment>

[10/10] Reviewing ...
+ Reviewed src/AstrBot/astrbot/core/agent/mcp_client.py. Status: SAFE -- MCP client code is standard and contains no malicious behavior.
Reviewed all additional files.
Reviewed additional files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 48,058
  Completion Tokens: 9,018
  Total Tokens: 57,076
  Total Cost: $0.005948
  Execution Time: 81.62 seconds
Full audit report can be found in /tmp/aur-sleuth/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-report-astrbot-git.txt
Final Status: SAFE


No issues found.
