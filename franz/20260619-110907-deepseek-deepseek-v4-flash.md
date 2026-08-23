---
package: franz
pkgver: 5.11.0
pkgrel: 2
result: safe
model: deepseek/deepseek-v4-flash
provider: openrouter.ai
base_url: https://openrouter.ai/api/v1
aur_sleuth_rev: 11c93a0c95e2166961e3664fea6b5a63827ded10
prompt_tokens: 39759
completion_tokens: 7993
total_tokens: 47752
cost: 0.00501705
execution_time: 148.33
files_reviewed: 12
files_skipped: 0
date: 2026-06-19T11:09:06Z
file_verdicts:
  - file: PKGBUILD
    status: safe
    summary: Safe, standard AUR packaging for an Electron app.
  - file: franz.sh.in
    status: safe
    summary: Standard Electron launcher script, no security issues.
  - file: src/franz/src/api/PaymentApi.js
    status: safe
    summary: Clean wrapper class with no malicious behavior.
  - file: src/franz/src/api/RecipePreviewsApi.js
    status: safe
    summary: Clean API service class with no security issues.
  - file: src/franz/src/api/FeaturesApi.js
    status: safe
    summary: Benign JavaScript class, no malicious behavior.
  - file: src/franz/src/api/utils/auth.js
    status: safe
    summary: Standard API client helper, no malicious behavior.
  - file: src/franz/src/api/UserApi.js
    status: safe
    summary: Standard client-side API wrapper, no security issues.
  - file: src/franz/src/api/RecipesApi.js
    status: safe
    summary: Normal API client class, no security concerns.
  - file: src/franz/package.json
    status: safe
    summary: Standard package.json, no malicious content detected.
  - file: src/franz/gulpfile.babel.js
    status: safe
    summary: Standard build configuration; no malicious behavior found.
  - file: src/franz/src/api/server/ServerApi.js
    status: safe
    summary: Normal API client for Franz; no malicious code.
  - file: src/franz/build-helpers/ensure-mac-dependency.js
    status: safe
    summary: Standard macOS dependency handling; no supply-chain attack.
---

Cloning https://aur.archlinux.org/franz.git to /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-76l4krmn...
Cloned repository to /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-76l4krmn
Analyzing franz AUR package (working in /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-76l4krmn) with deepseek/deepseek-v4-flash from https://openrouter.ai/api/v1
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD's global scope only sets variables (pkgname, pkgver, source, etc.) with no command substitutions, backticks, or any executable code. The `source` array contains a git+ URL pointing to the official Franz GitHub repository at a fixed tag, and a local file `franz.sh.in` (provided with the PKGBUILD). No `pkgver()` function is defined, so no code runs there. The `prepare()`, `build()`, and `package()` functions are not executed during `makepkg --nobuild --nodeps --noprepare` or `makepkg --printsrcinfo`. There is no top-level code that would fetch or execute untrusted payloads, exfiltrate data, or perform any malicious actions. The checksum entries in `b2sums` are unconventional for a VCS source but do not introduce security risk at this stage. The operations are standard and safe. No supply-chain attack indicators found.
</details>
<summary>Safe to fetch sources and source PKGBUILD.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete [grey50]-- Safe to fetch sources and source PKGBUILD.[/]
Running makepkg --nobuild --nodeps --noprepare to download sources for agent...
makepkg --nobuild --nodeps --noprepare successful
Running makepkg --printsrcinfo to get source files for agent...
makepkg --printsrcinfo successful
Reviewing required files...
[0/2] Reviewing PKGBUILD...
[0/2] Reviewing PKGBUILD, franz.sh.in...
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard AUR packaging practices for an Electron application. It clones the official upstream repository (`github.com/meetfranz/franz`) at a pinned tag, uses system Electron, and runs the upstream build system (`npm install`, `npx lerna run build`, `npx gulp build`, `npx electron-builder`). All file operations are confined to the package build directory and installation into `$pkgdir`. There is no obfuscated code, unexpected network destinations, data exfiltration, or execution of attacker-controlled content. The `sed` modifications are cosmetic (disabling dev mode, setting compression, adjusting paths) and not malicious. Checksums are provided and verified. No supply-chain attack indicators are present.
</details>
<summary>Safe, standard AUR packaging for an Electron app.</summary>
</security_assessment>

