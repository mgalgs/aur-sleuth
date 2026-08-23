---
package: pi-bin
pkgver: 0.79.7
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: openrouter.ai
base_url: https://openrouter.ai/api/v1
aur_sleuth_rev: 42d5d13ec215be60bdccd096603da490f9ec6c7d
prompt_tokens: 140770
completion_tokens: 8669
total_tokens: 149439
cost: 0.01422972
execution_time: 157.87
files_reviewed: 11
files_skipped: 0
date: 2026-06-19T06:40:39Z
file_verdicts:
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD; no malicious content detected.
  - file: src/pi/export-html/tool-renderer.js
    status: safe
    summary: Clean UI rendering code; no security issues.
  - file: "src/pi/node_modules/@mariozechner/clipboard/build.rs"
    status: safe
    summary: Standard napi-rs build script, no security issues.
  - file: src/pi/export-html/index.js
    status: safe
    summary: Standard HTML export module, no security issues.
  - file: src/pi/examples/extensions/custom-provider-anthropic/package.json
    status: safe
    summary: Clean package.json, no security issues.
  - file: src/pi/examples/extensions/doom-overlay/doom/build.sh
    status: safe
    summary: Standard build script, no malicious behavior detected.
  - file: src/pi/export-html/vendor/highlight.min.js
    status: safe
    summary: Standard syntax highlighting library, no malicious code detected.
  - file: src/pi/export-html/vendor/marked.min.js
    status: safe
    summary: No malicious code detected; standard library
  - file: src/pi/export-html/template.js
    status: safe
    summary: Client-side session viewer with no malicious behavior.
  - file: src/pi/examples/extensions/github-issue-autocomplete.ts
    status: safe
    summary: GitHub issue autocomplete extension with no malicious behavior.
  - file: src/pi/export-html/ansi-to-html.js
    status: safe
    summary: Safe JavaScript ANSI to HTML converter library.
---

