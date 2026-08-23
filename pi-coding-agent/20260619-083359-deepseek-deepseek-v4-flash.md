---
package: pi-coding-agent
pkgver: 0.79.7
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: openrouter.ai
base_url: https://openrouter.ai/api/v1
aur_sleuth_rev: 11c93a0c95e2166961e3664fea6b5a63827ded10
prompt_tokens: 138752
completion_tokens: 9511
total_tokens: 148263
cost: 0.01419966
execution_time: 77.54
files_reviewed: 11
files_skipped: 0
date: 2026-06-19T08:33:59Z
file_verdicts:
  - file: PKGBUILD
    status: safe
    summary: Standard binary PKGBUILD with pinned checksums, no malicious indicators.
  - file: "src/pi/node_modules/@mariozechner/clipboard/build.rs"
    status: safe
    summary: Standard Rust build script; no malicious code.
  - file: src/pi/examples/extensions/custom-provider-anthropic/package.json
    status: safe
    summary: Standard package.json with pinned dependency, no threats.
  - file: src/pi/export-html/vendor/marked.min.js
    status: safe
    summary: Standard library, no malicious code detected.
  - file: src/pi/export-html/index.js
    status: safe
    summary: Clean export module, no malicious code.
  - file: src/pi/export-html/ansi-to-html.js
    status: safe
    summary: Legitimate ANSI-to-HTML converter with no malicious operations.
  - file: "src/pi/node_modules/@mariozechner/clipboard/exp.ts"
    status: safe
    summary: Legitimate example script, no malicious behavior found.
  - file: src/pi/examples/extensions/doom-overlay/doom/build.sh
    status: safe
    summary: Standard build script, no malicious behavior.
  - file: src/pi/export-html/tool-renderer.js
    status: safe
    summary: No security concerns; standard rendering module.
  - file: src/pi/export-html/template.js
    status: safe
    summary: Client-side viewer, no malicious behavior found.
  - file: src/pi/export-html/vendor/highlight.min.js
    status: safe
    summary: Standard minified JS library — no malicious patterns found.
---

Cloning https://aur.archlinux.org/pi-coding-agent.git to /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-nx19g22n...
Cloned repository to /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-nx19g22n
Analyzing pi-coding-agent AUR package (working in /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-nx19g22n) with deepseek/deepseek-v4-flash from https://openrouter.ai/api/v1
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD's global scope consists only of static variable assignments and function definitions. No `pkgver()` function is present, so no code execution occurs during sourcing beyond standard variable parsing. The `source` array points to GitHub releases of the project's own upstream, with pinned checksums. The `noextract` array prevents archive extraction during the build step, but that's irrelevant here since `--nobuild` is used. There are no top-level command substitutions, eval, curl, or other dangerous operations. Running `makepkg --nobuild --nodeps --noprepare` and `makepkg --printsrcinfo` will only download the source tarballs and verify checksums, which is safe.
</details>
<summary>Safe: no dangerous code executed in global scope or pkgver()</summary>
</security_assessment>

+ Initial PKGBUILD audit complete [grey50]-- Safe: no dangerous code executed in global scope or pkgver()[/]
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
This PKGBUILD for `pi-coding-agent` is a standard binary package that downloads an official release tarball from GitHub (`github.com/earendil-works/pi/releases`) over HTTPS. Both architecture-specific sources have hardcoded SHA-256 checksums, ensuring integrity and authenticity of the downloaded artifact. The `package()` function only extracts the tarball, copies its contents to `/opt/pi-coding-agent`, creates a symlink to `/usr/bin/pi`, and installs documentation files under `/usr/share/doc/$pkgname`. No suspicious commands (eval, curl|bash, obfuscated code), unexpected network requests, or manipulation of system files beyond the package's own installation paths are present. The behavior is entirely consistent with ordinary packaging practices for a precompiled binary application.
</details>
<summary>Standard binary PKGBUILD with pinned checksums, no malicious indicators.</summary>
</security_assessment>

