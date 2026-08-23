---
package: cherry-studio
pkgver: 2.0.8
pkgrel: 2
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: ab8f04a045309f11c3e319d8a061c88f7bc8df51
prompt_tokens: 65626
completion_tokens: 9178
total_tokens: 74804
cost: 0.00480880932
execution_time: 429.29
files_reviewed: 11
files_skipped: 1
files_unauditable: 9
unpinned_sources: 0
date: 2026-08-22T22:40:35Z
file_verdicts:
  - file: cherry-studio-4663dd757.patch
    status: skipped
    summary: "Skipping binary file: cherry-studio-4663dd757.patch"
  - file: PKGBUILD
    status: safe
    summary: Standard Electron AUR package with pinned checksums; no malicious behavior found.
  - file: src/cherry-studio-2.0.8/electron.vite.config.ts
    status: safe
    summary: Standard build config, no malicious code found.
  - file: src/cherry-studio-2.0.8/packages/ai-sdk-provider/tsdown.config.ts
    status: safe
    summary: Standard configuration file, no security issues.
  - file: src/cherry-studio-2.0.8/package.json
    status: safe
    summary: Standard package.json for Electron AI app, no malicious indicators.
  - file: src/cherry-studio-2.0.8/packages/ai-sdk-provider/src/openai-compatible-reranking-model.ts
    status: safe
    summary: Standard AI SDK client, no security issues found.
  - file: src/cherry-studio-2.0.8/packages/ai-sdk-provider/src/cherryin-provider.ts
    status: safe
    summary: Upstream provider code, no malicious behavior.
  - file: src/cherry-studio-2.0.8/packages/aiCore/src/core/providers/__tests__/coreExtensionsFetch.test.ts
    status: safe
    summary: Standard test file, no malicious code found.
  - file: src/cherry-studio-2.0.8/packages/aiCore/src/core/plugins/manager.ts
    status: safe
    summary: Standard plugin manager code, no security concerns.
  - file: src/cherry-studio-2.0.8/packages/aiCore/src/core/providers/__tests__/ExtensionRegistry.test.ts
    status: safe
    summary: Standard test file, no security concerns.
  - file: cherry-studio.sh
    status: safe
    summary: Standard Electron launcher script, no security issues.
  - file: src/cherry-studio-2.0.8/packages/ai-sdk-provider/src/index.ts
    status: safe
    summary: Standard re-export module, no security concerns.
---