Cloning https://aur.archlinux.org/pi-bin.git to /tmp/aur-sleuth/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-utg8sthd...
Cloned repository to /tmp/aur-sleuth/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-utg8sthd
Analyzing pi-bin AUR package (working in /tmp/aur-sleuth/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-utg8sthd) with deepseek/deepseek-v4-flash from https://openrouter.ai/api/v1
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD defines `source` arrays pointing to official GitHub releases for both architectures, with valid SHA256 checksums provided. No top-level code executes beyond variable assignments; there is no `pkgver()` function or command substitution that could run malicious logic during `makepkg --nobuild --nodeps --noprepare`. The only operations triggered by the specified commands are downloading the two tarballs from github.com (the project's legitimate upstream) and verifying checksums, which poses no security risk. All dangerous code (if any) resides in `package()` which is not executed during this step.
</details>
<summary>Safe: source from GitHub, no risky top-level code.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete [grey50]-- Safe: source from GitHub, no risky top-level code.[/]
Running makepkg --nobuild --nodeps --noprepare to download sources for agent...
makepkg --nobuild --nodeps --noprepare successful
Running makepkg --printsrcinfo to get source files for agent...
makepkg --printsrcinfo successful
Reviewing required files...
[0/1] Reviewing PKGBUILD...
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is standard and follows safe AUR packaging practices. It downloads a precompiled binary from the official upstream GitHub releases (`github.com/badlogic/pi-mono`) with pinned SHA256 checksums for both `x86_64` and `aarch64`. The `package()` function only installs the binary, runtime assets, documentation, and a license file into the expected system directories. There are no dangerous commands (`eval`, `curl|bash`, base64 decoding), no obfuscation, no unexpected network requests, no exfiltration of data, and no overwriting of system files outside the package's scope. The use of `!strip` is a packaging optimization choice, not a security issue.
</details>
<summary>Standard PKGBUILD; no malicious content detected.</summary>
</security_assessment>

[1/1] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD; no malicious content detected.
Reviewed all required files.
Deciding which files to review next...
Note: 196 files available for selection; offering the 50 highest-priority to the model. 117 lower-priority file(s) were not offered.
LLM response for file selection:
src/pi/node_modules/@mariozechner/clipboard/build.rs
src/pi/export-html/vendor/highlight.min.js
src/pi/export-html/vendor/marked.min.js
src/pi/export-html/ansi-to-html.js
src/pi/export-html/index.js
src/pi/export-html/template.js
src/pi/export-html/tool-renderer.js
src/pi/examples/extensions/custom-provider-anthropic/package.json
src/pi/examples/extensions/doom-overlay/doom/build.sh
src/pi/examples/extensions/github-issue-autocomplete.ts
Decided to review 10 additional files: src/pi/node_modules/@mariozechner/clipboard/build.rs, src/pi/export-html/vendor/highlight.min.js, src/pi/export-html/vendor/marked.min.js, src/pi/export-html/ansi-to-html.js, src/pi/export-html/index.js, src/pi/export-html/template.js, src/pi/export-html/tool-renderer.js, src/pi/examples/extensions/custom-provider-anthropic/package.json, src/pi/examples/extensions/doom-overlay/doom/build.sh, src/pi/examples/extensions/github-issue-autocomplete.ts
Reviewing additional files...
Reviewing additional files...
[0/10] Reviewing src/pi/node_modules/@mariozechner/clipboard/build.rs...
[0/10] Reviewing src/pi/node_modules/@mariozechner/clipboard/build.rs, src/pi/export-html/vendor/highlight.min.js...
[0/10] Reviewing src/pi/node_modules/@mariozechner/clipboard/build.rs, src/pi/export-html/vendor/highlight.min.js, src/pi/export-html/ansi-to-html.js...
[0/10] Reviewing src/pi/node_modules/@mariozechner/clipboard/build.rs, src/pi/export-html/vendor/highlight.min.js, src/pi/export-html/ansi-to-html.js, src/pi/export-html/vendor/marked.min.js...
[0/10] Reviewing src/pi/node_modules/@mariozechner/clipboard/build.rs, src/pi/export-html/vendor/highlight.min.js, src/pi/export-html/ansi-to-html.js, src/pi/export-html/vendor/marked.min.js, src/pi/export-html/template.js...
[0/10] Reviewing src/pi/node_modules/@mariozechner/clipboard/build.rs, src/pi/export-html/vendor/highlight.min.js, src/pi/export-html/ansi-to-html.js, src/pi/export-html/vendor/marked.min.js, src/pi/export-html/template.js, src/pi/export-html/tool-renderer.js...
[0/10] Reviewing src/pi/node_modules/@mariozechner/clipboard/build.rs, src/pi/export-html/vendor/highlight.min.js, src/pi/export-html/ansi-to-html.js, src/pi/export-html/vendor/marked.min.js, src/pi/export-html/template.js, src/pi/export-html/tool-renderer.js, src/pi/export-html/index.js...
[0/10] Reviewing src/pi/node_modules/@mariozechner/clipboard/build.rs, src/pi/export-html/vendor/highlight.min.js, src/pi/export-html/ansi-to-html.js, src/pi/export-html/vendor/marked.min.js, src/pi/export-html/template.js, src/pi/export-html/tool-renderer.js, src/pi/export-html/index.js, src/pi/examples/extensions/custom-provider-anthropic/package.json...
[0/10] Reviewing src/pi/node_modules/@mariozechner/clipboard/build.rs, src/pi/export-html/vendor/highlight.min.js, src/pi/export-html/ansi-to-html.js, src/pi/export-html/vendor/marked.min.js, src/pi/export-html/template.js, src/pi/export-html/tool-renderer.js, src/pi/export-html/index.js, src/pi/examples/extensions/custom-provider-anthropic/package.json, src/pi/examples/extensions/github-issue-autocomplete.ts...
[0/10] Reviewing src/pi/node_modules/@mariozechner/clipboard/build.rs, src/pi/export-html/vendor/highlight.min.js, src/pi/export-html/ansi-to-html.js, src/pi/export-html/vendor/marked.min.js, src/pi/export-html/template.js, src/pi/export-html/tool-renderer.js, src/pi/export-html/index.js, src/pi/examples/extensions/custom-provider-anthropic/package.json, src/pi/examples/extensions/github-issue-autocomplete.ts, src/pi/examples/extensions/doom-overlay/doom/build.sh...
LLM auditresponse for tool-renderer.js:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard JavaScript module for rendering tool call results to HTML. It imports an ANSI-to-HTML converter, defines utility functions for trimming blank lines, and exports a factory function `createToolHtmlRenderer`. The code performs no network requests, file operations, obfuscated commands, or any behavior outside typical UI rendering logic. All operations are local and involve transforming data structures and converting ANSI escape sequences to HTML. No evidence of malicious activity or supply-chain attack.
</details>
<summary>Clean UI rendering code; no security issues.</summary>
</security_assessment>

[1/10] Reviewing src/pi/node_modules/@mariozechner/clipboard/build.rs, src/pi/export-html/vendor/highlight.min.js, src/pi/export-html/ansi-to-html.js, src/pi/export-html/vendor/marked.min.js, src/pi/export-html/template.js, src/pi/export-html/index.js, src/pi/examples/extensions/custom-provider-anthropic/package.json, src/pi/examples/extensions/github-issue-autocomplete.ts, src/pi/examples/extensions/doom-overlay/doom/build.sh...
+ Reviewed src/pi/export-html/tool-renderer.js. Status: SAFE -- Clean UI rendering code; no security issues.
LLM auditresponse for build.rs:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard Rust build script for a crate using napi-rs (Node.js N-API bindings). It calls `napi_build::setup()`, which is the conventional way to configure the build environment for generating native Node.js addons. There is no suspicious code, network requests, obfuscation, or system modifications. The file is entirely benign and follows expected packaging practices.
</details>
<summary>Standard napi-rs build script, no security issues.</summary>
</security_assessment>

[2/10] Reviewing src/pi/export-html/vendor/highlight.min.js, src/pi/export-html/ansi-to-html.js, src/pi/export-html/vendor/marked.min.js, src/pi/export-html/template.js, src/pi/export-html/index.js, src/pi/examples/extensions/custom-provider-anthropic/package.json, src/pi/examples/extensions/github-issue-autocomplete.ts, src/pi/examples/extensions/doom-overlay/doom/build.sh...
+ Reviewed src/pi/node_modules/@mariozechner/clipboard/build.rs. Status: SAFE -- Standard napi-rs build script, no security issues.
LLM auditresponse for index.js:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard Node.js module for exporting session data to HTML. It reads template files and vendor JavaScript libraries (marked.min.js, highlight.min.js) from the package's own template directory, processes session data, and writes an HTML file. All operations (readFileSync, writeFileSync, Buffer.from for base64 encoding) are normal for this kind of export functionality. There are no network requests, no code execution from untrusted sources, no obfuscated or encoded commands, and no system modification beyond writing the output file. The code follows standard packaging practices for an application that generates HTML reports from session data. No evidence of malicious or dangerous behavior is present.
</details>
<summary>Standard HTML export module, no security issues.</summary>
</security_assessment>

[3/10] Reviewing src/pi/export-html/vendor/highlight.min.js, src/pi/export-html/ansi-to-html.js, src/pi/export-html/vendor/marked.min.js, src/pi/export-html/template.js, src/pi/examples/extensions/custom-provider-anthropic/package.json, src/pi/examples/extensions/github-issue-autocomplete.ts, src/pi/examples/extensions/doom-overlay/doom/build.sh...
+ Reviewed src/pi/export-html/index.js. Status: SAFE -- Standard HTML export module, no security issues.
LLM auditresponse for package.json:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `package.json` manifest for a Node.js extension package. It defines metadata (name, version, type), trivial build scripts (echo commands), a pointer to an entry module (`./index.ts`), and a pinned dependency (`@anthropic-ai/sdk` at 0.52.0). No suspicious commands, network requests, obfuscated code, or system modifications are present. The file content is consistent with ordinary packaging and does not exhibit any supply-chain attack indicators.
</details>
<summary>Clean package.json, no security issues.</summary>
</security_assessment>

[4/10] Reviewing src/pi/export-html/vendor/highlight.min.js, src/pi/export-html/ansi-to-html.js, src/pi/export-html/vendor/marked.min.js, src/pi/export-html/template.js, src/pi/examples/extensions/github-issue-autocomplete.ts, src/pi/examples/extensions/doom-overlay/doom/build.sh...
+ Reviewed src/pi/examples/extensions/custom-provider-anthropic/package.json. Status: SAFE -- Clean package.json, no security issues.
LLM auditresponse for build.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This `build.sh` script is a standard build script for compiling a DOOM port (doomgeneric) to WebAssembly using Emscripten. It clones the upstream source from the expected GitHub repository (`https://github.com/ozkl/doomgeneric.git`) and compiles it with `emcc`. All operations (git clone, file copying, emcc compilation) are normal for building software from source. No obfuscated code, suspicious network requests, backdoors, or data exfiltration are present. The script only interacts with the project's own directory and the upstream source, which is standard for AUR packaging.
</details>
<summary>Standard build script, no malicious behavior detected.</summary>
</security_assessment>

[5/10] Reviewing src/pi/export-html/vendor/highlight.min.js, src/pi/export-html/ansi-to-html.js, src/pi/export-html/vendor/marked.min.js, src/pi/export-html/template.js, src/pi/examples/extensions/github-issue-autocomplete.ts...
+ Reviewed src/pi/examples/extensions/doom-overlay/doom/build.sh. Status: SAFE -- Standard build script, no malicious behavior detected.
LLM auditresponse for highlight.min.js:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard minified copy of Highlight.js v11.9.0, a popular syntax highlighting library. The code contains expected language definitions and rendering logic. No evidence of malicious behavior such as network requests, data exfiltration, obfuscated commands, or unexpected system operations was found. The library operates entirely client-side on HTML elements. The file is consistent with its upstream source and poses no security threat.
</details>
<summary>Standard syntax highlighting library, no malicious code detected.</summary>
</security_assessment>

[6/10] Reviewing src/pi/export-html/ansi-to-html.js, src/pi/export-html/vendor/marked.min.js, src/pi/export-html/template.js, src/pi/examples/extensions/github-issue-autocomplete.ts...
+ Reviewed src/pi/export-html/vendor/highlight.min.js. Status: SAFE -- Standard syntax highlighting library, no malicious code detected.
LLM auditresponse for marked.min.js:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is the minified source of the marked Markdown parser library (v18.0.5). It includes standard copyright headers and references to the upstream GitHub repository. The code is heavily minified but contains no obfuscated strings, encoded payloads, network requests, or unusual system operations beyond what is expected for a Markdown-to-HTML conversion library. The UMD wrapper and internal logic are consistent with the genuine marked.js distribution. No evidence of supply-chain injection or malicious behavior was found.
</details>
<summary>No malicious code detected; standard library</summary>
</security_assessment>

[7/10] Reviewing src/pi/export-html/ansi-to-html.js, src/pi/export-html/template.js, src/pi/examples/extensions/github-issue-autocomplete.ts...
+ Reviewed src/pi/export-html/vendor/marked.min.js. Status: SAFE -- No malicious code detected; standard library
LLM auditresponse for template.js:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a client-side JavaScript template for rendering a session viewer (likely for an AI assistant log). It loads embedded base64-encoded session data, parses it, and renders a tree view and message view in the browser. The code is well-structured and follows standard web development practices.

Key security observations:
- All external content (session data) is loaded from an embedded base64 string in the DOM, not fetched from external URLs.
- Markdown rendering uses a custom `sanitizeMarkdownUrl` function that restricts URLs to safe schemes (http, https, mailto, tel, ftp) and strips control characters.
- HTML escaping is applied consistently via `escapeHtml()`.
- No network requests, file system access, or system commands are executed.
- The `downloadSessionJson` function creates a local download of the session data, which is expected functionality.
- Clipboard access uses the standard `navigator.clipboard` API with a fallback to `execCommand`.
- Sidebar width is persisted to `localStorage`, which is a benign use of browser storage.

The file does not contain any obfuscated code, suspicious network calls, or unexpected system modifications. It is a legitimate rendering script for a session viewer application.
</details>
<summary>Client-side session viewer with no malicious behavior.</summary>
</security_assessment>

[8/10] Reviewing src/pi/export-html/ansi-to-html.js, src/pi/examples/extensions/github-issue-autocomplete.ts...
+ Reviewed src/pi/export-html/template.js. Status: SAFE -- Client-side session viewer with no malicious behavior.
LLM auditresponse for github-issue-autocomplete.ts:
<security_assessment>
<decision>SAFE</decision>
<details>
This TypeScript file implements a GitHub issue autocomplete provider for a coding agent terminal (pi-tui). It uses the official `gh` CLI to fetch open issues from the repository whose remote URL is identified via `git remote -v`. No obfuscation, unexpected network fetches, or system modification is present.  

The file extracts the repository identifier from the Git remote URL and passes it as an argument to `gh issue list`. While the remote URL is user-controlled (from the cloned repository), the use of `pi.exec` with an argument array prevents shell injection; any malformed repo string would merely cause `gh` to fail with an error message. This is a standard functionality extension—not a hidden or malicious operation.  

There is no evidence of data exfiltration, backdoor installation, or execution of attacker-supplied code. The entire scope is limited to providing autocomplete suggestions based on the user’s own GitHub issues, which is the intended purpose.
</details>
<summary>GitHub issue autocomplete extension with no malicious behavior.</summary>
</security_assessment>

[9/10] Reviewing src/pi/export-html/ansi-to-html.js...
+ Reviewed src/pi/examples/extensions/github-issue-autocomplete.ts. Status: SAFE -- GitHub issue autocomplete extension with no malicious behavior.
LLM auditresponse for ansi-to-html.js:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard ANSI-to-HTML converter module. It parses ANSI escape sequences and converts them to inline CSS styles. The code is straightforward: it defines color palettes, provides helper functions `color256ToHex`, `escapeHtml`, `applySgrCode`, `styleToInlineCSS`, `ansiToHtml`, and `ansiLinesToHtml`. There are no network requests, no file operations, no use of dangerous functions like `eval`, `exec`, `spawn`, or `process`. The only external reference is a source map URL (`//# sourceMappingURL=ansi-to-html.js.map`), which is a standard debugging aid and not a security concern. The `escapeHtml` function properly sanitizes output by escaping HTML special characters (though note it first replaces `&amp;` then `<`, `>`, `"`, `'` – this is correct for preventing XSS when rendering the HTML in a browser). No obfuscation, encoded commands, or suspicious behavior is present. This is a benign, well-known utility for converting terminal output to HTML.</details>
<summary>Safe JavaScript ANSI to HTML converter library.</summary>
</security_assessment>

[10/10] Reviewing ...
+ Reviewed src/pi/export-html/ansi-to-html.js. Status: SAFE -- Safe JavaScript ANSI to HTML converter library.
Reviewed all additional files.
Reviewed additional files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 140,770
  Completion Tokens: 8,669
  Total Tokens: 149,439
  Total Cost: $0.014230
  Execution Time: 157.87 seconds
Full audit report can be found in /tmp/aur-sleuth/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-report-pi-bin.txt
Final Status: SAFE


No issues found.