[1/1] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard binary PKGBUILD with pinned checksums, no malicious indicators.
Reviewed all required files.
Deciding which files to review next...
Note: 196 files available for selection; offering the 50 highest-priority to the model. 117 lower-priority file(s) were not offered.
LLM response for file selection:
src/pi/node_modules/@mariozechner/clipboard/build.rs
src/pi/node_modules/@mariozechner/clipboard/exp.ts
src/pi/examples/extensions/custom-provider-anthropic/package.json
src/pi/export-html/index.js
src/pi/export-html/template.js
src/pi/export-html/tool-renderer.js
src/pi/export-html/vendor/highlight.min.js
src/pi/export-html/vendor/marked.min.js
src/pi/export-html/ansi-to-html.js
src/pi/examples/extensions/doom-overlay/doom/build.sh
Decided to review 10 additional files: src/pi/node_modules/@mariozechner/clipboard/build.rs, src/pi/node_modules/@mariozechner/clipboard/exp.ts, src/pi/examples/extensions/custom-provider-anthropic/package.json, src/pi/export-html/index.js, src/pi/export-html/template.js, src/pi/export-html/tool-renderer.js, src/pi/export-html/vendor/highlight.min.js, src/pi/export-html/vendor/marked.min.js, src/pi/export-html/ansi-to-html.js, src/pi/examples/extensions/doom-overlay/doom/build.sh
Reviewing additional files...
Reviewing additional files...
[0/10] Reviewing src/pi/node_modules/@mariozechner/clipboard/build.rs...
[0/10] Reviewing src/pi/node_modules/@mariozechner/clipboard/build.rs, src/pi/examples/extensions/custom-provider-anthropic/package.json...
[0/10] Reviewing src/pi/node_modules/@mariozechner/clipboard/build.rs, src/pi/examples/extensions/custom-provider-anthropic/package.json, src/pi/node_modules/@mariozechner/clipboard/exp.ts...
[0/10] Reviewing src/pi/node_modules/@mariozechner/clipboard/build.rs, src/pi/examples/extensions/custom-provider-anthropic/package.json, src/pi/node_modules/@mariozechner/clipboard/exp.ts, src/pi/export-html/index.js...
[0/10] Reviewing src/pi/node_modules/@mariozechner/clipboard/build.rs, src/pi/examples/extensions/custom-provider-anthropic/package.json, src/pi/node_modules/@mariozechner/clipboard/exp.ts, src/pi/export-html/index.js, src/pi/export-html/template.js...
[0/10] Reviewing src/pi/node_modules/@mariozechner/clipboard/build.rs, src/pi/examples/extensions/custom-provider-anthropic/package.json, src/pi/node_modules/@mariozechner/clipboard/exp.ts, src/pi/export-html/index.js, src/pi/export-html/template.js, src/pi/export-html/tool-renderer.js...
[0/10] Reviewing src/pi/node_modules/@mariozechner/clipboard/build.rs, src/pi/examples/extensions/custom-provider-anthropic/package.json, src/pi/node_modules/@mariozechner/clipboard/exp.ts, src/pi/export-html/index.js, src/pi/export-html/template.js, src/pi/export-html/tool-renderer.js, src/pi/export-html/vendor/marked.min.js...
[0/10] Reviewing src/pi/node_modules/@mariozechner/clipboard/build.rs, src/pi/examples/extensions/custom-provider-anthropic/package.json, src/pi/node_modules/@mariozechner/clipboard/exp.ts, src/pi/export-html/index.js, src/pi/export-html/template.js, src/pi/export-html/tool-renderer.js, src/pi/export-html/vendor/marked.min.js, src/pi/export-html/vendor/highlight.min.js...
[0/10] Reviewing src/pi/node_modules/@mariozechner/clipboard/build.rs, src/pi/examples/extensions/custom-provider-anthropic/package.json, src/pi/node_modules/@mariozechner/clipboard/exp.ts, src/pi/export-html/index.js, src/pi/export-html/template.js, src/pi/export-html/tool-renderer.js, src/pi/export-html/vendor/marked.min.js, src/pi/export-html/vendor/highlight.min.js, src/pi/export-html/ansi-to-html.js...
[0/10] Reviewing src/pi/node_modules/@mariozechner/clipboard/build.rs, src/pi/examples/extensions/custom-provider-anthropic/package.json, src/pi/node_modules/@mariozechner/clipboard/exp.ts, src/pi/export-html/index.js, src/pi/export-html/template.js, src/pi/export-html/tool-renderer.js, src/pi/export-html/vendor/marked.min.js, src/pi/export-html/vendor/highlight.min.js, src/pi/export-html/ansi-to-html.js, src/pi/examples/extensions/doom-overlay/doom/build.sh...
LLM auditresponse for build.rs:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `build.rs` is a standard Rust build script for a crate using the N-API (napi-rs) framework. It declares an external dependency on `napi_build` and calls its `setup()` function in the `main()` entry point. There is no obfuscated code, no network requests, no execution of arbitrary commands, and no unusual file operations. This is a routine and expected build script for Node.js native addon development. No supply-chain attack indicators or malicious patterns are present.
</details>
<summary>Standard Rust build script; no malicious code.</summary>
</security_assessment>

