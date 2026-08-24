---
package: pi
pkgver: 0.84.2
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 56580919ea5cd225cb34031d0932798021e4a0d8
prompt_tokens: 52039
completion_tokens: 5767
total_tokens: 57806
cost: 0.0036490902
execution_time: 105.61
files_reviewed: 10
files_skipped: 2
files_unauditable: 8
unpinned_sources: 0
date: 2026-08-24T08:51:15Z
file_verdicts:
  - file: pi-ai-0.84.2.tgz
    status: skipped
    summary: "Skipping binary file: pi-ai-0.84.2.tgz"
  - file: PKGBUILD
    status: safe
    summary: Standard npm PKGBUILD with no security issues.
  - file: src/package/dist/api/anthropic-messages.d.ts
    status: safe
    summary: TypeScript declaration file, no executable code.
  - file: src/package/dist/api/anthropic-messages.lazy.d.ts
    status: safe
    summary: TypeScript declaration file, no executable code.
  - file: src/package/dist/api/anthropic-messages.lazy.js
    status: safe
    summary: Lazy-loading API wrapper with no suspicious behavior; safe.
  - file: src/package/dist/api/anthropic-messages.js
    status: safe
    summary: Standard API client module, no malicious behavior detected.
  - file: src/package/dist/api/azure-openai-responses.lazy.d.ts
    status: safe
    summary: Standard type definition file, no security concerns.
  - file: src/package/dist/api/azure-openai-responses.lazy.js
    status: safe
    summary: Standard lazy-loading module, no security concerns.
  - file: src/package/dist/api/azure-openai-responses.d.ts
    status: safe
    summary: Type declaration file with no executable code; safe.
  - file: src/package/dist/api/bedrock-converse-stream.d.ts
    status: skipped
    summary: "Skipping binary file: bedrock-converse-stream.d.ts"
  - file: src/package/dist/api/azure-openai-responses.js
    status: safe
    summary: Legitimate Azure OpenAI provider integration code, no malicious indicators.
  - file: src/package/dist/api/bedrock-converse-stream.js
    status: safe
    summary: Legitimate AWS Bedrock streaming module, no malicious code.
---

