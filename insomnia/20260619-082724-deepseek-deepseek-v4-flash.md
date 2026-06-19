---
package: insomnia
pkgver: 13.0.1
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: openrouter.ai
base_url: https://openrouter.ai/api/v1
aur_sleuth_rev: 11c93a0c95e2166961e3664fea6b5a63827ded10
prompt_tokens: 40931
completion_tokens: 8199
total_tokens: 49130
cost: 0.00515961
execution_time: 134.85
files_reviewed: 12
files_skipped: 0
date: 2026-06-19T08:27:24Z
file_verdicts:
  - file: insomnia.desktop
    status: safe
    summary: Standard desktop entry file; no security concerns.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD, no malicious content.
  - file: src/insomnia-core-13.0.1/packages/insomnia-analytics/src/index.ts
    status: safe
    summary: Standard barrel export; no malicious code.
  - file: src/insomnia-core-13.0.1/packages/insomnia-api/src/vcs.ts
    status: safe
    summary: Standard GraphQL helper function, no security concerns.
  - file: src/insomnia-core-13.0.1/packages/insomnia-api/src/fetch.ts
    status: safe
    summary: Clean fetch configuration, no security concerns.
  - file: src/insomnia-core-13.0.1/packages/insomnia-analytics/src/analytics.ts
    status: safe
    summary: Standard analytics code using a legitimate SDK; no security issues.
  - file: src/insomnia-core-13.0.1/eslint.config.mjs
    status: safe
    summary: Standard ESLint config; no malicious content found.
  - file: src/insomnia-core-13.0.1/packages/insomnia-analytics/src/events.ts
    status: safe
    summary: Static enum definitions; no executable or malicious content.
  - file: src/insomnia-core-13.0.1/packages/insomnia-api/src/user.ts
    status: safe
    summary: Standard API client code, no malicious behavior found.
  - file: src/insomnia-core-13.0.1/build-secure-wrapper.sh
    status: safe
    summary: Standard build script for Insomnia native wrapper; no security issues.
  - file: src/insomnia-core-13.0.1/package.json
    status: safe
    summary: Standard package.json; no malicious code detected.
  - file: src/insomnia-core-13.0.1/packages/insomnia-api/src/vault.ts
    status: safe
    summary: Standard API client code for the Insomnia vault feature.
---

Cloning https://aur.archlinux.org/insomnia.git to /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-xpixpzsj...
Cloned repository to /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-xpixpzsj
Analyzing insomnia AUR package (working in /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-xpixpzsj) with deepseek/deepseek-v4-flash from https://openrouter.ai/api/v1
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains no top-level code execution or command substitutions beyond variable assignments and a function definition. No `pkgver()` function is present. The source array downloads a tarball from the official GitHub repository and a desktop file, both with valid checksums. The `_ensure_local_nvm` function is defined but not invoked during the sourcing phase. Since `makepkg --nobuild --nodeps --noprepare` only fetches the sources and sources the PKGBUILD (without running `prepare()`, `build()`, or `package()`), there is no risk of malicious code execution at this stage. All potentially concerning operations are confined to the later build stages, which are out of scope for this narrow gate.
</details>
<summary>
No risky top-level execution; safe to fetch and source.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete [grey50]-- No risky top-level execution; safe to fetch and source.[/]
Running makepkg --nobuild --nodeps --noprepare to download sources for agent...
makepkg --nobuild --nodeps --noprepare successful
Running makepkg --printsrcinfo to get source files for agent...
makepkg --printsrcinfo successful
Reviewing required files...
[0/2] Reviewing PKGBUILD...
[0/2] Reviewing PKGBUILD, insomnia.desktop...
LLM auditresponse for insomnia.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard Freedesktop.org `.desktop` entry. It defines the application name, comment, icon, MIME type, and execution command. The `Exec` line runs `/opt/insomnia/insomnia` with URI arguments, which is the expected installed path for the application. No suspicious URLs, obfuscated commands, or unusual operations are present. This is benign and follows normal packaging conventions.
</details>
<summary>Standard desktop entry file; no security concerns.</summary>
</security_assessment>

