---
package: hermes-agent-desktop
pkgver: 0.20.5
pkgrel: 4
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: ab8f04a045309f11c3e319d8a061c88f7bc8df51
prompt_tokens: 137182
completion_tokens: 15469
total_tokens: 152651
cost: 0.00962655120
execution_time: 248.33
files_reviewed: 12
files_skipped: 0
files_unauditable: 18
unpinned_sources: 0
date: 2026-08-22T23:13:37Z
file_verdicts:
  - file: system-electron-resources.patch
    status: safe
    summary: Patch adds an environment-variable-based resource path; no malicious behavior.
  - file: PKGBUILD
    status: safe
    summary: Standard Electron app PKGBUILD with pinned sources and safe packaging.
  - file: src/hermes-agent-2026.8.19/acp_adapter/__init__.py
    status: safe
    summary: Empty init file with only a docstring, no code.
  - file: src/hermes-agent-2026.8.19/acp_adapter/auth.py
    status: safe
    summary: Safe — ordinary auth provider detection and ACP method configuration, no malicious behavior.
  - file: src/hermes-agent-2026.8.19/agent/credential_persistence.py
    status: safe
    summary: Safe helper for credential disk-boundary sanitization.
  - file: src/hermes-agent-2026.8.19/acp_adapter/server.py
    status: safe
    summary: Legitimate ACP server code; no malicious patterns detected.
  - file: src/hermes-agent-2026.8.19/agent/bedrock_adapter.py
    status: safe
    summary: Legitimate Bedrock API adapter, no malicious behavior found.
  - file: src/hermes-agent-2026.8.19/agent/anthropic_adapter.py
    status: safe
    summary: Legitimate adapter code, no supply-chain attack indicators.
  - file: src/hermes-agent-2026.8.19/agent/browser_provider.py
    status: safe
    summary: Standard ABC with no malicious behavior.
  - file: src/hermes-agent-2026.8.19/agent/copilot_acp_client.py
    status: safe
    summary: Legitimate ACP client adapter, no malicious code found.
  - file: src/hermes-agent-2026.8.19/agent/codex_runtime.py
    status: safe
    summary: No malicious code detected; standard API integration.
  - file: src/hermes-agent-2026.8.19/agent/agent_init.py
    status: safe
    summary: No malicious behavior; standard AI agent initialization code.
---

Cloning https://aur.archlinux.org/hermes-agent-desktop.git...
Cloned hermes-agent-desktop
Analyzing hermes-agent-desktop AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD top-level scope contains only variable definitions, array declarations, and function definitions. No command substitutions, executable code, or dangerous operations (e.g., `curl|bash`, `wget`, `eval`, data exfiltration) are present at the top level. The `source` array fetches a tarball from the official GitHub repository (`https://github.com/NousResearch/hermes-agent`) with a pinned checksum, and a local patch file. No `pkgver()` function is defined. The functions `prepare()`, `build()`, `check()`, and `package()` are defined but not executed during `makepkg --nobuild --nodeps --noprepare` or `--printsrcinfo`, as these commands only source the PKGBUILD and fetch/extract sources. The source fetching and extraction are standard operations and do not introduce risk at this stage.
</details>
<summary>Top-level scope is safe; no dangerous code executes during source fetch.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Top-level scope is safe; no dangerous code executes during source fetch.
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Running makepkg --printsrcinfo to get source files for agent...
makepkg --printsrcinfo successful
Reviewing required files...
[0/2] Reviewing PKGBUILD...
[0/2] Reviewing PKGBUILD, system-electron-resources.patch...
LLM auditresponse for system-electron-resources.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
This patch adds an additional search path for the application's install-stamp.json file, controlled by the environment variable `HERMES_DESKTOP_RESOURCES_PATH`. This is a standard and non-malicious pattern used in development or packaging to allow overriding resource paths. The patch does not introduce any dangerous operations such as network requests, code execution, obfuscation, or data exfiltration. It is a straightforward modification to the Electron application's main process that only affects how a local configuration file is located. No security concerns.
</details>
<summary>Patch adds an environment-variable-based resource path; no malicious behavior.</summary>
</security_assessment>

