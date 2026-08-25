---
package: hermes-agent
pkgver: 0.20.5
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 34eecedf33cdb5da67bea8964402044d560850d8
prompt_tokens: 121481
completion_tokens: 11343
total_tokens: 132824
cost: 0.012774061202
execution_time: 528.44
files_reviewed: 13
files_skipped: 0
files_unauditable: 18
unpinned_sources: 0
date: 2026-08-25T07:51:14Z
file_verdicts:
  - file: nosdistguard.patch
    status: safe
    summary: Standard patch to enable building outside Nix.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD, no malicious elements.
  - file: hermes-agent.install
    status: safe
    summary: Standard per-user setup and Electron sandbox configuration, no malicious behavior found.
  - file: src/hermes-agent-2026.8.19/agent/credential_persistence.py
    status: safe
    summary: Legitimate credential sanitization code, no security issues.
  - file: src/hermes-agent-2026.8.19/agent/auxiliary_client.py
    status: safe
    summary: Legitimate LLM client with no malicious behavior detected.
  - file: src/hermes-agent-2026.8.19/agent/anthropic_adapter.py
    status: safe
    summary: Legitimate provider adapter, no malicious code found.
  - file: src/hermes-agent-2026.8.19/agent/bedrock_adapter.py
    status: safe
    summary: Legitimate Bedrock API adapter; no malicious behavior found.
  - file: src/hermes-agent-2026.8.19/agent/azure_identity_adapter.py
    status: safe
    summary: Standard Azure auth adapter, no malicious code found.
  - file: src/hermes-agent-2026.8.19/agent/browser_provider.py
    status: safe
    summary: Pure abstract base class, no suspicious code.
  - file: src/hermes-agent-2026.8.19/acp_adapter/auth.py
    status: safe
    summary: Routine authentication helper code, no malicious behavior.
  - file: src/hermes-agent-2026.8.19/agent/backend_identity.py
    status: safe
    summary: "Safe: legitimate identity comparison module"
  - file: src/hermes-agent-2026.8.19/agent/credential_sources.py
    status: safe
    summary: Standard credential removal code, no malicious behavior.
  - file: src/hermes-agent-2026.8.19/agent/copilot_acp_client.py
    status: safe
    summary: Legitimate ACP client with proper path confinement and clean design.
---

Cloning https://aur.archlinux.org/hermes-agent.git...
Cloned hermes-agent
Analyzing hermes-agent AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains no malicious code in its global scope or `pkgver()` function (which is absent). The `source` array references only the official GitHub tarball and a patch file, both with pinned checksums. There are no dangerous commands (e.g., `curl`, `eval`, `bash -c`, or data exfiltration) that would execute during `makepkg --nobuild --nodeps --noprepare` or `makepkg --printsrcinfo`. All build-related operations (e.g., patching, npm install, pip) are confined to `build()` and `package()`, which are not executed under these flags. Downloading and extracting the source archives is standard and safe.
</details>
<evidence></evidence>
<summary>No malicious code in global scope or pkgver(). Safe to source and fetch sources.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious code in global scope or pkgver(). Safe to source and fetch sources.
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Running makepkg --printsrcinfo to get source files for agent...
makepkg --printsrcinfo successful
Reviewing required files...
[0/3] Reviewing PKGBUILD...
[0/3] Reviewing PKGBUILD, hermes-agent.install...
[0/3] Reviewing PKGBUILD, hermes-agent.install, nosdistguard.patch...
LLM auditresponse for nosdistguard.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a patch (nosdistguard.patch) that removes conditional guards restricting `sdist` and `bdist_wheel` commands to Nix build environments. The original code raises a `RuntimeError` if the `_IN_NIX_BUILD` flag is not set. Removing these guards is a typical packaging practice when adapting upstream Python packages for use in non-Nix distributions like Arch Linux. The patch contains only deletions of existing lines and introduces no new code, network requests, file operations, obfuscation, or any other suspicious behavior. This is a legitimate adaptation for the AUR package's build process.
</details>
<evidence></evidence>
<summary>Standard patch to enable building outside Nix.</summary>
</security_assessment>

