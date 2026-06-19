---
package: dart-sdk-dev
pkgver: 3.13.0_215.0.dev
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: openrouter.ai
base_url: https://openrouter.ai/api/v1
aur_sleuth_rev: 75a5565e10d0de0b928114a8a46897d5778ec888
prompt_tokens: 228887
completion_tokens: 11238
total_tokens: 240125
cost: 0.02262267
execution_time: 167.07
files_reviewed: 11
files_skipped: 1
date: 2026-06-19T08:02:00Z
file_verdicts:
  - file: dartsdk-linux-x64-release-3.13.0_215.0.dev.zip
    status: skipped
    summary: "Skipping binary file: dartsdk-linux-x64-release-3.13.0_215.0.dev.zip"
  - file: PKGBUILD
    status: safe
    summary: Legitimate PKGBUILD for official Dart SDK download.
  - file: src/dart-sdk/lib/_internal/js_runtime/lib/preambles/seal_native_object.js
    status: safe
    summary: Standard prototype pollution prevention; no malicious behavior.
  - file: src/dart-sdk/bin/resources/dartdoc/resources/highlight.pack.js
    status: safe
    summary: Standard Highlight.js library; no malicious code detected.
  - file: src/dart-sdk/bin/resources/devtools/flutter.js
    status: safe
    summary: Standard Flutter web bootstrap loader, no malicious code found.
  - file: src/dart-sdk/bin/resources/dartdoc/resources/docs.dart.js
    status: safe
    summary: Standard compiled Dart doc viewer; no malicious code found.
  - file: src/dart-sdk/bin/resources/devtools/main.dart.js
    status: safe
    summary: Legitimate Dart DevTools JS, no malicious behavior.
  - file: src/dart-sdk/bin/resources/devtools/canvaskit/skwasm.js
    status: safe
    summary: Standard Emscripten glue for Skia WebAssembly; no malicious behavior.
  - file: src/dart-sdk/bin/resources/devtools/main.dart.mjs
    status: safe
    summary: Standard dart2wasm runtime support file, safe.
  - file: src/dart-sdk/lib/_internal/js_dev_runtime/private/preambles/d8.js
    status: safe
    summary: Standard Dart SDK preamble, no malicious behavior.
  - file: src/dart-sdk/bin/resources/devtools/flutter_bootstrap.js
    status: safe
    summary: Standard Flutter web bootstrap; no malicious indicators.
  - file: src/dart-sdk/bin/resources/devtools/canvaskit/canvaskit.js
    status: safe
    summary: Standard CanvasKit WASM glue code, no signs of malice.
---

