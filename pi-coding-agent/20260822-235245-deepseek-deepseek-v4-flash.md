---
package: pi-coding-agent
pkgver: 0.84.2
pkgrel: 2
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: ab8f04a045309f11c3e319d8a061c88f7bc8df51
prompt_tokens: 63005
completion_tokens: 9913
total_tokens: 72918
cost: 0.00474290306
execution_time: 122.78
files_reviewed: 11
files_skipped: 1
files_unauditable: 7
unpinned_sources: 0
date: 2026-08-22T23:52:40Z
file_verdicts:
  - file: pi-0.84.2-source.tar.gz
    status: skipped
    summary: "Skipping binary file: pi-0.84.2-source.tar.gz"
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD with pinned source and no malicious content.
  - file: src/pi-0.84.2/package.json
    status: safe
    summary: Standard package.json, no malicious content detected.
  - file: src/pi-0.84.2/.pi/extensions/import-repro.ts
    status: safe
    summary: Legitimate extension command; no malicious code detected.
  - file: src/pi-0.84.2/.pi/extensions/prompt-url-widget.ts
    status: safe
    summary: "Benign extension widget: parses prompt URLs, fetches metadata via gh, no malicious behavior."
  - file: src/pi-0.84.2/.pi/extensions/redraws.ts
    status: safe
    summary: Safe extension reading and displaying a TUI redraw counter.
  - file: src/pi-0.84.2/packages/agent/src/harness/session/jsonl/storage.ts
    status: safe
    summary: No malicious behavior found; file is safe.
  - file: src/pi-0.84.2/packages/agent/src/agent-loop.ts
    status: safe
    summary: Standard AI agent loop code, no malicious operations detected.
  - file: src/pi-0.84.2/packages/agent/src/proxy.ts
    status: safe
    summary: Standard proxy implementation, no malicious code.
  - file: src/pi-0.84.2/packages/agent/src/harness/system-prompt.ts
    status: safe
    summary: Standard TypeScript helper for formatting skill data
  - file: src/pi-0.84.2/packages/ai/src/api/anthropic-messages.ts
    status: safe
    summary: Legitimate Anthropic API client adapter for a coding agent.
  - file: src/pi-0.84.2/.pi/extensions/tps.ts
    status: safe
    summary: Safe extension with no security issues.
---

