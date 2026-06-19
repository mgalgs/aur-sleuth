---
package: pi-ext-cursor-sdk
pkgver: 0.1.45
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: openrouter.ai
base_url: https://openrouter.ai/api/v1
aur_sleuth_rev: ba638dfc0c57186105500a07faea25373646096f
prompt_tokens: 39422
completion_tokens: 6723
total_tokens: 46145
cost: 0.00475812
execution_time: 57.35
files_reviewed: 12
files_skipped: 1
date: 2026-06-19T06:08:04Z
file_verdicts:
  - file: pi-ext-cursor-sdk-0.1.45.tar.gz
    status: skipped
    summary: "Skipping binary file: pi-ext-cursor-sdk-0.1.45.tar.gz"
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD with pinned checksum, no malicious indicators.
  - file: pi-ext.install
    status: safe
    summary: Routine install script showing a configuration hint.
  - file: src/pi-cursor-sdk-0.1.45/shared/cursor-sdk-event-debug-env.mjs
    status: safe
    summary: Declarative constants, no executable code.
  - file: src/pi-cursor-sdk-0.1.45/platform-smoke.config.mjs
    status: safe
    summary: Static configuration file, no security concerns.
  - file: src/pi-cursor-sdk-0.1.45/shared/cursor-setting-sources.mjs
    status: safe
    summary: Clean utility module, no security issues found.
  - file: src/pi-cursor-sdk-0.1.45/package.json
    status: safe
    summary: Standard package.json with no malicious content.
  - file: src/pi-cursor-sdk-0.1.45/src/cursor-pi-tool-bridge-env.ts
    status: safe
    summary: Benign environment variable helper, no concerns.
  - file: src/pi-cursor-sdk-0.1.45/src/cursor-api-key.ts
    status: safe
    summary: "Safe: standard API key resolution, no malicious behavior."
  - file: src/pi-cursor-sdk-0.1.45/shared/cursor-sensitive-text.mjs
    status: safe
    summary: Benign text sanitization utility, no malicious behavior.
  - file: src/pi-cursor-sdk-0.1.45/shared/cursor-sdk-output-filter.mjs
    status: safe
    summary: Standard output filtering module; no malicious behavior found.
  - file: src/pi-cursor-sdk-0.1.45/src/cursor-pi-tool-bridge-server.ts
    status: safe
    summary: Legitimate local HTTP server for IPC, no malicious behavior.
  - file: src/pi-cursor-sdk-0.1.45/src/cursor-pi-tool-bridge-run.ts
    status: safe
    summary: Legitimate bridge code with no security issues.
---

Cloning https://aur.archlinux.org/pi-ext-cursor-sdk.git to /tmp/aur-sleuth/aur-sleuth-r542shxn...
Cloned repository to /tmp/aur-sleuth/aur-sleuth-r542shxn
Analyzing pi-ext-cursor-sdk AUR package (working in /tmp/aur-sleuth/aur-sleuth-r542shxn) with deepseek/deepseek-v4-flash from https://openrouter.ai/api/v1
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD defines a standard source array fetching a tarball from a GitHub release with a fixed version and pinned SHA256 checksum. There is no `pkgver()` function, no top-level command substitutions, and no other code that runs when sourcing the PKGBUILD. The `makepkg --nobuild --nodeps --noprepare` and `makepkg --printsrcinfo` commands will only download the source tarball (with integrity verification via the checksum) and parse the PKGBUILD metadata. No malicious code is executed during these steps. The `build()`, `package()`, and the install script (`pi-ext.install`) are out of scope for this narrow gate.</details>
<summary>Standard PKGBUILD, safe to fetch sources.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete [grey50]-- Standard PKGBUILD, safe to fetch sources.[/]
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
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard AUR packaging practices. It downloads a tarball from the project's own GitHub releases with a pinned SHA256 checksum. The build step runs `npm ci` with safe flags (`--omit=dev`, `--no-audit`, `--no-fund`). The package step installs files into standard directories and removes unnecessary items. There is no obfuscated code, no unexpected network requests, no execution of untrusted content, and no exfiltration of data. The only external file referenced is `pi-ext.install`, which is a normal `.install` script; its contents are not provided but its existence alone is not suspicious. No genuinely malicious behavior is present.
</details>
<summary>Standard PKGBUILD with pinned checksum, no malicious indicators.</summary>
</security_assessment>

