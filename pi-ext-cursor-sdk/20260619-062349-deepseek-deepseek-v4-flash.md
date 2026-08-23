---
package: pi-ext-cursor-sdk
pkgver: 0.1.45
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: openrouter.ai
base_url: https://openrouter.ai/api/v1
aur_sleuth_rev: 5790943c1b39200ecdf449522971aa7db90ade4a
prompt_tokens: 47287
completion_tokens: 7770
total_tokens: 55057
cost: 0.00565443
execution_time: 165.99
files_reviewed: 12
files_skipped: 1
date: 2026-06-19T06:23:49Z
file_verdicts:
  - file: pi-ext-cursor-sdk-0.1.45.tar.gz
    status: skipped
    summary: "Skipping binary file: pi-ext-cursor-sdk-0.1.45.tar.gz"
  - file: pi-ext.install
    status: safe
    summary: Informational install script, no threats.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD with no security issues.
  - file: src/pi-cursor-sdk-0.1.45/src/cursor-model.ts
    status: safe
    summary: Clean TypeScript model definition; no security concerns.
  - file: src/pi-cursor-sdk-0.1.45/package.json
    status: safe
    summary: Standard package.json with no malicious content.
  - file: src/pi-cursor-sdk-0.1.45/src/cursor-pi-tool-bridge-mcp.ts
    status: safe
    summary: Standard utility module, no security issues found.
  - file: src/pi-cursor-sdk-0.1.45/platform-smoke.config.mjs
    status: safe
    summary: Declarative config file with no executable or malicious code.
  - file: src/pi-cursor-sdk-0.1.45/src/cursor-api-key.ts
    status: safe
    summary: Benign API key resolution helper, no suspicious behavior.
  - file: src/pi-cursor-sdk-0.1.45/shared/cursor-sdk-output-filter.mjs
    status: safe
    summary: Safe output filter for Cursor SDK noise.
  - file: src/pi-cursor-sdk-0.1.45/shared/cursor-setting-sources.mjs
    status: safe
    summary: No security issues; standard configuration parsing.
  - file: src/pi-cursor-sdk-0.1.45/src/cursor-pi-tool-bridge.ts
    status: safe
    summary: Standard bridge code for tool execution management, no supply-chain issues.
  - file: src/pi-cursor-sdk-0.1.45/src/cursor-pi-tool-bridge-server.ts
    status: safe
    summary: "Safe: standard TypeScript server code, no malicious behavior."
  - file: src/pi-cursor-sdk-0.1.45/src/cursor-fallback-models.generated.ts
    status: safe
    summary: Static model metadata file, no security issues.
---

