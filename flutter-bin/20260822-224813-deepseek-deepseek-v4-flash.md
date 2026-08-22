---
package: flutter-bin
pkgver: 3.47.1
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: ab8f04a045309f11c3e319d8a061c88f7bc8df51
prompt_tokens: 240273
completion_tokens: 10424
total_tokens: 250697
cost: 0.01495178846
execution_time: 449.88
files_reviewed: 12
files_skipped: 1
files_unauditable: 308
unpinned_sources: 0
date: 2026-08-22T22:48:12Z
file_verdicts:
  - file: flutter-3.47.1.tar.xz
    status: skipped
    summary: "Skipping binary file: flutter-3.47.1.tar.xz"
  - file: flutter.install
    status: safe
    summary: "Safe: standard install script with group/ACL management."
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD with pinned source; no malicious behavior found.
  - file: src/flutter/.autoroller-preupload.sh
    status: safe
    summary: Autoroller preupload script for Flutter; no malicious behavior.
  - file: src/flutter/bin/cache/dart-sdk/bin/resources/dartdoc/resources/highlight.pack.js
    status: safe
    summary: Standard Highlight.js library, no malicious code found.
  - file: src/flutter/bin/cache/dart-sdk/bin/resources/devtools/assets/packages/perfetto_ui_compiled/dist/devtools/devtools_theme_handler.js
    status: safe
    summary: Legitimate theme handler; no supply-chain threat.
  - file: src/flutter/bin/cache/dart-sdk/bin/resources/devtools/assets/packages/perfetto_ui_compiled/dist/service_worker.js
    status: safe
    summary: Standard service worker, no malicious code.
  - file: src/flutter/bin/cache/dart-sdk/bin/resources/devtools/assets/packages/perfetto_ui_compiled/dist/v34.0-16f63abe3/engine_bundle.js
    status: safe
    summary: Legitimate Perfetto trace processor Wasm bridge.
  - file: src/flutter/bin/cache/dart-sdk/bin/resources/dartdoc/resources/docs.dart.js
    status: safe
    summary: Standard Dart JS documentation viewer, no malicious behavior.
  - file: src/flutter/bin/cache/dart-sdk/bin/resources/devtools/canvaskit/canvaskit.js
    status: safe
    summary: Standard CanvasKit JS glue code, no malicious behavior found.
  - file: src/flutter/bin/cache/dart-sdk/bin/resources/devtools/canvaskit/skwasm.js
    status: safe
    summary: Standard Skia WebAssembly module; no malicious behavior found.
  - file: src/flutter/bin/cache/dart-sdk/bin/resources/devtools/assets/packages/perfetto_ui_compiled/dist/v34.0-16f63abe3/frontend_bundle.js
    status: safe
    summary: Legitimate Perfetto frontend bundle; no malicious behavior.
  - file: src/flutter/bin/cache/dart-sdk/bin/resources/devtools/canvaskit/skwasm_heavy.js
    status: safe
    summary: Standard Emscripten glue code for Skia rendering; no malicious behavior found.
---