[1/2] Reviewing PKGBUILD...
+ Reviewed system-electron-resources.patch. Status: SAFE -- Patch adds an environment-variable-based resource path; no malicious behavior.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard Arch packaging practices for an Electron application built from source. The source tarball and patch are fetched from the project&#x27;s own GitHub repository with pinned checksums, ensuring integrity. All npm operations (`npm ci`, `npm run build`, `npm run builder`) use the provided lockfile and `--ignore-scripts` / `--offline` flags where appropriate, preventing unexpected network fetches or code execution. The launcher script reads user-configurable flags from a config file and runs the system Electron runtime, a common and safe pattern. There is no obfuscated code, no external network downloads beyond the declared upstream source, no data exfiltration, and no tampering with files outside the package&#x27;s own installation prefix. The patch (`system-electron-resources.patch`) is checksummed and expected to adapt the code to use the system Electron; without evidence of malicious content, it is treated as a standard maintenance patch.
</details>
<summary>Standard Electron app PKGBUILD with pinned sources and safe packaging.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard Electron app PKGBUILD with pinned sources and safe packaging.
Reviewed all required files.
Deciding which files to review next...
Note: 18 compiled/archived file(s) cannot be audited as text and were not reviewed (hermes-agent-v2026.8.19.tar.gz, src/hermes-agent-2026.8.19/default.tar.gz, src/hermes-agent-2026.8.19/apps/bootstrap-installer/src-tauri/icons/icon.icns and 15 more). For a package that ships prebuilt binaries, the audit covers the packaging, not the payload.
Note: 9863 files available for selection; offering the 50 highest-priority to the model. 8378 lower-priority file(s) were not offered.
LLM response for file selection:
src/hermes-agent-2026.8.19/acp_adapter/__init__.py
src/hermes-agent-2026.8.19/acp_adapter/auth.py
src/hermes-agent-2026.8.19/acp_adapter/server.py
src/hermes-agent-2026.8.19/agent/credential_persistence.py
src/hermes-agent-2026.8.19/agent/agent_init.py
src/hermes-agent-2026.8.19/agent/anthropic_adapter.py
src/hermes-agent-2026.8.19/agent/bedrock_adapter.py
src/hermes-agent-2026.8.19/agent/copilot_acp_client.py
src/hermes-agent-2026.8.19/agent/browser_provider.py
src/hermes-agent-2026.8.19/agent/codex_runtime.py
Decided to review 10 additional files: src/hermes-agent-2026.8.19/acp_adapter/__init__.py, src/hermes-agent-2026.8.19/acp_adapter/auth.py, src/hermes-agent-2026.8.19/acp_adapter/server.py, src/hermes-agent-2026.8.19/agent/credential_persistence.py, src/hermes-agent-2026.8.19/agent/agent_init.py, src/hermes-agent-2026.8.19/agent/anthropic_adapter.py, src/hermes-agent-2026.8.19/agent/bedrock_adapter.py, src/hermes-agent-2026.8.19/agent/copilot_acp_client.py, src/hermes-agent-2026.8.19/agent/browser_provider.py, src/hermes-agent-2026.8.19/agent/codex_runtime.py
Reviewing additional files...
Reviewing additional files...
[0/10] Reviewing src/hermes-agent-2026.8.19/acp_adapter/__init__.py...
[0/10] Reviewing src/hermes-agent-2026.8.19/acp_adapter/__init__.py, src/hermes-agent-2026.8.19/acp_adapter/auth.py...
[0/10] Reviewing src/hermes-agent-2026.8.19/acp_adapter/__init__.py, src/hermes-agent-2026.8.19/acp_adapter/auth.py, src/hermes-agent-2026.8.19/acp_adapter/server.py...
LLM auditresponse for __init__.py:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `__init__.py` contains only a single docstring describing the package as an "ACP (Agent Communication Protocol) adapter for hermes-agent." There is no code that performs any operations, network requests, file modifications, or other potentially malicious actions. The content is benign and follows standard Python packaging conventions.
</details>
<summary>Empty init file with only a docstring, no code.</summary>
</security_assessment>

[1/10] Reviewing src/hermes-agent-2026.8.19/acp_adapter/auth.py, src/hermes-agent-2026.8.19/acp_adapter/server.py...
+ Reviewed src/hermes-agent-2026.8.19/acp_adapter/__init__.py. Status: SAFE -- Empty init file with only a docstring, no code.
[1/10] Reviewing src/hermes-agent-2026.8.19/acp_adapter/auth.py, src/hermes-agent-2026.8.19/acp_adapter/server.py, src/hermes-agent-2026.8.19/agent/credential_persistence.py...
LLM auditresponse for auth.py:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `auth.py` contains plain Python code that introspects the application's configured runtime provider and constructs ACP (Agent Communication Protocol) authentication method objects. It imports only `typing`, `hermes_cli.runtime_provider`, and `acp.schema` — all internal to the upstream application. There are no network calls, no file system manipulation outside the application's own configuration, no encoded/obfuscated strings, no use of `eval`, `base64`, `curl`, `wget`, or similar. The logic simply reads provider metadata and builds auth method descriptors for the ACP handshake, which is expected application functionality. No evidence of injected malicious code or behavior that deviates from the package's stated purpose.
</details>
<summary>
Safe — ordinary auth provider detection and ACP method configuration, no malicious behavior.</summary>
</security_assessment>