[2/3] Reviewing pi-ext.install...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD with pinned checksum, no malicious indicators.
LLM auditresponse for pi-ext.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `pi-ext.install` is a standard Arch Linux package install script that only displays a configuration hint to the user during package installation and upgrade. It contains no network requests, no file modifications, no execution of untrusted code, and no obfuscation. The heredoc output is purely informational, advising the user how to enable the installed extensions. No security concerns are present.
</details>
<summary>Routine install script showing a configuration hint.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed pi-ext.install. Status: SAFE -- Routine install script showing a configuration hint.
Reviewed all required files.
Deciding which files to review next...
Note: 268 files available for selection; offering the 50 highest-priority to the model. 214 lower-priority file(s) were not offered.
LLM response for file selection:
src/pi-cursor-sdk-0.1.45/package.json
src/pi-cursor-sdk-0.1.45/platform-smoke.config.mjs
src/pi-cursor-sdk-0.1.45/shared/cursor-sdk-event-debug-env.mjs
src/pi-cursor-sdk-0.1.45/shared/cursor-sdk-output-filter.mjs
src/pi-cursor-sdk-0.1.45/shared/cursor-sensitive-text.mjs
src/pi-cursor-sdk-0.1.45/shared/cursor-setting-sources.mjs
src/pi-cursor-sdk-0.1.45/src/cursor-api-key.ts
src/pi-cursor-sdk-0.1.45/src/cursor-pi-tool-bridge-env.ts
src/pi-cursor-sdk-0.1.45/src/cursor-pi-tool-bridge-server.ts
src/pi-cursor-sdk-0.1.45/src/cursor-pi-tool-bridge-run.ts
Decided to review 10 additional files: src/pi-cursor-sdk-0.1.45/package.json, src/pi-cursor-sdk-0.1.45/platform-smoke.config.mjs, src/pi-cursor-sdk-0.1.45/shared/cursor-sdk-event-debug-env.mjs, src/pi-cursor-sdk-0.1.45/shared/cursor-sdk-output-filter.mjs, src/pi-cursor-sdk-0.1.45/shared/cursor-sensitive-text.mjs, src/pi-cursor-sdk-0.1.45/shared/cursor-setting-sources.mjs, src/pi-cursor-sdk-0.1.45/src/cursor-api-key.ts, src/pi-cursor-sdk-0.1.45/src/cursor-pi-tool-bridge-env.ts, src/pi-cursor-sdk-0.1.45/src/cursor-pi-tool-bridge-server.ts, src/pi-cursor-sdk-0.1.45/src/cursor-pi-tool-bridge-run.ts
Reviewing additional files...
Reviewing additional files...
[0/10] Reviewing src/pi-cursor-sdk-0.1.45/package.json...
[0/10] Reviewing src/pi-cursor-sdk-0.1.45/package.json, src/pi-cursor-sdk-0.1.45/platform-smoke.config.mjs...
[0/10] Reviewing src/pi-cursor-sdk-0.1.45/package.json, src/pi-cursor-sdk-0.1.45/platform-smoke.config.mjs, src/pi-cursor-sdk-0.1.45/shared/cursor-sdk-event-debug-env.mjs...
[0/10] Reviewing src/pi-cursor-sdk-0.1.45/package.json, src/pi-cursor-sdk-0.1.45/platform-smoke.config.mjs, src/pi-cursor-sdk-0.1.45/shared/cursor-sdk-event-debug-env.mjs, src/pi-cursor-sdk-0.1.45/shared/cursor-sdk-output-filter.mjs...
[0/10] Reviewing src/pi-cursor-sdk-0.1.45/package.json, src/pi-cursor-sdk-0.1.45/platform-smoke.config.mjs, src/pi-cursor-sdk-0.1.45/shared/cursor-sdk-event-debug-env.mjs, src/pi-cursor-sdk-0.1.45/shared/cursor-sdk-output-filter.mjs, src/pi-cursor-sdk-0.1.45/shared/cursor-sensitive-text.mjs...
[0/10] Reviewing src/pi-cursor-sdk-0.1.45/package.json, src/pi-cursor-sdk-0.1.45/platform-smoke.config.mjs, src/pi-cursor-sdk-0.1.45/shared/cursor-sdk-event-debug-env.mjs, src/pi-cursor-sdk-0.1.45/shared/cursor-sdk-output-filter.mjs, src/pi-cursor-sdk-0.1.45/shared/cursor-sensitive-text.mjs, src/pi-cursor-sdk-0.1.45/shared/cursor-setting-sources.mjs...
[0/10] Reviewing src/pi-cursor-sdk-0.1.45/package.json, src/pi-cursor-sdk-0.1.45/platform-smoke.config.mjs, src/pi-cursor-sdk-0.1.45/shared/cursor-sdk-event-debug-env.mjs, src/pi-cursor-sdk-0.1.45/shared/cursor-sdk-output-filter.mjs, src/pi-cursor-sdk-0.1.45/shared/cursor-sensitive-text.mjs, src/pi-cursor-sdk-0.1.45/shared/cursor-setting-sources.mjs, src/pi-cursor-sdk-0.1.45/src/cursor-api-key.ts...
[0/10] Reviewing src/pi-cursor-sdk-0.1.45/package.json, src/pi-cursor-sdk-0.1.45/platform-smoke.config.mjs, src/pi-cursor-sdk-0.1.45/shared/cursor-sdk-event-debug-env.mjs, src/pi-cursor-sdk-0.1.45/shared/cursor-sdk-output-filter.mjs, src/pi-cursor-sdk-0.1.45/shared/cursor-sensitive-text.mjs, src/pi-cursor-sdk-0.1.45/shared/cursor-setting-sources.mjs, src/pi-cursor-sdk-0.1.45/src/cursor-api-key.ts, src/pi-cursor-sdk-0.1.45/src/cursor-pi-tool-bridge-env.ts...
[0/10] Reviewing src/pi-cursor-sdk-0.1.45/package.json, src/pi-cursor-sdk-0.1.45/platform-smoke.config.mjs, src/pi-cursor-sdk-0.1.45/shared/cursor-sdk-event-debug-env.mjs, src/pi-cursor-sdk-0.1.45/shared/cursor-sdk-output-filter.mjs, src/pi-cursor-sdk-0.1.45/shared/cursor-sensitive-text.mjs, src/pi-cursor-sdk-0.1.45/shared/cursor-setting-sources.mjs, src/pi-cursor-sdk-0.1.45/src/cursor-api-key.ts, src/pi-cursor-sdk-0.1.45/src/cursor-pi-tool-bridge-env.ts, src/pi-cursor-sdk-0.1.45/src/cursor-pi-tool-bridge-server.ts...
[0/10] Reviewing src/pi-cursor-sdk-0.1.45/package.json, src/pi-cursor-sdk-0.1.45/platform-smoke.config.mjs, src/pi-cursor-sdk-0.1.45/shared/cursor-sdk-event-debug-env.mjs, src/pi-cursor-sdk-0.1.45/shared/cursor-sdk-output-filter.mjs, src/pi-cursor-sdk-0.1.45/shared/cursor-sensitive-text.mjs, src/pi-cursor-sdk-0.1.45/shared/cursor-setting-sources.mjs, src/pi-cursor-sdk-0.1.45/src/cursor-api-key.ts, src/pi-cursor-sdk-0.1.45/src/cursor-pi-tool-bridge-env.ts, src/pi-cursor-sdk-0.1.45/src/cursor-pi-tool-bridge-server.ts, src/pi-cursor-sdk-0.1.45/src/cursor-pi-tool-bridge-run.ts...
LLM auditresponse for cursor-sdk-event-debug-env.mjs:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a simple JavaScript module that exports constant strings representing environment variable names for a cursor SDK event debugging feature. There is no executable logic, no network requests, no file operations, no obfuscation, and no dangerous commands. The content is entirely declarative and poses no security risk.
</details>
<summary>Declarative constants, no executable code.</summary>
</security_assessment>