Cloning https://aur.archlinux.org/flutter-bin.git...
Cloned flutter-bin
Analyzing flutter-bin AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only standard packaging constructs. The `source` array downloads a tarball from the official Google Flutter release storage (`https://storage.googleapis.com/flutter_infra_release/...`), which is legitimate. A valid MD5 checksum is provided, so the download is verified. There is no top-level code or `pkgver()` function that executes commands during sourcing—only function definitions (`prepare()`, `package()`, `_gen_scripts()`) that are not invoked. The `makepkg --nobuild --nodeps --noprepare` commands will only fetch the source and source the PKGBUILD, with no risk of executing malicious code.
</details>
<summary>Safe source fetch, no malicious execution.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Safe source fetch, no malicious execution.
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Running makepkg --printsrcinfo to get source files for agent...
makepkg --printsrcinfo successful
Reviewing required files...
[0/3] Reviewing PKGBUILD...
[0/3] Reviewing PKGBUILD, flutter.install...
[0/3] Reviewing PKGBUILD, flutter.install, flutter-3.47.1.tar.xz...
[1/3] Reviewing PKGBUILD, flutter.install...
! Reviewed flutter-3.47.1.tar.xz. Status: SKIPPED -- Skipping binary file: flutter-3.47.1.tar.xz
LLM auditresponse for flutter.install:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard post-install script for the flutter-bin AUR package. It creates a `flutter` group, sets ACLs on `/opt/flutter` for specific users and groups, and manages permissions during upgrades and removals. The script uses only typical system commands (`groupadd`, `setfacl`, `chmod`, `rm -rf`, `grep`, `getfacl`) and prints informational messages. No suspicious network requests, obfuscated code, or commands that deviate from normal packaging practices are present. The granting of ACLs to named builders and groups, while unusual, is consistent with Flutter's need for write access to its installation directory and is documented in the installer's output. There is no evidence of malicious or dangerous behavior.
</details>
<summary>
Safe: standard install script with group/ACL management.</summary>
</security_assessment>

[2/3] Reviewing PKGBUILD...
+ Reviewed flutter.install. Status: SAFE -- Safe: standard install script with group/ACL management.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard AUR packaging practices for a prebuilt binary package. The source is downloaded from the official Google Flutter storage URL (`storage.googleapis.com/flutter_infra_release`) with a fixed md5 checksum, so the archive is pinned and integrity-verified. The `prepare()` and `package()` functions perform routine operations: extract the tarball, install wrapper scripts and symlinks, copy licenses, and set permissions.

The `_gen_scripts()` helper generates three shell scripts that are used to wrap the Flutter and Dart binaries. The `flutter_init.sh` script uses `unionfs` to create a writable overlay on the read-only `/opt/flutter` directory for non-privileged users, which is a common packaging technique to allow Flutter to write cache/config files without modifying the system directory. The script checks for builder accounts and the `flutter` group, and conditionally uses the overlay. This behavior is consistent with upstream Flutter expectations and does not perform any suspicious operations.

No malicious network requests, obfuscated code, backdoors, data exfiltration, or dangerous command execution (eval, base64, curl|bash, etc.) are present. The file is safe and contains only legitimate packaging logic.
</details>
<summary>Standard PKGBUILD with pinned source; no malicious behavior found.</summary>
</security_assessment>