[1/10] Reviewing src/pi/examples/extensions/custom-provider-anthropic/package.json, src/pi/node_modules/@mariozechner/clipboard/exp.ts, src/pi/export-html/index.js, src/pi/export-html/template.js, src/pi/export-html/tool-renderer.js, src/pi/export-html/vendor/marked.min.js, src/pi/export-html/vendor/highlight.min.js, src/pi/export-html/ansi-to-html.js, src/pi/examples/extensions/doom-overlay/doom/build.sh...
+ Reviewed src/pi/node_modules/@mariozechner/clipboard/build.rs. Status: SAFE -- Standard Rust build script; no malicious code.
LLM auditresponse for package.json:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard `package.json` for a Node.js module. It defines basic metadata (name, version, type) and includes a single dependency `@anthropic-ai/sdk` pinned to version `0.52.0`. The `scripts` section only contains harmless `echo` commands, and the `pi` object declares an extension entry point (`./index.ts`). There is no obfuscation, network fetching, system manipulation, or any other suspicious behavior. The file conforms to normal packaging conventions and poses no security risk.
</details>
<summary>Standard package.json with pinned dependency, no threats.</summary>
</security_assessment>

[2/10] Reviewing src/pi/node_modules/@mariozechner/clipboard/exp.ts, src/pi/export-html/index.js, src/pi/export-html/template.js, src/pi/export-html/tool-renderer.js, src/pi/export-html/vendor/marked.min.js, src/pi/export-html/vendor/highlight.min.js, src/pi/export-html/ansi-to-html.js, src/pi/examples/extensions/doom-overlay/doom/build.sh...
+ Reviewed src/pi/examples/extensions/custom-provider-anthropic/package.json. Status: SAFE -- Standard package.json with pinned dependency, no threats.
LLM auditresponse for marked.min.js:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is the minified source of the marked Markdown parser library (version 18.0.5). It contains standard parsing logic and regular expressions for tokenizing and rendering markdown. No signs of malicious behavior: no network requests, file operations, obfuscated commands, or data exfiltration. The code is consistent with the upstream repository. The presence of a future copyright year (2026) is unusual but not indicative of a supply-chain attack.
</details>
<summary>Standard library, no malicious code detected.</summary>
</security_assessment>

