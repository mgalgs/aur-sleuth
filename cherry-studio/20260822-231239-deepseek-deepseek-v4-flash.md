---
package: cherry-studio
pkgver: 2.0.8
pkgrel: 2
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: ab8f04a045309f11c3e319d8a061c88f7bc8df51
prompt_tokens: 67014
completion_tokens: 7971
total_tokens: 74985
cost: 0.00475006056
execution_time: 190.1
files_reviewed: 10
files_skipped: 1
files_unauditable: 9
unpinned_sources: 0
date: 2026-08-22T23:12:38Z
file_verdicts:
  - file: cherry-studio-4663dd757.patch
    status: skipped
    summary: "Skipping binary file: cherry-studio-4663dd757.patch"
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD for building Cherry Studio from source.
  - file: src/cherry-studio-2.0.8/electron.vite.config.ts
    status: safe
    summary: Standard Vite config for Electron app; no security concerns.
  - file: cherry-studio.sh
    status: safe
    summary: Standard Electron app launcher with no security issues.
  - file: src/cherry-studio-2.0.8/i18next.config.ts
    status: safe
    summary: Standard i18n configuration file, no malicious content.
  - file: src/cherry-studio-2.0.8/package.json
    status: safe
    summary: Standard package.json for an Electron AI app.
  - file: src/cherry-studio-2.0.8/migrations/sqlite-drizzle.config.ts
    status: safe
    summary: Standard database migration configuration, no security concerns.
  - file: src/cherry-studio-2.0.8/packages/ai-sdk-provider/src/cherryin-provider.ts
    status: safe
    summary: Standard AI provider wrapper; no malicious behavior found.
  - file: src/cherry-studio-2.0.8/packages/aiCore/src/core/plugins/built-in/providerToolPlugin.ts
    status: safe
    summary: No security issues found; standard plugin logic.
  - file: src/cherry-studio-2.0.8/packages/aiCore/src/core/context/adapter.ts
    status: safe
    summary: Standard data transformation code, no security concerns.
  - file: src/cherry-studio-2.0.8/eslint.config.mjs
    status: safe
    summary: ESLint config with filesystem introspection; no malicious behavior.
---