[1/3] Reviewing PKGBUILD, hermes-agent.install...
+ Reviewed nosdistguard.patch. Status: SAFE -- Standard patch to enable building outside Nix.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard AUR packaging practices. The source tarball is fetched from the official upstream GitHub repository with a valid SHA256 checksum, and the local patch file is also checksummed. Build steps involve standard pip and npm installations within a Python venv, which is normal for a Python project with frontend dependencies. There are no suspicious redirects, obfuscated commands, or unexpected network operations. The use of a patch to disable distguard is a routine build workaround, not a red flag. Optional build flags are clearly documented and only enable conditional build steps (Electron desktop app, WhatsApp bridge, extra pip extras). The package function copies files to /opt and creates a wrapper script—no sign of exfiltration, backdoors, or manipulation of unrelated system files.
</details>
<evidence></evidence>
<summary>Standard AUR PKGBUILD, no malicious elements.</summary>
</security_assessment>

[2/3] Reviewing hermes-agent.install...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD, no malicious elements.
LLM auditresponse for hermes-agent.install:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard pacman .install script for the hermes-agent package. It performs routine per-user initialization as root: creating ~/.hermes directory trees, seeding config.yaml and .env from packaged examples, copying default skills, symlinking a helper script, and writing a desktop build-stamp. The embedded Python code is executed with the package's own venv interpreter and only uses standard library functions. All operations are confined to the package's own directories (/opt/hermes-agent) and user home directories, with no network access, no downloading/executing external code, no obfuscation, and no exfiltration of sensitive data. The chrome-sandbox setuid configuration is a well-known requirement for Electron applications. Nothing in this script deviates from expected packaging practices or indicates injected malicious behavior.
</details>
<evidence>
</evidence>
<summary>
Standard per-user setup and Electron sandbox configuration, no malicious behavior found.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed hermes-agent.install. Status: SAFE -- Standard per-user setup and Electron sandbox configuration, no malicious behavior found.
Reviewed all required files.
Deciding which files to review next...
Note: 18 compiled/archived file(s) cannot be audited as text and were not reviewed (v2026.8.19.tar.gz, src/hermes-agent-2026.8.19/default.tar.gz, src/hermes-agent-2026.8.19/apps/bootstrap-installer/src-tauri/icons/icon.icns and 15 more). For a package that ships prebuilt binaries, the audit covers the packaging, not the payload.
Note: 9863 files available for selection; offering the 50 highest-priority to the model. 8379 lower-priority file(s) were not offered.
LLM response for file selection:
src/hermes-agent-2026.8.19/agent/credential_sources.py
src/hermes-agent-2026.8.19/agent/credential_persistence.py
src/hermes-agent-2026.8.19/agent/copilot_acp_client.py
src/hermes-agent-2026.8.19/agent/auxiliary_client.py
src/hermes-agent-2026.8.19/agent/anthropic_adapter.py
src/hermes-agent-2026.8.19/agent/bedrock_adapter.py
src/hermes-agent-2026.8.19/agent/azure_identity_adapter.py
src/hermes-agent-2026.8.19/agent/browser_provider.py
src/hermes-agent-2026.8.19/acp_adapter/auth.py
src/hermes-agent-2026.8.19/agent/backend_identity.py
Decided to review 10 additional files: src/hermes-agent-2026.8.19/agent/credential_sources.py, src/hermes-agent-2026.8.19/agent/credential_persistence.py, src/hermes-agent-2026.8.19/agent/copilot_acp_client.py, src/hermes-agent-2026.8.19/agent/auxiliary_client.py, src/hermes-agent-2026.8.19/agent/anthropic_adapter.py, src/hermes-agent-2026.8.19/agent/bedrock_adapter.py, src/hermes-agent-2026.8.19/agent/azure_identity_adapter.py, src/hermes-agent-2026.8.19/agent/browser_provider.py, src/hermes-agent-2026.8.19/acp_adapter/auth.py, src/hermes-agent-2026.8.19/agent/backend_identity.py
Reviewing additional files...
Reviewing additional files...
[0/10] Reviewing src/hermes-agent-2026.8.19/agent/credential_sources.py...
[0/10] Reviewing src/hermes-agent-2026.8.19/agent/credential_sources.py, src/hermes-agent-2026.8.19/agent/copilot_acp_client.py...
[0/10] Reviewing src/hermes-agent-2026.8.19/agent/credential_sources.py, src/hermes-agent-2026.8.19/agent/copilot_acp_client.py, src/hermes-agent-2026.8.19/agent/credential_persistence.py...
LLM auditresponse for credential_persistence.py:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a legitimate credential sanitization module. It defines safe lists of provider sources and metadata keys, identifies secret value keys, and removes them from payloads before writing to disk, replacing them with a non-reversible SHA-256 fingerprint. There is no obfuscation, network activity, system modification, or any behavior that deviates from the stated purpose of credential management. The code is well-structured and follows standard security practices for handling secrets.
</details>
<evidence>
</evidence>
<summary>Legitimate credential sanitization code, no security issues.</summary>
</security_assessment>

