---
package: pi-coding-agent-bin
pkgver: 0.84.3
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 76c02596d4f1a58500b30a8fd37c0598e2c7d68c
prompt_tokens: 143459
completion_tokens: 6577
total_tokens: 150036
cost: 0.013876851478
execution_time: 170.02
files_reviewed: 12
files_skipped: 0
files_unauditable: 5
unpinned_sources: 0
date: 2026-08-25T02:27:26Z
file_verdicts:
  - file: pi-coding-agent-bin-0.84.3-LICENSE
    status: safe
    summary: Standard license file, no security issues.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR package fetching pinned upstream releases; no malicious behavior detected.
  - file: src/pi/examples/extensions/custom-provider-anthropic/package.json
    status: safe
    summary: No malicious content; standard package definition.
  - file: src/pi/export-html/ansi-to-html.d.ts
    status: safe
    summary: "Safe: single-purpose type declaration file, no executable code."
  - file: src/pi/export-html/index.js
    status: safe
    summary: Legitimate HTML export code, no malicious behavior.
  - file: src/pi/export-html/ansi-to-html.js
    status: safe
    summary: Benign ANSI to HTML converter, no security issues.
  - file: src/pi/export-html/template.js
    status: safe
    summary: File is a safe HTML template for session export/display, no malicious behavior found.
  - file: src/pi/export-html/tool-renderer.d.ts
    status: safe
    summary: "Safe: TypeScript declaration file with no executable code."
  - file: src/pi/export-html/index.d.ts
    status: safe
    summary: Clean TypeScript declaration, no malicious code.
  - file: src/pi/export-html/vendor/marked.min.js
    status: safe
    summary: Standard vendored marked library, no malicious behavior.
  - file: src/pi/export-html/tool-renderer.js
    status: safe
    summary: Clean rendering module with no suspicious behavior.
  - file: src/pi/export-html/vendor/highlight.min.js
    status: safe
    summary: Standard Highlight.js library, no malicious behavior.
---

Cloning https://aur.archlinux.org/pi-coding-agent-bin.git...
Cloned pi-coding-agent-bin
Analyzing pi-coding-agent-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD is a standard prebuilt binary package that downloads tarballs from the official GitHub releases page of the upstream project (`https://github.com/earendil-works/pi`). All source URLs use HTTPS and are pinned to specific versions. Checksums are provided for all source files. There is no executable code in the global scope or `pkgver()` (which is absent). The only operations during `makepkg --nobuild --nodeps --noprepare` are downloading the sources and extracting them, which is normal behavior and does not execute any untrusted code. No signs of obfuscation, backdoors, data exfiltration, or unexpected network endpoints are present.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD, no risks in source fetch phase.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Standard PKGBUILD, no risks in source fetch phase.
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Running makepkg --printsrcinfo to get source files for agent...
makepkg --printsrcinfo successful
Reviewing required files...
[0/2] Reviewing PKGBUILD...
[0/2] Reviewing PKGBUILD, pi-coding-agent-bin-0.84.3-LICENSE...
LLM auditresponse for pi-coding-agent-bin-0.84.3-LICENSE:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard MIT License text file. It contains no executable code, no network requests, no obfuscation, and no suspicious patterns. It is a straightforward copyright and permission notice commonly included with open-source software packages. There are no security concerns.
</details>
<evidence></evidence>
<summary>Standard license file, no security issues.</summary>
</security_assessment>

[1/2] Reviewing PKGBUILD...
+ Reviewed pi-coding-agent-bin-0.84.3-LICENSE. Status: SAFE -- Standard license file, no security issues.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a straightforward wrapper for an upstream prebuilt binary. It pins the version and downloads the official GitHub release tarballs for the `earendil-works/pi` repository from the project's own release URLs, and each source has a fixed sha256 checksum. The package only installs the binary bundle under /opt, creates a /usr/bin/pi symlink, and installs the upstream LICENSE. There is no build-time download, no execution of fetched scripts, no obfuscation, no data exfiltration, and no tampering with files outside the package's own scope. The `!strip` option and `!debug`, `!lto` are consistent with the comment about Bun standalone binaries and are not suspicious.