[1/2] Reviewing PKGBUILD...
+ Reviewed insomnia.desktop. Status: SAFE -- Standard desktop entry file; no security concerns.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a standard Arch User Repository package definition for Insomnia, a legitimate HTTP/GraphQL client. The source is fetched from GitHub (the official repository) using a tag, and its integrity is verified by a BLAKE2b checksum. The build process uses nvm and npm, which are standard tools for building Node.js applications; no unexpected network requests or dangerous commands (e.g., curl, base64, eval) are present. The installation steps only copy files into the package directory and install a desktop file, icon, and license. There is no obfuscated code, no exfiltration, no backdoors, and no deviation from normal AUR packaging practices. The use of nvm&#39;s `source` from the Arch-packaged `/usr/share/nvm/init-nvm.sh` is expected and safe. The package appears to be a well-maintained, legitimate build.
</details>
<summary>Standard AUR PKGBUILD, no malicious content.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD, no malicious content.
Reviewed all required files.
Deciding which files to review next...
Note: 1874 files available for selection; offering the 50 highest-priority to the model. 1542 lower-priority file(s) were not offered.
LLM response for file selection:
src/insomnia-core-13.0.1/build-secure-wrapper.sh
src/insomnia-core-13.0.1/eslint.config.mjs
src/insomnia-core-13.0.1/package.json
src/insomnia-core-13.0.1/packages/insomnia-analytics/src/analytics.ts
src/insomnia-core-13.0.1/packages/insomnia-analytics/src/events.ts
src/insomnia-core-13.0.1/packages/insomnia-analytics/src/index.ts
src/insomnia-core-13.0.1/packages/insomnia-api/src/fetch.ts
src/insomnia-core-13.0.1/packages/insomnia-api/src/user.ts
src/insomnia-core-13.0.1/packages/insomnia-api/src/vault.ts
src/insomnia-core-13.0.1/packages/insomnia-api/src/vcs.ts
Decided to review 10 additional files: src/insomnia-core-13.0.1/build-secure-wrapper.sh, src/insomnia-core-13.0.1/eslint.config.mjs, src/insomnia-core-13.0.1/package.json, src/insomnia-core-13.0.1/packages/insomnia-analytics/src/analytics.ts, src/insomnia-core-13.0.1/packages/insomnia-analytics/src/events.ts, src/insomnia-core-13.0.1/packages/insomnia-analytics/src/index.ts, src/insomnia-core-13.0.1/packages/insomnia-api/src/fetch.ts, src/insomnia-core-13.0.1/packages/insomnia-api/src/user.ts, src/insomnia-core-13.0.1/packages/insomnia-api/src/vault.ts, src/insomnia-core-13.0.1/packages/insomnia-api/src/vcs.ts
Reviewing additional files...
Reviewing additional files...
[0/10] Reviewing src/insomnia-core-13.0.1/eslint.config.mjs...
[0/10] Reviewing src/insomnia-core-13.0.1/eslint.config.mjs, src/insomnia-core-13.0.1/build-secure-wrapper.sh...
[0/10] Reviewing src/insomnia-core-13.0.1/eslint.config.mjs, src/insomnia-core-13.0.1/build-secure-wrapper.sh, src/insomnia-core-13.0.1/package.json...
[0/10] Reviewing src/insomnia-core-13.0.1/eslint.config.mjs, src/insomnia-core-13.0.1/build-secure-wrapper.sh, src/insomnia-core-13.0.1/package.json, src/insomnia-core-13.0.1/packages/insomnia-analytics/src/analytics.ts...
[0/10] Reviewing src/insomnia-core-13.0.1/eslint.config.mjs, src/insomnia-core-13.0.1/build-secure-wrapper.sh, src/insomnia-core-13.0.1/package.json, src/insomnia-core-13.0.1/packages/insomnia-analytics/src/analytics.ts, src/insomnia-core-13.0.1/packages/insomnia-analytics/src/events.ts...
[0/10] Reviewing src/insomnia-core-13.0.1/eslint.config.mjs, src/insomnia-core-13.0.1/build-secure-wrapper.sh, src/insomnia-core-13.0.1/package.json, src/insomnia-core-13.0.1/packages/insomnia-analytics/src/analytics.ts, src/insomnia-core-13.0.1/packages/insomnia-analytics/src/events.ts, src/insomnia-core-13.0.1/packages/insomnia-analytics/src/index.ts...
[0/10] Reviewing src/insomnia-core-13.0.1/eslint.config.mjs, src/insomnia-core-13.0.1/build-secure-wrapper.sh, src/insomnia-core-13.0.1/package.json, src/insomnia-core-13.0.1/packages/insomnia-analytics/src/analytics.ts, src/insomnia-core-13.0.1/packages/insomnia-analytics/src/events.ts, src/insomnia-core-13.0.1/packages/insomnia-analytics/src/index.ts, src/insomnia-core-13.0.1/packages/insomnia-api/src/fetch.ts...
[0/10] Reviewing src/insomnia-core-13.0.1/eslint.config.mjs, src/insomnia-core-13.0.1/build-secure-wrapper.sh, src/insomnia-core-13.0.1/package.json, src/insomnia-core-13.0.1/packages/insomnia-analytics/src/analytics.ts, src/insomnia-core-13.0.1/packages/insomnia-analytics/src/events.ts, src/insomnia-core-13.0.1/packages/insomnia-analytics/src/index.ts, src/insomnia-core-13.0.1/packages/insomnia-api/src/fetch.ts, src/insomnia-core-13.0.1/packages/insomnia-api/src/vault.ts...
[0/10] Reviewing src/insomnia-core-13.0.1/eslint.config.mjs, src/insomnia-core-13.0.1/build-secure-wrapper.sh, src/insomnia-core-13.0.1/package.json, src/insomnia-core-13.0.1/packages/insomnia-analytics/src/analytics.ts, src/insomnia-core-13.0.1/packages/insomnia-analytics/src/events.ts, src/insomnia-core-13.0.1/packages/insomnia-analytics/src/index.ts, src/insomnia-core-13.0.1/packages/insomnia-api/src/fetch.ts, src/insomnia-core-13.0.1/packages/insomnia-api/src/vault.ts, src/insomnia-core-13.0.1/packages/insomnia-api/src/user.ts...
[0/10] Reviewing src/insomnia-core-13.0.1/eslint.config.mjs, src/insomnia-core-13.0.1/build-secure-wrapper.sh, src/insomnia-core-13.0.1/package.json, src/insomnia-core-13.0.1/packages/insomnia-analytics/src/analytics.ts, src/insomnia-core-13.0.1/packages/insomnia-analytics/src/events.ts, src/insomnia-core-13.0.1/packages/insomnia-analytics/src/index.ts, src/insomnia-core-13.0.1/packages/insomnia-api/src/fetch.ts, src/insomnia-core-13.0.1/packages/insomnia-api/src/vault.ts, src/insomnia-core-13.0.1/packages/insomnia-api/src/user.ts, src/insomnia-core-13.0.1/packages/insomnia-api/src/vcs.ts...
LLM auditresponse for index.ts:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard TypeScript barrel export file. It re-exports modules from `./events` and `./analytics`. There is no embedded code that performs any operations, network requests, file modifications, or obfuscated commands. The content is purely declarative and consistent with normal packaging practices for TypeScript modules.
</details>
<summary>Standard barrel export; no malicious code.</summary>
</security_assessment>

