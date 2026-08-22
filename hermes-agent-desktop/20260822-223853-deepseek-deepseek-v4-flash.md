---
package: hermes-agent-desktop
pkgver: 0.20.5
pkgrel: 4
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: ab8f04a045309f11c3e319d8a061c88f7bc8df51
prompt_tokens: 130811
completion_tokens: 11726
total_tokens: 142537
cost: 0.00883309938
execution_time: 327.08
files_reviewed: 12
files_skipped: 0
files_unauditable: 18
unpinned_sources: 0
date: 2026-08-22T22:38:53Z
file_verdicts:
  - file: system-electron-resources.patch
    status: safe
    summary: Patch adds env var for resources path, benign.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD, no evidence of malicious behavior.
  - file: src/hermes-agent-2026.8.19/acp_adapter/auth.py
    status: safe
    summary: Clean Python auth module, no security issues found.
  - file: src/hermes-agent-2026.8.19/agent/credential_persistence.py
    status: safe
    summary: Standard credential sanitization module, no malicious behavior.
  - file: src/hermes-agent-2026.8.19/agent/credential_sources.py
    status: safe
    summary: Clean credential removal code, no malicious activity found.
  - file: src/hermes-agent-2026.8.19/agent/copilot_acp_client.py
    status: safe
    summary: Legitimate ACP adapter; no malicious indicators.
  - file: src/hermes-agent-2026.8.19/agent/anthropic_adapter.py
    status: safe
    summary: Legitimate API adapter; no supply-chain attack evidence.
  - file: src/hermes-agent-2026.8.19/agent/bedrock_adapter.py
    status: safe
    summary: No malicious code; standard AWS Bedrock adapter for the Hermes Agent.
  - file: src/hermes-agent-2026.8.19/agent/browser_provider.py
    status: safe
    summary: Clean ABC definition; no signs of malicious code.
  - file: src/hermes-agent-2026.8.19/agent/azure_identity_adapter.py
    status: safe
    summary: Standard Azure authentication adapter; no malicious code detected.
  - file: src/hermes-agent-2026.8.19/agent/agent_init.py
    status: safe
    summary: Standard AI agent initialization module, no malicious code detected
  - file: src/hermes-agent-2026.8.19/acp_adapter/server.py
    status: safe
    summary: Legitimate ACP server code; no supply-chain attack evidence.
---