[1/10] Reviewing src/hermes-agent-2026.8.19/agent/credential_sources.py, src/hermes-agent-2026.8.19/agent/copilot_acp_client.py...
+ Reviewed src/hermes-agent-2026.8.19/agent/credential_persistence.py. Status: SAFE -- Legitimate credential sanitization code, no security issues.
[1/10] Reviewing src/hermes-agent-2026.8.19/agent/credential_sources.py, src/hermes-agent-2026.8.19/agent/copilot_acp_client.py, src/hermes-agent-2026.8.19/agent/auxiliary_client.py...
LLM auditresponse for auxiliary_client.py:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a legitimate auxiliary client router for an LLM-based agent (Hermes). It manages provider selection, fallback chains, authentication, and API call routing for side tasks (compression, vision, web extraction). The suspicious pattern matches (base64 JWT decoding, data URI parsing) are standard operations for OAuth token handling and image format conversion between OpenAI and Anthropic APIs — not evidence of malice.

There is no data exfiltration, backdoor installation, code execution from untrusted sources, or system file tampering. The code only interacts with configured LLM API endpoints and local credential/config files, which is expected behavior for a multi-provider LLM client. The module's complexity comes from robust fallback/retry logic and provider-agnostic design, not from obfuscation or hidden payloads.
</details>
<evidence>
</evidence>
<summary>Legitimate LLM client with no malicious behavior detected.</summary>
</security_assessment>

[2/10] Reviewing src/hermes-agent-2026.8.19/agent/credential_sources.py, src/hermes-agent-2026.8.19/agent/copilot_acp_client.py...
+ Reviewed src/hermes-agent-2026.8.19/agent/auxiliary_client.py. Status: SAFE -- Legitimate LLM client with no malicious behavior detected.
[2/10] Reviewing src/hermes-agent-2026.8.19/agent/credential_sources.py, src/hermes-agent-2026.8.19/agent/copilot_acp_client.py, src/hermes-agent-2026.8.19/agent/anthropic_adapter.py...
LLM auditresponse for anthropic_adapter.py:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a provider adapter that translates between Hermes Agent's internal message format and Anthropic's Messages API. It handles authentication token detection (API keys vs OAuth tokens), manages beta feature headers, constructs API request bodies with proper thinking/reasoning parameters, and converts message formats. All subprocess usage is limited to detecting the installed Claude Code version for sending correct User-Agent headers to Anthropic's OAuth infrastructure — a standard and necessary practice for API compatibility. The base64/hashlib usage is in the `_generate_pkce()` function, which implements standard PKCE (Proof Key for Code Exchange) for OAuth flows, not obfuscation. There is no evidence of data exfiltration, remote code execution, obfuscated commands, or any behavior outside the application's stated purpose of providing an AI agent interface to Anthropic-compatible API endpoints. The code follows standard patterns for multi-provider AI agent systems.
</details>
<evidence></evidence>
<summary>Legitimate provider adapter, no malicious code found.</summary>
</security_assessment>

[2/10] Reviewing src/hermes-agent-2026.8.19/agent/credential_sources.py, src/hermes-agent-2026.8.19/agent/copilot_acp_client.py, src/hermes-agent-2026.8.19/agent/anthropic_adapter.py, src/hermes-agent-2026.8.19/agent/bedrock_adapter.py...
[3/10] Reviewing src/hermes-agent-2026.8.19/agent/credential_sources.py, src/hermes-agent-2026.8.19/agent/copilot_acp_client.py, src/hermes-agent-2026.8.19/agent/bedrock_adapter.py...
+ Reviewed src/hermes-agent-2026.8.19/agent/anthropic_adapter.py. Status: SAFE -- Legitimate provider adapter, no malicious code found.
LLM auditresponse for bedrock_adapter.py:
<security_assessment>
<decision>SAFE</decision>
<details>
This file implements an AWS Bedrock Converse API adapter for the Hermes Agent. It is a well-documented, standard integration module that converts between OpenAI and Bedrock Converse message formats and handles streaming, error classification, and model discovery. All network calls go to AWS Bedrock endpoints via the official boto3 SDK, which is the expected behavior for this adapter. The file does not exfiltrate data to any remote host, does not download or execute arbitrary code, contains no obfuscated commands, and performs no unauthorized system modifications. The only somewhat unusual pattern is the `tools.lazy_deps.ensure()` call for on-demand dependency installation, but this is part of the project's own tooling for optional dependency management and is clearly documented as such. There are no indications of a supply-chain attack.
</details>
<evidence>
</evidence>
<summary>Legitimate Bedrock API adapter; no malicious behavior found.</summary>
</security_assessment>