[3/3] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD with pinned source; no malicious behavior found.
Reviewed all required files.
Deciding which files to review next...
Note: 308 compiled/archived file(s) cannot be audited as text and were not reviewed (src/flutter/flutter_console.bat, src/flutter/.pub-preload-cache/video_player_web-2.4.0.tar.gz, src/flutter/.pub-preload-cache/video_player-2.11.1.tar.gz and 305 more). For a package that ships prebuilt binaries, the audit covers the packaging, not the payload.
Note: 16950 files available for selection; offering the 50 highest-priority to the model. 11675 lower-priority file(s) were not offered.
File selection failed (LLM response message content is empty or missing. Raw response: ChatCompletion(id='gen-1787438830-6PsrfUkOVx23qIbFHaaN', choices=[Choice(finish_reason='stop', index=0, logprobs=None, message=ChatCompletionMessage(content=None, refusal=None, role='assistant', annotations=None, audio=None, function_call=None, tool_calls=None, reasoning='We are asked to choose up to 10 files from the listing that are MOST likely to contain malicious or dangerous code. The already reviewed files are PKGBUILD, flutter.install, and the archive flutter-3.47.1.tar.xz. The listing contains many files from inside the extracted source (src/flutter/...). We need to prioritize files that execute during build/install, are hand-written (not auto-generated or vendored), and are not test/example/developer-only unless nothing better remains.\n\nThe package is flutter-bin, which is a binary package that just extracts a prebuilt archive. The PKGBUILD likely just extracts the tarball and installs the binary. The install hook is already reviewed. So the source files inside the archive are upstream content, not modified by the AUR maintainer. The AUR maintainer\'s only contributions are the PKGBUILD and the install hook. Since those are already reviewed, there is really no other AUR-controlled file to review.\n\nThe listing includes many files from inside the extracted archive (src/flutter/...). Those are upstream Flutter/Dart SDK files. The maintainer did not modify them; they are the same as the official release. Reviewing them would be a waste of budget because we are looking for code injection in the AUR packaging, not vulnerabilities in upstream software (which would be found by upstream\'s own scanning). Also, many are JavaScript bundles, generated Dart code, etc. They are not hand-written by the maintainer.\n\nThe only possible non-upstream files would be if the maintainer included patches or custom scripts, but from the listing, all files seem to be from the official Flutter SDK archive. The .autoroller-preupload.sh is an upstream script, as are the bin/intern... (truncated)); using highest-priority files instead

Note: file selection did not complete (LLM response message content is empty or missing. Raw response: ChatCompletion(id='gen-1787438830-6PsrfUkOVx23qIbFHaaN', choices=[Choice(finish_reason='stop', index=0, logprobs=None, message=ChatCompletionMessage(content=None, refusal=None, role='assistant', annotations=None, audio=None, function_call=None, tool_calls=None, reasoning='We are asked to choose up to 10 files from the listing that are MOST likely to contain malicious or dangerous code. The already reviewed files are PKGBUILD, flutter.install, and the archive flutter-3.47.1.tar.xz. The listing contains many files from inside the extracted source (src/flutter/...). We need to prioritize files that execute during build/install, are hand-written (not auto-generated or vendored), and are not test/example/developer-only unless nothing better remains.\n\nThe package is flutter-bin, which is a binary package that just extracts a prebuilt archive. The PKGBUILD likely just extracts the tarball and installs the binary. The install hook is already reviewed. So the source files inside the archive are upstream content, not modified by the AUR maintainer. The AUR maintainer\'s only contributions are the PKGBUILD and the install hook. Since those are already reviewed, there is really no other AUR-controlled file to review.\n\nThe listing includes many files from inside the extracted archive (src/flutter/...). Those are upstream Flutter/Dart SDK files. The maintainer did not modify them; they are the same as the official release. Reviewing them would be a waste of budget because we are looking for code injection in the AUR packaging, not vulnerabilities in upstream software (which would be found by upstream\'s own scanning). Also, many are JavaScript bundles, generated Dart code, etc. They are not hand-written by the maintainer.\n\nThe only possible non-upstream files would be if the maintainer included patches or custom scripts, but from the listing, all files seem to be from the official Flutter SDK archive. The .autoroller-preupload.sh is an upstream script, as are the bin/intern... (truncated)). Falling back to the 10 highest-priority file(s) by ranking.
Decided to review 10 additional files: src/flutter/.autoroller-preupload.sh, src/flutter/bin/cache/dart-sdk/bin/resources/dartdoc/resources/docs.dart.js, src/flutter/bin/cache/dart-sdk/bin/resources/dartdoc/resources/highlight.pack.js, src/flutter/bin/cache/dart-sdk/bin/resources/devtools/assets/packages/perfetto_ui_compiled/dist/devtools/devtools_theme_handler.js, src/flutter/bin/cache/dart-sdk/bin/resources/devtools/assets/packages/perfetto_ui_compiled/dist/service_worker.js, src/flutter/bin/cache/dart-sdk/bin/resources/devtools/assets/packages/perfetto_ui_compiled/dist/v34.0-16f63abe3/engine_bundle.js, src/flutter/bin/cache/dart-sdk/bin/resources/devtools/assets/packages/perfetto_ui_compiled/dist/v34.0-16f63abe3/frontend_bundle.js, src/flutter/bin/cache/dart-sdk/bin/resources/devtools/canvaskit/canvaskit.js, src/flutter/bin/cache/dart-sdk/bin/resources/devtools/canvaskit/skwasm.js, src/flutter/bin/cache/dart-sdk/bin/resources/devtools/canvaskit/skwasm_heavy.js
Reviewing additional files...
Reviewing additional files...
[0/10] Reviewing src/flutter/.autoroller-preupload.sh...
[0/10] Reviewing src/flutter/.autoroller-preupload.sh, src/flutter/bin/cache/dart-sdk/bin/resources/dartdoc/resources/docs.dart.js...
[0/10] Reviewing src/flutter/.autoroller-preupload.sh, src/flutter/bin/cache/dart-sdk/bin/resources/dartdoc/resources/docs.dart.js, src/flutter/bin/cache/dart-sdk/bin/resources/dartdoc/resources/highlight.pack.js...
LLM auditresponse for .autoroller-preupload.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This script is a standard helper used by the Skia autoroller to update the Flutter engine's dependencies and regenerate the license file before a PR is uploaded. All operations are confined to the repository directory (`REPO_PATH`). It runs in-tree tools (`create_updated_flutter_deps.py`, `gclient sync`, `gn`, `ninja`, `licenses_cpp`) with paths under `engine/src/`. No external network requests beyond the expected `gclient sync` (which fetches from the official Flutter/Chromium depot) and no execution of untrusted code. There is no obfuscation, no data exfiltration, and no modification of system files outside the build directory. This is a normal maintenance script for the package's upstream source.
</details>
<summary>Autoroller preupload script for Flutter; no malicious behavior.</summary>
</security_assessment>

[1/10] Reviewing src/flutter/bin/cache/dart-sdk/bin/resources/dartdoc/resources/docs.dart.js, src/flutter/bin/cache/dart-sdk/bin/resources/dartdoc/resources/highlight.pack.js...
+ Reviewed src/flutter/.autoroller-preupload.sh. Status: SAFE -- Autoroller preupload script for Flutter; no malicious behavior.
[1/10] Reviewing src/flutter/bin/cache/dart-sdk/bin/resources/dartdoc/resources/docs.dart.js, src/flutter/bin/cache/dart-sdk/bin/resources/dartdoc/resources/highlight.pack.js, src/flutter/bin/cache/dart-sdk/bin/resources/devtools/assets/packages/perfetto_ui_compiled/dist/devtools/devtools_theme_handler.js...
LLM auditresponse for highlight.pack.js:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard, unmodified build of Highlight.js v11.11.1 (a widely used open-source syntax highlighting library). It bundles the core engine plus language grammars (bash, c, css, dart, diff, java, javascript, json, kotlin, markdown, objectivec, plaintext, shell, swift, xml, yaml) and registers them via `hljs.registerLanguage`. 

The code is minified but contains no signs of malicious activity: no network requests, no downloads/execution of external code, no base64/hex decoding of payloads, no attempts to access system files, credentials, or exfiltrate data. The only occurrences of strings like `eval` or `exec` are within keyword lists for grammar highlighting (e.g., JavaScript's `built_in` and Bash's `built_in`), which is normal library content. 

All modifications to the DOM (`document.querySelectorAll`, `element.innerHTML`, `dataset.highlighted`) serve the library's stated purpose of syntax highlighting and are expected behavior. The file does not deviate from the official upstream source, and there is no evidence of injected malicious code.
</details>
<summary>Standard Highlight.js library, no malicious code found.</summary>
</security_assessment>

[1/10] Reviewing src/flutter/bin/cache/dart-sdk/bin/resources/dartdoc/resources/docs.dart.js, src/flutter/bin/cache/dart-sdk/bin/resources/dartdoc/resources/highlight.pack.js, src/flutter/bin/cache/dart-sdk/bin/resources/devtools/assets/packages/perfetto_ui_compiled/dist/devtools/devtools_theme_handler.js, src/flutter/bin/cache/dart-sdk/bin/resources/devtools/assets/packages/perfetto_ui_compiled/dist/service_worker.js...
[2/10] Reviewing src/flutter/bin/cache/dart-sdk/bin/resources/dartdoc/resources/docs.dart.js, src/flutter/bin/cache/dart-sdk/bin/resources/devtools/assets/packages/perfetto_ui_compiled/dist/devtools/devtools_theme_handler.js, src/flutter/bin/cache/dart-sdk/bin/resources/devtools/assets/packages/perfetto_ui_compiled/dist/service_worker.js...
+ Reviewed src/flutter/bin/cache/dart-sdk/bin/resources/dartdoc/resources/highlight.pack.js. Status: SAFE -- Standard Highlight.js library, no malicious code found.
LLM auditresponse for devtools_theme_handler.js:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a legitimate JavaScript module from Flutter's DevTools that handles theme switching via cross-origin messaging. It listens for `message` events and reacts to specific known message IDs (`DART-DEVTOOLS-THEME-PING` and `DART-DEVTOOLS-THEME-CHANGE`). On receiving a ping, it responds with a pong to the source's origin; on receiving a theme change, it updates the stylesheet link to either light or dark mode. There is no obfuscation, no network requests, no file system access, and no execution of arbitrary code. The lack of origin validation on incoming messages is a standard pattern in web applications and only allows changing the CSS theme, which poses no security risk. The behavior is entirely consistent with the stated purpose of the Flutter DevTools application.
</details>
<summary>
Legitimate theme handler; no supply-chain threat.</summary>
</security_assessment>

[2/10] Reviewing src/flutter/bin/cache/dart-sdk/bin/resources/dartdoc/resources/docs.dart.js, src/flutter/bin/cache/dart-sdk/bin/resources/devtools/assets/packages/perfetto_ui_compiled/dist/devtools/devtools_theme_handler.js, src/flutter/bin/cache/dart-sdk/bin/resources/devtools/assets/packages/perfetto_ui_compiled/dist/service_worker.js, src/flutter/bin/cache/dart-sdk/bin/resources/devtools/assets/packages/perfetto_ui_compiled/dist/v34.0-16f63abe3/engine_bundle.js...
[3/10] Reviewing src/flutter/bin/cache/dart-sdk/bin/resources/dartdoc/resources/docs.dart.js, src/flutter/bin/cache/dart-sdk/bin/resources/devtools/assets/packages/perfetto_ui_compiled/dist/service_worker.js, src/flutter/bin/cache/dart-sdk/bin/resources/devtools/assets/packages/perfetto_ui_compiled/dist/v34.0-16f63abe3/engine_bundle.js...
+ Reviewed src/flutter/bin/cache/dart-sdk/bin/resources/devtools/assets/packages/perfetto_ui_compiled/dist/devtools/devtools_theme_handler.js. Status: SAFE -- Legitimate theme handler; no supply-chain threat.
LLM auditresponse for service_worker.js:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard service worker script for the Perfetto web UI, a performance tracing tool. It handles caching of versioned resources (e.g., `/v1.2-sha/...`) using a manifest file, with network-first fallback for the index page. All network requests are limited to the same origin; no external or unexpected hosts are contacted. There is no obfuscation, no encoded commands, no exfiltration, and no execution of downloaded code. The script is well-documented under an Apache 2.0 license and follows normal service worker patterns. No evidence of supply-chain injection or malicious behavior.</details>
<summary>Standard service worker, no malicious code.</summary>
</security_assessment>

[4/10] Reviewing src/flutter/bin/cache/dart-sdk/bin/resources/dartdoc/resources/docs.dart.js, src/flutter/bin/cache/dart-sdk/bin/resources/devtools/assets/packages/perfetto_ui_compiled/dist/v34.0-16f63abe3/engine_bundle.js...
+ Reviewed src/flutter/bin/cache/dart-sdk/bin/resources/devtools/assets/packages/perfetto_ui_compiled/dist/service_worker.js. Status: SAFE -- Standard service worker, no malicious code.
[4/10] Reviewing src/flutter/bin/cache/dart-sdk/bin/resources/dartdoc/resources/docs.dart.js, src/flutter/bin/cache/dart-sdk/bin/resources/devtools/assets/packages/perfetto_ui_compiled/dist/v34.0-16f63abe3/engine_bundle.js, src/flutter/bin/cache/dart-sdk/bin/resources/devtools/assets/packages/perfetto_ui_compiled/dist/v34.0-16f63abe3/frontend_bundle.js...
LLM auditresponse for engine_bundle.js:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is the Perfetto trace processor WebAssembly bridge, part of Flutter's performance tracing infrastructure. It is standard Emscripten-generated glue code that loads a WebAssembly module and communicates via MessagePort. The `base64` reference in the truncated section is a standard data URI prefix used by Emscripten for embedded binary assets. The "Exec format error" string comes from standard POSIX errno definitions. No evidence of data exfiltration, backdoors, obfuscated commands, or unexpected network requests was found. The code performs exactly the function expected of the Perfetto trace processor: receiving trace data via a message port, passing it to Wasm for processing, and returning results.
</details>
<summary>Legitimate Perfetto trace processor Wasm bridge.</summary>
</security_assessment>

[4/10] Reviewing src/flutter/bin/cache/dart-sdk/bin/resources/dartdoc/resources/docs.dart.js, src/flutter/bin/cache/dart-sdk/bin/resources/devtools/assets/packages/perfetto_ui_compiled/dist/v34.0-16f63abe3/engine_bundle.js, src/flutter/bin/cache/dart-sdk/bin/resources/devtools/assets/packages/perfetto_ui_compiled/dist/v34.0-16f63abe3/frontend_bundle.js, src/flutter/bin/cache/dart-sdk/bin/resources/devtools/canvaskit/canvaskit.js...
[5/10] Reviewing src/flutter/bin/cache/dart-sdk/bin/resources/dartdoc/resources/docs.dart.js, src/flutter/bin/cache/dart-sdk/bin/resources/devtools/assets/packages/perfetto_ui_compiled/dist/v34.0-16f63abe3/frontend_bundle.js, src/flutter/bin/cache/dart-sdk/bin/resources/devtools/canvaskit/canvaskit.js...
+ Reviewed src/flutter/bin/cache/dart-sdk/bin/resources/devtools/assets/packages/perfetto_ui_compiled/dist/v34.0-16f63abe3/engine_bundle.js. Status: SAFE -- Legitimate Perfetto trace processor Wasm bridge.
LLM auditresponse for docs.dart.js:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard Dart-compiled JavaScript documentation viewer. The base64 code is part of Dart's standard library for encoding/decoding (class `A.cm`). Network requests are made only to `dart.dev` (Google's official Dart documentation domain) for sidebar loading and search functionality—this is expected application behavior. The use of `localStorage` for theme persistence is normal client-side storage. No exfiltration, backdoors, or execution of code from untrusted sources was detected. The file is minified but not obfuscated with malicious intent; it follows typical Dart JS compilation output.
</details>
<summary>Standard Dart JS documentation viewer, no malicious behavior.</summary>
</security_assessment>

[5/10] Reviewing src/flutter/bin/cache/dart-sdk/bin/resources/dartdoc/resources/docs.dart.js, src/flutter/bin/cache/dart-sdk/bin/resources/devtools/assets/packages/perfetto_ui_compiled/dist/v34.0-16f63abe3/frontend_bundle.js, src/flutter/bin/cache/dart-sdk/bin/resources/devtools/canvaskit/canvaskit.js, src/flutter/bin/cache/dart-sdk/bin/resources/devtools/canvaskit/skwasm.js...
[6/10] Reviewing src/flutter/bin/cache/dart-sdk/bin/resources/devtools/assets/packages/perfetto_ui_compiled/dist/v34.0-16f63abe3/frontend_bundle.js, src/flutter/bin/cache/dart-sdk/bin/resources/devtools/canvaskit/canvaskit.js, src/flutter/bin/cache/dart-sdk/bin/resources/devtools/canvaskit/skwasm.js...
+ Reviewed src/flutter/bin/cache/dart-sdk/bin/resources/dartdoc/resources/docs.dart.js. Status: SAFE -- Standard Dart JS documentation viewer, no malicious behavior.
LLM auditresponse for canvaskit.js:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is the standard Emscripten-generated JavaScript glue code for the Skia CanvasKit WebAssembly module, which is used by Flutter's web engine for 2D graphics rendering. The code contains typical WebGL context setup, shader compilation, texture management, and other graphics pipeline operations. There are no suspicious network requests, data exfiltration attempts, obfuscated commands, or system modifications. The file does not contain any supply-chain attack indicators; it only provides the runtime initialization of the CanvasKit library. The code is minified but not maliciously obfuscated; it follows standard patterns for Emscripten modules.
</details>
<summary>Standard CanvasKit JS glue code, no malicious behavior found.</summary>
</security_assessment>

[7/10] Reviewing src/flutter/bin/cache/dart-sdk/bin/resources/devtools/assets/packages/perfetto_ui_compiled/dist/v34.0-16f63abe3/frontend_bundle.js, src/flutter/bin/cache/dart-sdk/bin/resources/devtools/canvaskit/skwasm.js...
+ Reviewed src/flutter/bin/cache/dart-sdk/bin/resources/devtools/canvaskit/canvaskit.js. Status: SAFE -- Standard CanvasKit JS glue code, no malicious behavior found.
[7/10] Reviewing src/flutter/bin/cache/dart-sdk/bin/resources/devtools/assets/packages/perfetto_ui_compiled/dist/v34.0-16f63abe3/frontend_bundle.js, src/flutter/bin/cache/dart-sdk/bin/resources/devtools/canvaskit/skwasm.js, src/flutter/bin/cache/dart-sdk/bin/resources/devtools/canvaskit/skwasm_heavy.js...
LLM auditresponse for skwasm.js:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `skwasm.js` is a compiled JavaScript module from Emscripten for the Skia graphics library (skwasm). It is a standard component of the Flutter framework, used for 2D rendering via WebGL and WebAssembly. The code is heavily minified, which is typical for optimized builds and not evidence of obfuscation intended to hide malicious behavior.

The file performs expected operations such as:
- Instantiation of WebAssembly modules via `fetch` and `WebAssembly.instantiateStreaming`.
- Creation of Web Workers (`new Worker(ma("skwasm.ww.js"))`) for multithreaded rendering, which is a standard pattern for SKIA in browser environments.
- Full WebGL context management and wrapper functions for all GL calls.
- Environment variable handling (`environ_get`, `environ_sizes_get`) and standard I/O (`fd_write`, `fd_read`), which are normal for a WASM module expecting a POSIX-like environment.
- Communication with workers via `postMessage` for operations like canvas transfer, rendering, and rasterization.

All network requests are to the same origin (the `locateFile` function resolves paths relative to the script's own location). No suspicious external URLs, base64 decoding, eval, or system modifications are present. The code does not exfiltrate data, download untrusted executables, or contain backdoors. The file is consistent with the upstream Skia library's behavior and does not show evidence of a supply-chain attack.
</details>
<summary>Standard Skia WebAssembly module; no malicious behavior found.</summary>
</security_assessment>

[8/10] Reviewing src/flutter/bin/cache/dart-sdk/bin/resources/devtools/assets/packages/perfetto_ui_compiled/dist/v34.0-16f63abe3/frontend_bundle.js, src/flutter/bin/cache/dart-sdk/bin/resources/devtools/canvaskit/skwasm_heavy.js...
+ Reviewed src/flutter/bin/cache/dart-sdk/bin/resources/devtools/canvaskit/skwasm.js. Status: SAFE -- Standard Skia WebAssembly module; no malicious behavior found.
LLM auditresponse for frontend_bundle.js:
<security_assessment>
<decision>SAFE</decision>
<details>
The analyzed file is a JavaScript bundle for the Perfetto trace viewer frontend (a web-based performance analysis tool). All suspicious patterns (curl, wget, base64, eval) are used in benign, contextually appropriate ways:

1. **Base64 references** are exclusively part of the protobuf serialization/deserialization library (protocol buffers), which encodes binary trace data for transmission and storage. This is standard library usage, not obfuscation.

2. **curl and wget strings** appear only as **displayed text** inside UI dialogs that show users terminal commands for downloading Perfetto tools (trace_processor, tracebox) or running ADB shell commands. These strings are never executed by the JavaScript code — they are merely presented as copy-paste instructions to the user.

3. **eval** is not present. The CSP includes `'unsafe-eval'` only for WebAssembly support, which is required by Perfetto's trace processor engine (a well-known, legitimate dependency).

4. The code loads external resources (`Google Analytics`, an internal Google user-detection script, Google-hosted stylesheets, WebSocket connections to localhost) — all of which are standard, documented behaviour for the Perfetto web UI and align with the tool's stated purpose as a browser-based profiling frontend.

5. No exfiltration, backdoors, reverse shells, or execution of fetched code are present. The file behaves as the legitimate upstream Perfetto UI bundle. This is the frontend application code, not a packaging script, and contains no injected malicious payload.
</details>
<summary>Legitimate Perfetto frontend bundle; no malicious behavior.</summary>
</security_assessment>

[9/10] Reviewing src/flutter/bin/cache/dart-sdk/bin/resources/devtools/canvaskit/skwasm_heavy.js...
+ Reviewed src/flutter/bin/cache/dart-sdk/bin/resources/devtools/assets/packages/perfetto_ui_compiled/dist/v34.0-16f63abe3/frontend_bundle.js. Status: SAFE -- Legitimate Perfetto frontend bundle; no malicious behavior.
LLM auditresponse for skwasm_heavy.js:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard Emscripten-generated JavaScript glue code for the Skia graphics library (used by Flutter for rendering). It contains WebGL bindings, WebAssembly instantiation, and Web Worker management for multi-threaded rendering. All network requests are limited to fetching the associated WebAssembly binary (`skwasm_heavy.wasm`) from the same origin or a configured path – there is no exfiltration of data or communication with unexpected hosts. The code is minified but contains no obfuscated strings, encoded commands, `eval` calls, or other techniques used to hide malicious behavior. The Web Worker creation and message passing follow standard Emscripten patterns for multi-threading and do not introduce backdoors. No system file modifications, credential theft, or supply-chain injection are present.
</details>
<summary>Standard Emscripten glue code for Skia rendering; no malicious behavior found.</summary>
</security_assessment>

[10/10] Reviewing ...
+ Reviewed src/flutter/bin/cache/dart-sdk/bin/resources/devtools/canvaskit/skwasm_heavy.js. Status: SAFE -- Standard Emscripten glue code for Skia rendering; no malicious behavior found.
Reviewed all additional files.
Reviewed additional files.
Audit complete! Result: No issues found
(Skipped 1 file: flutter-3.47.1.tar.xz)

API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 240,273
  Completion Tokens: 10,424
  Total Tokens: 250,697
  Total Cost: $0.014952
  Execution Time: 449.88 seconds

Final Status: SAFE


No issues found.


Audit Skips:

/data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-ys2rm7e6/flutter-3.47.1.tar.xz: [SKIPPED] Skipping binary file: flutter-3.47.1.tar.xz
