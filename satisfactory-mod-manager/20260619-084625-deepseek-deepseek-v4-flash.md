---
package: satisfactory-mod-manager
pkgver: 3.1.0
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: openrouter.ai
base_url: https://openrouter.ai/api/v1
aur_sleuth_rev: 11c93a0c95e2166961e3664fea6b5a63827ded10
prompt_tokens: 35156
completion_tokens: 8100
total_tokens: 43256
cost: 0.00462204
execution_time: 89.73
files_reviewed: 12
files_skipped: 0
date: 2026-06-19T08:46:25Z
file_verdicts:
  - file: satisfactory-mod-manager.desktop
    status: safe
    summary: Standard desktop entry file, no security issues.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD with pinned source and checksums; no signs of malicious behavior.
  - file: src/SatisfactoryModManager-3.1.0/frontend/vite.config.ts
    status: safe
    summary: Standard Vite config, no security issues found.
  - file: src/SatisfactoryModManager-3.1.0/frontend/src/main.ts
    status: safe
    summary: Standard Wails entry point; no malicious behavior detected.
  - file: src/SatisfactoryModManager-3.1.0/frontend/src/lib/core/graphql.ts
    status: safe
    summary: Standard GraphQL client setup; no security concerns.
  - file: src/SatisfactoryModManager-3.1.0/backend/autoupdate/apply/appimage.go
    status: safe
    summary: Standard self-update logic; no malicious behavior found.
  - file: src/SatisfactoryModManager-3.1.0/build/linux/appimage.sh
    status: safe
    summary: Standard AppImage build script, no malicious behavior found.
  - file: src/SatisfactoryModManager-3.1.0/backend/autoupdate/apply/nsis.go
    status: safe
    summary: Standard update/download code with checksum verification.
  - file: src/SatisfactoryModManager-3.1.0/backend/app/app.go
    status: safe
    summary: Standard app restart logic, no security concerns.
  - file: src/SatisfactoryModManager-3.1.0/Taskfile.yml
    status: safe
    summary: Standard build automation, no malicious code detected.
  - file: src/SatisfactoryModManager-3.1.0/frontend/package.json
    status: safe
    summary: Standard package.json for frontend project, no malicious indicators.
  - file: src/SatisfactoryModManager-3.1.0/.goreleaser.yml
    status: safe
    summary: Standard GoReleaser config; no malicious indicators found.
---

Cloning https://aur.archlinux.org/satisfactory-mod-manager.git to /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-ttezpcn9...
Cloned repository to /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-ttezpcn9
Analyzing satisfactory-mod-manager AUR package (working in /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-ttezpcn9) with deepseek/deepseek-v4-flash from https://openrouter.ai/api/v1
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD sources a tarball from the official GitHub releases page and a local `.desktop` file. Top-level scope contains only variable and array definitions; no command substitutions, function calls, or `pkgver()` function exist that would execute code upon sourcing. The `build()` and `package()` functions are present but are **not** executed by `makepkg --nobuild --nodeps --noprepare` or `makepkg --printsrcinfo`. Therefore, no malicious code runs during the requested commands. Standard source fetching (with pinned version and proper checksums) is safe.
</details>
<summary>Safe: no code executes during source/parse step.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete [grey50]-- Safe: no code executes during source/parse step.[/]
Running makepkg --nobuild --nodeps --noprepare to download sources for agent...
makepkg --nobuild --nodeps --noprepare successful
Running makepkg --printsrcinfo to get source files for agent...
makepkg --printsrcinfo successful
Reviewing required files...
[0/2] Reviewing PKGBUILD...
[0/2] Reviewing PKGBUILD, satisfactory-mod-manager.desktop...
LLM auditresponse for satisfactory-mod-manager.desktop:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard Linux desktop entry file (`.desktop`). It defines the application name, executable path, icon, MIME type handler, and categories. There is no executable code, no network requests, no obfuscation, and no deviation from normal packaging practices. The file is purely declarative and poses no security risk.
</details>
<summary>Standard desktop entry file, no security issues.</summary>
</security_assessment>