[1/10] Reviewing src/pi-cursor-sdk-0.1.45/package.json, src/pi-cursor-sdk-0.1.45/platform-smoke.config.mjs, src/pi-cursor-sdk-0.1.45/shared/cursor-sdk-output-filter.mjs, src/pi-cursor-sdk-0.1.45/shared/cursor-sensitive-text.mjs, src/pi-cursor-sdk-0.1.45/shared/cursor-setting-sources.mjs, src/pi-cursor-sdk-0.1.45/src/cursor-api-key.ts, src/pi-cursor-sdk-0.1.45/src/cursor-pi-tool-bridge-env.ts, src/pi-cursor-sdk-0.1.45/src/cursor-pi-tool-bridge-server.ts, src/pi-cursor-sdk-0.1.45/src/cursor-pi-tool-bridge-run.ts...
+ Reviewed src/pi-cursor-sdk-0.1.45/shared/cursor-sdk-event-debug-env.mjs. Status: SAFE -- Declarative constants, no executable code.
LLM auditresponse for platform-smoke.config.mjs:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a static configuration module for platform smoke testing. It exports an object with properties such as package name, cursor model, artifact retention settings, required targets and suites, container image, and Windows Parallels VM configuration. There is no executable code, no network requests, no obfuscation, no dangerous commands (eval, base64, curl, wget, etc.), and no file operations. The content is purely declarative and follows standard packaging practices for a CI/testing configuration. No security issues are present.
</details>
<summary>Static configuration file, no security concerns.</summary>
</security_assessment>