Cloning https://aur.archlinux.org/pi-coding-agent.git...
Cloned pi-coding-agent
Analyzing pi-coding-agent AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only static variable assignments in its global scope — no top-level command substitutions, function calls, or `pkgver()` that could execute code during sourcing. The `source` array points to a legitimate GitHub release archive over HTTPS with a pinned checksum. Neither `makepkg --nobuild --nodeps --noprepare` nor `makepkg --printsrcinfo` will execute `prepare()`, `build()`, or `package()`, so the `npm ci` call inside `prepare()` is out of scope. No malicious behavior is present.
</details>
<summary>No risky code executes during source fetching or sourcing.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No risky code executes during source fetching or sourcing.
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Running makepkg --printsrcinfo to get source files for agent...
makepkg --printsrcinfo successful
Reviewing required files...
[0/2] Reviewing PKGBUILD...
[0/2] Reviewing PKGBUILD, pi-0.84.2-source.tar.gz...
[1/2] Reviewing PKGBUILD...
! Reviewed pi-0.84.2-source.tar.gz. Status: SKIPPED -- Skipping binary file: pi-0.84.2-source.tar.gz
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard AUR packaging conventions for a Node.js-based CLI tool. It pins a specific upstream release tarball with a valid SHA-256 checksum, installs dependencies via `npm ci --ignore-scripts` (which is a safe, non-executing install), and builds using the upstream project's own build script. All file operations are confined to the package's own source and installation directories. There are no encoded/obfuscated commands, no unexpected network requests (the npm registry access is expected and documented), and no exfiltration or backdoor mechanisms. The `--offline-model-data` flag is an upstream build option, not an injected payload. This file exhibits no supply-chain attack indicators.
</details>
<summary>Standard PKGBUILD with pinned source and no malicious content.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD with pinned source and no malicious content.
Reviewed all required files.
Deciding which files to review next...
Note: 7 compiled/archived file(s) cannot be audited as text and were not reviewed (src/pi-0.84.2/packages/coding-agent/examples/extensions/doom-overlay/doom/build/doom.wasm, src/pi-0.84.2/packages/coding-agent/test/fixtures/before-compaction.jsonl, src/pi-0.84.2/packages/coding-agent/test/fixtures/large-session.jsonl and 4 more). For a package that ships prebuilt binaries, the audit covers the packaging, not the payload.
Note: 1389 files available for selection; offering the 50 highest-priority to the model. 1124 lower-priority file(s) were not offered.
LLM response for file selection:
src/pi-0.84.2/package.json
src/pi-0.84.2/.pi/extensions/import-repro.ts
src/pi-0.84.2/.pi/extensions/prompt-url-widget.ts
src/pi-0.84.2/.pi/extensions/redraws.ts
src/pi-0.84.2/.pi/extensions/tps.ts
src/pi-0.84.2/packages/agent/src/harness/session/jsonl/storage.ts
src/pi-0.84.2/packages/agent/src/proxy.ts
src/pi-0.84.2/packages/agent/src/agent-loop.ts
src/pi-0.84.2/packages/agent/src/harness/system-prompt.ts
src/pi-0.84.2/packages/ai/src/api/anthropic-messages.ts
Decided to review 10 additional files: src/pi-0.84.2/package.json, src/pi-0.84.2/.pi/extensions/import-repro.ts, src/pi-0.84.2/.pi/extensions/prompt-url-widget.ts, src/pi-0.84.2/.pi/extensions/redraws.ts, src/pi-0.84.2/.pi/extensions/tps.ts, src/pi-0.84.2/packages/agent/src/harness/session/jsonl/storage.ts, src/pi-0.84.2/packages/agent/src/proxy.ts, src/pi-0.84.2/packages/agent/src/agent-loop.ts, src/pi-0.84.2/packages/agent/src/harness/system-prompt.ts, src/pi-0.84.2/packages/ai/src/api/anthropic-messages.ts
Reviewing additional files...
Reviewing additional files...
[0/10] Reviewing src/pi-0.84.2/package.json...
[0/10] Reviewing src/pi-0.84.2/package.json, src/pi-0.84.2/.pi/extensions/import-repro.ts...
[0/10] Reviewing src/pi-0.84.2/package.json, src/pi-0.84.2/.pi/extensions/import-repro.ts, src/pi-0.84.2/.pi/extensions/prompt-url-widget.ts...
LLM auditresponse for package.json:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard `package.json` for a Node.js monorepo project. All scripts reference local files under `scripts/` or standard npm commands. All devDependencies are pinned to specific versions, and overrides are reasonable dependency patches. No suspicious network requests, obfuscated code, eval calls, or attempts to exfiltrate data are present. This file is consistent with normal packaging practices and contains no evidence of a supply-chain attack.
</details>
<summary>Standard package.json, no malicious content detected.</summary>
</security_assessment>

[0/10] Reviewing src/pi-0.84.2/package.json, src/pi-0.84.2/.pi/extensions/import-repro.ts, src/pi-0.84.2/.pi/extensions/prompt-url-widget.ts, src/pi-0.84.2/.pi/extensions/redraws.ts...
[1/10] Reviewing src/pi-0.84.2/.pi/extensions/import-repro.ts, src/pi-0.84.2/.pi/extensions/prompt-url-widget.ts, src/pi-0.84.2/.pi/extensions/redraws.ts...
+ Reviewed src/pi-0.84.2/package.json. Status: SAFE -- Standard package.json, no malicious content detected.
LLM auditresponse for import-repro.ts:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `import-repro.ts` implements a legitimate extension command to import CI issue-analysis sessions from GitHub gists, pi.dev share URLs, or issue URLs. All network requests are made to GitHub's official API (`api.github.com`) or gist raw URLs, which are expected destinations for the package's functionality. The fetched data is parsed as JSON (no `eval` or dynamic code execution) and written to the application's session directory. Local file reads are limited to `.html` and `.jsonl` files and are part of the intended import feature. There is no obfuscation, no exfiltration of sensitive data, no execution of downloaded binaries, and no modification of system files outside the application's scope. The code follows standard TypeScript practices and uses strict regex validation for user-supplied references. No genuinely malicious behavior is present.
</details>
<summary>Legitimate extension command; no malicious code detected.</summary>
</security_assessment>