Cloning https://aur.archlinux.org/dart-sdk-dev.git to /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-rtzp360t...
Cloned repository to /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-rtzp360t
Analyzing dart-sdk-dev AUR package (working in /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-rtzp360t) with deepseek/deepseek-v4-flash from https://openrouter.ai/api/v1
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD only defines metadata and a single `package()` function. For the narrow gate of `makepkg --nobuild --nodeps --noprepare` and `makepkg --printsrcinfo`, only the global scope and `pkgver()` are executed. There is no `pkgver()` function. The global scope only sets variables (e.g., `source`, `sha256sums`, `pkgver`) with no dangerous commands or command substitutions. The source is a `.zip` from the official Google storage API (`storage.googleapis.com/dart-archive`), which is the legitimate upstream distribution point for the Dart SDK. The URL uses standard parameter expansion to replace underscores with hyphens, which is normal AUR practice. A hardcoded checksum is provided, so the download will be verified. No malicious code is executed during parsing or source fetching.
</details>
<summary>
Safe: No dangerous top-level code; standard source from official Dart SDK archive.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete [grey50]-- Safe: No dangerous top-level code; standard source from official Dart SDK archive.[/]
Running makepkg --nobuild --nodeps --noprepare to download sources for agent...
makepkg --nobuild --nodeps --noprepare successful
Running makepkg --printsrcinfo to get source files for agent...
makepkg --printsrcinfo successful
Reviewing required files...
[0/2] Reviewing PKGBUILD...
[0/2] Reviewing PKGBUILD, dartsdk-linux-x64-release-3.13.0_215.0.dev.zip...
[1/2] Reviewing PKGBUILD...
! Reviewed dartsdk-linux-x64-release-3.13.0_215.0.dev.zip. Status: SKIPPED -- Skipping binary file: dartsdk-linux-x64-release-3.13.0_215.0.dev.zip
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD downloads the official Dart SDK from Google's storage (`storage.googleapis.com/dart-archive/...`) over HTTPS with a pinned SHA256 checksum. The install process is standard: extracting the archive, copying files to `/opt/$pkgname`, and creating symlinks in `/usr/bin`. There are no suspicious operations – no encoded/obfuscated commands, no unexpected network requests, and no attempts to exfiltrate data or execute untrusted code. The file is entirely consistent with normal AUR packaging practices.
</details>
<summary>Legitimate PKGBUILD for official Dart SDK download.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Legitimate PKGBUILD for official Dart SDK download.
Reviewed all required files.
Deciding which files to review next...
Note: 612 files available for selection; offering the 50 highest-priority to the model. 415 lower-priority file(s) were not offered.
LLM response for file selection:
src/dart-sdk/bin/resources/dartdoc/resources/docs.dart.js
src/dart-sdk/bin/resources/dartdoc/resources/highlight.pack.js
src/dart-sdk/bin/resources/devtools/canvaskit/canvaskit.js
src/dart-sdk/bin/resources/devtools/canvaskit/skwasm.js
src/dart-sdk/bin/resources/devtools/flutter.js
src/dart-sdk/bin/resources/devtools/flutter_bootstrap.js
src/dart-sdk/bin/resources/devtools/main.dart.js
src/dart-sdk/bin/resources/devtools/main.dart.mjs
src/dart-sdk/lib/_internal/js_dev_runtime/private/preambles/d8.js
src/dart-sdk/lib/_internal/js_runtime/lib/preambles/seal_native_object.js
Decided to review 10 additional files: src/dart-sdk/bin/resources/dartdoc/resources/docs.dart.js, src/dart-sdk/bin/resources/dartdoc/resources/highlight.pack.js, src/dart-sdk/bin/resources/devtools/canvaskit/canvaskit.js, src/dart-sdk/bin/resources/devtools/canvaskit/skwasm.js, src/dart-sdk/bin/resources/devtools/flutter.js, src/dart-sdk/bin/resources/devtools/flutter_bootstrap.js, src/dart-sdk/bin/resources/devtools/main.dart.js, src/dart-sdk/bin/resources/devtools/main.dart.mjs, src/dart-sdk/lib/_internal/js_dev_runtime/private/preambles/d8.js, src/dart-sdk/lib/_internal/js_runtime/lib/preambles/seal_native_object.js
Reviewing additional files...
Reviewing additional files...
[0/10] Reviewing src/dart-sdk/bin/resources/dartdoc/resources/docs.dart.js...
[0/10] Reviewing src/dart-sdk/bin/resources/dartdoc/resources/docs.dart.js, src/dart-sdk/bin/resources/devtools/canvaskit/canvaskit.js...
[0/10] Reviewing src/dart-sdk/bin/resources/dartdoc/resources/docs.dart.js, src/dart-sdk/bin/resources/devtools/canvaskit/canvaskit.js, src/dart-sdk/bin/resources/devtools/flutter_bootstrap.js...
[0/10] Reviewing src/dart-sdk/bin/resources/dartdoc/resources/docs.dart.js, src/dart-sdk/bin/resources/devtools/canvaskit/canvaskit.js, src/dart-sdk/bin/resources/devtools/flutter_bootstrap.js, src/dart-sdk/bin/resources/dartdoc/resources/highlight.pack.js...
[0/10] Reviewing src/dart-sdk/bin/resources/dartdoc/resources/docs.dart.js, src/dart-sdk/bin/resources/devtools/canvaskit/canvaskit.js, src/dart-sdk/bin/resources/devtools/flutter_bootstrap.js, src/dart-sdk/bin/resources/dartdoc/resources/highlight.pack.js, src/dart-sdk/bin/resources/devtools/flutter.js...
[0/10] Reviewing src/dart-sdk/bin/resources/dartdoc/resources/docs.dart.js, src/dart-sdk/bin/resources/devtools/canvaskit/canvaskit.js, src/dart-sdk/bin/resources/devtools/flutter_bootstrap.js, src/dart-sdk/bin/resources/dartdoc/resources/highlight.pack.js, src/dart-sdk/bin/resources/devtools/flutter.js, src/dart-sdk/bin/resources/devtools/main.dart.js...
[0/10] Reviewing src/dart-sdk/bin/resources/dartdoc/resources/docs.dart.js, src/dart-sdk/bin/resources/devtools/canvaskit/canvaskit.js, src/dart-sdk/bin/resources/devtools/flutter_bootstrap.js, src/dart-sdk/bin/resources/dartdoc/resources/highlight.pack.js, src/dart-sdk/bin/resources/devtools/flutter.js, src/dart-sdk/bin/resources/devtools/main.dart.js, src/dart-sdk/bin/resources/devtools/main.dart.mjs...
[0/10] Reviewing src/dart-sdk/bin/resources/dartdoc/resources/docs.dart.js, src/dart-sdk/bin/resources/devtools/canvaskit/canvaskit.js, src/dart-sdk/bin/resources/devtools/flutter_bootstrap.js, src/dart-sdk/bin/resources/dartdoc/resources/highlight.pack.js, src/dart-sdk/bin/resources/devtools/flutter.js, src/dart-sdk/bin/resources/devtools/main.dart.js, src/dart-sdk/bin/resources/devtools/main.dart.mjs, src/dart-sdk/bin/resources/devtools/canvaskit/skwasm.js...
[0/10] Reviewing src/dart-sdk/bin/resources/dartdoc/resources/docs.dart.js, src/dart-sdk/bin/resources/devtools/canvaskit/canvaskit.js, src/dart-sdk/bin/resources/devtools/flutter_bootstrap.js, src/dart-sdk/bin/resources/dartdoc/resources/highlight.pack.js, src/dart-sdk/bin/resources/devtools/flutter.js, src/dart-sdk/bin/resources/devtools/main.dart.js, src/dart-sdk/bin/resources/devtools/main.dart.mjs, src/dart-sdk/bin/resources/devtools/canvaskit/skwasm.js, src/dart-sdk/lib/_internal/js_dev_runtime/private/preambles/d8.js...
[0/10] Reviewing src/dart-sdk/bin/resources/dartdoc/resources/docs.dart.js, src/dart-sdk/bin/resources/devtools/canvaskit/canvaskit.js, src/dart-sdk/bin/resources/devtools/flutter_bootstrap.js, src/dart-sdk/bin/resources/dartdoc/resources/highlight.pack.js, src/dart-sdk/bin/resources/devtools/flutter.js, src/dart-sdk/bin/resources/devtools/main.dart.js, src/dart-sdk/bin/resources/devtools/main.dart.mjs, src/dart-sdk/bin/resources/devtools/canvaskit/skwasm.js, src/dart-sdk/lib/_internal/js_dev_runtime/private/preambles/d8.js, src/dart-sdk/lib/_internal/js_runtime/lib/preambles/seal_native_object.js...
LLM auditresponse for seal_native_object.js:
<security_assessment>
<decision>SAFE</decision>
<details>
This file contains a JavaScript security hardening routine that deletes `Object.prototype.__proto__` and then seals `Object.prototype`. This is a standard technique to prevent prototype pollution attacks, as noted in the comment. There is no obfuscated, encoded, or dangerous code (no `eval`, `curl`, `wget`, network requests, file operations, or system modifications). The operation is scoped entirely to the runtime environment and is a legitimate upstream security measure from the Dart project.
</details>
<summary>
Standard prototype pollution prevention; no malicious behavior.</summary>
</security_assessment>