Cloning https://aur.archlinux.org/cherry-studio.git...
Cloned cherry-studio
Analyzing cherry-studio AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only standard variable assignments, a typical `source` array fetching from the project's own GitHub repository and a maintainer's fork (specific commit patch), and no executable code in the global scope or `pkgver()` function. The `prepare()`, `build()`, and `package()` functions are not executed during `makepkg --nobuild --nodeps --noprepare` or `makepkg --printsrcinfo`. There are no top-level command substitutions, `eval`, `curl|bash`, or other potentially dangerous operations that would run during sourcing or source fetching. The sources are HTTPS downloads from GitHub, which is standard and expected. No malicious behavior is evident.
</details>
<summary>No malicious code in global scope or source fetching.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No malicious code in global scope or source fetching.
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
This PKGBUILD follows standard Arch Linux packaging practices. All sources are fetched from the project's official GitHub repository (tarball and patch), with valid checksums provided. Build steps use `pnpm install` and `pnpm run build` within the project directory, which is normal for a Node.js/Electron application. The `package()` function installs the built artifacts, desktop files, icons, and license. The `_clean()` function removes platform-specific directories, which is a common optimization for Linux packaging. There are no obfuscated commands, no unexpected network requests, no exfiltration of system data, and no execution of untrusted code outside the package's declared build process.
</details>
<summary>
Standard PKGBUILD for building Cherry Studio from source.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD for building Cherry Studio from source.
Reviewed all required files.
Deciding which files to review next...
Note: 9 compiled/archived file(s) cannot be audited as text and were not reviewed (cherry-studio-2.0.8.tar.gz, src/cherry-studio-2.0.8/AGENTS.md, src/cherry-studio-2.0.8/build/icon.icns and 6 more). For a package that ships prebuilt binaries, the audit covers the packaging, not the payload.
Note: 7885 files available for selection; offering the 50 highest-priority to the model. 5530 lower-priority file(s) were not offered.
LLM response for file selection:
cherry-studio.sh
src/cherry-studio-2.0.8/package.json
src/cherry-studio-2.0.8/electron.vite.config.ts
src/cherry-studio-2.0.8/tsdown.config.ts
src/cherry-studio-2.0.8/i18next.config.ts
src/cherry-studio-2.0.8/eslint.config.mjs
src/cherry-studio-2.0.8/migrations/sqlite-drizzle.config.ts
src/cherry-studio-2.0.8/packages/ai-sdk-provider/src/cherryin-provider.ts
src/cherry-studio-2.0.8/packages/aiCore/src/core/plugins/built-in/providerToolPlugin.ts
src/cherry-studio-2.0.8/packages/aiCore/src/core/context/adapter.ts
! Note: the model selected 1 path(s) not present in the package; these do not exist and were not reviewed: src/cherry-studio-2.0.8/tsdown.config.ts
Decided to review 9 additional files: cherry-studio.sh, src/cherry-studio-2.0.8/package.json, src/cherry-studio-2.0.8/electron.vite.config.ts, src/cherry-studio-2.0.8/i18next.config.ts, src/cherry-studio-2.0.8/eslint.config.mjs, src/cherry-studio-2.0.8/migrations/sqlite-drizzle.config.ts, src/cherry-studio-2.0.8/packages/ai-sdk-provider/src/cherryin-provider.ts, src/cherry-studio-2.0.8/packages/aiCore/src/core/plugins/built-in/providerToolPlugin.ts, src/cherry-studio-2.0.8/packages/aiCore/src/core/context/adapter.ts
Reviewing additional files...
Reviewing additional files...
[0/9] Reviewing cherry-studio.sh...
[0/9] Reviewing cherry-studio.sh, src/cherry-studio-2.0.8/package.json...
[0/9] Reviewing cherry-studio.sh, src/cherry-studio-2.0.8/package.json, src/cherry-studio-2.0.8/electron.vite.config.ts...
LLM auditresponse for electron.vite.config.ts:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard Electron Vite configuration file for the Cherry Studio application. It imports common Vite plugins (React, TanStack Router, Tailwind CSS, etc.) and defines build settings for the main, preload, and renderer processes. The file reads local configuration files (`electron-builder.yml` and `resources/cherry-studio/release-history.json`) to embed release notes and history into the build. There is no obfuscated code, no external network requests, no execution of downloaded content, no data exfiltration, and no backdoors. All operations are consistent with normal Electron application packaging and development practices. The code is well-commented and transparent.
</details>
<summary>Standard Vite config for Electron app; no security concerns.</summary>
</security_assessment>

[0/9] Reviewing cherry-studio.sh, src/cherry-studio-2.0.8/package.json, src/cherry-studio-2.0.8/electron.vite.config.ts, src/cherry-studio-2.0.8/i18next.config.ts...
[1/9] Reviewing cherry-studio.sh, src/cherry-studio-2.0.8/package.json, src/cherry-studio-2.0.8/i18next.config.ts...
+ Reviewed src/cherry-studio-2.0.8/electron.vite.config.ts. Status: SAFE -- Standard Vite config for Electron app; no security concerns.
LLM auditresponse for cherry-studio.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard wrapper script for an Electron-based application. It reads optional user flags from `~/.config/cherry-studio-flags.conf` and then executes the packaged Electron binary (`__ELECTRON__`) with the application's `app.asar` file. There are no obfuscated commands, network requests, or unexpected file operations. The only dynamic behavior is sourcing a user-provided flags file, which is a common and expected practice for AUR packages to allow runtime user configuration. The `__ELECTRON__` placeholder is replaced by the PKGBUILD at build time, following standard packaging conventions. No malicious or suspicious activity is present.
</details>
<summary>Standard Electron app launcher with no security issues.</summary>
</security_assessment>

[2/9] Reviewing src/cherry-studio-2.0.8/package.json, src/cherry-studio-2.0.8/i18next.config.ts...
+ Reviewed cherry-studio.sh. Status: SAFE -- Standard Electron app launcher with no security issues.
[2/9] Reviewing src/cherry-studio-2.0.8/package.json, src/cherry-studio-2.0.8/i18next.config.ts, src/cherry-studio-2.0.8/eslint.config.mjs...
LLM auditresponse for i18next.config.ts:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a configuration file for the `i18next-cli` internationalization tool. It defines locales, extraction patterns, and output paths. The file contains no network requests, no obfuscated code, no dangerous system commands, and no attempts to exfiltrate data or modify system files. The comment in Chinese is benign and relates to key management within the i18n workflow. There are no security concerns.
</details>
<summary>Standard i18n configuration file, no malicious content.</summary>
</security_assessment>