Cloning https://aur.archlinux.org/pi-ext-cursor-sdk.git to /tmp/aur-sleuth/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-5r9c96ls...
Cloned repository to /tmp/aur-sleuth/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-5r9c96ls
Analyzing pi-ext-cursor-sdk AUR package (working in /tmp/aur-sleuth/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-5r9c96ls) with deepseek/deepseek-v4-flash from https://openrouter.ai/api/v1
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only top-level variable definitions and function declarations. There is no `pkgver()` function, and no command substitutions or embedded commands in the global scope. The `source` array references a tarball from the project's own GitHub repository with a pinned SHA-256 checksum. Running `makepkg --nobuild --nodeps --noprepare` will safely fetch that tarball and extract it; no malicious behavior (e.g., data exfiltration, arbitrary code execution, unexpected network requests) can occur during this step. The `build()` and `package()` functions are not invoked by these commands, so their content is out of scope for this gate.
</details>
<summary>No dangerous code; source fetch is safe.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete [grey50]-- No dangerous code; source fetch is safe.[/]
Running makepkg --nobuild --nodeps --noprepare to download sources for agent...
makepkg --nobuild --nodeps --noprepare successful
Running makepkg --printsrcinfo to get source files for agent...
makepkg --printsrcinfo successful
Reviewing required files...
[0/3] Reviewing PKGBUILD...
[0/3] Reviewing PKGBUILD, pi-ext.install...
[0/3] Reviewing PKGBUILD, pi-ext.install, pi-ext-cursor-sdk-0.1.45.tar.gz...
[1/3] Reviewing PKGBUILD, pi-ext.install...
! Reviewed pi-ext-cursor-sdk-0.1.45.tar.gz. Status: SKIPPED -- Skipping binary file: pi-ext-cursor-sdk-0.1.45.tar.gz
LLM auditresponse for pi-ext.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard Arch Linux .install script for the `pi-ext-cursor-sdk` package. It only outputs a message during `post_install()` and `post_upgrade()` advising the user to manually add an extension path to their settings file. There are no network requests, file operations, code execution, obfuscation, or any other potentially malicious actions. The content is purely informational and follows normal packaging practices.
</details>
<summary>Informational install script, no threats.</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed pi-ext.install. Status: SAFE -- Informational install script, no threats.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD is a standard AUR package for a Node.js extension. The source is fetched from the upstream GitHub repository over HTTPS with a pinned SHA256 checksum, ensuring integrity. The build step runs `npm ci` with safe flags (`--omit=dev`, `--no-audit`, `--no-fund`), and the package step copies files into the package directory. There are no obfuscated commands, no unexpected network requests (e.g., curl, wget), no eval or base64 decodes, and no attempts to exfiltrate data or modify system files outside the package scope. The `options=(!strip !debug)` and `install=pi-ext.install` are normal packaging directives. The file exhibits no genuinely malicious behavior.
</details>
<summary>Standard AUR PKGBUILD with no security issues.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD with no security issues.
Reviewed all required files.
Deciding which files to review next...
Note: 268 files available for selection; offering the 50 highest-priority to the model. 214 lower-priority file(s) were not offered.
LLM response for file selection:
src/pi-cursor-sdk-0.1.45/package.json
src/pi-cursor-sdk-0.1.45/platform-smoke.config.mjs
src/pi-cursor-sdk-0.1.45/shared/cursor-sdk-output-filter.mjs
src/pi-cursor-sdk-0.1.45/shared/cursor-setting-sources.mjs
src/pi-cursor-sdk-0.1.45/src/cursor-api-key.ts
src/pi-cursor-sdk-0.1.45/src/cursor-pi-tool-bridge-mcp.ts
src/pi-cursor-sdk-0.1.45/src/cursor-pi-tool-bridge-server.ts
src/pi-cursor-sdk-0.1.45/src/cursor-pi-tool-bridge.ts
src/pi-cursor-sdk-0.1.45/src/cursor-model.ts
src/pi-cursor-sdk-0.1.45/src/cursor-fallback-models.generated.ts
Decided to review 10 additional files: src/pi-cursor-sdk-0.1.45/package.json, src/pi-cursor-sdk-0.1.45/platform-smoke.config.mjs, src/pi-cursor-sdk-0.1.45/shared/cursor-sdk-output-filter.mjs, src/pi-cursor-sdk-0.1.45/shared/cursor-setting-sources.mjs, src/pi-cursor-sdk-0.1.45/src/cursor-api-key.ts, src/pi-cursor-sdk-0.1.45/src/cursor-pi-tool-bridge-mcp.ts, src/pi-cursor-sdk-0.1.45/src/cursor-pi-tool-bridge-server.ts, src/pi-cursor-sdk-0.1.45/src/cursor-pi-tool-bridge.ts, src/pi-cursor-sdk-0.1.45/src/cursor-model.ts, src/pi-cursor-sdk-0.1.45/src/cursor-fallback-models.generated.ts
Reviewing additional files...
Reviewing additional files...
[0/10] Reviewing src/pi-cursor-sdk-0.1.45/platform-smoke.config.mjs...
[0/10] Reviewing src/pi-cursor-sdk-0.1.45/platform-smoke.config.mjs, src/pi-cursor-sdk-0.1.45/shared/cursor-sdk-output-filter.mjs...
[0/10] Reviewing src/pi-cursor-sdk-0.1.45/platform-smoke.config.mjs, src/pi-cursor-sdk-0.1.45/shared/cursor-sdk-output-filter.mjs, src/pi-cursor-sdk-0.1.45/package.json...
[0/10] Reviewing src/pi-cursor-sdk-0.1.45/platform-smoke.config.mjs, src/pi-cursor-sdk-0.1.45/shared/cursor-sdk-output-filter.mjs, src/pi-cursor-sdk-0.1.45/package.json, src/pi-cursor-sdk-0.1.45/shared/cursor-setting-sources.mjs...
[0/10] Reviewing src/pi-cursor-sdk-0.1.45/platform-smoke.config.mjs, src/pi-cursor-sdk-0.1.45/shared/cursor-sdk-output-filter.mjs, src/pi-cursor-sdk-0.1.45/package.json, src/pi-cursor-sdk-0.1.45/shared/cursor-setting-sources.mjs, src/pi-cursor-sdk-0.1.45/src/cursor-api-key.ts...
[0/10] Reviewing src/pi-cursor-sdk-0.1.45/platform-smoke.config.mjs, src/pi-cursor-sdk-0.1.45/shared/cursor-sdk-output-filter.mjs, src/pi-cursor-sdk-0.1.45/package.json, src/pi-cursor-sdk-0.1.45/shared/cursor-setting-sources.mjs, src/pi-cursor-sdk-0.1.45/src/cursor-api-key.ts, src/pi-cursor-sdk-0.1.45/src/cursor-pi-tool-bridge-mcp.ts...
[0/10] Reviewing src/pi-cursor-sdk-0.1.45/platform-smoke.config.mjs, src/pi-cursor-sdk-0.1.45/shared/cursor-sdk-output-filter.mjs, src/pi-cursor-sdk-0.1.45/package.json, src/pi-cursor-sdk-0.1.45/shared/cursor-setting-sources.mjs, src/pi-cursor-sdk-0.1.45/src/cursor-api-key.ts, src/pi-cursor-sdk-0.1.45/src/cursor-pi-tool-bridge-mcp.ts, src/pi-cursor-sdk-0.1.45/src/cursor-pi-tool-bridge-server.ts...
[0/10] Reviewing src/pi-cursor-sdk-0.1.45/platform-smoke.config.mjs, src/pi-cursor-sdk-0.1.45/shared/cursor-sdk-output-filter.mjs, src/pi-cursor-sdk-0.1.45/package.json, src/pi-cursor-sdk-0.1.45/shared/cursor-setting-sources.mjs, src/pi-cursor-sdk-0.1.45/src/cursor-api-key.ts, src/pi-cursor-sdk-0.1.45/src/cursor-pi-tool-bridge-mcp.ts, src/pi-cursor-sdk-0.1.45/src/cursor-pi-tool-bridge-server.ts, src/pi-cursor-sdk-0.1.45/src/cursor-pi-tool-bridge.ts...
[0/10] Reviewing src/pi-cursor-sdk-0.1.45/platform-smoke.config.mjs, src/pi-cursor-sdk-0.1.45/shared/cursor-sdk-output-filter.mjs, src/pi-cursor-sdk-0.1.45/package.json, src/pi-cursor-sdk-0.1.45/shared/cursor-setting-sources.mjs, src/pi-cursor-sdk-0.1.45/src/cursor-api-key.ts, src/pi-cursor-sdk-0.1.45/src/cursor-pi-tool-bridge-mcp.ts, src/pi-cursor-sdk-0.1.45/src/cursor-pi-tool-bridge-server.ts, src/pi-cursor-sdk-0.1.45/src/cursor-pi-tool-bridge.ts, src/pi-cursor-sdk-0.1.45/src/cursor-model.ts...
[0/10] Reviewing src/pi-cursor-sdk-0.1.45/platform-smoke.config.mjs, src/pi-cursor-sdk-0.1.45/shared/cursor-sdk-output-filter.mjs, src/pi-cursor-sdk-0.1.45/package.json, src/pi-cursor-sdk-0.1.45/shared/cursor-setting-sources.mjs, src/pi-cursor-sdk-0.1.45/src/cursor-api-key.ts, src/pi-cursor-sdk-0.1.45/src/cursor-pi-tool-bridge-mcp.ts, src/pi-cursor-sdk-0.1.45/src/cursor-pi-tool-bridge-server.ts, src/pi-cursor-sdk-0.1.45/src/cursor-pi-tool-bridge.ts, src/pi-cursor-sdk-0.1.45/src/cursor-model.ts, src/pi-cursor-sdk-0.1.45/src/cursor-fallback-models.generated.ts...
LLM auditresponse for cursor-model.ts:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `cursor-model.ts` contains standard TypeScript type definitions and a utility function. It imports a type from an external dependency (`@earendil-works/pi-coding-agent`), exports constants and a type alias, and implements a simple function `isCursorModel` that checks model properties. There are no network requests, file operations, obfuscated code, or any other dangerous behaviors. The code is entirely declarative and performs no runtime actions beyond the function's logic. No evidence of a supply-chain attack or malicious injection is present.
</details>
<summary>
Clean TypeScript model definition; no security concerns.</summary>
</security_assessment>