[1/10] Reviewing src/insomnia-core-13.0.1/eslint.config.mjs, src/insomnia-core-13.0.1/build-secure-wrapper.sh, src/insomnia-core-13.0.1/package.json, src/insomnia-core-13.0.1/packages/insomnia-analytics/src/analytics.ts, src/insomnia-core-13.0.1/packages/insomnia-analytics/src/events.ts, src/insomnia-core-13.0.1/packages/insomnia-api/src/fetch.ts, src/insomnia-core-13.0.1/packages/insomnia-api/src/vault.ts, src/insomnia-core-13.0.1/packages/insomnia-api/src/user.ts, src/insomnia-core-13.0.1/packages/insomnia-api/src/vcs.ts...
+ Reviewed src/insomnia-core-13.0.1/packages/insomnia-analytics/src/index.ts. Status: SAFE -- Standard barrel export; no malicious code.
LLM auditresponse for vcs.ts:
<security_assessment>
<decision>SAFE</decision>
<details>
This file defines a helper function `runVcsGraphQL` that makes a POST request to a GraphQL endpoint. It uses a custom `fetch` module imported from `./fetch`. The path is constructed as `/graphql?` + name, which is a standard pattern for GraphQL queries. There is no obfuscation, no dangerous commands (eval, base64, curl, wget), no network requests to unexpected hosts, and no file system modifications. The function simply sends a query and variables to a GraphQL API, which is expected behavior for a VCS integration in the Insomnia application. No security issues detected.
</details>
<summary>Standard GraphQL helper function, no security concerns.</summary>
</security_assessment>