[1/10] Reviewing src/hermes-agent-2026.8.19/acp_adapter/auth.py, src/hermes-agent-2026.8.19/acp_adapter/server.py, src/hermes-agent-2026.8.19/agent/credential_persistence.py, src/hermes-agent-2026.8.19/agent/agent_init.py...
[2/10] Reviewing src/hermes-agent-2026.8.19/acp_adapter/server.py, src/hermes-agent-2026.8.19/agent/credential_persistence.py, src/hermes-agent-2026.8.19/agent/agent_init.py...
+ Reviewed src/hermes-agent-2026.8.19/acp_adapter/auth.py. Status: SAFE -- Safe — ordinary auth provider detection and ACP method configuration, no malicious behavior.
LLM auditresponse for credential_persistence.py:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a Python module that implements a credential sanitization policy for the Hermes agent. It defines which credential providers can persist secrets and provides functions to strip raw secret values (tokens, keys) from borrowed/reference-only credentials before writing them to `auth.json`. The code uses standard Python libraries (`hashlib`, `re`) and performs no network operations, no external downloads, no obfuscated commands, and no unexpected file system modifications. It is a routine security boundary within the application's own codebase. There is no evidence of injected malicious behavior; the module serves its stated purpose of preventing accidental persistence of runtime secrets.
</details>
<summary>Safe helper for credential disk-boundary sanitization.</summary>
</security_assessment>

[2/10] Reviewing src/hermes-agent-2026.8.19/acp_adapter/server.py, src/hermes-agent-2026.8.19/agent/credential_persistence.py, src/hermes-agent-2026.8.19/agent/agent_init.py, src/hermes-agent-2026.8.19/agent/anthropic_adapter.py...
[3/10] Reviewing src/hermes-agent-2026.8.19/acp_adapter/server.py, src/hermes-agent-2026.8.19/agent/agent_init.py, src/hermes-agent-2026.8.19/agent/anthropic_adapter.py...
+ Reviewed src/hermes-agent-2026.8.19/agent/credential_persistence.py. Status: SAFE -- Safe helper for credential disk-boundary sanitization.
LLM auditresponse for server.py:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `server.py` is a standard ACP (Agent Client Protocol) server implementation for the Hermes Agent desktop application. It handles session management, model switching, slash commands, and resource attachment conversion. The use of `base64` is legitimate: it encodes/decodes image data for data URLs and handles embedded blob resources per the ACP specification. There are no `curl`, `wget`, `eval`, or `exec` calls. The code imports only from the same package (`hermes_cli`, `acp`, `acp_adapter`, `agent`, `tools`) and performs no unexpected network requests or file system modifications outside the application's scope. The `_named_custom_provider_catalogs` function reads user-configured endpoints and fetches model lists from them, which is expected application functionality. No obfuscation, backdoors, or data exfiltration is present. The file is consistent with legitimate packaging and poses no supply-chain risk.
</details>
<summary>Legitimate ACP server code; no malicious patterns detected.</summary>
</security_assessment>

[3/10] Reviewing src/hermes-agent-2026.8.19/acp_adapter/server.py, src/hermes-agent-2026.8.19/agent/agent_init.py, src/hermes-agent-2026.8.19/agent/anthropic_adapter.py, src/hermes-agent-2026.8.19/agent/bedrock_adapter.py...
[4/10] Reviewing src/hermes-agent-2026.8.19/agent/agent_init.py, src/hermes-agent-2026.8.19/agent/anthropic_adapter.py, src/hermes-agent-2026.8.19/agent/bedrock_adapter.py...
+ Reviewed src/hermes-agent-2026.8.19/acp_adapter/server.py. Status: SAFE -- Legitimate ACP server code; no malicious patterns detected.
LLM auditresponse for bedrock_adapter.py:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `bedrock_adapter.py` is a legitimate adapter module for integrating Hermes Agent with the AWS Bedrock Converse API. It uses standard boto3 SDK calls, handles message format conversion, and includes error handling for stale connections and access denied scenarios. All network requests go to AWS Bedrock endpoints via the official SDK, and no code exfiltrates data, downloads untrusted executables, or executes obfuscated commands.