[1/2] Reviewing PKGBUILD...
+ Reviewed satisfactory-mod-manager.desktop. Status: SAFE -- Standard desktop entry file, no security issues.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard AUR packaging practices. It fetches the source from the official GitHub repository of the upstream project, pinned to a specific version tag (v3.1.0) with a SHA-512 checksum. The build and package functions only run the upstream build system (`go-task build`) and install the resulting binary and icon files into appropriate system directories. There are no suspicious network requests, obfuscated commands, or unexpected file operations. No deviations from normal packaging workflow are present.
</details>
<summary>Standard PKGBUILD with pinned source and checksums; no signs of malicious behavior.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD with pinned source and checksums; no signs of malicious behavior.
Reviewed all required files.
Deciding which files to review next...
Note: 236 files available for selection; offering the 50 highest-priority to the model. 172 lower-priority file(s) were not offered.
LLM response for file selection:
src/SatisfactoryModManager-3.1.0/build/linux/appimage.sh
src/SatisfactoryModManager-3.1.0/frontend/package.json
src/SatisfactoryModManager-3.1.0/frontend/vite.config.ts
src/SatisfactoryModManager-3.1.0/Taskfile.yml
src/SatisfactoryModManager-3.1.0/.goreleaser.yml
src/SatisfactoryModManager-3.1.0/backend/autoupdate/apply/appimage.go
src/SatisfactoryModManager-3.1.0/backend/autoupdate/apply/nsis.go
src/SatisfactoryModManager-3.1.0/frontend/src/lib/core/graphql.ts
src/SatisfactoryModManager-3.1.0/frontend/src/main.ts
src/SatisfactoryModManager-3.1.0/backend/app/app.go
Decided to review 10 additional files: src/SatisfactoryModManager-3.1.0/build/linux/appimage.sh, src/SatisfactoryModManager-3.1.0/frontend/package.json, src/SatisfactoryModManager-3.1.0/frontend/vite.config.ts, src/SatisfactoryModManager-3.1.0/Taskfile.yml, src/SatisfactoryModManager-3.1.0/.goreleaser.yml, src/SatisfactoryModManager-3.1.0/backend/autoupdate/apply/appimage.go, src/SatisfactoryModManager-3.1.0/backend/autoupdate/apply/nsis.go, src/SatisfactoryModManager-3.1.0/frontend/src/lib/core/graphql.ts, src/SatisfactoryModManager-3.1.0/frontend/src/main.ts, src/SatisfactoryModManager-3.1.0/backend/app/app.go
Reviewing additional files...
Reviewing additional files...
[0/10] Reviewing src/SatisfactoryModManager-3.1.0/frontend/package.json...
[0/10] Reviewing src/SatisfactoryModManager-3.1.0/frontend/package.json, src/SatisfactoryModManager-3.1.0/frontend/vite.config.ts...
[0/10] Reviewing src/SatisfactoryModManager-3.1.0/frontend/package.json, src/SatisfactoryModManager-3.1.0/frontend/vite.config.ts, src/SatisfactoryModManager-3.1.0/build/linux/appimage.sh...
[0/10] Reviewing src/SatisfactoryModManager-3.1.0/frontend/package.json, src/SatisfactoryModManager-3.1.0/frontend/vite.config.ts, src/SatisfactoryModManager-3.1.0/build/linux/appimage.sh, src/SatisfactoryModManager-3.1.0/Taskfile.yml...
[0/10] Reviewing src/SatisfactoryModManager-3.1.0/frontend/package.json, src/SatisfactoryModManager-3.1.0/frontend/vite.config.ts, src/SatisfactoryModManager-3.1.0/build/linux/appimage.sh, src/SatisfactoryModManager-3.1.0/Taskfile.yml, src/SatisfactoryModManager-3.1.0/.goreleaser.yml...
[0/10] Reviewing src/SatisfactoryModManager-3.1.0/frontend/package.json, src/SatisfactoryModManager-3.1.0/frontend/vite.config.ts, src/SatisfactoryModManager-3.1.0/build/linux/appimage.sh, src/SatisfactoryModManager-3.1.0/Taskfile.yml, src/SatisfactoryModManager-3.1.0/.goreleaser.yml, src/SatisfactoryModManager-3.1.0/backend/autoupdate/apply/appimage.go...
[0/10] Reviewing src/SatisfactoryModManager-3.1.0/frontend/package.json, src/SatisfactoryModManager-3.1.0/frontend/vite.config.ts, src/SatisfactoryModManager-3.1.0/build/linux/appimage.sh, src/SatisfactoryModManager-3.1.0/Taskfile.yml, src/SatisfactoryModManager-3.1.0/.goreleaser.yml, src/SatisfactoryModManager-3.1.0/backend/autoupdate/apply/appimage.go, src/SatisfactoryModManager-3.1.0/backend/autoupdate/apply/nsis.go...
[0/10] Reviewing src/SatisfactoryModManager-3.1.0/frontend/package.json, src/SatisfactoryModManager-3.1.0/frontend/vite.config.ts, src/SatisfactoryModManager-3.1.0/build/linux/appimage.sh, src/SatisfactoryModManager-3.1.0/Taskfile.yml, src/SatisfactoryModManager-3.1.0/.goreleaser.yml, src/SatisfactoryModManager-3.1.0/backend/autoupdate/apply/appimage.go, src/SatisfactoryModManager-3.1.0/backend/autoupdate/apply/nsis.go, src/SatisfactoryModManager-3.1.0/frontend/src/lib/core/graphql.ts...
[0/10] Reviewing src/SatisfactoryModManager-3.1.0/frontend/package.json, src/SatisfactoryModManager-3.1.0/frontend/vite.config.ts, src/SatisfactoryModManager-3.1.0/build/linux/appimage.sh, src/SatisfactoryModManager-3.1.0/Taskfile.yml, src/SatisfactoryModManager-3.1.0/.goreleaser.yml, src/SatisfactoryModManager-3.1.0/backend/autoupdate/apply/appimage.go, src/SatisfactoryModManager-3.1.0/backend/autoupdate/apply/nsis.go, src/SatisfactoryModManager-3.1.0/frontend/src/lib/core/graphql.ts, src/SatisfactoryModManager-3.1.0/frontend/src/main.ts...
[0/10] Reviewing src/SatisfactoryModManager-3.1.0/frontend/package.json, src/SatisfactoryModManager-3.1.0/frontend/vite.config.ts, src/SatisfactoryModManager-3.1.0/build/linux/appimage.sh, src/SatisfactoryModManager-3.1.0/Taskfile.yml, src/SatisfactoryModManager-3.1.0/.goreleaser.yml, src/SatisfactoryModManager-3.1.0/backend/autoupdate/apply/appimage.go, src/SatisfactoryModManager-3.1.0/backend/autoupdate/apply/nsis.go, src/SatisfactoryModManager-3.1.0/frontend/src/lib/core/graphql.ts, src/SatisfactoryModManager-3.1.0/frontend/src/main.ts, src/SatisfactoryModManager-3.1.0/backend/app/app.go...
LLM auditresponse for vite.config.ts:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard Vite configuration file for a Svelte project. It sets up build options, plugins (including the legitimate `@sveltejs/vite-plugin-svelte`), dependency optimization, server settings, and path aliases. There are no network requests, obfuscated commands, file operations outside the project scope, or any other behavior indicative of a supply-chain attack. The configuration is normal and expected for a frontend application.
</details>
<summary>Standard Vite config, no security issues found.</summary>
</security_assessment>