[2/10] Reviewing src/insomnia-core-13.0.1/eslint.config.mjs, src/insomnia-core-13.0.1/build-secure-wrapper.sh, src/insomnia-core-13.0.1/package.json, src/insomnia-core-13.0.1/packages/insomnia-analytics/src/analytics.ts, src/insomnia-core-13.0.1/packages/insomnia-analytics/src/events.ts, src/insomnia-core-13.0.1/packages/insomnia-api/src/fetch.ts, src/insomnia-core-13.0.1/packages/insomnia-api/src/vault.ts, src/insomnia-core-13.0.1/packages/insomnia-api/src/user.ts...
+ Reviewed src/insomnia-core-13.0.1/packages/insomnia-api/src/vcs.ts. Status: SAFE -- Standard GraphQL helper function, no security concerns.
LLM auditresponse for fetch.ts:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `fetch.ts` is a straightforward TypeScript module that defines a configurable fetch wrapper for the Insomnia API client. It exports types (`FetchConfig`, `Fetch`), a default `fetch` function that throws an error until configured, a `configureFetch` function that sets the implementation once, and a `ResponseFailError` class for API error handling. There is no obfuscated code, no network requests, no file operations, no execution of external commands, and no attempt to exfiltrate data or download/execute code. This is standard application plumbing for a REST client and contains no malicious behavior.
</details>
<summary>Clean fetch configuration, no security concerns.</summary>
</security_assessment>