The lazy dependency loading via `ensure("provider.bedrock")` is an intentional packaging choice documented in the module header, not a supply-chain attack vector. The context window probing sends only repeated placeholder text to the Bedrock API to discover model capabilities, which is a normal practice for such adapters. No file operations, system modifications, or unexpected network destinations are present. Overall, the code is consistent with the stated purpose of providing AWS Bedrock integration.
</details>
<summary>Legitimate Bedrock API adapter, no malicious behavior found.</summary>
</security_assessment>

[5/10] Reviewing src/hermes-agent-2026.8.19/agent/agent_init.py, src/hermes-agent-2026.8.19/agent/anthropic_adapter.py...
+ Reviewed src/hermes-agent-2026.8.19/agent/bedrock_adapter.py. Status: SAFE -- Legitimate Bedrock API adapter, no malicious behavior found.
[5/10] Reviewing src/hermes-agent-2026.8.19/agent/agent_init.py, src/hermes-agent-2026.8.19/agent/anthropic_adapter.py, src/hermes-agent-2026.8.19/agent/copilot_acp_client.py...
LLM auditresponse for anthropic_adapter.py:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is an adapter module for Hermes Agent that translates between OpenAI-style messages and Anthropic's Messages API. No evidence of malicious activity was found.

- **Subprocess usage**: `subprocess.run(['claude', '--version'])` is used solely for version detection to populate the User-Agent header for OAuth requests. This is legitimate functionality, not arbitrary code execution.
- **Credential reading**: The code reads `~/.claude.json` and `~/.claude/.credentials.json` as documented — these are the application's own credential stores used to authenticate with Anthropic's API. There is no exfiltration or sending of credentials to unexpected hosts.
- **Network operations**: All network destinations are directly related to the package's stated purpose (Anthropic API, Azure Foundry, Kimi, OpenCode, Nous Portal, MiniMax). No downloads from untrusted/unexpected origins; no `curl|bash` or remote script execution.
- **No obfuscation**: Code is clear and well-commented. Base64 usage is confined to standard image encoding for computer-use screenshots and PKCE challenge generation for OAuth — both legitimate operations.
- **Packaging practices**: The file is Python application code, not a PKGBUILD, so standard AUR packaging concerns (SKIP checksums, VCS sources) are not applicable. Subprocess and file operations serve the application's purpose.

All operations are consistent with the adapter's documented role: connecting to various LLM providers, handling authentication flows, and converting message formats. There is no injected or supply-chain attack behavior.
</details>
<summary>Legitimate adapter code, no supply-chain attack indicators.</summary>
</security_assessment>

[5/10] Reviewing src/hermes-agent-2026.8.19/agent/agent_init.py, src/hermes-agent-2026.8.19/agent/anthropic_adapter.py, src/hermes-agent-2026.8.19/agent/copilot_acp_client.py, src/hermes-agent-2026.8.19/agent/browser_provider.py...
[6/10] Reviewing src/hermes-agent-2026.8.19/agent/agent_init.py, src/hermes-agent-2026.8.19/agent/copilot_acp_client.py, src/hermes-agent-2026.8.19/agent/browser_provider.py...
+ Reviewed src/hermes-agent-2026.8.19/agent/anthropic_adapter.py. Status: SAFE -- Legitimate adapter code, no supply-chain attack indicators.
LLM auditresponse for browser_provider.py:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `browser_provider.py` is a pure abstract base class (ABC) that defines the interface for cloud browser backends (Browserbase, Browser Use, Firecrawl, etc.). It contains only abstract method declarations (like `create_session`, `close_session`, `emergency_cleanup`) and optional concrete overrides (`get_setup_schema`, `is_configured`, `provider_name`). There is no executable logic, no network calls, no file operations, no obfuscation, no use of dangerous functions (eval, exec, base64, curl, wget, etc.). It does not import any non-standard modules beyond `abc`, `typing`, and `__future__`. The comments reference internal issue/PR numbers, which is normal for a project's own documentation. This file poses no supply-chain risk.
</details>
<summary>Standard ABC with no malicious behavior.</summary>
</security_assessment>