[1/10] Reviewing src/SatisfactoryModManager-3.1.0/frontend/package.json, src/SatisfactoryModManager-3.1.0/build/linux/appimage.sh, src/SatisfactoryModManager-3.1.0/Taskfile.yml, src/SatisfactoryModManager-3.1.0/.goreleaser.yml, src/SatisfactoryModManager-3.1.0/backend/autoupdate/apply/appimage.go, src/SatisfactoryModManager-3.1.0/backend/autoupdate/apply/nsis.go, src/SatisfactoryModManager-3.1.0/frontend/src/lib/core/graphql.ts, src/SatisfactoryModManager-3.1.0/frontend/src/main.ts, src/SatisfactoryModManager-3.1.0/backend/app/app.go...
+ Reviewed src/SatisfactoryModManager-3.1.0/frontend/vite.config.ts. Status: SAFE -- Standard Vite config, no security issues found.
LLM auditresponse for main.ts:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is the main entry point for a Wails application (desktop app with Go backend and Svelte frontend). It imports an App component and two API functions from the Wails-generated Go bindings (`$wailsjs/go/app/app`). The `GetAPIEndpoint()` and `GetSiteEndpoint()` functions are typical Wails bindings that retrieve configuration from the Go backend at runtime. There are no network requests, no system command execution, no obfuscation, and no file system modifications outside the intended application scope. The code is straightforward and consistent with standard Wails packaging. No evidence of malicious behavior.
</details>
<summary>Standard Wails entry point; no malicious behavior detected.</summary>
</security_assessment>