[3/10] Reviewing src/hermes-agent-2026.8.19/agent/credential_sources.py, src/hermes-agent-2026.8.19/agent/copilot_acp_client.py, src/hermes-agent-2026.8.19/agent/bedrock_adapter.py, src/hermes-agent-2026.8.19/agent/azure_identity_adapter.py...
[4/10] Reviewing src/hermes-agent-2026.8.19/agent/credential_sources.py, src/hermes-agent-2026.8.19/agent/copilot_acp_client.py, src/hermes-agent-2026.8.19/agent/azure_identity_adapter.py...
+ Reviewed src/hermes-agent-2026.8.19/agent/bedrock_adapter.py. Status: SAFE -- Legitimate Bedrock API adapter; no malicious behavior found.
LLM auditresponse for azure_identity_adapter.py:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard Azure identity adapter for Microsoft Foundry integration. It implements token providers using the `azure-identity` SDK, which is a legitimate Microsoft package. The code reads environment variables (e.g., `AZURE_TENANT_ID`, `AZURE_CLIENT_ID`) to configure authentication, but does not exfiltrate data, download or execute remote code, or perform any obfuscated operations. The lazy import and optional dependency installation are part of the package’s design and are not malicious. No evidence of supply-chain attack or backdoor was found.
</details>
<evidence></evidence>
<summary>Standard Azure auth adapter, no malicious code found.</summary>
</security_assessment>

[4/10] Reviewing src/hermes-agent-2026.8.19/agent/credential_sources.py, src/hermes-agent-2026.8.19/agent/copilot_acp_client.py, src/hermes-agent-2026.8.19/agent/azure_identity_adapter.py, src/hermes-agent-2026.8.19/agent/browser_provider.py...
[5/10] Reviewing src/hermes-agent-2026.8.19/agent/credential_sources.py, src/hermes-agent-2026.8.19/agent/copilot_acp_client.py, src/hermes-agent-2026.8.19/agent/browser_provider.py...
+ Reviewed src/hermes-agent-2026.8.19/agent/azure_identity_adapter.py. Status: SAFE -- Standard Azure auth adapter, no malicious code found.
LLM auditresponse for browser_provider.py:
<security_assessment>
<decision>SAFE</decision>
<details>
This file defines an abstract base class (`BrowserProvider`) for cloud browser backends. It contains only interface contracts (abstract methods, properties, and backward-compatibility shims) with no executable logic beyond returning static dicts and delegating calls. There are no network requests, file operations, system commands, encoded or obfuscated strings, or any code that could exfiltrate data or execute attacker-controlled content. The imports (`abc`, `typing`) are standard Python library modules. The file is consistent with typical upstream source code for defining pluggable API backends — no supply-chain attack indicators.
</details>
<evidence>
</evidence>
<summary>Pure abstract base class, no suspicious code.</summary>
</security_assessment>

[5/10] Reviewing src/hermes-agent-2026.8.19/agent/credential_sources.py, src/hermes-agent-2026.8.19/agent/copilot_acp_client.py, src/hermes-agent-2026.8.19/agent/browser_provider.py, src/hermes-agent-2026.8.19/acp_adapter/auth.py...
[6/10] Reviewing src/hermes-agent-2026.8.19/agent/credential_sources.py, src/hermes-agent-2026.8.19/agent/copilot_acp_client.py, src/hermes-agent-2026.8.19/acp_adapter/auth.py...
+ Reviewed src/hermes-agent-2026.8.19/agent/browser_provider.py. Status: SAFE -- Pure abstract base class, no suspicious code.
LLM auditresponse for auth.py:
<security_assessment>
<decision>SAFE</decision>
<details>
This file implements authentication method detection and advertising for the Hermes ACP adapter. It imports internal modules (`hermes_cli.runtime_provider`, `acp.schema`) as expected for the package, and constructs authentication method objects based on the current runtime configuration. There are no network requests, file operations, system modifications, obfuscated code, or dangerous commands (eval, base64, curl, wget) present. The `callable(api_key)` check supports Azure Entra ID token providers, which is legitimate upstream functionality. The code performs no exfiltration or manipulation outside its own scope. It is consistent with standard packaging and application logic.
</details>
<evidence></evidence>
<summary>Routine authentication helper code, no malicious behavior.</summary>
</security_assessment>