[1/2] Reviewing franz.sh.in...
+ Reviewed PKGBUILD. Status: SAFE -- Safe, standard AUR packaging for an Electron app.
LLM auditresponse for franz.sh.in:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a typical launcher script for an Electron application. The `@ELECTRON@` placeholder is substituted during packaging with the path to the electron binary. The script simply executes electron with the application's main ASAR file. There are no network requests, obfuscated code, dangerous commands, or any other malicious behavior. It follows standard packaging practices for Electron-based AUR packages.
</details>
<summary>Standard Electron launcher script, no security issues.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed franz.sh.in. Status: SAFE -- Standard Electron launcher script, no security issues.
Reviewed all required files.
Deciding which files to review next...
Note: 488 files available for selection; offering the 50 highest-priority to the model. 322 lower-priority file(s) were not offered.
LLM response for file selection:
src/franz/build-helpers/ensure-mac-dependency.js
src/franz/gulpfile.babel.js
src/franz/package.json
src/franz/src/api/RecipesApi.js
src/franz/src/api/RecipePreviewsApi.js
src/franz/src/api/FeaturesApi.js
src/franz/src/api/server/ServerApi.js
src/franz/src/api/UserApi.js
src/franz/src/api/PaymentApi.js
src/franz/src/api/utils/auth.js
Decided to review 10 additional files: src/franz/build-helpers/ensure-mac-dependency.js, src/franz/gulpfile.babel.js, src/franz/package.json, src/franz/src/api/RecipesApi.js, src/franz/src/api/RecipePreviewsApi.js, src/franz/src/api/FeaturesApi.js, src/franz/src/api/server/ServerApi.js, src/franz/src/api/UserApi.js, src/franz/src/api/PaymentApi.js, src/franz/src/api/utils/auth.js
Reviewing additional files...
Reviewing additional files...
[0/10] Reviewing src/franz/package.json...
[0/10] Reviewing src/franz/package.json, src/franz/gulpfile.babel.js...
[0/10] Reviewing src/franz/package.json, src/franz/gulpfile.babel.js, src/franz/src/api/RecipesApi.js...
[0/10] Reviewing src/franz/package.json, src/franz/gulpfile.babel.js, src/franz/src/api/RecipesApi.js, src/franz/build-helpers/ensure-mac-dependency.js...
[0/10] Reviewing src/franz/package.json, src/franz/gulpfile.babel.js, src/franz/src/api/RecipesApi.js, src/franz/build-helpers/ensure-mac-dependency.js, src/franz/src/api/RecipePreviewsApi.js...
[0/10] Reviewing src/franz/package.json, src/franz/gulpfile.babel.js, src/franz/src/api/RecipesApi.js, src/franz/build-helpers/ensure-mac-dependency.js, src/franz/src/api/RecipePreviewsApi.js, src/franz/src/api/FeaturesApi.js...
[0/10] Reviewing src/franz/package.json, src/franz/gulpfile.babel.js, src/franz/src/api/RecipesApi.js, src/franz/build-helpers/ensure-mac-dependency.js, src/franz/src/api/RecipePreviewsApi.js, src/franz/src/api/FeaturesApi.js, src/franz/src/api/UserApi.js...
[0/10] Reviewing src/franz/package.json, src/franz/gulpfile.babel.js, src/franz/src/api/RecipesApi.js, src/franz/build-helpers/ensure-mac-dependency.js, src/franz/src/api/RecipePreviewsApi.js, src/franz/src/api/FeaturesApi.js, src/franz/src/api/UserApi.js, src/franz/src/api/server/ServerApi.js...
[0/10] Reviewing src/franz/package.json, src/franz/gulpfile.babel.js, src/franz/src/api/RecipesApi.js, src/franz/build-helpers/ensure-mac-dependency.js, src/franz/src/api/RecipePreviewsApi.js, src/franz/src/api/FeaturesApi.js, src/franz/src/api/UserApi.js, src/franz/src/api/server/ServerApi.js, src/franz/src/api/PaymentApi.js...
[0/10] Reviewing src/franz/package.json, src/franz/gulpfile.babel.js, src/franz/src/api/RecipesApi.js, src/franz/build-helpers/ensure-mac-dependency.js, src/franz/src/api/RecipePreviewsApi.js, src/franz/src/api/FeaturesApi.js, src/franz/src/api/UserApi.js, src/franz/src/api/server/ServerApi.js, src/franz/src/api/PaymentApi.js, src/franz/src/api/utils/auth.js...
LLM auditresponse for PaymentApi.js:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard JavaScript class that wraps API calls. It delegates methods `plans()` and `getHostedPage()` to an injected `server` object. There are no suspicious network requests, obfuscated code, dangerous commands, or system modifications. The code is consistent with ordinary application functionality and poses no supply-chain risk.
</details>
<summary>Clean wrapper class with no malicious behavior.</summary>
</security_assessment>