The use of separate `source_x86_64` / `source_aarch64` arrays and `SKIP` checksums for any source is a standard AUR practice. All URLs point to the official upstream GitHub repository and its release assets. No unusual network behavior, encoded commands, or backdoor attempts are present.
</details>
<evidence>
</evidence>
<summary>
Standard AUR package fetching pinned upstream releases; no malicious behavior detected.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR package fetching pinned upstream releases; no malicious behavior detected.
Reviewed all required files.
Deciding which files to review next...
Note: 5 compiled/archived file(s) cannot be audited as text and were not reviewed (pi-coding-agent-bin-0.84.3-x86_64.tar.gz, src/pi/photon_rs_bg.wasm, src/pi/pi and 2 more). For a package that ships prebuilt binaries, the audit covers the packaging, not the payload.
Note: 198 files available for selection; offering the 50 highest-priority to the model. 121 lower-priority file(s) were not offered.
File selection failed (LLMResponseError: LLM response message content is empty or missing); using highest-priority files instead

Note: file selection did not complete (LLMResponseError: LLM response message content is empty or missing). Falling back to the 10 highest-priority file(s) by ranking.
Decided to review 10 additional files: src/pi/examples/extensions/custom-provider-anthropic/package.json, src/pi/export-html/ansi-to-html.d.ts, src/pi/export-html/ansi-to-html.js, src/pi/export-html/index.d.ts, src/pi/export-html/index.js, src/pi/export-html/template.js, src/pi/export-html/tool-renderer.d.ts, src/pi/export-html/tool-renderer.js, src/pi/export-html/vendor/highlight.min.js, src/pi/export-html/vendor/marked.min.js
Reviewing additional files...
Reviewing additional files...
[0/10] Reviewing src/pi/export-html/ansi-to-html.d.ts...
[0/10] Reviewing src/pi/export-html/ansi-to-html.d.ts, src/pi/export-html/ansi-to-html.js...
[0/10] Reviewing src/pi/export-html/ansi-to-html.d.ts, src/pi/export-html/ansi-to-html.js, src/pi/examples/extensions/custom-provider-anthropic/package.json...
LLM auditresponse for package.json:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `package.json` file for a private npm package. It declares a single dependency (`@anthropic-ai/sdk`) and defines three trivial scripts that only echo text. The `pi.extensions` array references a local TypeScript file (`./index.ts`), which is normal for an extension package. There is no obfuscated code, no network requests, no file operations outside the package scope, and no signs of malicious intent. The content is entirely benign and consistent with the intended purpose of an example custom provider extension for Anthropic&#39;s SDK.
</details>
<evidence></evidence>
<summary>No malicious content; standard package definition.</summary>
</security_assessment>

[0/10] Reviewing src/pi/export-html/ansi-to-html.d.ts, src/pi/export-html/ansi-to-html.js, src/pi/examples/extensions/custom-provider-anthropic/package.json, src/pi/export-html/index.d.ts...
[1/10] Reviewing src/pi/export-html/ansi-to-html.d.ts, src/pi/export-html/ansi-to-html.js, src/pi/export-html/index.d.ts...
+ Reviewed src/pi/examples/extensions/custom-provider-anthropic/package.json. Status: SAFE -- No malicious content; standard package definition.
LLM auditresponse for ansi-to-html.d.ts:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a TypeScript declaration file (.d.ts) containing only type annotations and documentation comments. It declares two exported functions (`ansiToHtml` and `ansiLinesToHtml`) that convert ANSI escape sequences to HTML. There is no executable code, no network requests, no file operations, no obfuscation, and no evidence of malicious behavior. The file is purely descriptive and cannot execute any actions.
</details>
<evidence></evidence>
<summary>Safe: single-purpose type declaration file, no executable code.</summary>
</security_assessment>