[1/10] Reviewing src/pi-cursor-sdk-0.1.45/platform-smoke.config.mjs, src/pi-cursor-sdk-0.1.45/shared/cursor-sdk-output-filter.mjs, src/pi-cursor-sdk-0.1.45/package.json, src/pi-cursor-sdk-0.1.45/shared/cursor-setting-sources.mjs, src/pi-cursor-sdk-0.1.45/src/cursor-api-key.ts, src/pi-cursor-sdk-0.1.45/src/cursor-pi-tool-bridge-mcp.ts, src/pi-cursor-sdk-0.1.45/src/cursor-pi-tool-bridge-server.ts, src/pi-cursor-sdk-0.1.45/src/cursor-pi-tool-bridge.ts, src/pi-cursor-sdk-0.1.45/src/cursor-fallback-models.generated.ts...
+ Reviewed src/pi-cursor-sdk-0.1.45/src/cursor-model.ts. Status: SAFE -- Clean TypeScript model definition; no security concerns.
LLM auditresponse for package.json:
<security_assessment>
<decision>SAFE</decision>
<details>
This `package.json` is a standard Node.js package manifest for the `pi-cursor-sdk` package. It declares metadata, scripts, and dependencies. There is no evidence of malicious behavior: no obfuscated code, no network requests to unexpected hosts, no dangerous commands like `curl | bash` or `eval` with encoded payloads. The `allowScripts` entry for `node-pty` is typical for packages with native dependencies and is not a security concern in this context. The `overrides` pinning `undici` reflects a dependency management choice. All scripts reference local files within the package and perform routine development tasks (type checking, testing, smoke tests). No exfiltration, backdoors, or supply-chain attack indicators are present.
</details>
<summary>Standard package.json with no malicious content.</summary>
</security_assessment>