[1/10] Reviewing src/dart-sdk/bin/resources/dartdoc/resources/docs.dart.js, src/dart-sdk/bin/resources/devtools/canvaskit/canvaskit.js, src/dart-sdk/bin/resources/devtools/flutter_bootstrap.js, src/dart-sdk/bin/resources/dartdoc/resources/highlight.pack.js, src/dart-sdk/bin/resources/devtools/flutter.js, src/dart-sdk/bin/resources/devtools/main.dart.js, src/dart-sdk/bin/resources/devtools/main.dart.mjs, src/dart-sdk/bin/resources/devtools/canvaskit/skwasm.js, src/dart-sdk/lib/_internal/js_dev_runtime/private/preambles/d8.js...
+ Reviewed src/dart-sdk/lib/_internal/js_runtime/lib/preambles/seal_native_object.js. Status: SAFE -- Standard prototype pollution prevention; no malicious behavior.
LLM auditresponse for highlight.pack.js:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard bundled copy of Highlight.js version 11.11.1 with included language grammars (bash, c, css, dart, diff, java, javascript, json, kotlin, markdown, objectivec, plaintext, shell, swift, xml, yaml). No suspicious patterns such as obfuscated code, encoded commands, network requests, file exfiltration, or execution of external content were detected. The code is consistent with its stated purpose as a syntax highlighting library. No signs of injected malicious behavior or supply-chain attack are present.
</details>
<summary>Standard Highlight.js library; no malicious code detected.</summary>
</security_assessment>