[7/10] Reviewing src/hermes-agent-2026.8.19/agent/credential_sources.py, src/hermes-agent-2026.8.19/agent/copilot_acp_client.py...
+ Reviewed src/hermes-agent-2026.8.19/acp_adapter/auth.py. Status: SAFE -- Routine authentication helper code, no malicious behavior.
[7/10] Reviewing src/hermes-agent-2026.8.19/agent/credential_sources.py, src/hermes-agent-2026.8.19/agent/copilot_acp_client.py, src/hermes-agent-2026.8.19/agent/backend_identity.py...
LLM auditresponse for backend_identity.py:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a well-documented Python module implementing identity comparison and failure-scoped skip logic for the Hermes AI agent. It defines `BackendIdentity`, `FailureScope`, and functions like `should_skip_candidate` to avoid re-implementing inline comparisons across the codebase. The code uses standard Python libraries, has no network requests, no file operations, no obfuscation, no execution of external commands, and no attempts to exfiltrate data. The dynamic import of `PROVIDER_REGISTRY` inside a try-except block is a standard lazy-import pattern to avoid circular dependencies and is not suspicious. The file is entirely consistent with ordinary packaging and application functionality.
</details>
<evidence>
</evidence>
<summary>Safe: legitimate identity comparison module</summary>
</security_assessment>

[8/10] Reviewing src/hermes-agent-2026.8.19/agent/credential_sources.py, src/hermes-agent-2026.8.19/agent/copilot_acp_client.py...
+ Reviewed src/hermes-agent-2026.8.19/agent/backend_identity.py. Status: SAFE -- Safe: legitimate identity comparison module
LLM auditresponse for credential_sources.py:
<security_assessment>
<decision>SAFE</decision>
<details>
This file implements a well-structured credential removal system for the Hermes agent. It only performs local file operations on credential stores (e.g., `~/.hermes/.anthropic_oauth.json`, `auth.json`, `.env`) and suppresses sources in its own configuration. No network requests, obfuscated code, or dangerous commands are present. All operations are confined to the application&#x27;s own data and standard user configuration files, which is expected behavior for a credential management tool. There is no evidence of supply-chain attack or malicious intent.</details>
<evidence></evidence>
<summary>Standard credential removal code, no malicious behavior.</summary>
</security_assessment>

[9/10] Reviewing src/hermes-agent-2026.8.19/agent/copilot_acp_client.py...
+ Reviewed src/hermes-agent-2026.8.19/agent/credential_sources.py. Status: SAFE -- Standard credential removal code, no malicious behavior.
LLM auditresponse for copilot_acp_client.py:
<security_assessment>
<decision>SAFE</decision>
<details>
This file implements an OpenAI-compatible shim that forwards requests to the GitHub Copilot ACP CLI via subprocess communication. The code spawns a user-configurable `copilot` binary (or custom command set via environment variables) and communicates over JSON-RPC over stdio. It handles file read/write operations with proper path confinement: all paths must be absolute and within the session working directory, and permission checks (`get_read_block_error`, `get_write_denied_error`, `is_write_approval_required`) are enforced before any file operation. Sensitive text is redacted via `redact_sensitive_text` before returning file contents. The subprocess environment is built using `hermes_subprocess_env` which inherits required credentials but strips Tier-1 secrets. There is no obfuscated code, no base64/hex decoding, no curl/wget/eval usage, and no exfiltration of data to external hosts. The command/tool choice is a standard packaging pattern, not malicious. While the subprocess is spawned with inherited credentials, this is intentional for the Copilot ACP CLI to function, and the code takes care to strip the highest-sensitivity secrets. The file also includes a fast-fail probe to avoid hanging on CLI versions that don't support ACP. No supply-chain attack indicators are present.
</details>
<evidence></evidence>
<summary>Legitimate ACP client with proper path confinement and clean design.</summary>
</security_assessment>

[10/10] Reviewing ...
+ Reviewed src/hermes-agent-2026.8.19/agent/copilot_acp_client.py. Status: SAFE -- Legitimate ACP client with proper path confinement and clean design.
Reviewed all additional files.
Reviewed additional files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 121,481
  Completion Tokens: 11,343
  Total Tokens: 132,824
  Total Cost: $0.012774
  Execution Time: 528.44 seconds

Final Status: SAFE


No issues found.
