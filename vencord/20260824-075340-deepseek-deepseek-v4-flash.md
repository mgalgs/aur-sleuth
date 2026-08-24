---
package: vencord
pkgver: 1.15.2
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 56580919ea5cd225cb34031d0932798021e4a0d8
prompt_tokens: 35128
completion_tokens: 7960
total_tokens: 43088
cost: 0.0029301552
execution_time: 120.19
files_reviewed: 11
files_skipped: 0
files_unauditable: 3
unpinned_sources: 0
date: 2026-08-24T07:53:39Z
file_verdicts:
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD, no malicious content found.
  - file: vencord.install
    status: safe
    summary: Install script only prints user instructions; no malicious behavior detected.
  - file: src/Vencord/package.json
    status: safe
    summary: Standard package.json, no malicious content.
  - file: src/Vencord/browser/background.js
    status: safe
    summary: Upstream extension code, no malicious indicators found.
  - file: src/Vencord/browser/Vencord.ts
    status: safe
    summary: Clean entry point; no malicious behavior.
  - file: src/Vencord/browser/service-worker.js
    status: safe
    summary: Standard Chrome extension service worker; no suspicious behavior.
  - file: src/Vencord/browser/VencordNativeStub.ts
    status: safe
    summary: Standard upstream stub, no malicious code.
  - file: src/Vencord/browser/content.js
    status: safe
    summary: Standard content script for a browser extension; no signs of malicious activity.
  - file: src/Vencord/browser/patch-worker.js
    status: safe
    summary: Standard worker cross-origin fallback, no malicious behavior.
  - file: src/Vencord/browser/userscript.meta.js
    status: safe
    summary: Userscript metadata file, no executable code.
  - file: src/Vencord/browser/GMPolyfill.js
    status: safe
    summary: Standard userscript fetch polyfill, no malicious code.
---

Cloning https://aur.archlinux.org/vencord.git...
Cloned vencord
Analyzing vencord AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD only defines variables, arrays, and function definitions in its global scope. There is no `pkgver()` function, and no top-level command substitutions, `eval`, `curl`, `wget`, or other dangerous operations that would execute during `makepkg --nobuild --nodeps --noprepare` or `makepkg --printsrcinfo`. The `source` entry fetches a pinned tag from the official upstream GitHub repository, and the SHA-256 checksum is provided (not SKIP). The `prepare()`, `build()`, `check()`, and `package_*()` functions are not executed by these commands, so they are out of scope for this gate. No malicious code is present in the executable portions of the PKGBUILD.
</details>
<evidence></evidence>
<summary>No dangerous code in top-level scope; safe to fetch sources.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No dangerous code in top-level scope; safe to fetch sources.
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Running makepkg --printsrcinfo to get source files for agent...
makepkg --printsrcinfo successful
Reviewing required files...
[0/2] Reviewing PKGBUILD...
[0/2] Reviewing PKGBUILD, vencord.install...
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard AUR packaging practices. The source is pinned to a specific tag on the official GitHub repository with a SHA256 checksum provided (not SKIP). The build and package functions only run standard pnpm commands and copy built artifacts into the package directory. There is no obfuscated code, no unexpected network requests, no dangerous system modifications, and no exfiltration of local data. The only external files referenced (vencord.install) are not provided here, but the PKGBUILD itself contains no malicious content.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD, no malicious content found.</summary>
</security_assessment>