[1/10] Reviewing src/franz/package.json, src/franz/gulpfile.babel.js, src/franz/src/api/RecipesApi.js, src/franz/build-helpers/ensure-mac-dependency.js, src/franz/src/api/RecipePreviewsApi.js, src/franz/src/api/FeaturesApi.js, src/franz/src/api/UserApi.js, src/franz/src/api/server/ServerApi.js, src/franz/src/api/utils/auth.js...
+ Reviewed src/franz/src/api/PaymentApi.js. Status: SAFE -- Clean wrapper class with no malicious behavior.
LLM auditresponse for RecipePreviewsApi.js:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard JavaScript API service class. It defines methods that delegate to a `server` object (presumably an API client) to fetch recipe previews. There are no network requests, system calls, obfuscated code, or any operations outside of normal application logic. No evidence of malicious or dangerous behavior.
</details>
<summary>
Clean API service class with no security issues.</summary>
</security_assessment>

[2/10] Reviewing src/franz/package.json, src/franz/gulpfile.babel.js, src/franz/src/api/RecipesApi.js, src/franz/build-helpers/ensure-mac-dependency.js, src/franz/src/api/FeaturesApi.js, src/franz/src/api/UserApi.js, src/franz/src/api/server/ServerApi.js, src/franz/src/api/utils/auth.js...
+ Reviewed src/franz/src/api/RecipePreviewsApi.js. Status: SAFE -- Clean API service class with no security issues.
LLM auditresponse for FeaturesApi.js:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `FeaturesApi.js` contains a simple class that delegates two methods (`default()` and `features()`) to a `server` object provided via the constructor. There is no suspicious code, no network requests, no obfuscation, no file operations, and no execution of untrusted content. The class follows standard patterns for API client abstractions. No security issues found.
</details>
<summary>
Benign JavaScript class, no malicious behavior.</summary>
</security_assessment>

[3/10] Reviewing src/franz/package.json, src/franz/gulpfile.babel.js, src/franz/src/api/RecipesApi.js, src/franz/build-helpers/ensure-mac-dependency.js, src/franz/src/api/UserApi.js, src/franz/src/api/server/ServerApi.js, src/franz/src/api/utils/auth.js...
+ Reviewed src/franz/src/api/FeaturesApi.js. Status: SAFE -- Benign JavaScript class, no malicious behavior.
LLM auditresponse for auth.js:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard authentication helper for the Franz desktop application. It prepares HTTP requests with common headers (Content-Type, version, platform, locale, etc.) and attaches a Bearer token from `mobx-localstorage`. All API calls are made via `window.fetch`. There is no obfuscated code, no unexpected network requests to unknown hosts, no execution of fetched content, and no system-level operations. This code is consistent with the normal upstream functionality of a desktop client that communicates with its own backend.
</details>
<summary>Standard API client helper, no malicious behavior.</summary>
</security_assessment>

[4/10] Reviewing src/franz/package.json, src/franz/gulpfile.babel.js, src/franz/src/api/RecipesApi.js, src/franz/build-helpers/ensure-mac-dependency.js, src/franz/src/api/UserApi.js, src/franz/src/api/server/ServerApi.js...
+ Reviewed src/franz/src/api/utils/auth.js. Status: SAFE -- Standard API client helper, no malicious behavior.
LLM auditresponse for UserApi.js:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `UserApi.js` is a standard client-side API wrapper for user authentication operations. It imports a `hash` function from a local helper and uses it to hash passwords before sending them to a server. All methods (`login`, `signup`, `password`, `activateTrial`, `invite`, `getInfo`, `updateInfo`, `getLegacyServices`, `delete`) are routine and correspond to expected user account management features. There is no obfuscation, no suspicious network requests (all go via `this.server` which is normal dependency injection), no system modifications, and no other indicators of malicious behavior. This is ordinary upstream application functionality.
</details>
<summary>Standard client-side API wrapper, no security issues.</summary>
</security_assessment>

[5/10] Reviewing src/franz/package.json, src/franz/gulpfile.babel.js, src/franz/src/api/RecipesApi.js, src/franz/build-helpers/ensure-mac-dependency.js, src/franz/src/api/server/ServerApi.js...
+ Reviewed src/franz/src/api/UserApi.js. Status: SAFE -- Standard client-side API wrapper, no security issues.
LLM auditresponse for RecipesApi.js:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a plain JavaScript class that acts as a thin wrapper around a `server` object, providing methods to fetch installed recipes, install a recipe, and update recipes. There is no obfuscation, no direct network requests, and no system-level operations. All behavior is delegated to the injected `server` object, which is the application's normal dependency injection pattern. The code is consistent with standard application architecture and does not contain any indicators of supply-chain attack or malicious intent.
</details>
<summary>Normal API client class, no security concerns.</summary>
</security_assessment>