[1/10] Reviewing src/pi/export-html/ansi-to-html.d.ts, src/pi/export-html/ansi-to-html.js, src/pi/export-html/index.d.ts, src/pi/export-html/index.js...
[2/10] Reviewing src/pi/export-html/ansi-to-html.js, src/pi/export-html/index.d.ts, src/pi/export-html/index.js...
+ Reviewed src/pi/export-html/ansi-to-html.d.ts. Status: SAFE -- Safe: single-purpose type declaration file, no executable code.
LLM auditresponse for index.js:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `src/pi/export-html/index.js` contains standard application logic for exporting session data to HTML files. It reads local template files (template.html, template.css, template.js, and vendor libraries) and writes a self-contained HTML output. No network requests, no suspicious obfuscation, no use of dangerous functions like `eval`, `curl`, or `wget`. The base64 encoding is used solely to safely embed session JSON data into the HTML, which is a common practice to avoid escaping issues. All operations are within the expected scope of the application's functionality. There is no evidence of supply-chain attack or malicious code injection.
</details>
<evidence></evidence>
<summary>Legitimate HTML export code, no malicious behavior.</summary>
</security_assessment>

[3/10] Reviewing src/pi/export-html/ansi-to-html.js, src/pi/export-html/index.d.ts...
+ Reviewed src/pi/export-html/index.js. Status: SAFE -- Legitimate HTML export code, no malicious behavior.
[3/10] Reviewing src/pi/export-html/ansi-to-html.js, src/pi/export-html/index.d.ts, src/pi/export-html/template.js...
LLM auditresponse for ansi-to-html.js:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard ANSI-to-HTML converter implemented in pure JavaScript. It contains no network requests, no execution of external code, no obfuscated commands, no eval, and no file system access. The code is transparent, well-documented, and performs only the described transformation of ANSI escape sequences to HTML with inline styles. There are no indicators of supply-chain attack or malicious intent.
</details>
<evidence></evidence>
<summary>Benign ANSI to HTML converter, no security issues.</summary>
</security_assessment>

[4/10] Reviewing src/pi/export-html/index.d.ts, src/pi/export-html/template.js...
+ Reviewed src/pi/export-html/ansi-to-html.js. Status: SAFE -- Benign ANSI to HTML converter, no security issues.
[4/10] Reviewing src/pi/export-html/index.d.ts, src/pi/export-html/template.js, src/pi/export-html/tool-renderer.d.ts...
LLM auditresponse for template.js:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a template for exporting and rendering a session from the pi-coding-agent tool. The main data (conversation entries, tool calls, tokens, costs, etc.) is base64-encoded in the DOM, decoded, and rendered into an HTML tree and message list. The code is clear, well-structured, and contains deliberate security practices: it escapes user-supplied content with `escapeHtml`, filters out HTML/CSS-like markup via a custom `marked` tokenizer, and sanitizes link and image URLs using a scheme allow-list (`https?`, `mailto`, `tel`, `ftp`). The only network-relevant functions create a local file download of the session data, which is user-initiated and matches the application's stated purpose. No evidence of exfiltration, backdoors, or hidden malicious behavior was found.
</details>
<evidence>
</evidence>
<summary>
File is a safe HTML template for session export/display, no malicious behavior found.
</summary>
</security_assessment>

[5/10] Reviewing src/pi/export-html/index.d.ts, src/pi/export-html/tool-renderer.d.ts...
+ Reviewed src/pi/export-html/template.js. Status: SAFE -- File is a safe HTML template for session export/display, no malicious behavior found.
[5/10] Reviewing src/pi/export-html/index.d.ts, src/pi/export-html/tool-renderer.d.ts, src/pi/export-html/tool-renderer.js...
LLM auditresponse for tool-renderer.d.ts:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `tool-renderer.d.ts` is a TypeScript declaration file that defines interfaces and a function signature for rendering custom tool calls and results to HTML. It contains only type annotations and no executable code. There are no network requests, obfuscated commands, file operations, or system modifications. The content is purely declarative and poses no security risk. The absence of any suspicious patterns (curl, wget, eval, base64, exec) confirms this is a standard type definition file for the package's upstream functionality.
</details>
<evidence></evidence>
<summary>Safe: TypeScript declaration file with no executable code.</summary>
</security_assessment>