[1/2] Reviewing vencord.install...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD, no malicious content found.
LLM auditresponse for vencord.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard Arch Linux install script (`.install`) for the Vencord package. Its entire content consists of a `post_install()` function that only echoes installation instructions for the user. There are no file operations, network requests, command execution, or any code that could modify the system or exfiltrate data. The instructions reference paths under `/usr/lib/vencord` and `/usr/lib/firefox` which are the package's own installation locations. This is completely benign and consistent with normal packaging practices.
</details>
<evidence>
</evidence>
<summary>
Install script only prints user instructions; no malicious behavior detected.
</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed vencord.install. Status: SAFE -- Install script only prints user instructions; no malicious behavior detected.
Reviewed all required files.
Deciding which files to review next...
Note: 3 compiled/archived file(s) cannot be audited as text and were not reviewed (Vencord/objects/pack/pack-dfc46ab12e877a50953d79ebbd5732213e5f3cb4.pack, Vencord/objects/pack/pack-dfc46ab12e877a50953d79ebbd5732213e5f3cb4.rev, Vencord/objects/pack/pack-dfc46ab12e877a50953d79ebbd5732213e5f3cb4.idx). For a package that ships prebuilt binaries, the audit covers the packaging, not the payload.
Note: 786 files available for selection; offering the 50 highest-priority to the model. 371 lower-priority file(s) were not offered.
LLM response for file selection:
src/Vencord/package.json
src/Vencord/browser/background.js
src/Vencord/browser/content.js
src/Vencord/browser/service-worker.js
src/Vencord/browser/Vencord.ts
src/Vencord/browser/VencordNativeStub.ts
src/Vencord/browser/patch-worker.js
src/Vencord/browser/userscript.meta.js
src/Vencord/browser/GMPolyfill.js
Decided to review 9 additional files: src/Vencord/package.json, src/Vencord/browser/background.js, src/Vencord/browser/content.js, src/Vencord/browser/service-worker.js, src/Vencord/browser/Vencord.ts, src/Vencord/browser/VencordNativeStub.ts, src/Vencord/browser/patch-worker.js, src/Vencord/browser/userscript.meta.js, src/Vencord/browser/GMPolyfill.js
Reviewing additional files...
Reviewing additional files...
[0/9] Reviewing src/Vencord/browser/background.js...
[0/9] Reviewing src/Vencord/browser/background.js, src/Vencord/browser/content.js...
[0/9] Reviewing src/Vencord/browser/background.js, src/Vencord/browser/content.js, src/Vencord/package.json...
LLM auditresponse for package.json:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `package.json` for the Vencord Discord client mod. It contains metadata, scripts, and dependency declarations typical of a Node.js project. The scripts invoke build, lint, and test commands using Node and local scripts. There are no suspicious network requests, obfuscated code, or dangerous commands. All dependencies are either from npm or pinned to a specific commit on GitHub. The file is part of the upstream application source and does not contain any injected malicious code or supply-chain attack indicators.
</details>
<evidence>
</evidence>
<summary>
Standard package.json, no malicious content.</summary>
</security_assessment>

[0/9] Reviewing src/Vencord/browser/background.js, src/Vencord/browser/content.js, src/Vencord/package.json, src/Vencord/browser/service-worker.js...
[1/9] Reviewing src/Vencord/browser/background.js, src/Vencord/browser/content.js, src/Vencord/browser/service-worker.js...
+ Reviewed src/Vencord/package.json. Status: SAFE -- Standard package.json, no malicious content.
LLM auditresponse for background.js:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is part of the Vencord browser extension's background script. It uses `chrome.webRequest.onHeadersReceived` to modify HTTP response headers for specific requests:

- For `main_frame` requests to `discord.com`, it removes the `Content-Security-Policy` header to allow loading custom CSS (as intended by the user).
- For `stylesheet` requests from `https://raw.githubusercontent.com/`, it corrects the `Content-Type` to `text/css` because GitHub does not serve CSS with the proper MIME type.

These actions are standard for a client mod extension that customizes Discord's appearance. There is no evidence of malicious behavior: no data exfiltration, no downloads of code from unexpected hosts, no obfuscation, and no system modifications. The code only performs header manipulation on well-defined URL patterns that align with the extension's stated purpose. No supply-chain attack indicators are present.
</details>
<evidence></evidence>
<summary>Upstream extension code, no malicious indicators found.</summary>
</security_assessment>