[2/10] Reviewing src/pi-cursor-sdk-0.1.45/platform-smoke.config.mjs, src/pi-cursor-sdk-0.1.45/shared/cursor-sdk-output-filter.mjs, src/pi-cursor-sdk-0.1.45/shared/cursor-setting-sources.mjs, src/pi-cursor-sdk-0.1.45/src/cursor-api-key.ts, src/pi-cursor-sdk-0.1.45/src/cursor-pi-tool-bridge-mcp.ts, src/pi-cursor-sdk-0.1.45/src/cursor-pi-tool-bridge-server.ts, src/pi-cursor-sdk-0.1.45/src/cursor-pi-tool-bridge.ts, src/pi-cursor-sdk-0.1.45/src/cursor-fallback-models.generated.ts...
+ Reviewed src/pi-cursor-sdk-0.1.45/package.json. Status: SAFE -- Standard package.json with no malicious content.
LLM auditresponse for cursor-pi-tool-bridge-mcp.ts:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard TypeScript utility module for bridging custom tool definitions to the Model Context Protocol (MCP) used by Cursor. All functions perform in-memory data transformations: normalizing schemas, generating unique tool names (using SHA-256 hashing), converting content formats, and checking for known MCP tool names. There are no network requests, file system operations, system modifications, obfuscated code, or dangerous command executions. The file follows typical TypeScript/Node.js packaging patterns and contains no evidence of malicious behavior.
</details>
<summary>
Standard utility module, no security issues found.
</summary>
</security_assessment>

[3/10] Reviewing src/pi-cursor-sdk-0.1.45/platform-smoke.config.mjs, src/pi-cursor-sdk-0.1.45/shared/cursor-sdk-output-filter.mjs, src/pi-cursor-sdk-0.1.45/shared/cursor-setting-sources.mjs, src/pi-cursor-sdk-0.1.45/src/cursor-api-key.ts, src/pi-cursor-sdk-0.1.45/src/cursor-pi-tool-bridge-server.ts, src/pi-cursor-sdk-0.1.45/src/cursor-pi-tool-bridge.ts, src/pi-cursor-sdk-0.1.45/src/cursor-fallback-models.generated.ts...
+ Reviewed src/pi-cursor-sdk-0.1.45/src/cursor-pi-tool-bridge-mcp.ts. Status: SAFE -- Standard utility module, no security issues found.
LLM auditresponse for platform-smoke.config.mjs:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a plain configuration module for a platform smoke testing tool. It exports a static JavaScript object with package metadata, artifact retention policies, required build targets, test suites, and tool version pins. There is no executable logic, no network calls, no file manipulation, no obfuscation, and no encoded payloads. The content is entirely declarative and benign.
</details>
<summary>Declarative config file with no executable or malicious code.</summary>
</security_assessment>