[2/10] Reviewing src/pi-0.84.2/.pi/extensions/prompt-url-widget.ts, src/pi-0.84.2/.pi/extensions/redraws.ts...
+ Reviewed src/pi-0.84.2/.pi/extensions/import-repro.ts. Status: SAFE -- Legitimate extension command; no malicious code detected.
[2/10] Reviewing src/pi-0.84.2/.pi/extensions/prompt-url-widget.ts, src/pi-0.84.2/.pi/extensions/redraws.ts, src/pi-0.84.2/.pi/extensions/tps.ts...
LLM auditresponse for prompt-url-widget.ts:
<security_assessment>
<decision>SAFE</decision>
<details>
This file implements an extension UI widget for the pi-coding-agent. It parses the agent prompt for URLs matching GitHub PR, issue, or security advisory patterns, displays them, and uses the `gh` CLI to fetch metadata (title, author, advisory details). No obfuscation, no network downloads from external hosts, no execution of fetched code, and no exfiltration of sensitive data is present. The only file read is `readAdvisoryRefFromDraft`, which reads a user-specified draft file (relative to `cwd` or `~`) to extract an `advisory_url` field — this is standard functionality for a security advisory workflow, not a supply-chain attack.

All operations are limited to the user's current working directory or home directory for the advisory draft, and the `gh api` call is made through the already-present `gh` CLI for the package's stated purpose. No deviations from standard extension behavior or suspicious patterns were found.
</details>
<summary>
Benign extension widget: parses prompt URLs, fetches metadata via gh, no malicious behavior.
</summary>
</security_assessment>

[3/10] Reviewing src/pi-0.84.2/.pi/extensions/redraws.ts, src/pi-0.84.2/.pi/extensions/tps.ts...
+ Reviewed src/pi-0.84.2/.pi/extensions/prompt-url-widget.ts. Status: SAFE -- Benign extension widget: parses prompt URLs, fetches metadata via gh, no malicious behavior.
[3/10] Reviewing src/pi-0.84.2/.pi/extensions/redraws.ts, src/pi-0.84.2/.pi/extensions/tps.ts, src/pi-0.84.2/packages/agent/src/harness/session/jsonl/storage.ts...
LLM auditresponse for redraws.ts:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `redraws.ts` defines a simple extension that registers a `/tui` command to display the TUI full‑redraw count. It imports from expected package namespaces (`@earendil-works/pi-coding-agent`, `@earendil-works/pi-tui`) and performs no network requests, file writes, code execution, or system modifications. All operations are confined to reading a UI counter and showing a notification—standard application functionality. No obfuscation, encoded payloads, or unexpected behavior is present. The code is benign and consistent with normal AUR extension packaging.
</details>
<summary>
Safe extension reading and displaying a TUI redraw counter.</summary>
</security_assessment>

[3/10] Reviewing src/pi-0.84.2/.pi/extensions/redraws.ts, src/pi-0.84.2/.pi/extensions/tps.ts, src/pi-0.84.2/packages/agent/src/harness/session/jsonl/storage.ts, src/pi-0.84.2/packages/agent/src/proxy.ts...
[4/10] Reviewing src/pi-0.84.2/.pi/extensions/tps.ts, src/pi-0.84.2/packages/agent/src/harness/session/jsonl/storage.ts, src/pi-0.84.2/packages/agent/src/proxy.ts...
+ Reviewed src/pi-0.84.2/.pi/extensions/redraws.ts. Status: SAFE -- Safe extension reading and displaying a TUI redraw counter.
LLM auditresponse for storage.ts:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `storage.ts` implements a JSONL-based session storage backend for the pi-coding-agent application. It performs standard file I/O operations (read, write, append, rename, remove) on a session file path provided at initialization. There is no network access, no execution of external commands, no obfuscated code, and no attempts to access or exfiltrate sensitive system data. The atomic file publication pattern using a temporary file and rename is a common safety mechanism to prevent data corruption. All operations are consistent with the expected behavior of a local storage layer and do not exhibit any signs of a supply-chain attack or malicious injection.</details>
<summary>No malicious behavior found; file is safe.</summary>
</security_assessment>