Cloning https://aur.archlinux.org/pi.git...
Cloned pi
Analyzing pi AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only standard variable assignments and function definitions in its top-level scope. No code executes during sourcing except variable expansion, and no `pkgver()` function is present. The source array includes two HTTPS downloads from the project's own upstream (GitHub archive) and the npm registry — both expected sources for this package. No command substitutions, backticks, or dangerous operations appear at global scope. The `prepare()`, `build()`, and `package()` functions are not invoked by the requested commands (`--nobuild --nodeps --noprepare`). Therefore, fetching the sources and running `makepkg --printsrcinfo` is safe.
</details>
<evidence></evidence>
<summary>No malicious code executes during source fetch or PKGBUILD sourcing.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious code executes during source fetch or PKGBUILD sourcing.
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Running makepkg --printsrcinfo to get source files for agent...
makepkg --printsrcinfo successful
Reviewing required files...
[0/2] Reviewing PKGBUILD...
[0/2] Reviewing PKGBUILD, pi-ai-0.84.2.tgz...
[1/2] Reviewing PKGBUILD...
! Reviewed pi-ai-0.84.2.tgz. Status: SKIPPED -- Skipping binary file: pi-ai-0.84.2.tgz
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard AUR packaging practices for an npm-based project. The sources are pinned with specific version tags and checksums are provided (though sha256sums are set to actual hashes, not SKIP). The build process uses `npm ci` with `--ignore-scripts` to prevent arbitrary script execution during dependency installation, then runs the project's own `build:offline` script (expected). The package() function installs files and creates a symlink to the main CLI entry point. No malicious activity such as data exfiltration, unexpected network requests, obfuscated code, or system tampering is present.
</details>
<evidence></evidence>
<summary>Standard npm PKGBUILD with no security issues.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard npm PKGBUILD with no security issues.
Reviewed all required files.
Deciding which files to review next...
Note: 8 compiled/archived file(s) cannot be audited as text and were not reviewed (pi-0.84.2.tar.gz, src/pi-0.84.2/packages/coding-agent/examples/extensions/doom-overlay/doom/build/doom.wasm, src/pi-0.84.2/packages/coding-agent/test/fixtures/before-compaction.jsonl and 5 more). For a package that ships prebuilt binaries, the audit covers the packaging, not the payload.
Note: 2091 files available for selection; offering the 50 highest-priority to the model. 1777 lower-priority file(s) were not offered.
File selection failed (LLM response message content is empty or missing. Raw response: ChatCompletion(id='gen-1787561431-t8gBy6tNAbNb6u4Lu8WV', choices=[Choice(finish_reason='stop', index=0, logprobs=None, message=ChatCompletionMessage(content=None, refusal=None, role='assistant', annotations=None, audio=None, function_call=None, tool_calls=None, reasoning='The user wants me to audit the pi package (AUR package) for potential vulnerabilities, malicious code, or supply chain attack vectors. I\'ve already reviewed PKGBUILD and the upstream tarball. Now I need to select up to 10 files from the listing that are most likely to contain dangerous code.\n\nThe listing shows files under src/package/dist/api/. These appear to be compiled/transpiled JavaScript files (and their TypeScript declaration files) for various API integrations. These are part of the upstream package\'s runtime code. The user has already reviewed the upstream tarball (pi-ai-0.84.2.tgz), which likely contains these files. Since these are vendored upstream bundle content, they are not AUR maintainer modifications.\n\nThe instructions say: "DEPRIORITIZE vendored upstream bundle content. We hunt for code INJECTED into the AUR packaging, so files that ship verbatim inside an upstream release artifact are a poor use of a slot -- no AUR maintainer touched them, and they are identical for every user of that upstream release."\n\nGiven that the only files listed are from the upstream dist bundle (api/ directory) and the PKGBUILD and tarball are already reviewed, there are no AUR-specific build scripts, install hooks, patches, or other hand-written files to review. The listing does not include any .install files, meson.build, CMakeLists.txt, Makefile, configure, patches, or any other build-system files. It\'s all pre-packaged JavaScript code.\n\nThe user said: "When a package merely repackages a prebuilt archive, the AUR-controlled surface may be only the PKGBUILD and the install hook -- both already reviewed. In that case say so by returning FEW files or none, rather than filling slots with bundle... (truncated)); using highest-priority files instead

Note: file selection did not complete (LLM response message content is empty or missing. Raw response: ChatCompletion(id='gen-1787561431-t8gBy6tNAbNb6u4Lu8WV', choices=[Choice(finish_reason='stop', index=0, logprobs=None, message=ChatCompletionMessage(content=None, refusal=None, role='assistant', annotations=None, audio=None, function_call=None, tool_calls=None, reasoning='The user wants me to audit the pi package (AUR package) for potential vulnerabilities, malicious code, or supply chain attack vectors. I\'ve already reviewed PKGBUILD and the upstream tarball. Now I need to select up to 10 files from the listing that are most likely to contain dangerous code.\n\nThe listing shows files under src/package/dist/api/. These appear to be compiled/transpiled JavaScript files (and their TypeScript declaration files) for various API integrations. These are part of the upstream package\'s runtime code. The user has already reviewed the upstream tarball (pi-ai-0.84.2.tgz), which likely contains these files. Since these are vendored upstream bundle content, they are not AUR maintainer modifications.\n\nThe instructions say: "DEPRIORITIZE vendored upstream bundle content. We hunt for code INJECTED into the AUR packaging, so files that ship verbatim inside an upstream release artifact are a poor use of a slot -- no AUR maintainer touched them, and they are identical for every user of that upstream release."\n\nGiven that the only files listed are from the upstream dist bundle (api/ directory) and the PKGBUILD and tarball are already reviewed, there are no AUR-specific build scripts, install hooks, patches, or other hand-written files to review. The listing does not include any .install files, meson.build, CMakeLists.txt, Makefile, configure, patches, or any other build-system files. It\'s all pre-packaged JavaScript code.\n\nThe user said: "When a package merely repackages a prebuilt archive, the AUR-controlled surface may be only the PKGBUILD and the install hook -- both already reviewed. In that case say so by returning FEW files or none, rather than filling slots with bundle... (truncated)). Falling back to the 10 highest-priority file(s) by ranking.
Decided to review 10 additional files: src/package/dist/api/anthropic-messages.d.ts, src/package/dist/api/anthropic-messages.js, src/package/dist/api/anthropic-messages.lazy.d.ts, src/package/dist/api/anthropic-messages.lazy.js, src/package/dist/api/azure-openai-responses.d.ts, src/package/dist/api/azure-openai-responses.js, src/package/dist/api/azure-openai-responses.lazy.d.ts, src/package/dist/api/azure-openai-responses.lazy.js, src/package/dist/api/bedrock-converse-stream.d.ts, src/package/dist/api/bedrock-converse-stream.js
Reviewing additional files...
Reviewing additional files...
[0/10] Reviewing src/package/dist/api/anthropic-messages.d.ts...
[0/10] Reviewing src/package/dist/api/anthropic-messages.d.ts, src/package/dist/api/anthropic-messages.lazy.d.ts...
[0/10] Reviewing src/package/dist/api/anthropic-messages.d.ts, src/package/dist/api/anthropic-messages.lazy.d.ts, src/package/dist/api/anthropic-messages.js...
LLM auditresponse for anthropic-messages.d.ts:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a TypeScript declaration file (.d.ts) providing type definitions for an Anthropic AI messages interface. It contains only type annotations, interfaces, and comments describing the API options. There are no executable statements, no network requests, no file operations, no encoded or obfuscated content. The file is typical for an AI integration library and poses no security risk.
</details>
<evidence></evidence>
<summary>TypeScript declaration file, no executable code.</summary>
</security_assessment>

[0/10] Reviewing src/package/dist/api/anthropic-messages.d.ts, src/package/dist/api/anthropic-messages.lazy.d.ts, src/package/dist/api/anthropic-messages.js, src/package/dist/api/anthropic-messages.lazy.js...
[1/10] Reviewing src/package/dist/api/anthropic-messages.lazy.d.ts, src/package/dist/api/anthropic-messages.js, src/package/dist/api/anthropic-messages.lazy.js...
+ Reviewed src/package/dist/api/anthropic-messages.d.ts. Status: SAFE -- TypeScript declaration file, no executable code.
LLM auditresponse for anthropic-messages.lazy.d.ts:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a TypeScript declaration file (`.d.ts`) that only defines a type import and a function export. It contains no executable code, no network requests, no file operations, and no obfuscation. The `sourceMappingURL` comment is standard for generated TypeScript declarations. There is no evidence of malicious behavior.
</details>
<evidence></evidence>
<summary>TypeScript declaration file, no executable code.</summary>
</security_assessment>

[1/10] Reviewing src/package/dist/api/anthropic-messages.lazy.d.ts, src/package/dist/api/anthropic-messages.js, src/package/dist/api/anthropic-messages.lazy.js, src/package/dist/api/azure-openai-responses.d.ts...
[2/10] Reviewing src/package/dist/api/anthropic-messages.js, src/package/dist/api/anthropic-messages.lazy.js, src/package/dist/api/azure-openai-responses.d.ts...
+ Reviewed src/package/dist/api/anthropic-messages.lazy.d.ts. Status: SAFE -- TypeScript declaration file, no executable code.
LLM auditresponse for anthropic-messages.lazy.js:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a small lazy-loading wrapper for an Anthropic Messages API module. It imports a `lazyApi` helper and exports a function that dynamically imports `./anthropic-messages.js` only when called. This is a standard code-splitting / lazy-loading pattern and contains no network requests, no obfuscated code, no file system modifications, and no execution of untrusted content. The file is consistent with normal application packaging and shows no evidence of malicious or injected behavior.
</details>
<evidence>
</evidence>
<summary>
Lazy-loading API wrapper with no suspicious behavior; safe.</summary>
</security_assessment>

[2/10] Reviewing src/package/dist/api/anthropic-messages.js, src/package/dist/api/anthropic-messages.lazy.js, src/package/dist/api/azure-openai-responses.d.ts, src/package/dist/api/azure-openai-responses.js...
[3/10] Reviewing src/package/dist/api/anthropic-messages.js, src/package/dist/api/azure-openai-responses.d.ts, src/package/dist/api/azure-openai-responses.js...
+ Reviewed src/package/dist/api/anthropic-messages.lazy.js. Status: SAFE -- Lazy-loading API wrapper with no suspicious behavior; safe.
LLM auditresponse for anthropic-messages.js:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard API client module for interacting with Anthropic's API (Claude models). It handles streaming message processing, content block conversion, tool management, and authentication. The code is well-structured and performs only expected operations: making API requests to the configured Anthropic endpoint, processing SSE event streams, converting message formats, and managing tool calls and thinking blocks.

The "stealth mode" comment about mimicking Claude Code tool naming is a legitimate compatibility feature for OAuth-based authentication with Anthropic, not an attempt to hide malicious behavior. There are no signs of data exfiltration, code execution from external sources, eval usage, obfuscated strings, or any other patterns that would indicate a supply chain attack. The file imports only from legitimate SDKs and local modules, and all network communication goes through the standard Anthropic SDK to the configured model provider.

The truncated portion of the file (1060 lines total) was checked for suspicious patterns (curl, wget, eval, base64, exec, etc.) and none were found, which corroborates the assessment.
</details>
<evidence></evidence>
<summary>Standard API client module, no malicious behavior detected.</summary>
</security_assessment>

[3/10] Reviewing src/package/dist/api/anthropic-messages.js, src/package/dist/api/azure-openai-responses.d.ts, src/package/dist/api/azure-openai-responses.js, src/package/dist/api/azure-openai-responses.lazy.d.ts...
[4/10] Reviewing src/package/dist/api/azure-openai-responses.d.ts, src/package/dist/api/azure-openai-responses.js, src/package/dist/api/azure-openai-responses.lazy.d.ts...
+ Reviewed src/package/dist/api/anthropic-messages.js. Status: SAFE -- Standard API client module, no malicious behavior detected.
LLM auditresponse for azure-openai-responses.lazy.d.ts:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard TypeScript type declaration file (`.d.ts`) from an npm package. It contains only type exports and a source map reference. There are no executable statements, network requests, obfuscated code, or any indication of malicious behavior. The file is part of the upstream `pi` package's dependency tree and represents legitimate API typings for Azure OpenAI responses.
</details>
<evidence></evidence>
<summary>Standard type definition file, no security concerns.</summary>
</security_assessment>

[4/10] Reviewing src/package/dist/api/azure-openai-responses.d.ts, src/package/dist/api/azure-openai-responses.js, src/package/dist/api/azure-openai-responses.lazy.d.ts, src/package/dist/api/azure-openai-responses.lazy.js...
[5/10] Reviewing src/package/dist/api/azure-openai-responses.d.ts, src/package/dist/api/azure-openai-responses.js, src/package/dist/api/azure-openai-responses.lazy.js...
+ Reviewed src/package/dist/api/azure-openai-responses.lazy.d.ts. Status: SAFE -- Standard type definition file, no security concerns.
LLM auditresponse for azure-openai-responses.lazy.js:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard JavaScript lazy-loading stub. It exports a function that dynamically imports another local module (`./azure-openai-responses.js`). The code contains no network requests, no obfuscation, no dangerous operations (eval, base64, etc.), and no file system modifications. It is consistent with normal packaging practices for a JavaScript application. The `lazyApi` helper is imported from a local module and used to perform the dynamic import. No supply-chain attack indicators present.
</details>
<evidence></evidence>
<summary>Standard lazy-loading module, no security concerns.</summary>
</security_assessment>

[5/10] Reviewing src/package/dist/api/azure-openai-responses.d.ts, src/package/dist/api/azure-openai-responses.js, src/package/dist/api/azure-openai-responses.lazy.js, src/package/dist/api/bedrock-converse-stream.d.ts...
[6/10] Reviewing src/package/dist/api/azure-openai-responses.d.ts, src/package/dist/api/azure-openai-responses.js, src/package/dist/api/bedrock-converse-stream.d.ts...
+ Reviewed src/package/dist/api/azure-openai-responses.lazy.js. Status: SAFE -- Standard lazy-loading module, no security concerns.
LLM auditresponse for azure-openai-responses.d.ts:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a TypeScript declaration file (.d.ts) that contains only type definitions and interface declarations. It has no executable code, no network requests, no file operations, and no obfuscated content. The file is purely declarative, providing type information for an Azure OpenAI Responses API integration. No indicators of supply-chain attack or malicious behavior are present.
</details>
<evidence></evidence>
<summary>Type declaration file with no executable code; safe.</summary>
</security_assessment>

[7/10] Reviewing src/package/dist/api/azure-openai-responses.js, src/package/dist/api/bedrock-converse-stream.d.ts...
+ Reviewed src/package/dist/api/azure-openai-responses.d.ts. Status: SAFE -- Type declaration file with no executable code; safe.
[7/10] Reviewing src/package/dist/api/azure-openai-responses.js, src/package/dist/api/bedrock-converse-stream.d.ts, src/package/dist/api/bedrock-converse-stream.js...
[8/10] Reviewing src/package/dist/api/azure-openai-responses.js, src/package/dist/api/bedrock-converse-stream.js...
! Reviewed src/package/dist/api/bedrock-converse-stream.d.ts. Status: SKIPPED -- Skipping binary file: bedrock-converse-stream.d.ts
LLM auditresponse for azure-openai-responses.js:
<security_assessment>
<decision>SAFE</decision>
<details>
No evidence of malicious or injected code. The file implements standard Azure OpenAI Responses API client integration for the pi project (a terminal AI assistant). It uses the official `openai` npm SDK, makes API calls only to Azure OpenAI endpoints, and handles streaming responses. There are no hidden commands, obfuscated code, network exfiltration, or unexpected system modifications. The `dangerouslyAllowBrowser: true` flag is an upstream configuration choice for the SDK environment, not evidence of a supply-chain attack. All imports are from expected local modules and the openai library.
</details>
<evidence></evidence>
<summary>Legitimate Azure OpenAI provider integration code, no malicious indicators.</summary>
</security_assessment>

[9/10] Reviewing src/package/dist/api/bedrock-converse-stream.js...
+ Reviewed src/package/dist/api/azure-openai-responses.js. Status: SAFE -- Legitimate Azure OpenAI provider integration code, no malicious indicators.
LLM auditresponse for bedrock-converse-stream.js:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a legitimate module for interacting with the AWS Bedrock Converse API via the AWS SDK. It handles streaming responses, tool calls, thinking blocks, and caching. No suspicious code patterns (curl, wget, eval, base64 decode in an obfuscated context, exec, etc.) are present. The use of `atob` for base64 decoding is standard for image data handling within the application's intended functionality. The file does not exfiltrate data, download or execute external code, or perform any operation outside the scope of interacting with the AWS Bedrock service. It is consistent with normal application code for a package that integrates with AI models.
</details>
<evidence>
</evidence>
<summary>Legitimate AWS Bedrock streaming module, no malicious code.</summary>
</security_assessment>

[10/10] Reviewing ...
+ Reviewed src/package/dist/api/bedrock-converse-stream.js. Status: SAFE -- Legitimate AWS Bedrock streaming module, no malicious code.
Reviewed all additional files.
Reviewed additional files.
Audit complete! Result: No issues found
(Skipped 2 files: pi-ai-0.84.2.tgz, bedrock-converse-stream.d.ts)

API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 52,039
  Completion Tokens: 5,767
  Total Tokens: 57,806
  Total Cost: $0.003649
  Execution Time: 105.61 seconds

Final Status: SAFE


No issues found.


Audit Skips:

pi-ai-0.84.2.tgz: [SKIPPED] Skipping binary file: pi-ai-0.84.2.tgz

src/package/dist/api/bedrock-converse-stream.d.ts: [SKIPPED] Skipping binary file: bedrock-converse-stream.d.ts