[2/10] Reviewing src/SatisfactoryModManager-3.1.0/frontend/package.json, src/SatisfactoryModManager-3.1.0/build/linux/appimage.sh, src/SatisfactoryModManager-3.1.0/Taskfile.yml, src/SatisfactoryModManager-3.1.0/.goreleaser.yml, src/SatisfactoryModManager-3.1.0/backend/autoupdate/apply/appimage.go, src/SatisfactoryModManager-3.1.0/backend/autoupdate/apply/nsis.go, src/SatisfactoryModManager-3.1.0/frontend/src/lib/core/graphql.ts, src/SatisfactoryModManager-3.1.0/backend/app/app.go...
+ Reviewed src/SatisfactoryModManager-3.1.0/frontend/src/main.ts. Status: SAFE -- Standard Wails entry point; no malicious behavior detected.
LLM auditresponse for graphql.ts:
<security_assessment>
<decision>SAFE</decision>
<details>
This file defines a GraphQL client initialization function using the URQL library for a Svelte application. It imports standard URQL packages and configures caching, resolvers, and persisted queries. The API endpoint URL is passed as a parameter, not hardcoded. There are no network requests, file operations, system modifications, or any obfuscated/encoded commands. The code is typical application logic for fetching data from a legitimate GraphQL API. No evidence of malicious or supply-chain attack behavior.
</details>
<summary>Standard GraphQL client setup; no security concerns.</summary>
</security_assessment>

[3/10] Reviewing src/SatisfactoryModManager-3.1.0/frontend/package.json, src/SatisfactoryModManager-3.1.0/build/linux/appimage.sh, src/SatisfactoryModManager-3.1.0/Taskfile.yml, src/SatisfactoryModManager-3.1.0/.goreleaser.yml, src/SatisfactoryModManager-3.1.0/backend/autoupdate/apply/appimage.go, src/SatisfactoryModManager-3.1.0/backend/autoupdate/apply/nsis.go, src/SatisfactoryModManager-3.1.0/backend/app/app.go...
+ Reviewed src/SatisfactoryModManager-3.1.0/frontend/src/lib/core/graphql.ts. Status: SAFE -- Standard GraphQL client setup; no security concerns.
LLM auditresponse for appimage.go:
<security_assessment>
<decision>SAFE</decision>
<details>
This file implements a self-update mechanism for the Satisfactory Mod Manager when run as an AppImage. It reads the `APPIMAGE` environment variable to locate the current binary, then uses the `github.com/minio/selfupdate` library to apply an update from a provided reader with checksum verification. No suspicious network requests, obfuscation, or unexpected system modifications are present. The behavior is standard for an application that updates itself, and there is no evidence of a supply-chain attack.
</details>
<summary>Standard self-update logic; no malicious behavior found.</summary>
</security_assessment>

[4/10] Reviewing src/SatisfactoryModManager-3.1.0/frontend/package.json, src/SatisfactoryModManager-3.1.0/build/linux/appimage.sh, src/SatisfactoryModManager-3.1.0/Taskfile.yml, src/SatisfactoryModManager-3.1.0/.goreleaser.yml, src/SatisfactoryModManager-3.1.0/backend/autoupdate/apply/nsis.go, src/SatisfactoryModManager-3.1.0/backend/app/app.go...
+ Reviewed src/SatisfactoryModManager-3.1.0/backend/autoupdate/apply/appimage.go. Status: SAFE -- Standard self-update logic; no malicious behavior found.
LLM auditresponse for appimage.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This script is a standard AppImage build helper for `SatisfactoryModManager`. All external downloads originate from official GitHub repositories (github.com/linuxdeploy, raw.githubusercontent.com/tauri-apps) over HTTPS, following typical AppImage packaging practices. The script copies system libraries (WebKit2GTK) into the AppDir for bundling, executes `linuxdeploy.AppImage` with plugin scripts, and cleans up temporary files afterward. There is no obfuscated code, backdoor, exfiltration, or execution of attacker-controlled payloads. The use of unpinned `continuous` release tags is a reproducibility concern but not evidence of malice.
</details>
<summary>Standard AppImage build script, no malicious behavior found.</summary>
</security_assessment>

[5/10] Reviewing src/SatisfactoryModManager-3.1.0/frontend/package.json, src/SatisfactoryModManager-3.1.0/Taskfile.yml, src/SatisfactoryModManager-3.1.0/.goreleaser.yml, src/SatisfactoryModManager-3.1.0/backend/autoupdate/apply/nsis.go, src/SatisfactoryModManager-3.1.0/backend/app/app.go...
+ Reviewed src/SatisfactoryModManager-3.1.0/build/linux/appimage.sh. Status: SAFE -- Standard AppImage build script, no malicious behavior found.
LLM auditresponse for nsis.go:
<security_assessment>
<decision>SAFE</decision>
<details>
The file implements a standard update mechanism for NSIS-based installers. It downloads an update with checksum verification via the `selfupdate` library, writes it to disk, and launches the installer with silent flags. No obfuscation, unexpected network requests, data exfiltration, or backdoors are present. The code is straightforward and consistent with legitimate application update functionality.
</details>
<summary>Standard update/download code with checksum verification.</summary>
</security_assessment>