[2/10] Reviewing src/pi-cursor-sdk-0.1.45/package.json, src/pi-cursor-sdk-0.1.45/shared/cursor-sdk-output-filter.mjs, src/pi-cursor-sdk-0.1.45/shared/cursor-sensitive-text.mjs, src/pi-cursor-sdk-0.1.45/shared/cursor-setting-sources.mjs, src/pi-cursor-sdk-0.1.45/src/cursor-api-key.ts, src/pi-cursor-sdk-0.1.45/src/cursor-pi-tool-bridge-env.ts, src/pi-cursor-sdk-0.1.45/src/cursor-pi-tool-bridge-server.ts, src/pi-cursor-sdk-0.1.45/src/cursor-pi-tool-bridge-run.ts...
+ Reviewed src/pi-cursor-sdk-0.1.45/platform-smoke.config.mjs. Status: SAFE -- Static configuration file, no security concerns.
LLM auditresponse for cursor-setting-sources.mjs:
<security_assessment>
<decision>SAFE</decision>
<details>
This module is a straightforward utility for parsing and serializing cursor setting source identifiers. It performs basic string trimming, lowercasing, comparison against known tokens, and splitting on commas. There is no network activity, no file system access, no execution of external commands, no obfuscated or encoded strings, and no dynamic evaluation (eval, Function constructor, etc.). The code is consistent with ordinary packaging and does not contain any supply-chain attack indicators. All operations are purely data transformation on the provided input.
</details>
<summary>
Clean utility module, no security issues found.
</summary>
</security_assessment>

[3/10] Reviewing src/pi-cursor-sdk-0.1.45/package.json, src/pi-cursor-sdk-0.1.45/shared/cursor-sdk-output-filter.mjs, src/pi-cursor-sdk-0.1.45/shared/cursor-sensitive-text.mjs, src/pi-cursor-sdk-0.1.45/src/cursor-api-key.ts, src/pi-cursor-sdk-0.1.45/src/cursor-pi-tool-bridge-env.ts, src/pi-cursor-sdk-0.1.45/src/cursor-pi-tool-bridge-server.ts, src/pi-cursor-sdk-0.1.45/src/cursor-pi-tool-bridge-run.ts...
+ Reviewed src/pi-cursor-sdk-0.1.45/shared/cursor-setting-sources.mjs. Status: SAFE -- Clean utility module, no security issues found.
LLM auditresponse for package.json:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard `package.json` for a Node.js package (`pi-cursor-sdk`). It declares metadata, scripts, and dependencies typical of an npm package. All dependencies point to legitimate npm registry packages (e.g., `@cursor/sdk`, `@connectrpc/connect-node`, `@modelcontextprotocol/sdk`, etc.). The scripts are conventional npm lifecycle scripts for type checking, testing, and running smoke tests—no obfuscation or suspicious commands. The `overrides` for `undici` is a security pin, not a threat. The `allowScripts` entry for `node-pty` is expected for a native module. No evidence of data exfiltration, downloading/executing arbitrary code, backdoors, or anything outside standard packaging practices. The file is safe.
</details>
<summary>Standard package.json with no malicious content.</summary>
</security_assessment>