Cloning https://aur.archlinux.org/cherry-studio.git...
Cloned cherry-studio
Analyzing cherry-studio AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only static variable assignments and array definitions in its global scope. No functions or commands are executed at top-level that could run dangerous operations during `makepkg --nobuild --nodeps --noprepare` or `makepkg --printsrcinfo`. The `source` array uses standard HTTPS URLs from GitHub with valid SHA256 checksums, and fetching these archives is the intended purpose of the commands. All potentially risky operations (patch application, sed, gendesk, pnpm install, build steps) are confined to `prepare()`, `build()`, and `package()` functions, which are not executed during this narrow gate. No obfuscated code, network exfiltration, or unexpected command execution is present in the global scope or `pkgver()` (which is a static variable here). The file is safe to proceed with the specified commands.
</details>
<summary>Standard PKGBUILD with no dangerous global scope code.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Standard PKGBUILD with no dangerous global scope code.
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Running makepkg --printsrcinfo to get source files for agent...
makepkg --printsrcinfo successful
Reviewing required files...
[0/2] Reviewing PKGBUILD...
[0/2] Reviewing PKGBUILD, cherry-studio-4663dd757.patch...
[1/2] Reviewing PKGBUILD...
! Reviewed cherry-studio-4663dd757.patch. Status: SKIPPED -- Skipping binary file: cherry-studio-4663dd757.patch
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard packaging practices for an Electron application. All three sources (the upstream tarball from CherryHQ/cherry-studio, a launcher script, and a patch from the maintainer's own fork) have pinned SHA256 checksums, so downloads are verified. The build process uses pnpm and electron-builder, with environment variables to avoid downloading Electron binaries and to isolate temporary directories. The package installs the built app, icons, desktop entry, and license into the appropriate system directories.

There is no evidence of malicious behavior: no obfuscated commands, no unexpected network calls beyond the declared sources, no execution of remote code, and no modification of files outside its own package scope. The patch from the maintainer's fork is a standard Arch-specific build fix and is applied with `patch -Np1` after checksum validation. The `_clean()` function only removes platform-specific binaries from the unpacked node_modules, which is a routine size optimization. No supply-chain red flags were found.
</details>
<summary>Standard Electron AUR package with pinned checksums; no malicious behavior found.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard Electron AUR package with pinned checksums; no malicious behavior found.
Reviewed all required files.
Deciding which files to review next...
Note: 9 compiled/archived file(s) cannot be audited as text and were not reviewed (cherry-studio-2.0.8.tar.gz, src/cherry-studio-2.0.8/AGENTS.md, src/cherry-studio-2.0.8/build/icon.icns and 6 more). For a package that ships prebuilt binaries, the audit covers the packaging, not the payload.
Note: 7885 files available for selection; offering the 50 highest-priority to the model. 5530 lower-priority file(s) were not offered.
LLM response for file selection:
cherry-studio.sh
src/cherry-studio-2.0.8/package.json
src/cherry-studio-2.0.8/electron.vite.config.ts
src/cherry-studio-2.0.8/packages/ai-sdk-provider/tsdown.config.ts
src/cherry-studio-2.0.8/packages/ai-sdk-provider/src/cherryin-provider.ts
src/cherry-studio-2.0.8/packages/ai-sdk-provider/src/openai-compatible-reranking-model.ts
src/cherry-studio-2.0.8/packages/aiCore/src/core/providers/__tests__/coreExtensionsFetch.test.ts
src/cherry-studio-2.0.8/packages/aiCore/src/core/plugins/manager.ts
src/cherry-studio-2.0.8/packages/aiCore/src/core/providers/__tests__/ExtensionRegistry.test.ts
src/cherry-studio-2.0.8/packages/ai-sdk-provider/src/index.ts
Decided to review 10 additional files: cherry-studio.sh, src/cherry-studio-2.0.8/package.json, src/cherry-studio-2.0.8/electron.vite.config.ts, src/cherry-studio-2.0.8/packages/ai-sdk-provider/tsdown.config.ts, src/cherry-studio-2.0.8/packages/ai-sdk-provider/src/cherryin-provider.ts, src/cherry-studio-2.0.8/packages/ai-sdk-provider/src/openai-compatible-reranking-model.ts, src/cherry-studio-2.0.8/packages/aiCore/src/core/providers/__tests__/coreExtensionsFetch.test.ts, src/cherry-studio-2.0.8/packages/aiCore/src/core/plugins/manager.ts, src/cherry-studio-2.0.8/packages/aiCore/src/core/providers/__tests__/ExtensionRegistry.test.ts, src/cherry-studio-2.0.8/packages/ai-sdk-provider/src/index.ts
Reviewing additional files...
Reviewing additional files...
[0/10] Reviewing cherry-studio.sh...
[0/10] Reviewing cherry-studio.sh, src/cherry-studio-2.0.8/package.json...
[0/10] Reviewing cherry-studio.sh, src/cherry-studio-2.0.8/package.json, src/cherry-studio-2.0.8/electron.vite.config.ts...
LLM auditresponse for electron.vite.config.ts:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard Vite configuration file for an Electron application (cherry-studio). It defines build settings for the main, preload, and renderer processes, including plugin registrations, alias resolution, dependency externalization, and chunking strategies. The file reads local project files (`package.json`, `electron-builder.yml`, `release-history.json`) to validate release notes and embed them as build-time constants – these are normal packaging operations. All imported plugins are well-known build tools (React, TanStack Router, Tailwind CSS, etc.) and are used appropriately. The `CodeInspectorPlugin` is only enabled in development mode, which is standard practice. There is no obfuscation, no network requests to unexpected hosts, no execution of downloaded code, and no exfiltration of sensitive data. The configuration is transparent and consistent with the project's stated purpose.
</details>
<summary>Standard build config, no malicious code found.</summary>
</security_assessment>

[0/10] Reviewing cherry-studio.sh, src/cherry-studio-2.0.8/package.json, src/cherry-studio-2.0.8/electron.vite.config.ts, src/cherry-studio-2.0.8/packages/ai-sdk-provider/tsdown.config.ts...
[1/10] Reviewing cherry-studio.sh, src/cherry-studio-2.0.8/package.json, src/cherry-studio-2.0.8/packages/ai-sdk-provider/tsdown.config.ts...
+ Reviewed src/cherry-studio-2.0.8/electron.vite.config.ts. Status: SAFE -- Standard build config, no malicious code found.
LLM auditresponse for tsdown.config.ts:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard configuration file for the `tsdown` build tool. It only defines build options such as entry point, output directory, module formats, cleaning behavior, type declaration generation, and TypeScript configuration path. No executable code, network requests, obfuscation, or other suspicious behavior is present. The file is benign and follows normal packaging practices.
</details>
<summary>Standard configuration file, no security issues.</summary>
</security_assessment>

[1/10] Reviewing cherry-studio.sh, src/cherry-studio-2.0.8/package.json, src/cherry-studio-2.0.8/packages/ai-sdk-provider/tsdown.config.ts, src/cherry-studio-2.0.8/packages/ai-sdk-provider/src/cherryin-provider.ts...
[2/10] Reviewing cherry-studio.sh, src/cherry-studio-2.0.8/package.json, src/cherry-studio-2.0.8/packages/ai-sdk-provider/src/cherryin-provider.ts...
+ Reviewed src/cherry-studio-2.0.8/packages/ai-sdk-provider/tsdown.config.ts. Status: SAFE -- Standard configuration file, no security issues.
LLM auditresponse for package.json:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `package.json` file for the CherryStudio Electron application, an AI assistant. The file contains normal dependency declarations, build scripts, and configuration for a modern Node.js/Electron project. The `download:binaries` script references a project-local script (`scripts/download-binaries.js`) which is a standard pattern for Electron apps that need native platform binaries. The `prepare` script installs the `@j178/prek` pre-commit hook tool, which is a legitimate npm package. All dependencies are sourced from the npm registry, and the project homepage points to the official GitHub repository at `github.com/CherryHQ/cherry-studio`. No obfuscated code, suspicious network requests, or data exfiltration patterns are present. The file is consistent with ordinary packaging practices for an Electron AI application.
</details>
<summary>Standard package.json for Electron AI app, no malicious indicators.</summary>
</security_assessment>

[2/10] Reviewing cherry-studio.sh, src/cherry-studio-2.0.8/package.json, src/cherry-studio-2.0.8/packages/ai-sdk-provider/src/cherryin-provider.ts, src/cherry-studio-2.0.8/packages/ai-sdk-provider/src/openai-compatible-reranking-model.ts...
[3/10] Reviewing cherry-studio.sh, src/cherry-studio-2.0.8/packages/ai-sdk-provider/src/cherryin-provider.ts, src/cherry-studio-2.0.8/packages/ai-sdk-provider/src/openai-compatible-reranking-model.ts...
+ Reviewed src/cherry-studio-2.0.8/package.json. Status: SAFE -- Standard package.json for Electron AI app, no malicious indicators.
LLM auditresponse for openai-compatible-reranking-model.ts:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard TypeScript module for an OpenAI-compatible reranking model. It imports from well-known AI SDK packages and implements a client that sends POST requests to a user-configured baseURL for reranking operations. There is no obfuscation, no suspicious network requests beyond the intended API, no file system access, and no attempts to exfiltrate data or execute arbitrary code. The code is consistent with normal packaging and library usage.
</details>
<summary>
Standard AI SDK client, no security issues found.
</summary>
</security_assessment>

[3/10] Reviewing cherry-studio.sh, src/cherry-studio-2.0.8/packages/ai-sdk-provider/src/cherryin-provider.ts, src/cherry-studio-2.0.8/packages/ai-sdk-provider/src/openai-compatible-reranking-model.ts, src/cherry-studio-2.0.8/packages/aiCore/src/core/providers/__tests__/coreExtensionsFetch.test.ts...
[4/10] Reviewing cherry-studio.sh, src/cherry-studio-2.0.8/packages/ai-sdk-provider/src/cherryin-provider.ts, src/cherry-studio-2.0.8/packages/aiCore/src/core/providers/__tests__/coreExtensionsFetch.test.ts...
+ Reviewed src/cherry-studio-2.0.8/packages/ai-sdk-provider/src/openai-compatible-reranking-model.ts. Status: SAFE -- Standard AI SDK client, no security issues found.
LLM auditresponse for cherryin-provider.ts:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is an upstream TypeScript source file for the CherryIN AI provider, part of the Cherry Studio application. It implements a provider connecting to the CherryIN API service at `https://open.cherryin.net/v1`. The code contains no obfuscated commands, no unexpected network requests to unrelated hosts, no data exfiltration, no system command execution, and no backdoors. All API calls and data handling are standard for an AI model provider. The use of `fetch`, environment variable for API key, and header construction are normal practices. There is no evidence of injected malicious code; the file serves the application's stated functionality.
</details>
<summary>Upstream provider code, no malicious behavior.</summary>
</security_assessment>

[4/10] Reviewing cherry-studio.sh, src/cherry-studio-2.0.8/packages/ai-sdk-provider/src/cherryin-provider.ts, src/cherry-studio-2.0.8/packages/aiCore/src/core/providers/__tests__/coreExtensionsFetch.test.ts, src/cherry-studio-2.0.8/packages/aiCore/src/core/plugins/manager.ts...
[5/10] Reviewing cherry-studio.sh, src/cherry-studio-2.0.8/packages/aiCore/src/core/providers/__tests__/coreExtensionsFetch.test.ts, src/cherry-studio-2.0.8/packages/aiCore/src/core/plugins/manager.ts...
+ Reviewed src/cherry-studio-2.0.8/packages/ai-sdk-provider/src/cherryin-provider.ts. Status: SAFE -- Upstream provider code, no malicious behavior.
LLM auditresponse for coreExtensionsFetch.test.ts:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a unit test file for the Cherry Studio application. It uses vitest to verify that the `azure-anthropic` provider variant correctly forwards an injected `fetch` function to the underlying SDK. The code contains no network requests, system modifications, obfuscated commands, or any other indicators of malicious behavior. It is standard packaging/testing code and does not deviate from expected practices.
</details>
<summary>Standard test file, no malicious code found.</summary>
</security_assessment>

[5/10] Reviewing cherry-studio.sh, src/cherry-studio-2.0.8/packages/aiCore/src/core/providers/__tests__/coreExtensionsFetch.test.ts, src/cherry-studio-2.0.8/packages/aiCore/src/core/plugins/manager.ts, src/cherry-studio-2.0.8/packages/aiCore/src/core/providers/__tests__/ExtensionRegistry.test.ts...
[6/10] Reviewing cherry-studio.sh, src/cherry-studio-2.0.8/packages/aiCore/src/core/plugins/manager.ts, src/cherry-studio-2.0.8/packages/aiCore/src/core/providers/__tests__/ExtensionRegistry.test.ts...
+ Reviewed src/cherry-studio-2.0.8/packages/aiCore/src/core/providers/__tests__/coreExtensionsFetch.test.ts. Status: SAFE -- Standard test file, no malicious code found.
LLM auditresponse for manager.ts:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a TypeScript plugin manager class for an AI application. It defines a standard plugin lifecycle with hooks like `resolveModel`, `loadTemplate`, `transformParams`, `transformResult`, `configureContext`, `onRequestStart`, `onRequestEnd`, `onError`, and `transformStream`. The code is straightforward—it sorts plugins by enforce order (pre, normal, post), executes hooks sequentially or in parallel, and collects stream transforms. No suspicious operations (network requests, file system access, obfuscation, eval, or external downloads) are present. The file is purely utility logic for managing plugins and poses no security risk.
</details>
<summary>Standard plugin manager code, no security concerns.</summary>
</security_assessment>

[6/10] Reviewing cherry-studio.sh, src/cherry-studio-2.0.8/packages/aiCore/src/core/plugins/manager.ts, src/cherry-studio-2.0.8/packages/aiCore/src/core/providers/__tests__/ExtensionRegistry.test.ts, src/cherry-studio-2.0.8/packages/ai-sdk-provider/src/index.ts...
[7/10] Reviewing cherry-studio.sh, src/cherry-studio-2.0.8/packages/aiCore/src/core/providers/__tests__/ExtensionRegistry.test.ts, src/cherry-studio-2.0.8/packages/ai-sdk-provider/src/index.ts...
+ Reviewed src/cherry-studio-2.0.8/packages/aiCore/src/core/plugins/manager.ts. Status: SAFE -- Standard plugin manager code, no security concerns.
LLM auditresponse for ExtensionRegistry.test.ts:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a TypeScript unit test suite for the `ExtensionRegistry` class. It contains only standard test definitions (imports, mock setups, `describe`/`it` blocks, assertions) using the Vitest framework. There are no network requests, no file system operations, no obfuscated code, no execution of external commands, and no data exfiltration. The code is entirely ordinary testing logic that validates registration, caching, variant resolution, and provider creation. No malicious or suspicious behavior is present.
</details>
<summary>Standard test file, no security concerns.</summary>
</security_assessment>

[8/10] Reviewing cherry-studio.sh, src/cherry-studio-2.0.8/packages/ai-sdk-provider/src/index.ts...
+ Reviewed src/cherry-studio-2.0.8/packages/aiCore/src/core/providers/__tests__/ExtensionRegistry.test.ts. Status: SAFE -- Standard test file, no security concerns.
LLM auditresponse for cherry-studio.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard Electron application launcher script for the Arch Linux AUR package `cherry-studio`. It sets a default for `XDG_CONFIG_HOME`, reads optional command-line flags from a user configuration file (stripping comments), and then launches the Electron runtime with the application's ASAR archive. No network requests, obfuscated code, dangerous commands, or system modifications are present. The use of `__ELECTRON__` as a placeholder is normal and is replaced by the PKGBUILD at build time. The file performs exactly the expected packaging task and contains no supply-chain attack indicators.
</details>
<summary>Standard Electron launcher script, no security issues.</summary>
</security_assessment>

[9/10] Reviewing src/cherry-studio-2.0.8/packages/ai-sdk-provider/src/index.ts...
+ Reviewed cherry-studio.sh. Status: SAFE -- Standard Electron launcher script, no security issues.
LLM auditresponse for index.ts:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard TypeScript module index file that re-exports from two local modules (`./cherryin-provider` and `./openai-compatible-reranking-model`). It contains no executable code, no network requests, no file system operations, and no obfuscation. This is a normal packaging pattern for organizing exports.
</details>
<summary>Standard re-export module, no security concerns.</summary>
</security_assessment>

[10/10] Reviewing ...
+ Reviewed src/cherry-studio-2.0.8/packages/ai-sdk-provider/src/index.ts. Status: SAFE -- Standard re-export module, no security concerns.
Reviewed all additional files.
Reviewed additional files.
Audit complete! Result: No issues found
(Skipped 1 file: cherry-studio-4663dd757.patch)

API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 65,626
  Completion Tokens: 9,178
  Total Tokens: 74,804
  Total Cost: $0.004809
  Execution Time: 429.29 seconds

Final Status: SAFE


No issues found.


Audit Skips:

/data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-tdemtfin/cherry-studio-4663dd757.patch: [SKIPPED] Skipping binary file: cherry-studio-4663dd757.patch