[6/10] Reviewing src/SatisfactoryModManager-3.1.0/frontend/package.json, src/SatisfactoryModManager-3.1.0/Taskfile.yml, src/SatisfactoryModManager-3.1.0/.goreleaser.yml, src/SatisfactoryModManager-3.1.0/backend/app/app.go...
+ Reviewed src/SatisfactoryModManager-3.1.0/backend/autoupdate/apply/nsis.go. Status: SAFE -- Standard update/download code with checksum verification.
LLM auditresponse for app.go:
<security_assessment>
<decision>SAFE</decision>
<details>
This file (`app.go`) is part of the Satisfactory Mod Manager application source code. It imports standard project dependencies (Wails runtime and a local `common` package). The `CloseAndRestart` method simply sets a restart flag and quits the application context, which is normal behaviour for restart functionality in a Wails-based GUI application. There is no obfuscation, network access, file system manipulation, or any other suspicious activity. The code is benign and serves the application's stated purpose.
</details>
<summary>Standard app restart logic, no security concerns.</summary>
</security_assessment>

[7/10] Reviewing src/SatisfactoryModManager-3.1.0/frontend/package.json, src/SatisfactoryModManager-3.1.0/Taskfile.yml, src/SatisfactoryModManager-3.1.0/.goreleaser.yml...
+ Reviewed src/SatisfactoryModManager-3.1.0/backend/app/app.go. Status: SAFE -- Standard app restart logic, no security concerns.
LLM auditresponse for Taskfile.yml:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a Taskfile.yml for the `task` task runner, defining build automation steps for a Wails (Go) project. It calls `wails build`, runs code signing, zipping, and AppImage packaging on Linux. All operations are standard for building and packaging an application. There are no network requests, no obfuscated commands, no attempts to download or execute untrusted code from external sources, and no system-level modifications beyond the expected build output directory. The commands are consistent with the project's stated purpose of building a satisfactory mod manager. No malicious behavior or supply chain attack indicators are present.
</details>
<summary>
Standard build automation, no malicious code detected.
</summary>
</security_assessment>

[8/10] Reviewing src/SatisfactoryModManager-3.1.0/frontend/package.json, src/SatisfactoryModManager-3.1.0/.goreleaser.yml...
+ Reviewed src/SatisfactoryModManager-3.1.0/Taskfile.yml. Status: SAFE -- Standard build automation, no malicious code detected.
LLM auditresponse for package.json:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard `package.json` for a Svelte/TypeScript/GraphQL frontend project. It contains typical development scripts (dev, build, preview, lint, format) and dependencies for its toolchain. The `postinstall` script runs `graphql-codegen` and `translations` (a local tool script). There is no obfuscated code, no unexpected network requests, no execution of external fetched content, and no system modification outside the project scope. The `tolgee` commands are for legitimate translation management. No evidence of supply-chain attack or malicious intent.
</details>
<summary>Standard package.json for frontend project, no malicious indicators.</summary>
</security_assessment>

[9/10] Reviewing src/SatisfactoryModManager-3.1.0/.goreleaser.yml...
+ Reviewed src/SatisfactoryModManager-3.1.0/frontend/package.json. Status: SAFE -- Standard package.json for frontend project, no malicious indicators.
LLM auditresponse for .goreleaser.yml:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a GoReleaser configuration file for the SatisfactoryModManager project. It defines build pipelines for multiple platforms (Windows, Linux, macOS) using Wails for GUI and pnpm for frontend dependencies. All referenced URLs point to the project's own GitHub repository (github.com/satisfactorymodding/SatisfactoryModManager). The before hooks (wails generate module, pnpm install/build) are standard for building Wails applications. No obfuscated code, base64 encoding, or suspicious network requests are present. The configuration is typical for a legitimate AUR package and does not exhibit any malicious behavior indicative of a supply-chain attack.
</details>
<summary>Standard GoReleaser config; no malicious indicators found.</summary>
</security_assessment>

[10/10] Reviewing ...
+ Reviewed src/SatisfactoryModManager-3.1.0/.goreleaser.yml. Status: SAFE -- Standard GoReleaser config; no malicious indicators found.
Reviewed all additional files.
Reviewed additional files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 35,156
  Completion Tokens: 8,100
  Total Tokens: 43,256
  Total Cost: $0.004622
  Execution Time: 89.73 seconds
Full audit report can be found in /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-report-satisfactory-mod-manager.txt
Final Status: SAFE


No issues found.