[3/10] Reviewing src/pi/node_modules/@mariozechner/clipboard/exp.ts, src/pi/export-html/index.js, src/pi/export-html/template.js, src/pi/export-html/tool-renderer.js, src/pi/export-html/vendor/highlight.min.js, src/pi/export-html/ansi-to-html.js, src/pi/examples/extensions/doom-overlay/doom/build.sh...
+ Reviewed src/pi/export-html/vendor/marked.min.js. Status: SAFE -- Standard library, no malicious code detected.
LLM auditresponse for index.js:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `index.js` implements session-to-HTML export functionality for the `pi-coding-agent` application. It reads local template files, processes theme colors, base64-encodes session data (to avoid escaping issues), and writes an HTML output file. All operations use standard Node.js modules (`fs`, `path`) and local imports from the application's own codebase. No network requests, obfuscated code, dangerous commands (`eval`, `curl`, `wget`, etc.), or unauthorized system modifications are present. The base64 encoding is used legitimately for embedding serialized JSON in HTML. There is no evidence of supply-chain attack or malicious intent.
</details>
<summary>Clean export module, no malicious code.</summary>
</security_assessment>

[4/10] Reviewing src/pi/node_modules/@mariozechner/clipboard/exp.ts, src/pi/export-html/template.js, src/pi/export-html/tool-renderer.js, src/pi/export-html/vendor/highlight.min.js, src/pi/export-html/ansi-to-html.js, src/pi/examples/extensions/doom-overlay/doom/build.sh...
+ Reviewed src/pi/export-html/index.js. Status: SAFE -- Clean export module, no malicious code.
LLM auditresponse for ansi-to-html.js:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `ansi-to-html.js` is a standard utility module that converts ANSI escape codes (color/style sequences) into HTML with inline CSS. It implements color parsing for standard, 256-color, and true-color codes, along with text styles (bold, dim, italic, underline).  

There is no evidence of malicious behavior:  
- No network requests (curl, wget, fetch, XMLHttpRequest).  
- No obfuscated code, base64 decoding, eval, or dynamic code execution.  
- No file system operations, environment variable access, or system commands.  
- The file only exports two functions (`ansiToHtml` and `ansiLinesToHtml`) and uses pure JavaScript logic with a regex for parsing.  

The source map comment at the end is a development artifact and poses no security risk. The code matches its stated purpose and does not attempt to perform any action outside of converting ANSI text to HTML.  
</details>
<summary>Legitimate ANSI-to-HTML converter with no malicious operations.</summary>
</security_assessment>

[5/10] Reviewing src/pi/node_modules/@mariozechner/clipboard/exp.ts, src/pi/export-html/template.js, src/pi/export-html/tool-renderer.js, src/pi/export-html/vendor/highlight.min.js, src/pi/examples/extensions/doom-overlay/doom/build.sh...
+ Reviewed src/pi/export-html/ansi-to-html.js. Status: SAFE -- Legitimate ANSI-to-HTML converter with no malicious operations.
LLM auditresponse for exp.ts:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `exp.ts` is a simple TypeScript script that imports a local module `Clipboard` and logs the current clipboard contents (text, HTML, and image). It does not perform any network requests, obfuscation, file system modifications, or attempt to execute external code. The clipboard reading functionality is expected for a package like `pi-coding-agent` which may need clipboard access for its intended purpose (e.g., coding assistance). There is no evidence of injected malicious code, exfiltration, or backdoors. The file is consistent with a test or example script and poses no supply-chain risk.
</details>
<summary>Legitimate example script, no malicious behavior found.</summary>
</security_assessment>