[2/10] Reviewing src/dart-sdk/bin/resources/dartdoc/resources/docs.dart.js, src/dart-sdk/bin/resources/devtools/canvaskit/canvaskit.js, src/dart-sdk/bin/resources/devtools/flutter_bootstrap.js, src/dart-sdk/bin/resources/devtools/flutter.js, src/dart-sdk/bin/resources/devtools/main.dart.js, src/dart-sdk/bin/resources/devtools/main.dart.mjs, src/dart-sdk/bin/resources/devtools/canvaskit/skwasm.js, src/dart-sdk/lib/_internal/js_dev_runtime/private/preambles/d8.js...
+ Reviewed src/dart-sdk/bin/resources/dartdoc/resources/highlight.pack.js. Status: SAFE -- Standard Highlight.js library; no malicious code detected.
LLM auditresponse for flutter.js:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is the standard Flutter web bootstrap loader (`flutter.js`) used to initialize Flutter web applications. It contains expected functionality such as:

- Loading the main Dart/JS entrypoint via script tags or dynamic imports
- Loading CanvasKit (from `https://www.gstatic.com/flutter-canvaskit`, the official Google CDN) and Skwasm WebAssembly modules
- Service worker registration and activation
- Trusted Types policy enforcement for script URLs
- Cross-origin storage support for caching Wasm files

All network requests target either the application's own origin or the official Flutter CDN (`gstatic.com`). There is no obfuscated code, no use of `eval`, no base64 decoding, no exfiltration of local data, and no execution of code from unexpected sources. The blob URL creation for a worker script is part of the standard Skwasm single-threaded fallback mechanism and is not malicious.

The code is consistent with the official Flutter web engine loader and does not exhibit any signs of a supply-chain attack or malicious behavior.
</details>
<summary>Standard Flutter web bootstrap loader, no malicious code found.</summary>
</security_assessment>

[3/10] Reviewing src/dart-sdk/bin/resources/dartdoc/resources/docs.dart.js, src/dart-sdk/bin/resources/devtools/canvaskit/canvaskit.js, src/dart-sdk/bin/resources/devtools/flutter_bootstrap.js, src/dart-sdk/bin/resources/devtools/main.dart.js, src/dart-sdk/bin/resources/devtools/main.dart.mjs, src/dart-sdk/bin/resources/devtools/canvaskit/skwasm.js, src/dart-sdk/lib/_internal/js_dev_runtime/private/preambles/d8.js...
+ Reviewed src/dart-sdk/bin/resources/devtools/flutter.js. Status: SAFE -- Standard Flutter web bootstrap loader, no malicious code found.
LLM auditresponse for docs.dart.js:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `docs.dart.js` is the compiled JavaScript output of a Dart application (a documentation viewer) from the `dart-sdk-dev` AUR package. It contains standard Dart runtime infrastructure (inheritance helpers, type system, base64 encoding/decoding utilities) and application-specific code for searching and displaying documentation.  

All network requests observed are to legitimate `dart.dev` URLs (e.g., `https://dart.dev/search?cx=...`, `https://dart.dev/tools/dart-doc#troubleshoot`). There is no obfuscated code, no calls to `eval`, `curl`, `wget`, or `exec`, and no file system access beyond the browser's standard `localStorage`. The base64 references are part of Dart's standard library (base64 codec) and are not used to hide malicious payloads.  

The code is minified/compiled but transparent – it performs only expected UI operations (search, sidebar loading, theme toggle). There is no evidence of data exfiltration, backdoors, or supply-chain injection. The truncation of the file is not a concern because the omitted lines did not match any suspicious patterns.
</details>
<summary>Standard compiled Dart doc viewer; no malicious code found.</summary>
</security_assessment>

[4/10] Reviewing src/dart-sdk/bin/resources/devtools/canvaskit/canvaskit.js, src/dart-sdk/bin/resources/devtools/flutter_bootstrap.js, src/dart-sdk/bin/resources/devtools/main.dart.js, src/dart-sdk/bin/resources/devtools/main.dart.mjs, src/dart-sdk/bin/resources/devtools/canvaskit/skwasm.js, src/dart-sdk/lib/_internal/js_dev_runtime/private/preambles/d8.js...
+ Reviewed src/dart-sdk/bin/resources/dartdoc/resources/docs.dart.js. Status: SAFE -- Standard compiled Dart doc viewer; no malicious code found.
LLM auditresponse for main.dart.js:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `main.dart.js` is a Dart-to-JavaScript compiled application (~200k lines) from the `dart-sdk-dev` AUR package. It is the compiled Flutter/Dart DevTools web application (debugger, inspector, service protocol). The suspicious patterns (base64, eval, fetch, regex) are all standard and necessary for its functionality:

- **base64** handling is used for decoding inline data (images, fonts), a normal web practice.
- **eval** references appear in UI text ("Eval. Enter ? for help.") and stack-trace parsing regexps, consistent with an interactive debugger/evaluation console.
- **fetch** is used for dynamic imports (CanvasKit) and asset loading, standard in Flutter web.
- The code registers a Dart VM service extension (`ext.flutter.disassemble`) for debugging, expected in a developer tool.

No evidence of data exfiltration, backdoors, download-and-execute from unexpected hosts, or obfuscated commands. All network destinations are the package's own upstream assets (e.g., CanvasKit). The file is consistent with an ordinary AUR package delivering compiled Dart SDK developer tools.
</details>
<summary>Legitimate Dart DevTools JS, no malicious behavior.</summary>
</security_assessment>

[5/10] Reviewing src/dart-sdk/bin/resources/devtools/canvaskit/canvaskit.js, src/dart-sdk/bin/resources/devtools/flutter_bootstrap.js, src/dart-sdk/bin/resources/devtools/main.dart.mjs, src/dart-sdk/bin/resources/devtools/canvaskit/skwasm.js, src/dart-sdk/lib/_internal/js_dev_runtime/private/preambles/d8.js...
+ Reviewed src/dart-sdk/bin/resources/devtools/main.dart.js. Status: SAFE -- Legitimate Dart DevTools JS, no malicious behavior.
LLM auditresponse for skwasm.js:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is the JavaScript glue code generated by Emscripten for the Skia (skwasm) WebAssembly module. It is heavily minified but contains standard patterns: WebAssembly loading &amp; instantiation, WebGL context management, shared memory/worker thread setup, and a large set of exported Skia graphics API functions (canvas, path, picture, paragraph, shader, etc.).  