[4/10] Reviewing src/pi-cursor-sdk-0.1.45/shared/cursor-sdk-output-filter.mjs, src/pi-cursor-sdk-0.1.45/shared/cursor-setting-sources.mjs, src/pi-cursor-sdk-0.1.45/src/cursor-api-key.ts, src/pi-cursor-sdk-0.1.45/src/cursor-pi-tool-bridge-server.ts, src/pi-cursor-sdk-0.1.45/src/cursor-pi-tool-bridge.ts, src/pi-cursor-sdk-0.1.45/src/cursor-fallback-models.generated.ts...
+ Reviewed src/pi-cursor-sdk-0.1.45/platform-smoke.config.mjs. Status: SAFE -- Declarative config file with no executable or malicious code.
LLM auditresponse for cursor-api-key.ts:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a straightforward TypeScript helper for resolving a Cursor API key. It defines an environment variable name, a placeholder sentinel, and a function that returns the provided API key or falls back to the environment variable if the input matches a placeholder pattern. There is no obfuscation, no network requests, no file system manipulation, no execution of external commands, and no exfiltration of data. The code serves a clear, benign purpose within the SDK and does not exhibit any signs of a supply-chain attack.
</details>
<summary>Benign API key resolution helper, no suspicious behavior.</summary>
</security_assessment>

[5/10] Reviewing src/pi-cursor-sdk-0.1.45/shared/cursor-sdk-output-filter.mjs, src/pi-cursor-sdk-0.1.45/shared/cursor-setting-sources.mjs, src/pi-cursor-sdk-0.1.45/src/cursor-pi-tool-bridge-server.ts, src/pi-cursor-sdk-0.1.45/src/cursor-pi-tool-bridge.ts, src/pi-cursor-sdk-0.1.45/src/cursor-fallback-models.generated.ts...
+ Reviewed src/pi-cursor-sdk-0.1.45/src/cursor-api-key.ts. Status: SAFE -- Benign API key resolution helper, no suspicious behavior.
LLM auditresponse for cursor-sdk-output-filter.mjs:
<security_assessment>
<decision>SAFE</decision>
<details>
The module `cursor-sdk-output-filter.mjs` provides functionality to suppress specific startup noise patterns from `process.stdout`, `process.stderr`, and `console` methods. It uses `AsyncLocalStorage` for per-operation suppression scoping and intercepts the original write/console methods with filtered versions. The patterns suppressed are hardcoded strings like `[hooks]`, `managed_skills.`, `CursorPluginsAgentSkillsService load completed`, etc., which are consistent with expected startup messages from a Cursor SDK. There are no network requests, file system modifications, obfuscation, or execution of untrusted content. The monkey-patching of global I/O is a standard practice for filtering logs and does not indicate malicious intent.
</details>
<summary>Safe output filter for Cursor SDK noise.</summary>
</security_assessment>

[6/10] Reviewing src/pi-cursor-sdk-0.1.45/shared/cursor-setting-sources.mjs, src/pi-cursor-sdk-0.1.45/src/cursor-pi-tool-bridge-server.ts, src/pi-cursor-sdk-0.1.45/src/cursor-pi-tool-bridge.ts, src/pi-cursor-sdk-0.1.45/src/cursor-fallback-models.generated.ts...
+ Reviewed src/pi-cursor-sdk-0.1.45/shared/cursor-sdk-output-filter.mjs. Status: SAFE -- Safe output filter for Cursor SDK noise.
LLM auditresponse for cursor-setting-sources.mjs:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a simple JavaScript module for parsing and serializing a configuration environment variable (`PI_CURSOR_SETTING_SOURCES`). It exports two functions: `resolveCursorSettingSources`, which normalizes a comma-separated string into an array of source identifiers, and `serializeCursorSettingSources`, which converts an array back into a string representation. The code performs no network requests, no file or system operations, no obfuscation, and no execution of external commands. It is purely a data transformation utility consistent with standard packaging practices.
</details>
<summary>No security issues; standard configuration parsing.</summary>
</security_assessment>