[7/10] Reviewing src/hermes-agent-2026.8.19/agent/agent_init.py, src/hermes-agent-2026.8.19/agent/copilot_acp_client.py...
+ Reviewed src/hermes-agent-2026.8.19/agent/browser_provider.py. Status: SAFE -- Standard ABC with no malicious behavior.
[7/10] Reviewing src/hermes-agent-2026.8.19/agent/agent_init.py, src/hermes-agent-2026.8.19/agent/copilot_acp_client.py, src/hermes-agent-2026.8.19/agent/codex_runtime.py...
LLM auditresponse for copilot_acp_client.py:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is an OpenAI-compatible shim that forwards Hermes requests to the GitHub Copilot ACP CLI. It spawns the `copilot` (or configured) binary as a subprocess and communicates via stdin/stdout using a JSON-RPC protocol. All file read/write operations requested by the subprocess are validated against the current working directory and blocked for sensitive paths (e.g., `~/.ssh/config`). The code uses standard subprocess and threading patterns, contains no obfuscation, no base64/eval, and no external network calls beyond the local subprocess pipe. Environment variables are filtered to strip Tier-1 secrets before inheriting credentials needed for Copilot authentication. No evidence of malicious or injected behavior was found.
</details>
<summary>
Legitimate ACP client adapter, no malicious code found.
</summary>
</security_assessment>

[8/10] Reviewing src/hermes-agent-2026.8.19/agent/agent_init.py, src/hermes-agent-2026.8.19/agent/codex_runtime.py...
+ Reviewed src/hermes-agent-2026.8.19/agent/copilot_acp_client.py. Status: SAFE -- Legitimate ACP client adapter, no malicious code found.
LLM auditresponse for codex_runtime.py:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `codex_runtime.py` is a standard Python module for the Hermes agent to communicate with the Codex/OpenAI API. It contains:

- Network calls to the agent's configured provider (OpenAI compatible) using the OpenAI SDK — this is expected functionality for the application, not an injected supply chain attack.
- No obfuscated code, encoded strings, dangerous commands (`eval`, `exec`, `base64`, `curl`, `wget`, etc.).
- No exfiltration of local data (e.g., reading `/etc/shadow`, SSH keys, environment variables) or unexpected file operations.
- All data persistence (session token usage) is to the application's own session database — normal behavior.
- The `auto_approve_requests` logic is a configuration option for the application's own approval flow, not a backdoor.

No evidence of genuinely malicious behavior such as backdoors, reverse shells, credential theft, or downloading/executing code from untrusted sources. The code is consistent with ordinary packaging and application functionality.
</details>
<summary>No malicious code detected; standard API integration.</summary>
</security_assessment>

[9/10] Reviewing src/hermes-agent-2026.8.19/agent/agent_init.py...
+ Reviewed src/hermes-agent-2026.8.19/agent/codex_runtime.py. Status: SAFE -- No malicious code detected; standard API integration.
LLM auditresponse for agent_init.py:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `agent_init.py` is a large upstream module from the hermes-agent project that implements the `AIAgent.__init__` method. It contains extensive attribute initialization, provider auto-detection, credential resolution, context-engine bootstrap, and configuration parsing — all standard for an AI agent framework.  

No suspicious patterns were found: there is no obfuscated code, no `eval`/`exec`/`base64`/`curl`/`wget` calls, no unexpected network requests to unrelated hosts, and no system file tampering outside the application&#39;s own data directory (`$HERMES_HOME`). The file performs lazy imports, reads environment variables and configuration files, queries local model servers for context windows (Ollama), and manages application state markers — all consistent with the stated functionality of an AI agent. Broad `except` clauses are used to gracefully handle non-critical failures, a common robustness pattern.

While the file is complex and references plugin loading, it does not exhibit any behavior that would constitute a supply-chain attack (data exfiltration, remote code download/execution, backdoors, or credential theft). It is ordinary upstream source code.
</details>
<summary>
No malicious behavior; standard AI agent initialization code.
</summary>
</security_assessment>

[10/10] Reviewing ...
+ Reviewed src/hermes-agent-2026.8.19/agent/agent_init.py. Status: SAFE -- No malicious behavior; standard AI agent initialization code.
Reviewed all additional files.
Reviewed additional files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 137,182
  Completion Tokens: 15,469
  Total Tokens: 152,651
  Total Cost: $0.009627
  Execution Time: 248.33 seconds

Final Status: SAFE


No issues found.