[6/10] Reviewing src/pi/export-html/template.js, src/pi/export-html/tool-renderer.js, src/pi/export-html/vendor/highlight.min.js, src/pi/examples/extensions/doom-overlay/doom/build.sh...
+ Reviewed src/pi/node_modules/@mariozechner/clipboard/exp.ts. Status: SAFE -- Legitimate example script, no malicious behavior found.
LLM auditresponse for build.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
The script is a straightforward build script for compiling DOOM using doomgeneric and Emscripten to WebAssembly. It clones the doomgeneric source from the official GitHub repository (https://github.com/ozkl/doomgeneric.git), copies a platform file, and invokes emcc with a long list of source files. There is no obfuscated code, no suspicious network requests (the only network action is cloning the project's own upstream), no exfiltration of data, no backdoors, and no modification of system files. All operations are confined to the local project directories. The use of git clone without a pinned commit is standard for build scripts that track the latest upstream, and the destination is the package's own intended source. Nothing in this script deviates from ordinary build practices or indicates a supply chain attack.
</details>
<summary>Standard build script, no malicious behavior.</summary>
</security_assessment>

[7/10] Reviewing src/pi/export-html/template.js, src/pi/export-html/tool-renderer.js, src/pi/export-html/vendor/highlight.min.js...
+ Reviewed src/pi/examples/extensions/doom-overlay/doom/build.sh. Status: SAFE -- Standard build script, no malicious behavior.
LLM auditresponse for tool-renderer.js:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `tool-renderer.js` is a standard rendering module that converts tool call and result output to HTML using ANSI-to-HTML conversion. It contains no network requests, no system file operations beyond using a `cwd` parameter passed from dependencies, and no obfuscated or dangerous commands. The code is straightforward, with proper error handling and no evidence of malicious intent. It operates entirely within the expected behavior of a tool rendering system for HTML export.
</details>
<summary>No security concerns; standard rendering module.</summary>
</security_assessment>

[8/10] Reviewing src/pi/export-html/template.js, src/pi/export-html/vendor/highlight.min.js...
+ Reviewed src/pi/export-html/tool-renderer.js. Status: SAFE -- No security concerns; standard rendering module.
LLM auditresponse for template.js:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a client-side JavaScript session viewer for the pi-coding-agent. It decodes embedded base64 session data, builds a tree view of conversation branches, renders Markdown content with syntax highlighting, and provides navigation, filtering, search, copy-link, and download (JSONL export) features. All operations are confined to the browser (DOM manipulation, localStorage for sidebar width, clipboard access for sharing). There are no network requests, no dynamic code execution (eval, setTimeout with strings), no obfuscated or encoded commands, and no file system access beyond the standard Blob download. The Markdown renderer includes sanitization of link/image URLs with a scheme allow-list and disables raw HTML parsing, which is appropriate for rendering user-supplied session data. The code is transparent and consistent with the application's stated purpose as a session log viewer. No evidence of data exfiltration, backdoors, or supply-chain injection is present.
</details>
<summary>Client-side viewer, no malicious behavior found.</summary>
</security_assessment>

[9/10] Reviewing src/pi/export-html/vendor/highlight.min.js...
+ Reviewed src/pi/export-html/template.js. Status: SAFE -- Client-side viewer, no malicious behavior found.
LLM auditresponse for highlight.min.js:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a minified build of the legitimate [highlight.js](https://highlightjs.org/) v11.9.0 syntax highlighting library.  
It contains standard language definitions (JavaScript, Python, Rust, etc.) and internal logic for tokenizing and highlighting code.  

No obfuscated code, suspicious network requests (curl, wget, fetch), encoded payloads (base64), or dangerous dynamic execution (eval) are present.  
All code operates within the expected scope of a client-side syntax highlighter — it parses code blocks and produces HTML spans.  

There is no evidence of data exfiltration, backdoors, or tampering with system files.  
The minification is typical for JavaScript distribution and does not indicate malice.
</details>
<summary>
Standard minified JS library — no malicious patterns found.
</summary>
</security_assessment>

[10/10] Reviewing ...
+ Reviewed src/pi/export-html/vendor/highlight.min.js. Status: SAFE -- Standard minified JS library — no malicious patterns found.
Reviewed all additional files.
Reviewed additional files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 138,752
  Completion Tokens: 9,511
  Total Tokens: 148,263
  Total Cost: $0.014200
  Execution Time: 77.54 seconds
Full audit report can be found in /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-report-pi-coding-agent.txt
Final Status: SAFE


No issues found.