[7/10] Reviewing src/pi-cursor-sdk-0.1.45/src/cursor-pi-tool-bridge-server.ts, src/pi-cursor-sdk-0.1.45/src/cursor-pi-tool-bridge.ts, src/pi-cursor-sdk-0.1.45/src/cursor-fallback-models.generated.ts...
+ Reviewed src/pi-cursor-sdk-0.1.45/shared/cursor-setting-sources.mjs. Status: SAFE -- No security issues; standard configuration parsing.
LLM auditresponse for cursor-pi-tool-bridge.ts:
<security_assessment>
<decision>SAFE</decision>
<details>
This TypeScript file implements a bridge for managing tool call execution within the Cursor AI environment. The Windows-specific process abortion mechanism (using `spawnSync` to run a PowerShell script that kills bash/sh processes matching a marker) is legitimate functionality for aborting long-running shell commands, not malicious code. The base64 encoding is used to safely embed the marker string in the PowerShell command, not to obfuscate harmful actions. The file does not exfiltrate data, download or execute code from external sources, or perform any operations outside its intended scope (managing tool execution and session lifecycle).
</details>
<summary>Standard bridge code for tool execution management, no supply-chain issues.</summary>
</security_assessment>

[8/10] Reviewing src/pi-cursor-sdk-0.1.45/src/cursor-pi-tool-bridge-server.ts, src/pi-cursor-sdk-0.1.45/src/cursor-fallback-models.generated.ts...
+ Reviewed src/pi-cursor-sdk-0.1.45/src/cursor-pi-tool-bridge.ts. Status: SAFE -- Standard bridge code for tool execution management, no supply-chain issues.
LLM auditresponse for cursor-pi-tool-bridge-server.ts:
<security_assessment>
<decision>SAFE</decision>
<details>
This file implements a CursorPiToolBridgeRegistry class that creates an HTTP server listening only on 127.0.0.1 (loopback) and restricts requests to the loopback address. It uses standard Node.js `http` module constructs, dynamic imports, and asynchronous operations. There is no obfuscated code, no base64/hex strings, no network requests to external hosts, no file system operations outside the package scope, and no system command execution. The code is consistent with normal TypeScript server implementation for a bridge tool. All operations are performd on the loopback interface and are scoped to the application's internal routing.
</details>
<summary>
Safe: standard TypeScript server code, no malicious behavior.
</summary>
</security_assessment>

[9/10] Reviewing src/pi-cursor-sdk-0.1.45/src/cursor-fallback-models.generated.ts...
+ Reviewed src/pi-cursor-sdk-0.1.45/src/cursor-pi-tool-bridge-server.ts. Status: SAFE -- Safe: standard TypeScript server code, no malicious behavior.
LLM auditresponse for cursor-fallback-models.generated.ts:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `cursor-fallback-models.generated.ts` is a static TypeScript data file that exports a large array of model metadata (model IDs, display names, aliases, parameter options, and variant configurations). It contains no executable logic, no network requests, no encoded or obfuscated commands, and no file system operations. The content is entirely declarative data describing AI model configurations (Claude, GPT, Grok, Kimi) for the Cursor application. This is consistent with the stated purpose of storing public model metadata as a fallback catalog snapshot. No signs of malicious or unexpected behavior were detected.
</details>
<summary>Static model metadata file, no security issues.</summary>
</security_assessment>

[10/10] Reviewing ...
+ Reviewed src/pi-cursor-sdk-0.1.45/src/cursor-fallback-models.generated.ts. Status: SAFE -- Static model metadata file, no security issues.
Reviewed all additional files.
Reviewed additional files.
Audit complete! Result: No issues found
(Skipped 1 file: pi-ext-cursor-sdk-0.1.45.tar.gz)

API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 47,287
  Completion Tokens: 7,770
  Total Tokens: 55,057
  Total Cost: $0.005654
  Execution Time: 165.99 seconds
Full audit report can be found in /tmp/aur-sleuth/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-report-pi-ext-cursor-sdk.txt
Final Status: SAFE


No issues found.


Audit Skips:

/tmp/aur-sleuth/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-5r9c96ls/pi-ext-cursor-sdk-0.1.45.tar.gz: [SKIPPED] Skipping binary file: pi-ext-cursor-sdk-0.1.45.tar.gz