The code does not contain any of the following red flags:  
- No obfuscated/encoded commands (eval, base64, etc.).  
- No network requests to unexpected or unrelated hosts (only the package's own `skwasm.wasm`).  
- No file system access beyond the WebAssembly sandbox.  
- No exfiltration of local data, credential theft, or backdoors.  

The worker thread communication (`postMessage`/`onmessage`) is standard for offloading rendering work and uses only the package's own message schemas. The use of `WebAssembly.Memory` and `SharedArrayBuffer` is expected for a graphics library that may use multiple threads.  

Overall, the file is consistent with benign, auto-generated Emscripten output for the Skia graphics library. No supply-chain attack indicators are present.
</details>
<summary>Standard Emscripten glue for Skia WebAssembly; no malicious behavior.</summary>
</security_assessment>

[6/10] Reviewing src/dart-sdk/bin/resources/devtools/canvaskit/canvaskit.js, src/dart-sdk/bin/resources/devtools/flutter_bootstrap.js, src/dart-sdk/bin/resources/devtools/main.dart.mjs, src/dart-sdk/lib/_internal/js_dev_runtime/private/preambles/d8.js...
+ Reviewed src/dart-sdk/bin/resources/devtools/canvaskit/skwasm.js. Status: SAFE -- Standard Emscripten glue for Skia WebAssembly; no malicious behavior.
LLM auditresponse for main.dart.mjs:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `main.dart.mjs` is a standard runtime support module generated by the Dart-to-WebAssembly compiler (`dart2wasm`). It provides bindings to browser and Web APIs (such as `fetch`, `XMLHttpRequest`, `ResizeObserver`, `WebSocket`, etc.) that are expected for Dart/Flutter web applications running under WebAssembly. These are typical upstream framework functionalities, not indicators of a supply-chain attack.

The code contains no obfuscation, no unexpected network requests, no data exfiltration, and no commands that deviate from normal Dart web runtime behavior. All references to `globalThis`, `fetch`, `Notification`, etc. are part of the standard web platform integration. There is no evidence of malicious injection; the file is consistent with an official Dart SDK artifact.
</details>
<summary>Standard dart2wasm runtime support file, safe.</summary>
</security_assessment>

[7/10] Reviewing src/dart-sdk/bin/resources/devtools/canvaskit/canvaskit.js, src/dart-sdk/bin/resources/devtools/flutter_bootstrap.js, src/dart-sdk/lib/_internal/js_dev_runtime/private/preambles/d8.js...
+ Reviewed src/dart-sdk/bin/resources/devtools/main.dart.mjs. Status: SAFE -- Standard dart2wasm runtime support file, safe.
LLM auditresponse for d8.js:
<security_assessment>
<decision>SAFE</decision>
<details>
This file (`d8.js`) is a standard preamble from the Dart SDK, used to enable Dart2JS output to run in the V8 d8 shell environment. It provides polyfills for browser-like APIs such as timers (`setTimeout`/`setInterval`), an event loop, a mock `location` object, and a getter for `document.currentScript`. All operations are confined to defining these runtime shims within the global scope. There are no network requests, no downloads, no use of dangerous operations like `eval`, `base64`, or `curl`, and no file system modifications beyond reading the working directory for a `file://` URL. The code is benign and serves its documented purpose. No evidence of a supply-chain attack or malicious intent was found.
</details>
<summary>Standard Dart SDK preamble, no malicious behavior.</summary>
</security_assessment>

[8/10] Reviewing src/dart-sdk/bin/resources/devtools/canvaskit/canvaskit.js, src/dart-sdk/bin/resources/devtools/flutter_bootstrap.js...
+ Reviewed src/dart-sdk/lib/_internal/js_dev_runtime/private/preambles/d8.js. Status: SAFE -- Standard Dart SDK preamble, no malicious behavior.
LLM auditresponse for flutter_bootstrap.js:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `flutter_bootstrap.js` contains standard Flutter web bootstrap code and DevTools-specific initialization logic. It loads the main application (`main.dart.js` or `main.dart.wasm`) via dynamic script injection, service worker registration, and WASM compilation – all expected behavior for a Flutter web application.  

- Network requests are limited to the package’s own resources (e.g., `canvaskit/`, `main.dart.wasm`, `api/getPreferenceValue`). The API call to `api/getPreferenceValue` is a same‑origin request for user preference (WASM opt‑out) and is not exfiltration.  
- No obfuscated code, `eval`, `base64`, or suspicious string decoding is present.  
- The code uses `import()` and `fetch` with URLs derived from the application’s configuration and base URL – not from an unexpected third‑party host.  
- All behavior is consistent with the stated purpose of loading a Flutter DevTools application; there is no evidence of injected malicious logic targeting data theft, backdoors, or remote code execution beyond normal application functionality.  

The file is entirely benign and follows standard packaging practices for a web‑based Flutter application.
</details>
<summary>Standard Flutter web bootstrap; no malicious indicators.</summary>
</security_assessment>

[9/10] Reviewing src/dart-sdk/bin/resources/devtools/canvaskit/canvaskit.js...
+ Reviewed src/dart-sdk/bin/resources/devtools/flutter_bootstrap.js. Status: SAFE -- Standard Flutter web bootstrap; no malicious indicators.
LLM auditresponse for canvaskit.js:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a minified Emscripten-generated JavaScript glue code for the CanvasKit WebAssembly module (Skia graphics library). It contains typical WebGL bindings, texture handling, and initialization logic. The only network operations are fetching the `canvaskit.wasm` file from the same origin (using `fetch` with `credentials: "same-origin"` or `XMLHttpRequest` fallback) — this is standard for WASM module loading. There are no external or unexpected network destinations, no `eval`, `base64` decoding of code, no shell commands, and no attempts to access system files or exfiltrate data. All WebGL, canvas, and font operations are expected for a graphics library. The code does not deviate from standard packaging practices for such libraries.
</details>
<summary>Standard CanvasKit WASM glue code, no signs of malice.</summary>
</security_assessment>

[10/10] Reviewing ...
+ Reviewed src/dart-sdk/bin/resources/devtools/canvaskit/canvaskit.js. Status: SAFE -- Standard CanvasKit WASM glue code, no signs of malice.
Reviewed all additional files.
Reviewed additional files.
Audit complete! Result: No issues found
(Skipped 1 file: dartsdk-linux-x64-release-3.13.0_215.0.dev.zip)

API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 228,887
  Completion Tokens: 11,238
  Total Tokens: 240,125
  Total Cost: $0.022623
  Execution Time: 167.07 seconds
Full audit report can be found in /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-report-dart-sdk-dev.txt
Final Status: SAFE


No issues found.


Audit Skips:

/home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-rtzp360t/dartsdk-linux-x64-release-3.13.0_215.0.dev.zip: [SKIPPED] Skipping binary file: dartsdk-linux-x64-release-3.13.0_215.0.dev.zip