[1/9] Reviewing src/Vencord/browser/background.js, src/Vencord/browser/content.js, src/Vencord/browser/service-worker.js, src/Vencord/browser/Vencord.ts...
[2/9] Reviewing src/Vencord/browser/content.js, src/Vencord/browser/service-worker.js, src/Vencord/browser/Vencord.ts...
+ Reviewed src/Vencord/browser/background.js. Status: SAFE -- Upstream extension code, no malicious indicators found.
LLM auditresponse for Vencord.ts:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard TypeScript module entry point for the browser variant of the Vencord Discord client mod. It imports a local stub (`"./VencordNativeStub"`) and re-exports the main module (`"../src/Vencord"`). There is no embedded code that performs network requests, file operations, system modifications, obfuscation, or any other suspicious behavior. The content is entirely consistent with normal application source code and does not contain any indicators of a supply-chain attack.
</details>
<evidence></evidence>
<summary>Clean entry point; no malicious behavior.</summary>
</security_assessment>

[3/9] Reviewing src/Vencord/browser/content.js, src/Vencord/browser/service-worker.js...
+ Reviewed src/Vencord/browser/Vencord.ts. Status: SAFE -- Clean entry point; no malicious behavior.
[3/9] Reviewing src/Vencord/browser/content.js, src/Vencord/browser/service-worker.js, src/Vencord/browser/VencordNativeStub.ts...
LLM auditresponse for service-worker.js:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `service-worker.js` is a straightforward Chrome extension service worker. It contains two event listeners:  
- `chrome.commands.onCommand` forwards keyboard shortcut commands to the currently active tab.  
- `chrome.runtime.onMessage` opens the `chrome://extensions/shortcuts` page when a specific message (`"openShortcuts"`) is received.  

There is no obfuscation, no network activity, no file or system modifications, and no use of dangerous commands like `eval`, `base64`, `curl`, or `wget`. The code only interacts with standard Chrome extension APIs in expected ways. This is benign boilerplate; it does not introduce supply-chain risk.
</details>
<evidence></evidence>
<summary>Standard Chrome extension service worker; no suspicious behavior.</summary>
</security_assessment>

[4/9] Reviewing src/Vencord/browser/content.js, src/Vencord/browser/VencordNativeStub.ts...
+ Reviewed src/Vencord/browser/service-worker.js. Status: SAFE -- Standard Chrome extension service worker; no suspicious behavior.
[4/9] Reviewing src/Vencord/browser/content.js, src/Vencord/browser/VencordNativeStub.ts, src/Vencord/browser/patch-worker.js...
LLM auditresponse for VencordNativeStub.ts:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a normal upstream source file from the Vencord project, providing a stub implementation of the native API for the web/browser version. It uses standard browser APIs (localStorage, window.open, fetch, etc.) and imports from the project's own modules. There is no obfuscated code, no suspicious network requests to unexpected hosts, no dangerous shell commands, and no exfiltration of data. The only external URLs are the project's own GitHub repository and a Stylus web store URL, both of which are consistent with the application's stated functionality. The `require` call is a standard webpack module load, not a remote code execution. No evidence of supply-chain attack or malicious behavior.
</details>
<evidence></evidence>
<summary>Standard upstream stub, no malicious code.</summary>
</security_assessment>

[4/9] Reviewing src/Vencord/browser/content.js, src/Vencord/browser/VencordNativeStub.ts, src/Vencord/browser/patch-worker.js, src/Vencord/browser/userscript.meta.js...
[5/9] Reviewing src/Vencord/browser/content.js, src/Vencord/browser/patch-worker.js, src/Vencord/browser/userscript.meta.js...
+ Reviewed src/Vencord/browser/VencordNativeStub.ts. Status: SAFE -- Standard upstream stub, no malicious code.
LLM auditresponse for content.js:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a browser extension content script for Vencord, a Discord client mod. It establishes communication between the web page and the extension by posting metadata, forwarding keybind messages, and relaying a "open shortcuts" request. All operations are local and conventional for a content script: no network requests, no obfuscation, no eval, no suspicious file or system access. The message listeners properly verify `event.source === window` for incoming page messages. This is normal extension functionality and does not indicate a supply-chain attack.
</details>
<evidence>
</evidence>
<summary>
Standard content script for a browser extension; no signs of malicious activity.
</summary>
</security_assessment>