[2/9] Reviewing src/cherry-studio-2.0.8/package.json, src/cherry-studio-2.0.8/i18next.config.ts, src/cherry-studio-2.0.8/eslint.config.mjs, src/cherry-studio-2.0.8/migrations/sqlite-drizzle.config.ts...
[3/9] Reviewing src/cherry-studio-2.0.8/package.json, src/cherry-studio-2.0.8/eslint.config.mjs, src/cherry-studio-2.0.8/migrations/sqlite-drizzle.config.ts...
+ Reviewed src/cherry-studio-2.0.8/i18next.config.ts. Status: SAFE -- Standard i18n configuration file, no malicious content.
LLM auditresponse for package.json:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `package.json` for an Electron-based AI assistant application (CherryStudio). The file contains metadata, scripts, and dependency declarations. The scripts section includes typical development commands such as `pnpm rebuild:electron`, `electron-vite`, `dotenv`, and `node scripts/download-binaries.js`. The `prepare` script runs `prek install` (via `@j178/prek` dev dependency) unless in CI, which is a common tool for pre-commit hooks and not inherently malicious. The `postinstall` script builds a workspace package. All dependencies point to well-known npm packages (e.g., `@anthropic-ai/claude-agent-sdk`, `@ai-sdk/openai`, `better-sqlite3`, `electron`, etc.) or scoped packages under `@cherrystudio` which belong to the project. The `packageManager` field pins `pnpm` with a hash, promoting reproducibility. There is no obfuscated code, no encoded commands, no attempts to exfiltrate data, and no references to unexpected remote hosts. The file is consistent with the stated purpose of being an AI assistant desktop application.
</details>
<summary>Standard package.json for an Electron AI app.</summary>
</security_assessment>

[3/9] Reviewing src/cherry-studio-2.0.8/package.json, src/cherry-studio-2.0.8/eslint.config.mjs, src/cherry-studio-2.0.8/migrations/sqlite-drizzle.config.ts, src/cherry-studio-2.0.8/packages/ai-sdk-provider/src/cherryin-provider.ts...
[4/9] Reviewing src/cherry-studio-2.0.8/eslint.config.mjs, src/cherry-studio-2.0.8/migrations/sqlite-drizzle.config.ts, src/cherry-studio-2.0.8/packages/ai-sdk-provider/src/cherryin-provider.ts...
+ Reviewed src/cherry-studio-2.0.8/package.json. Status: SAFE -- Standard package.json for an Electron AI app.
LLM auditresponse for sqlite-drizzle.config.ts:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard configuration file for the Drizzle ORM migration tool. It defines output directory, schema path, dialect, and casing. There is no executable code, no network requests, no obfuscation, and no system modifications. The comment about excluding test files is benign. This file does not contain any indicators of malicious behavior.
</details>
<summary>Standard database migration configuration, no security concerns.</summary>
</security_assessment>

[4/9] Reviewing src/cherry-studio-2.0.8/eslint.config.mjs, src/cherry-studio-2.0.8/migrations/sqlite-drizzle.config.ts, src/cherry-studio-2.0.8/packages/ai-sdk-provider/src/cherryin-provider.ts, src/cherry-studio-2.0.8/packages/aiCore/src/core/plugins/built-in/providerToolPlugin.ts...
[5/9] Reviewing src/cherry-studio-2.0.8/eslint.config.mjs, src/cherry-studio-2.0.8/packages/ai-sdk-provider/src/cherryin-provider.ts, src/cherry-studio-2.0.8/packages/aiCore/src/core/plugins/built-in/providerToolPlugin.ts...
+ Reviewed src/cherry-studio-2.0.8/migrations/sqlite-drizzle.config.ts. Status: SAFE -- Standard database migration configuration, no security concerns.
LLM auditresponse for cherryin-provider.ts:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard AI provider wrapper for the CherryIN service. It configures client connections to various AI model endpoints (OpenAI, Anthropic, Gemini) using API keys from environment variables. There is no obfuscated code, no unexpected network requests, no data exfiltration, and no execution of downloaded code. The custom fetch function only normalizes request bodies by removing empty `tools` arrays when `tool_choice` is present – a routine data cleaning operation. All network destinations (`cherryin.net`) are the service's own upstream, which is expected for this type of provider. The file exhibits no supply-chain attack indicators.
</details>
<summary>Standard AI provider wrapper; no malicious behavior found.</summary>
</security_assessment>