[3/10] Reviewing src/insomnia-core-13.0.1/eslint.config.mjs, src/insomnia-core-13.0.1/build-secure-wrapper.sh, src/insomnia-core-13.0.1/package.json, src/insomnia-core-13.0.1/packages/insomnia-analytics/src/analytics.ts, src/insomnia-core-13.0.1/packages/insomnia-analytics/src/events.ts, src/insomnia-core-13.0.1/packages/insomnia-api/src/vault.ts, src/insomnia-core-13.0.1/packages/insomnia-api/src/user.ts...
+ Reviewed src/insomnia-core-13.0.1/packages/insomnia-api/src/fetch.ts. Status: SAFE -- Clean fetch configuration, no security concerns.
LLM auditresponse for analytics.ts:
<security_assessment>
<decision>SAFE</decision>
<details>
This file defines an analytics wrapper using the legitimate `@segment/analytics-node` library. It sends page/track events to Segment with context about the application and operating system. There is no obfuscation, no suspicious network destinations (Segment is the library's expected endpoint), no file operations, no system modifications, and no execution of untrusted code. The telemetry collection is an upstream application feature, not an injected supply-chain attack. The AUR package delivers the upstream source as-is, with no malicious modifications.
</details>
<summary>Standard analytics code using a legitimate SDK; no security issues.</summary>
</security_assessment>

[4/10] Reviewing src/insomnia-core-13.0.1/eslint.config.mjs, src/insomnia-core-13.0.1/build-secure-wrapper.sh, src/insomnia-core-13.0.1/package.json, src/insomnia-core-13.0.1/packages/insomnia-analytics/src/events.ts, src/insomnia-core-13.0.1/packages/insomnia-api/src/vault.ts, src/insomnia-core-13.0.1/packages/insomnia-api/src/user.ts...
+ Reviewed src/insomnia-core-13.0.1/packages/insomnia-analytics/src/analytics.ts. Status: SAFE -- Standard analytics code using a legitimate SDK; no security issues.
LLM auditresponse for eslint.config.mjs:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard ESLint configuration file (`eslint.config.mjs`) for a TypeScript/React project. It imports well-known ESLint plugins (`@eslint/js`, `typescript-eslint`, `eslint-plugin-react`, `eslint-plugin-react-hooks`, `eslint-plugin-playwright`, `eslint-plugin-simple-import-sort`, `eslint-plugin-unicorn`, `eslint-config-prettier`) and defines linting rules. The file contains no obfuscated code, no network requests, no file system operations outside the project scope, and no execution of external binaries. All code is declarative rule definitions. There is no evidence of an supply-chain attack or malicious behavior. The configuration is consistent with ordinary packaging of a developer tool configuration file.
</details>
<summary>Standard ESLint config; no malicious content found.</summary>
</security_assessment>

[5/10] Reviewing src/insomnia-core-13.0.1/build-secure-wrapper.sh, src/insomnia-core-13.0.1/package.json, src/insomnia-core-13.0.1/packages/insomnia-analytics/src/events.ts, src/insomnia-core-13.0.1/packages/insomnia-api/src/vault.ts, src/insomnia-core-13.0.1/packages/insomnia-api/src/user.ts...
+ Reviewed src/insomnia-core-13.0.1/eslint.config.mjs. Status: SAFE -- Standard ESLint config; no malicious content found.
LLM auditresponse for events.ts:
<security_assessment>
<decision>SAFE</decision>
<details>
The file contains only TypeScript enum definitions for analytics events and internal Inso events. There are no executable statements, no network requests, no file operations, no obfuscated code, and no behavior outside standard packaging practices. This is purely a type/constant definition file for the Insomnia application.
</details>
<summary>Static enum definitions; no executable or malicious content.</summary>
</security_assessment>

[6/10] Reviewing src/insomnia-core-13.0.1/build-secure-wrapper.sh, src/insomnia-core-13.0.1/package.json, src/insomnia-core-13.0.1/packages/insomnia-api/src/vault.ts, src/insomnia-core-13.0.1/packages/insomnia-api/src/user.ts...
+ Reviewed src/insomnia-core-13.0.1/packages/insomnia-analytics/src/events.ts. Status: SAFE -- Static enum definitions; no executable or malicious content.
LLM auditresponse for user.ts:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard TypeScript module that defines API client functions for the Insomnia application. It imports a custom `fetch` helper and uses it to make HTTP requests to Insomnia&#39;s backend endpoints (e.g., `/auth/logout`, `/v3/users/me`, `/v1/billing/current-plan`, `/v1/user/files`) and to a Google Cloud Storage URL for an in-app learning feature. There is no obfuscated code, no execution of downloaded scripts, no file system modifications, no data exfiltration, and no network requests to unexpected or unrelated hosts. All endpoints are consistent with the application&#39;s stated functionality. The code is clean and follows normal packaging practices for an API client.
</details>
<summary>Standard API client code, no malicious behavior found.</summary>
</security_assessment>

[7/10] Reviewing src/insomnia-core-13.0.1/build-secure-wrapper.sh, src/insomnia-core-13.0.1/package.json, src/insomnia-core-13.0.1/packages/insomnia-api/src/vault.ts...
+ Reviewed src/insomnia-core-13.0.1/packages/insomnia-api/src/user.ts. Status: SAFE -- Standard API client code, no malicious behavior found.
LLM auditresponse for build-secure-wrapper.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This script is a build helper for the Insomnia Electron application on Windows. It performs standard packaging operations: extracting version info, copying the main executable to a `.dll` (a common pattern for native launchers), injecting version strings into C++ source and resource files, compiling a native wrapper with `g++`, and optionally running `npm` packaging commands. All operations are confined to the package's own source and build directories. There are no network requests to external hosts, no obfuscated code, no exfiltration of data, and no modification of system files outside the build tree. The script uses only standard build tools (`jq`, `sed`, `windres`, `g++`, `npm`) and follows expected patterns for Electron application packaging. No evidence of malicious or supply-chain attack behavior is present.
</details>
<summary>Standard build script for Insomnia native wrapper; no security issues.</summary>
</security_assessment>

[8/10] Reviewing src/insomnia-core-13.0.1/package.json, src/insomnia-core-13.0.1/packages/insomnia-api/src/vault.ts...
+ Reviewed src/insomnia-core-13.0.1/build-secure-wrapper.sh. Status: SAFE -- Standard build script for Insomnia native wrapper; no security issues.
LLM auditresponse for package.json:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard npm `package.json` for the Insomnia REST client (Kong). It defines workspaces, scripts, and dependencies common in a large monorepo. The `postinstall` script runs `patch-package` and a workspace-specific script; none of these download or execute arbitrary code from untrusted sources. There is no obfuscation, base64 encoding, or suspicious network requests. All commands and dependencies are consistent with legitimate packaging practices. No evidence of supply-chain attack or malicious behavior.
</details>
<summary>Standard package.json; no malicious code detected.</summary>
</security_assessment>

[9/10] Reviewing src/insomnia-core-13.0.1/packages/insomnia-api/src/vault.ts...
+ Reviewed src/insomnia-core-13.0.1/package.json. Status: SAFE -- Standard package.json; no malicious code detected.
LLM auditresponse for vault.ts:
<security_assessment>
<decision>SAFE</decision>
<details>
This file contains standard TypeScript functions for interacting with the Insomnia application's vault API. It defines helpers for GET and POST endpoints that handle vault creation, reset, and SRP-based verification (using fields like `salt`, `verifier`, `srpA`, `srpM1`, `srpM2`). All network requests are made via a local `fetch` module and target paths under `/v1/user/vault`, which is consistent with the application's own backend. There is no obfuscation, no unusual encoding, no execution of external code, no exfiltration of sensitive data, and no deviation from expected upstream application behavior. This is purely client-side API glue code for the Insomnia application's authenticated vault feature.
</details>
<summary>Standard API client code for the Insomnia vault feature.</summary>
</security_assessment>

[10/10] Reviewing ...
+ Reviewed src/insomnia-core-13.0.1/packages/insomnia-api/src/vault.ts. Status: SAFE -- Standard API client code for the Insomnia vault feature.
Reviewed all additional files.
Reviewed additional files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 40,931
  Completion Tokens: 8,199
  Total Tokens: 49,130
  Total Cost: $0.005160
  Execution Time: 134.85 seconds
Full audit report can be found in /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-report-insomnia.txt
Final Status: SAFE


No issues found.