[5/10] Reviewing src/pi/export-html/index.d.ts, src/pi/export-html/tool-renderer.d.ts, src/pi/export-html/tool-renderer.js, src/pi/export-html/vendor/highlight.min.js...
[6/10] Reviewing src/pi/export-html/index.d.ts, src/pi/export-html/tool-renderer.js, src/pi/export-html/vendor/highlight.min.js...
+ Reviewed src/pi/export-html/tool-renderer.d.ts. Status: SAFE -- Safe: TypeScript declaration file with no executable code.
LLM auditresponse for index.d.ts:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a TypeScript declaration file (`.d.ts`) from the `pi-coding-agent-bin` package. It contains only type interface definitions (`ToolHtmlRenderer`, `ExportOptions`) and function declarations (`exportSessionToHtml`, `exportFromFile`). There is no executable code, no network requests, no file system operations, no obfuscation, and no dangerous commands like `eval`, `base64`, `curl`, or `wget`. The file conforms to standard TypeScript packaging practices and does not exhibit any malicious behavior. The source mapping URL is a normal artifact of TypeScript compilation and not a security concern.
</details>
<evidence>
</evidence>
<summary>Clean TypeScript declaration, no malicious code.</summary>
</security_assessment>

[6/10] Reviewing src/pi/export-html/index.d.ts, src/pi/export-html/tool-renderer.js, src/pi/export-html/vendor/highlight.min.js, src/pi/export-html/vendor/marked.min.js...
[7/10] Reviewing src/pi/export-html/tool-renderer.js, src/pi/export-html/vendor/highlight.min.js, src/pi/export-html/vendor/marked.min.js...
+ Reviewed src/pi/export-html/index.d.ts. Status: SAFE -- Clean TypeScript declaration, no malicious code.
LLM auditresponse for marked.min.js:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a minified copy of the `marked` Markdown parser library (version 18.0.5), a widely used open-source package. The code is a standard UMD module that tokenizes and renders Markdown text. It contains no obfuscation beyond normal minification, no network requests, no file system access, no eval or dynamic code execution, and no attempts to exfiltrate data or modify system state. The included URLs and patterns are solely for parsing Markdown syntax. The file appears to be a legitimate vendored dependency from the official markedjs repository.
</details>
<summary>Standard vendored marked library, no malicious behavior.</summary>
<evidence></evidence>
</security_assessment>

[8/10] Reviewing src/pi/export-html/tool-renderer.js, src/pi/export-html/vendor/highlight.min.js...
+ Reviewed src/pi/export-html/vendor/marked.min.js. Status: SAFE -- Standard vendored marked library, no malicious behavior.
LLM auditresponse for tool-renderer.js:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a JavaScript module that renders tool call and result outputs to HTML by converting ANSI escape sequences. It imports a local helper (`./ansi-to-html.js`), defines helper functions for trimming blank lines, and exports a `createToolHtmlRenderer` that builds a renderer object. The code is straightforward, uses no network calls, no obfuscation, no dangerous functions like `eval`, `exec`, or `base64`. All operations are local string manipulation and rendering logic consistent with the stated purpose of HTML export. There are no signs of supply-chain attack or malicious intent.
</details>
<evidence></evidence>
<summary>Clean rendering module with no suspicious behavior.</summary>
</security_assessment>

[9/10] Reviewing src/pi/export-html/vendor/highlight.min.js...
+ Reviewed src/pi/export-html/tool-renderer.js. Status: SAFE -- Clean rendering module with no suspicious behavior.
LLM auditresponse for highlight.min.js:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `highlight.min.js` is a minified version of the popular syntax highlighting library Highlight.js v11.9.0. It is a standard vendor dependency used for syntax highlighting in exported HTML. The code contains no suspicious patterns such as `eval`, `base64`, `curl`, `wget`, `exec`, or any network requests. It is standard library code that performs syntax parsing and output generation. There is no evidence of malicious behavior, exfiltration, or unexpected operations. The file is consistent with its stated purpose and does not deviate from expected packaging practices.
</details>
<evidence></evidence>
<summary>Standard Highlight.js library, no malicious behavior.</summary>
</security_assessment>

[10/10] Reviewing ...
+ Reviewed src/pi/export-html/vendor/highlight.min.js. Status: SAFE -- Standard Highlight.js library, no malicious behavior.
Reviewed all additional files.
Reviewed additional files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 143,459
  Completion Tokens: 6,577
  Total Tokens: 150,036
  Total Cost: $0.013877
  Execution Time: 170.02 seconds

Final Status: SAFE


No issues found.