[4/10] Reviewing src/pi-cursor-sdk-0.1.45/shared/cursor-sdk-output-filter.mjs, src/pi-cursor-sdk-0.1.45/shared/cursor-sensitive-text.mjs, src/pi-cursor-sdk-0.1.45/src/cursor-api-key.ts, src/pi-cursor-sdk-0.1.45/src/cursor-pi-tool-bridge-env.ts, src/pi-cursor-sdk-0.1.45/src/cursor-pi-tool-bridge-server.ts, src/pi-cursor-sdk-0.1.45/src/cursor-pi-tool-bridge-run.ts...
+ Reviewed src/pi-cursor-sdk-0.1.45/package.json. Status: SAFE -- Standard package.json with no malicious content.
LLM auditresponse for cursor-pi-tool-bridge-env.ts:
<security_assessment>
<decision>SAFE</decision>
<details>
This TypeScript file defines environment variable checks for a tool bridge feature. It imports a helper, `parseEnvBoolean`, and exports two constants and two resolver functions that read environment variables named `PI_CURSOR_PI_TOOL_BRIDGE` and `PI_CURSOR_EXPOSE_BUILTIN_TOOLS` with defaults of `true` and `false` respectively. No network requests, obfuscated code, file manipulations, or system modifications are present. This is standard configuration utility code consistent with a legitimate application. No supply-chain attack indicators.
</details>
<summary>Benign environment variable helper, no concerns.</summary>
</security_assessment>

[5/10] Reviewing src/pi-cursor-sdk-0.1.45/shared/cursor-sdk-output-filter.mjs, src/pi-cursor-sdk-0.1.45/shared/cursor-sensitive-text.mjs, src/pi-cursor-sdk-0.1.45/src/cursor-api-key.ts, src/pi-cursor-sdk-0.1.45/src/cursor-pi-tool-bridge-server.ts, src/pi-cursor-sdk-0.1.45/src/cursor-pi-tool-bridge-run.ts...
+ Reviewed src/pi-cursor-sdk-0.1.45/src/cursor-pi-tool-bridge-env.ts. Status: SAFE -- Benign environment variable helper, no concerns.
LLM auditresponse for cursor-api-key.ts:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a straightforward TypeScript utility for resolving a Cursor API key from a configuration string or environment variable. It defines a constant for an environment variable name (`CURSOR_API_KEY`), a placeholder sentinel value, and a function `resolveCursorApiKey` that checks if the provided value matches the placeholder or environment variable references and, if so, falls back to `process.env.CURSOR_API_KEY`. There are no network requests, downloads, obfuscated code, file system modifications, or execution of external commands. The code is consistent with normal application configuration handling and presents no security concerns.
</details>
<summary>
Safe: standard API key resolution, no malicious behavior.
</summary>
</security_assessment>

[6/10] Reviewing src/pi-cursor-sdk-0.1.45/shared/cursor-sdk-output-filter.mjs, src/pi-cursor-sdk-0.1.45/shared/cursor-sensitive-text.mjs, src/pi-cursor-sdk-0.1.45/src/cursor-pi-tool-bridge-server.ts, src/pi-cursor-sdk-0.1.45/src/cursor-pi-tool-bridge-run.ts...
+ Reviewed src/pi-cursor-sdk-0.1.45/src/cursor-api-key.ts. Status: SAFE -- Safe: standard API key resolution, no malicious behavior.
LLM auditresponse for cursor-sensitive-text.mjs:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `cursor-sensitive-text.mjs` implements a text sanitization utility that redacts sensitive patterns such as API keys, bearer tokens, cookies, authorization headers, and a specific bridge endpoint (`/cursor-pi-tool-bridge`). All operations are local string manipulation using standard JavaScript regex and replace calls. There are no network requests, file I/O, system commands, obfuscation, or any code that deviates from its stated purpose of scrubbing sensitive material from text. This is consistent with normal SDK utility code and does not exhibit any supply-chain attack indicators.
</details>
<summary>Benign text sanitization utility, no malicious behavior.</summary>
</security_assessment>

[7/10] Reviewing src/pi-cursor-sdk-0.1.45/shared/cursor-sdk-output-filter.mjs, src/pi-cursor-sdk-0.1.45/src/cursor-pi-tool-bridge-server.ts, src/pi-cursor-sdk-0.1.45/src/cursor-pi-tool-bridge-run.ts...
+ Reviewed src/pi-cursor-sdk-0.1.45/shared/cursor-sensitive-text.mjs. Status: SAFE -- Benign text sanitization utility, no malicious behavior.
LLM auditresponse for cursor-sdk-output-filter.mjs:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a straightforward output-filtering module for a Cursor SDK. It intercepts `process.stdout.write`, `process.stderr.write`, and common `console` methods to suppress known startup noise patterns (e.g., `[hooks]`, `managed_skills.`). It uses `AsyncLocalStorage` for context tracking and provides a reference-counted install/restore mechanism.