[6/10] Reviewing src/franz/package.json, src/franz/gulpfile.babel.js, src/franz/build-helpers/ensure-mac-dependency.js, src/franz/src/api/server/ServerApi.js...
+ Reviewed src/franz/src/api/RecipesApi.js. Status: SAFE -- Normal API client class, no security concerns.
LLM auditresponse for package.json:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard `package.json` for the Franz messaging application (upstream: https://github.com/meetfranz/franz). It contains no executable code beyond ordinary npm lifecycle scripts (build, start, test, postinstall) that are typical for an Electron/Node.js project. There are no obfuscated strings, no references to `curl`, `wget`, `base64`, or `eval`, and no downloads from untrusted origins. The dependencies are all public npm packages with pinned or caret versions. No evidence of malicious or supply-chain attack behavior exists in this file.
</details>
<summary>
Standard package.json, no malicious content detected.</summary>
</security_assessment>

[7/10] Reviewing src/franz/gulpfile.babel.js, src/franz/build-helpers/ensure-mac-dependency.js, src/franz/src/api/server/ServerApi.js...
+ Reviewed src/franz/package.json. Status: SAFE -- Standard package.json, no malicious content detected.
LLM auditresponse for gulpfile.babel.js:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard gulp-based build configuration file for the Franz Electron application. It defines conventional build tasks: compiling TypeScript, transpiling JavaScript with Babel, compiling SCSS to CSS, copying static assets, minifying JS, code-signing the Electron binary for macOS, and running a dev server with live reload.

All operations are local—the file does not download or fetch any code from external sources, does not use obfuscated or encoded commands, does not attempt to exfiltrate data, and performs no unexpected file modifications outside the build artifact directory (`build/` and `out/`). The `_shell` helper is only invoked for the standard `codesign` task, which is normal for macOS Electron packaging. There are no signs of malicious or injected behavior.
</details>
<summary>Standard build configuration; no malicious behavior found.</summary>
</security_assessment>

[8/10] Reviewing src/franz/build-helpers/ensure-mac-dependency.js, src/franz/src/api/server/ServerApi.js...
+ Reviewed src/franz/gulpfile.babel.js. Status: SAFE -- Standard build configuration; no malicious behavior found.
LLM auditresponse for ServerApi.js:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard API client for the Franz messaging application. It handles authentication, user/settings synchronization, recipe updates, and installation of community-contributed plugin recipes from the application's own backend. All network requests go to the application's legitimate API endpoint (`API_URL`), and all file operations (downloading recipe tarballs, extracting them into the user data directory) serve the app's stated purpose. There is no obfuscation, no execution of arbitrary system commands, no exfiltration of sensitive local data, and no code that deviates from expected application behavior. The use of `require` with dynamically resolved recipe names and the extraction of `tar.gz` archives from the official API are part of the application's normal plugin/recipe system and do not indicate a supply-chain attack within this file.
</details>
<summary>Normal API client for Franz; no malicious code.</summary>
</security_assessment>

[9/10] Reviewing src/franz/build-helpers/ensure-mac-dependency.js...
+ Reviewed src/franz/src/api/server/ServerApi.js. Status: SAFE -- Normal API client for Franz; no malicious code.
LLM auditresponse for ensure-mac-dependency.js:
<security_assessment>
<decision>SAFE</decision>
<details>
This script is part of the upstream Franz application code and handles platform-specific dependencies for macOS. It checks the operating system and conditionally installs or removes the legitimate npm package `node-mac-permissions`, which provides macOS permissions APIs needed by the application. The code is straightforward and unobfuscated, uses standard Node.js modules, and only interacts with the official npm registry. Even though `npm install` fetches external code, this is normal for npm-based applications and is the package's own upstream behavior, not an injected supply-chain attack. On Linux (Arch), the script will take no action because the package is not present. There is no evidence of data exfiltration, backdoors, or execution of code from untrusted sources unrelated to the application.
</details>
<summary>
Standard macOS dependency handling; no supply-chain attack.
</summary>
</security_assessment>

[10/10] Reviewing ...
+ Reviewed src/franz/build-helpers/ensure-mac-dependency.js. Status: SAFE -- Standard macOS dependency handling; no supply-chain attack.
Reviewed all additional files.
Reviewed additional files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 39,759
  Completion Tokens: 7,993
  Total Tokens: 47,752
  Total Cost: $0.005017
  Execution Time: 148.33 seconds
Full audit report can be found in /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-report-franz.txt
Final Status: SAFE


No issues found.