Cloning https://aur.archlinux.org/hermes-agent-desktop.git...
Cloned hermes-agent-desktop
Analyzing hermes-agent-desktop AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains no dangerous code at the top-level scope and no `pkgver()` function. All source entries are standard (`https` tarball from the package&#39;s own GitHub repository and a local patch file). The helper functions `_extract_dir` and `_set_npm_env` are defined but not invoked during source fetching or PKGBUILD sourcing. No command substitutions, `eval`, `curl`, `wget`, or network exfiltration are present. Execution of `makepkg --nobuild --nodeps --noprepare` and `makepkg --printsrcinfo` is safe.
</details>
<summary>
No malicious code in top-level scope or pkgver(). Safe to fetch.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious code in top-level scope or pkgver(). Safe to fetch.
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
The patch adds a new candidate path for loading `install-stamp.json` using the environment variable `HERMES_DESKTOP_RESOURCES_PATH`. This is a straightforward and non-obfuscated change that allows developers or users to override the resources path, which is a common and legitimate practice. There is no evidence of malicious behavior such as network requests, file exfiltration, code execution, or obfuscation. The change is consistent with the application's purpose and does not introduce any supply-chain attack vectors.
</details>
<summary>
Patch adds env var for resources path, benign.
</summary>
</security_assessment>

[1/2] Reviewing PKGBUILD...
+ Reviewed system-electron-resources.patch. Status: SAFE -- Patch adds env var for resources path, benign.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD is a standard AUR package build script for an Electron desktop application. The source is fetched from the official GitHub repository with a pinned tag and validated by a sha256sum. The build process uses `npm ci --ignore-scripts` to prevent arbitrary script execution during dependency installation, and `npm rebuild node-pty --offline` ensures no network access during native module compilation. The launcher script reads a user-configurable flags file but does not execute or evaluate it—it only appends flag arguments to the Electron command. There is no obfuscated code, no exfiltration of system data, no suspicious network calls beyond the declared upstream source, and no injection of unexpected system modifications. All operations serve the legitimate packaging workflow: fetching source, building, and installing the application into standard system paths.
</details>
<summary>Standard AUR PKGBUILD, no evidence of malicious behavior.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD, no evidence of malicious behavior.
Reviewed all required files.
Deciding which files to review next...
Note: 18 compiled/archived file(s) cannot be audited as text and were not reviewed (hermes-agent-v2026.8.19.tar.gz, src/hermes-agent-2026.8.19/default.tar.gz, src/hermes-agent-2026.8.19/apps/bootstrap-installer/src-tauri/icons/icon.icns and 15 more). For a package that ships prebuilt binaries, the audit covers the packaging, not the payload.
Note: 9863 files available for selection; offering the 50 highest-priority to the model. 8378 lower-priority file(s) were not offered.
LLM response for file selection:
src/hermes-agent-2026.8.19/agent/credential_persistence.py
src/hermes-agent-2026.8.19/agent/credential_sources.py
src/hermes-agent-2026.8.19/acp_adapter/auth.py
src/hermes-agent-2026.8.19/acp_adapter/server.py
src/hermes-agent-2026.8.19/agent/copilot_acp_client.py
src/hermes-agent-2026.8.19/agent/anthropic_adapter.py
src/hermes-agent-2026.8.19/agent/bedrock_adapter.py
src/hermes-agent-2026.8.19/agent/browser_provider.py
src/hermes-agent-2026.8.19/agent/azure_identity_adapter.py
src/hermes-agent-2026.8.19/agent/agent_init.py
Decided to review 10 additional files: src/hermes-agent-2026.8.19/agent/credential_persistence.py, src/hermes-agent-2026.8.19/agent/credential_sources.py, src/hermes-agent-2026.8.19/acp_adapter/auth.py, src/hermes-agent-2026.8.19/acp_adapter/server.py, src/hermes-agent-2026.8.19/agent/copilot_acp_client.py, src/hermes-agent-2026.8.19/agent/anthropic_adapter.py, src/hermes-agent-2026.8.19/agent/bedrock_adapter.py, src/hermes-agent-2026.8.19/agent/browser_provider.py, src/hermes-agent-2026.8.19/agent/azure_identity_adapter.py, src/hermes-agent-2026.8.19/agent/agent_init.py
Reviewing additional files...
Reviewing additional files...
[0/10] Reviewing src/hermes-agent-2026.8.19/agent/credential_sources.py...
[0/10] Reviewing src/hermes-agent-2026.8.19/agent/credential_sources.py, src/hermes-agent-2026.8.19/acp_adapter/auth.py...
[0/10] Reviewing src/hermes-agent-2026.8.19/agent/credential_sources.py, src/hermes-agent-2026.8.19/acp_adapter/auth.py, src/hermes-agent-2026.8.19/agent/credential_persistence.py...
LLM auditresponse for auth.py:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `auth.py` is a standard Python module that provides authentication helpers for the Hermes agent. It imports from `hermes_cli.runtime_provider` and `acp.schema`, which are expected dependencies for this package. The functions `detect_provider`, `has_provider`, and `build_auth_methods` perform routine logic: resolving a runtime provider, checking credentials, and constructing ACP-compatible auth methods. There are no network requests, no obfuscated code, no dangerous commands (eval, base64, curl, wget), and no file operations outside the application's scope. The code is consistent with ordinary packaging and upstream application functionality.
</details>
<summary>
Clean Python auth module, no security issues found.</summary>
</security_assessment>

[0/10] Reviewing src/hermes-agent-2026.8.19/agent/credential_sources.py, src/hermes-agent-2026.8.19/acp_adapter/auth.py, src/hermes-agent-2026.8.19/agent/credential_persistence.py, src/hermes-agent-2026.8.19/acp_adapter/server.py...
[1/10] Reviewing src/hermes-agent-2026.8.19/agent/credential_sources.py, src/hermes-agent-2026.8.19/agent/credential_persistence.py, src/hermes-agent-2026.8.19/acp_adapter/server.py...
+ Reviewed src/hermes-agent-2026.8.19/acp_adapter/auth.py. Status: SAFE -- Clean Python auth module, no security issues found.
LLM auditresponse for credential_persistence.py:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a legitimate Python module for sanitizing credential payloads before writing them to disk. It defines a list of secret key names and suffixes, normalizes keys, and provides functions to identify borrowed vs. owned credential sources. The `sanitize_borrowed_credential_payload` function removes raw secret values from payloads for borrowed credentials, replacing them with a non-reversible SHA256 fingerprint. There is no obfuscated code, no network requests, no external command execution, and no exfiltration of data. The code follows standard security practices and is consistent with the stated purpose of the `hermes-agent-desktop` package. No supply-chain attack indicators are present.
</details>
<summary>Standard credential sanitization module, no malicious behavior.</summary>
</security_assessment>

[1/10] Reviewing src/hermes-agent-2026.8.19/agent/credential_sources.py, src/hermes-agent-2026.8.19/agent/credential_persistence.py, src/hermes-agent-2026.8.19/acp_adapter/server.py, src/hermes-agent-2026.8.19/agent/copilot_acp_client.py...
[2/10] Reviewing src/hermes-agent-2026.8.19/agent/credential_sources.py, src/hermes-agent-2026.8.19/acp_adapter/server.py, src/hermes-agent-2026.8.19/agent/copilot_acp_client.py...
+ Reviewed src/hermes-agent-2026.8.19/agent/credential_persistence.py. Status: SAFE -- Standard credential sanitization module, no malicious behavior.
LLM auditresponse for credential_sources.py:
<security_assessment>
<decision>SAFE</decision>
<details>
This file implements credential removal logic for the Hermes application. It reads from and writes to user-local credential files (e.g., `~/.hermes/.env`, `~/.claude/.credentials.json`, `auth.json`) and the internal auth store. All operations are confined to the application’s own configuration files or well-known third-party credential files, which is expected behavior for a credential management tool. There is no obfuscation, no network access, no injection, no exfiltration, and no modification of system files outside the user’s home directory. The code is transparent and serves the stated purpose of unifying credential removal. No evidence of a supply-chain attack or malicious behavior is present.
</details>
<summary>Clean credential removal code, no malicious activity found.</summary>
</security_assessment>

[2/10] Reviewing src/hermes-agent-2026.8.19/agent/credential_sources.py, src/hermes-agent-2026.8.19/acp_adapter/server.py, src/hermes-agent-2026.8.19/agent/copilot_acp_client.py, src/hermes-agent-2026.8.19/agent/anthropic_adapter.py...
[3/10] Reviewing src/hermes-agent-2026.8.19/acp_adapter/server.py, src/hermes-agent-2026.8.19/agent/copilot_acp_client.py, src/hermes-agent-2026.8.19/agent/anthropic_adapter.py...
+ Reviewed src/hermes-agent-2026.8.19/agent/credential_sources.py. Status: SAFE -- Clean credential removal code, no malicious activity found.
LLM auditresponse for copilot_acp_client.py:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `copilot_acp_client.py` is a legitimate adapter that forwards requests to the GitHub Copilot ACP CLI. It spawns a subprocess (configurable via environment variables), communicates using JSON-RPC over stdin/stdout, and mediates file-system access with strict path constraints (absolute paths under the CWD) and permission checks. There are no network requests, obfuscated code, encoded payloads, or signs of data exfiltration in this file. The subprocess command is user-configured, not hardcoded to a suspicious source. All operations serve the application&#x27;s stated purpose and do not exhibit supply-chain attack characteristics.
</details>
<summary>Legitimate ACP adapter; no malicious indicators.</summary>
</security_assessment>

[3/10] Reviewing src/hermes-agent-2026.8.19/acp_adapter/server.py, src/hermes-agent-2026.8.19/agent/copilot_acp_client.py, src/hermes-agent-2026.8.19/agent/anthropic_adapter.py, src/hermes-agent-2026.8.19/agent/bedrock_adapter.py...
[4/10] Reviewing src/hermes-agent-2026.8.19/acp_adapter/server.py, src/hermes-agent-2026.8.19/agent/anthropic_adapter.py, src/hermes-agent-2026.8.19/agent/bedrock_adapter.py...
+ Reviewed src/hermes-agent-2026.8.19/agent/copilot_acp_client.py. Status: SAFE -- Legitimate ACP adapter; no malicious indicators.
LLM auditresponse for anthropic_adapter.py:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a legitimate provider adapter for interacting with Anthropic's Messages API. It handles authentication (API keys, OAuth tokens, cloud credentials), model selection, message format conversion, and various endpoint-specific behaviors (Azure, Bedrock, MiniMax, Kimi, etc.). All the `base64` and `secrets` imports are used for standard PKCE OAuth flow generation and image data handling — normal operations for a client that authenticates and sends images to an API. There is no obfuscated code, no unexpected network requests to unknown hosts, no file exfiltration, no download-and-execute patterns, and no backdoor logic. All external communication targets are the package's own upstream API endpoints (Anthropic, Azure, AWS Bedrock, etc.). The code follows standard packaging and provider-adapter patterns.
</details>
<summary>Legitimate API adapter; no supply-chain attack evidence.</summary>
</security_assessment>

[4/10] Reviewing src/hermes-agent-2026.8.19/acp_adapter/server.py, src/hermes-agent-2026.8.19/agent/anthropic_adapter.py, src/hermes-agent-2026.8.19/agent/bedrock_adapter.py, src/hermes-agent-2026.8.19/agent/browser_provider.py...
[5/10] Reviewing src/hermes-agent-2026.8.19/acp_adapter/server.py, src/hermes-agent-2026.8.19/agent/bedrock_adapter.py, src/hermes-agent-2026.8.19/agent/browser_provider.py...
+ Reviewed src/hermes-agent-2026.8.19/agent/anthropic_adapter.py. Status: SAFE -- Legitimate API adapter; no supply-chain attack evidence.
LLM auditresponse for bedrock_adapter.py:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `bedrock_adapter.py` is an AWS Bedrock Converse API adapter for the Hermes Agent. It contains standard logic for converting message formats, making API calls to AWS Bedrock services, and handling streaming responses. All network requests are directed to AWS endpoints (bedrock-runtime and bedrock control plane) via the official boto3 SDK, which is expected and legitimate for this integration. 

There is no evidence of malicious behavior such as data exfiltration to unexpected hosts, downloading and executing code from untrusted sources, obfuscated commands, backdoors, or credential theft. The code uses base64 decoding only for inline image data (data URIs), which is a standard pattern for handling images in API calls. Credential detection functions check environment variables and boto3 sessions but do not transmit credentials anywhere. The `ensure` call from `tools.lazy_deps` is a dependency installation mechanism, not a supply chain attack vector. Overall, the file is consistent with legitimate packaging and application functionality.
</details>
<summary>
No malicious code; standard AWS Bedrock adapter for the Hermes Agent.
</summary>
</security_assessment>

[5/10] Reviewing src/hermes-agent-2026.8.19/acp_adapter/server.py, src/hermes-agent-2026.8.19/agent/bedrock_adapter.py, src/hermes-agent-2026.8.19/agent/browser_provider.py, src/hermes-agent-2026.8.19/agent/azure_identity_adapter.py...
[6/10] Reviewing src/hermes-agent-2026.8.19/acp_adapter/server.py, src/hermes-agent-2026.8.19/agent/browser_provider.py, src/hermes-agent-2026.8.19/agent/azure_identity_adapter.py...
+ Reviewed src/hermes-agent-2026.8.19/agent/bedrock_adapter.py. Status: SAFE -- No malicious code; standard AWS Bedrock adapter for the Hermes Agent.
LLM auditresponse for browser_provider.py:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `browser_provider.py` defines an abstract base class (ABC) for cloud browser providers. It contains only method signatures, documentation, and backward-compatibility shims. There are no network requests, no file operations, no code execution, no obfuscation, no encoded commands, and no references to external resources beyond the standard Python standard library (`abc`, `typing`). The code is purely declarative and serves as an interface contract for plugin implementations. No malicious or suspicious behavior is present.
</details>
<summary>Clean ABC definition; no signs of malicious code.</summary>
</security_assessment>

[6/10] Reviewing src/hermes-agent-2026.8.19/acp_adapter/server.py, src/hermes-agent-2026.8.19/agent/browser_provider.py, src/hermes-agent-2026.8.19/agent/azure_identity_adapter.py, src/hermes-agent-2026.8.19/agent/agent_init.py...
[7/10] Reviewing src/hermes-agent-2026.8.19/acp_adapter/server.py, src/hermes-agent-2026.8.19/agent/azure_identity_adapter.py, src/hermes-agent-2026.8.19/agent/agent_init.py...
+ Reviewed src/hermes-agent-2026.8.19/agent/browser_provider.py. Status: SAFE -- Clean ABC definition; no signs of malicious code.
LLM auditresponse for azure_identity_adapter.py:
<security_assessment>
<decision>SAFE</decision>
<details>
This file implements an Azure Entra ID (Azure AD) authentication adapter for a conversational AI agent. The code is well-documented and follows standard patterns for lazy imports of the `azure-identity` SDK, credential caching, and bearer token injection into HTTP clients.  

I found no evidence of malicious behavior:  
- No obfuscated code, base64/hex-encoded payloads, or dynamic code execution (`eval`, `exec`).  
- No unexpected network requests; all HTTP activity is through the standard `azure-identity` SDK and `httpx` client for legitimate Azure authentication.  
- The `_require_azure_identity()` function includes a lazy-install path using `tools.lazy_deps.ensure`, which downloads the `azure-identity` package from PyPI. While this is a design choice that could be questioned from a supply-chain hygiene perspective, it is an **upstream application feature** (controlled by `security.allow_lazy_installs`), not an injected attack. The code handles `ImportError` gracefully and provides clear error messages.  
- No exfiltration of local files, credentials, or environment variables to external hosts. The `_scoped_env` helper reads environment variables through the application's own `secret_scope` module—this is part of the app’s architecture for scoped secrets, not a data theft mechanism.  
- No file system modifications outside the package’s scope.  

All operations are consistent with the stated purpose: providing keyless authentication to Microsoft Foundry using Azure SDKs. There is no code that would compromise the user’s system or data.
</details>
<summary>Standard Azure authentication adapter; no malicious code detected.</summary>
</security_assessment>

[8/10] Reviewing src/hermes-agent-2026.8.19/acp_adapter/server.py, src/hermes-agent-2026.8.19/agent/agent_init.py...
+ Reviewed src/hermes-agent-2026.8.19/agent/azure_identity_adapter.py. Status: SAFE -- Standard Azure authentication adapter; no malicious code detected.
LLM auditresponse for agent_init.py:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a legitimate extracted initialization module for an AI agent called "Hermes Agent". It contains standard initialization logic: setting up attributes, resolving provider credentials, auto-detecting API modes, configuring context compression, managing state markers, and loading configuration from `config.yaml`. 

The code does not contain any malicious behaviors such as data exfiltration, downloading and executing code from unexpected hosts, obfuscated commands, backdoors, or credential theft. File operations are limited to the application's own state directory (`$HERMES_HOME`) for storing persistent markers (e.g., the `.codex_gpt55_autoraise_notice` file). Network requests are performed only through the project's own modules (`fetch_model_metadata`, `query_ollama_num_ctx`) as part of the application's stated functionality. Thread spawning for background caching is a normal optimization, not a supply-chain attack vector.

No unexpected `curl`, `wget`, `eval`, `base64`, or `exec` patterns are present. The code is consistent with standard Python packaging practices and does not show signs of injected malicious code.
</details>
<summary>Standard AI agent initialization module, no malicious code detected</summary>
</security_assessment>

[9/10] Reviewing src/hermes-agent-2026.8.19/acp_adapter/server.py...
+ Reviewed src/hermes-agent-2026.8.19/agent/agent_init.py. Status: SAFE -- Standard AI agent initialization module, no malicious code detected
LLM auditresponse for server.py:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `server.py` is a legitimate ACP (Agent Client Protocol) server implementation for the Hermes Agent desktop application. It contains standard code for handling user prompts, file attachments, model switching, slash commands, and session management. All network requests (e.g., fetching live model lists) go to the user's configured API endpoints and serve the application's stated purpose. File system reads are part of the application's resource attachment functionality and do not exfiltrate data. No obfuscation, unauthorized downloads, or backdoors are present. The code is well-structured and consistent with the project's documented behavior.
</details>
<summary>
Legitimate ACP server code; no supply-chain attack evidence.</summary>
</security_assessment>

[10/10] Reviewing ...
+ Reviewed src/hermes-agent-2026.8.19/acp_adapter/server.py. Status: SAFE -- Legitimate ACP server code; no supply-chain attack evidence.
Reviewed all additional files.
Reviewed additional files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 130,811
  Completion Tokens: 11,726
  Total Tokens: 142,537
  Total Cost: $0.008833
  Execution Time: 327.08 seconds

Final Status: SAFE


No issues found.