[4/10] Reviewing src/pi-0.84.2/.pi/extensions/tps.ts, src/pi-0.84.2/packages/agent/src/harness/session/jsonl/storage.ts, src/pi-0.84.2/packages/agent/src/proxy.ts, src/pi-0.84.2/packages/agent/src/agent-loop.ts...
[5/10] Reviewing src/pi-0.84.2/.pi/extensions/tps.ts, src/pi-0.84.2/packages/agent/src/proxy.ts, src/pi-0.84.2/packages/agent/src/agent-loop.ts...
+ Reviewed src/pi-0.84.2/packages/agent/src/harness/session/jsonl/storage.ts. Status: SAFE -- No malicious behavior found; file is safe.
LLM auditresponse for agent-loop.ts:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `agent-loop.ts` is standard TypeScript code implementing an AI agent loop for message processing, tool call handling, and streaming responses. It uses imports from a library (`@earendil-works/pi-ai`) and local modules. All operations are limited to in-memory message manipulation, event emission, and controlled tool execution via user-defined callbacks. There is no evidence of obfuscated code, network requests, file system modifications, or any behavior that deviates from normal application functionality. The file is part of the upstream source and does not contain injected malicious code.
</details>
<summary>Standard AI agent loop code, no malicious operations detected.</summary>
</security_assessment>

[5/10] Reviewing src/pi-0.84.2/.pi/extensions/tps.ts, src/pi-0.84.2/packages/agent/src/proxy.ts, src/pi-0.84.2/packages/agent/src/agent-loop.ts, src/pi-0.84.2/packages/agent/src/harness/system-prompt.ts...
[6/10] Reviewing src/pi-0.84.2/.pi/extensions/tps.ts, src/pi-0.84.2/packages/agent/src/proxy.ts, src/pi-0.84.2/packages/agent/src/harness/system-prompt.ts...
+ Reviewed src/pi-0.84.2/packages/agent/src/agent-loop.ts. Status: SAFE -- Standard AI agent loop code, no malicious operations detected.
LLM auditresponse for proxy.ts:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `proxy.ts` implements a proxy stream function for routing LLM calls through a server. It makes authenticated HTTP `POST` requests to a user-configurable proxy server URL, sending the model and context data as JSON, and processes Server-Sent Events (SSE) from the server to reconstruct streaming responses client-side.

**No malicious behavior detected:**
- The code is clean, unminified, and contains no obfuscation, encoded strings, or dangerous functions like `eval`, `curl`, or `wget`.
- Network requests (`fetch`) are made **only** to the user-supplied `proxyUrl` endpoint (`/api/stream`) using the user-supplied `authToken`. This is the intended functionality of the package, not an exfiltration channel.
- Data sent in the request body (`model`, `context`, serialized options) is exactly what the proxy server needs to perform an LLM call on behalf of the client — standard behavior for an API proxy.
- No unexpected file system operations, system modifications, or data collection from the local environment (e.g., no reading of `/etc/shadow`, SSH keys, or browser data).
- No code is downloaded or executed from external sources; the SSE data is parsed as JSON and used to reconstruct `AssistantMessage` objects.
- Proper handling of abort signals ensures no resource leaks.

**Minor notes (not security threats):**
- There is a type assertion `(content as any).partialJson` for mutating the tool call object. This is a TypeScript type-safety workaround, not a vulnerability.
- The proxy server receives the entire conversation context; this is by design. Users should ensure they trust the configured proxy server and use HTTPS.