- No obfuscated code, no base64/hex decoding, no `eval`/`exec`.
- No network requests, file system writes beyond Node.js standard behavior, or child process execution.
- The monkey‑patching of global stdout/stderr and console is consistent with the stated purpose of filtering SDK output and is reversible. This is not itself malicious; it is a deliberate design choice for the application.
- No evidence of data exfiltration, backdoors, credential theft, or any behavior that deviates from ordinary SDK output management.

This file is safe.
</details>
<summary>Standard output filtering module; no malicious behavior found.</summary>
</security_assessment>

[8/10] Reviewing src/pi-cursor-sdk-0.1.45/src/cursor-pi-tool-bridge-server.ts, src/pi-cursor-sdk-0.1.45/src/cursor-pi-tool-bridge-run.ts...
+ Reviewed src/pi-cursor-sdk-0.1.45/shared/cursor-sdk-output-filter.mjs. Status: SAFE -- Standard output filtering module; no malicious behavior found.
LLM auditresponse for cursor-pi-tool-bridge-server.ts:
<security_assessment>
<decision>SAFE</decision>
<details>
This file implements a local HTTP server for the Cursor Pi Tool Bridge, listening only on the loopback interface (127.0.0.1) and rejecting non-loopback requests with a 403 status. The server is used for inter-process communication within the application. There are no network requests to external hosts, no execution of downloaded code, no obfuscation, and no file system modifications outside the application's scope. The code follows standard practices for local service management and does not exhibit any signs of malicious behavior.
</details>
<summary>Legitimate local HTTP server for IPC, no malicious behavior.</summary>
</security_assessment>

[9/10] Reviewing src/pi-cursor-sdk-0.1.45/src/cursor-pi-tool-bridge-run.ts...
+ Reviewed src/pi-cursor-sdk-0.1.45/src/cursor-pi-tool-bridge-server.ts. Status: SAFE -- Legitimate local HTTP server for IPC, no malicious behavior.
LLM auditresponse for cursor-pi-tool-bridge-run.ts:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `cursor-pi-tool-bridge-run.ts` is a TypeScript source file implementing a bridge between the Cursor AI coding assistant and the Pi AI system using the Model Context Protocol (MCP). It imports from standard Node.js libraries (crypto, http) and from known SDKs (`@cursor/sdk`, `@earendil-works/pi-ai`, `@modelcontextprotocol/sdk`). The code manages tool requests, diagnostics, and state (pending calls, queuing, dispose). There is no obfuscation, no encoded/decoded commands, no network requests to external hosts, no file system operations outside the application’s scope, and no execution of untrusted code. The environment variable access is limited to diagnostics (logging). The logic is transparent and follows standard patterns for asynchronous request handling with no evidence of injection, backdoors, or exfiltration. The file is consistent with the expected purpose of bridging tool calls and poses no supply-chain security risk. Nothing in this file suggests malicious intent; it is normal application code.
</details>
<summary>
Legitimate bridge code with no security issues.</summary>
</security_assessment>

[10/10] Reviewing ...
+ Reviewed src/pi-cursor-sdk-0.1.45/src/cursor-pi-tool-bridge-run.ts. Status: SAFE -- Legitimate bridge code with no security issues.
Reviewed all additional files.
Reviewed additional files.
Audit complete! Result: No issues found
(Skipped 1 file: pi-ext-cursor-sdk-0.1.45.tar.gz)

API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 39,422
  Completion Tokens: 6,723
  Total Tokens: 46,145
  Total Cost: $0.004758
  Execution Time: 57.35 seconds
Full audit report can be found in /tmp/aur-sleuth/aur-sleuth-report-pi-ext-cursor-sdk.txt
Final Status: SAFE


No issues found.


Audit Skips:

/tmp/aur-sleuth/aur-sleuth-r542shxn/pi-ext-cursor-sdk-0.1.45.tar.gz: [SKIPPED] Skipping binary file: pi-ext-cursor-sdk-0.1.45.tar.gz