[5/9] Reviewing src/Vencord/browser/content.js, src/Vencord/browser/patch-worker.js, src/Vencord/browser/userscript.meta.js, src/Vencord/browser/GMPolyfill.js...
[6/9] Reviewing src/Vencord/browser/patch-worker.js, src/Vencord/browser/userscript.meta.js, src/Vencord/browser/GMPolyfill.js...
+ Reviewed src/Vencord/browser/content.js. Status: SAFE -- Standard content script for a browser extension; no signs of malicious activity.
LLM auditresponse for patch-worker.js:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `patch-worker.js` implements a proxy for the `Worker` API to handle cross-origin worker script loading failures (SECURITY_ERR). It uses XMLHttpRequest to fetch the script and creates a blob URL for the worker. This is a well-known workaround for Chrome's same-origin policy for workers (see GitHub repositories like `nicedoc/worker-xhr`). The code does not contain any obfuscation, suspicious network requests (it only fetches the provided `scriptURL`), eval/exec, or attempts to exfiltrate data. It is a standard polyfill used by Vencord to support loading workers from external origins such as Discord's CDN. There is no evidence of malicious or backdoor behavior.
</details>
<evidence></evidence>
<summary>Standard worker cross-origin fallback, no malicious behavior.</summary>
</security_assessment>

[7/9] Reviewing src/Vencord/browser/userscript.meta.js, src/Vencord/browser/GMPolyfill.js...
+ Reviewed src/Vencord/browser/patch-worker.js. Status: SAFE -- Standard worker cross-origin fallback, no malicious behavior.
LLM auditresponse for userscript.meta.js:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a userscript metadata block (userscript.meta.js) for Vencord, a Discord client mod. It contains only comments and standard Greasemonkey/Tampermonkey metadata directives (@name, @description, @version, @match, @grant, etc.). The only grants are `GM_xmlhttpRequest` and `unsafeWindow`, which are typical and expected for a userscript that needs to interact with Discord's web app and possibly fetch remote resources. There is no executable code, no network requests, no obfuscation, no file operations, and no system modifications. The content is entirely declarative and informational. No supply-chain attack indicators are present.
</details>
<evidence></evidence>
<summary>Userscript metadata file, no executable code.</summary>
</security_assessment>

[8/9] Reviewing src/Vencord/browser/GMPolyfill.js...
+ Reviewed src/Vencord/browser/userscript.meta.js. Status: SAFE -- Userscript metadata file, no executable code.
LLM auditresponse for GMPolyfill.js:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a polyfill for the GreaseMonkey/TamperMonkey `GM_xmlhttpRequest` API, providing a standard `fetch`-like interface. It contains helper functions for parsing headers, converting blobs, and wrapping the userscript API call. The code is plain, unencoded, and performs only the expected operations: constructing HTTP requests, handling responses, and converting data formats. There is no obfuscation, no external network requests beyond the userscript API, no file system access, and no execution of downloaded code. This is standard practice for userscript-based browser extensions.
</details>
<evidence></evidence>
<summary>Standard userscript fetch polyfill, no malicious code.</summary>
</security_assessment>

[9/9] Reviewing ...
+ Reviewed src/Vencord/browser/GMPolyfill.js. Status: SAFE -- Standard userscript fetch polyfill, no malicious code.
Reviewed all additional files.
Reviewed additional files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 35,128
  Completion Tokens: 7,960
  Total Tokens: 43,088
  Total Cost: $0.002930
  Execution Time: 120.19 seconds

Final Status: SAFE


No issues found.