The file is consistent with normal, secure package functionality and presents no evidence of a supply-chain attack.
</details>
<summary>Standard proxy implementation, no malicious code.</summary>
</security_assessment>

[7/10] Reviewing src/pi-0.84.2/.pi/extensions/tps.ts, src/pi-0.84.2/packages/agent/src/harness/system-prompt.ts...
+ Reviewed src/pi-0.84.2/packages/agent/src/proxy.ts. Status: SAFE -- Standard proxy implementation, no malicious code.
[7/10] Reviewing src/pi-0.84.2/.pi/extensions/tps.ts, src/pi-0.84.2/packages/agent/src/harness/system-prompt.ts, src/pi-0.84.2/packages/ai/src/api/anthropic-messages.ts...
LLM auditresponse for system-prompt.ts:
<security_assessment>
<decision>SAFE</decision>
<details>
This file defines a TypeScript function `formatSkillsForSystemPrompt` that generates an XML-like string representation of a list of skills. It includes proper XML escaping via `escapeXml`. The code is straightforward, contains no network requests, no execution of external commands, no file system writes, and no obfuscation. It is perfectly normal for the purpose of constructing a system prompt for an AI coding agent.
</details>
<summary>Standard TypeScript helper for formatting skill data</summary>
</security_assessment>

[8/10] Reviewing src/pi-0.84.2/.pi/extensions/tps.ts, src/pi-0.84.2/packages/ai/src/api/anthropic-messages.ts...
+ Reviewed src/pi-0.84.2/packages/agent/src/harness/system-prompt.ts. Status: SAFE -- Standard TypeScript helper for formatting skill data
LLM auditresponse for anthropic-messages.ts:
<security_assessment>
<decision>SAFE</decision>
<details>
This file implements standard API client logic for Anthropic's Messages API within a coding agent application. It creates HTTP clients, constructs request payloads, and processes streaming SSE responses. All network destinations are the Anthropic API (configured via `model.baseUrl`), which is the expected upstream for a package that interfaces with Anthropic models. There is no obfuscated code, no dynamic code evaluation (eval, exec), no data exfiltration to unexpected hosts, and no filesystem manipulation outside the application's own scope.

The "stealth mode" that mimics Claude Code's identity headers (user-agent, x-app) is clearly intentional and transparently implemented — it serves API compatibility for OATH-token authentication, not concealment of malicious activity. While it may raise API terms-of-service questions, it is not a supply-chain security threat. No code in this file deviates from what is expected for an LLM coding-agent provider adapter.
</details>
<summary>Legitimate Anthropic API client adapter for a coding agent.</summary>
</security_assessment>

[9/10] Reviewing src/pi-0.84.2/.pi/extensions/tps.ts...
+ Reviewed src/pi-0.84.2/packages/ai/src/api/anthropic-messages.ts. Status: SAFE -- Legitimate Anthropic API client adapter for a coding agent.
LLM auditresponse for tps.ts:
<security_assessment>
<decision>SAFE</decision>
<details>
The file implements a simple plugin that calculates tokens-per-second statistics from assistant messages and displays them via a user interface notification. It only reads data from the event context and performs arithmetic operations. There are no network requests, file writes, system command executions, obfuscated code, or any untrusted data handling. All operations are confined to the extension's own event processing and UI notification. No evidence of malicious behavior.
</details>
<summary>Safe extension with no security issues.</summary>
</security_assessment>

[10/10] Reviewing ...
+ Reviewed src/pi-0.84.2/.pi/extensions/tps.ts. Status: SAFE -- Safe extension with no security issues.
Reviewed all additional files.
Reviewed additional files.
Audit complete! Result: No issues found
(Skipped 1 file: pi-0.84.2-source.tar.gz)

API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 63,005
  Completion Tokens: 9,913
  Total Tokens: 72,918
  Total Cost: $0.004743
  Execution Time: 122.78 seconds

Final Status: SAFE


No issues found.


Audit Skips:

/data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-19327bt4/pi-0.84.2-source.tar.gz: [SKIPPED] Skipping binary file: pi-0.84.2-source.tar.gz