[5/9] Reviewing src/cherry-studio-2.0.8/eslint.config.mjs, src/cherry-studio-2.0.8/packages/ai-sdk-provider/src/cherryin-provider.ts, src/cherry-studio-2.0.8/packages/aiCore/src/core/plugins/built-in/providerToolPlugin.ts, src/cherry-studio-2.0.8/packages/aiCore/src/core/context/adapter.ts...
[6/9] Reviewing src/cherry-studio-2.0.8/eslint.config.mjs, src/cherry-studio-2.0.8/packages/aiCore/src/core/plugins/built-in/providerToolPlugin.ts, src/cherry-studio-2.0.8/packages/aiCore/src/core/context/adapter.ts...
+ Reviewed src/cherry-studio-2.0.8/packages/ai-sdk-provider/src/cherryin-provider.ts. Status: SAFE -- Standard AI provider wrapper; no malicious behavior found.
LLM auditresponse for providerToolPlugin.ts:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard TypeScript plugin that merges tool capabilities and provider options into request parameters. It imports from local modules (`../../options`, `../../providers`, etc.) and performs ordinary object merging. There are no network requests, obfuscation, dangerous commands, or any behavior that deviates from expected application functionality. The code is clean and serves the stated purpose of injecting provider tool patches.
</details>
<summary>No security issues found; standard plugin logic.</summary>
</security_assessment>

[7/9] Reviewing src/cherry-studio-2.0.8/eslint.config.mjs, src/cherry-studio-2.0.8/packages/aiCore/src/core/context/adapter.ts...
+ Reviewed src/cherry-studio-2.0.8/packages/aiCore/src/core/plugins/built-in/providerToolPlugin.ts. Status: SAFE -- No security issues found; standard plugin logic.
LLM auditresponse for adapter.ts:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `adapter.ts` is a data-transformation utility that converts between the AI SDK V3 prompt format and an internal intermediate representation (IR). It handles message roles (system, user, assistant, tool) and preserves original content via pass-through fields (`_userContent`, `_assistantContent`, `_toolContent`) for lossless round-trips. There are no network requests, file system operations, system modifications, obfuscation, encoded commands, or any other suspicious behavior. The code is purely functional and operates only on in-memory data structures. It is a standard packaging helper for an AI-related application.
</details>
<summary>Standard data transformation code, no security concerns.</summary>
</security_assessment>

[8/9] Reviewing src/cherry-studio-2.0.8/eslint.config.mjs...
+ Reviewed src/cherry-studio-2.0.8/packages/aiCore/src/core/context/adapter.ts. Status: SAFE -- Standard data transformation code, no security concerns.
LLM auditresponse for eslint.config.mjs:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is an ESLint flat configuration for the `cherry-studio` project. It defines custom lint rules (barrel, naming, lifecycle, i18n, filepath-brand, data-schema-key) that enforce architectural conventions. While it uses `fs.readdirSync`, `fs.readFileSync`, and `fs.statSync` to discover barrel directories, validate naming conventions, and resolve import specifiers, all filesystem operations are strictly scoped to the project's own source tree (e.g., `src/renderer/*`, `src/main/*`, `src/shared/*`). There is no network access, no execution of downloaded code, no obfuscation, no exfiltration of sensitive data, and no use of dangerous constructs like `eval` or `child_process`. The file is exercised only when ESLint is run (typically during development or CI), not during normal application runtime or package installation. All behavior is consistent with legitimate custom linting logic and does not constitute a supply-chain attack.
</details>
<summary>ESLint config with filesystem introspection; no malicious behavior.</summary>
</security_assessment>

[9/9] Reviewing ...
+ Reviewed src/cherry-studio-2.0.8/eslint.config.mjs. Status: SAFE -- ESLint config with filesystem introspection; no malicious behavior.
Reviewed all additional files.
Reviewed additional files.
Audit complete! Result: No issues found
(Skipped 1 file: cherry-studio-4663dd757.patch)

API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 67,014
  Completion Tokens: 7,971
  Total Tokens: 74,985
  Total Cost: $0.004750
  Execution Time: 190.10 seconds

Final Status: SAFE


No issues found.


Audit Skips:

/data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-g810lk_u/cherry-studio-4663dd757.patch: [SKIPPED] Skipping binary file: cherry-studio-4663dd757.patch
