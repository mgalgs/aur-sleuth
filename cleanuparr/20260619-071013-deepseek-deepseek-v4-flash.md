---
package: cleanuparr
pkgver: 2.9.14
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: openrouter.ai
base_url: https://openrouter.ai/api/v1
aur_sleuth_rev: 50d1962556b029d6cfb20315d43ba8cf7fe537a9
prompt_tokens: 35989
completion_tokens: 6444
total_tokens: 42433
cost: 0.00439893
execution_time: 80.1
files_reviewed: 12
files_skipped: 0
date: 2026-06-19T07:10:13Z
file_verdicts:
  - file: cleanuparr.install
    status: safe
    summary: Innocuous informational messages only.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD for .NET application from GitHub.
  - file: src/Cleanuparr/code/frontend/public/sw.js
    status: safe
    summary: Empty service worker stub; no security issues.
  - file: src/Cleanuparr/code/frontend/src/app/app.ts
    status: safe
    summary: Standard Angular component, no suspicious behavior found.
  - file: src/Cleanuparr/code/frontend/package.json
    status: safe
    summary: Standard npm configuration file with no security issues.
  - file: src/Cleanuparr/code/frontend/src/app/core/api/arr.api.ts
    status: safe
    summary: Standard Angular API service, no security issues.
  - file: cleanuparr.service
    status: safe
    summary: Standard systemd service unit; no security issues.
  - file: src/Cleanuparr/code/frontend/src/app/app.config.ts
    status: safe
    summary: Standard Angular configuration file, no malicious content.
  - file: src/Cleanuparr/code/frontend/src/app/core/api/account.api.ts
    status: safe
    summary: Standard Angular API service, no malicious content.
  - file: src/Cleanuparr/code/frontend/src/app/app.routes.ts
    status: safe
    summary: Standard Angular routing file with no malicious content.
  - file: src/Cleanuparr/code/entrypoint.sh
    status: safe
    summary: Standard container entrypoint script, no security issues.
  - file: src/Cleanuparr/code/Makefile
    status: safe
    summary: Standard build helper, no malicious behavior detected.
---

Cloning https://aur.archlinux.org/cleanuparr.git to /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-c88ji0rd...
Cloned repository to /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-c88ji0rd
Analyzing cleanuparr AUR package (working in /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-c88ji0rd) with deepseek/deepseek-v4-flash from https://openrouter.ai/api/v1
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The top-level PKGBUILD code consists solely of variable assignments, a `case` statement to set an architecture-specific variable, function definitions (`build()` and `package()`), and the `source` array. No commands execute at source time beyond these definitions. The `source` entries point to the official upstream GitHub repositories (tagged for the main repo, branch-default for dependencies), and the `SKIP` checksums for the VCS sources are standard AUR practice. There are no concealed downloads, obfuscated strings, or commands that would exfiltrate data or execute untrusted code during the `makepkg --nobuild --nodeps --noprepare` or `makepkg --printsrcinfo` steps.
</details>
<summary>No malicious code runs at source time.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete [grey50]-- No malicious code runs at source time.[/]
Running makepkg --nobuild --nodeps --noprepare to download sources for agent...
makepkg --nobuild --nodeps --noprepare successful
Running makepkg --printsrcinfo to get source files for agent...
makepkg --printsrcinfo successful
Reviewing required files...
[0/2] Reviewing PKGBUILD...
[0/2] Reviewing PKGBUILD, cleanuparr.install...
LLM auditresponse for cleanuparr.install:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `cleanuparr.install` contains only informational `echo` statements that display usage notes to the user after installation/upgrade. There are no commands that execute external programs, modify system files, make network requests, or fetch any code. The content is entirely benign and serves the standard purpose of a post-installation message for an Arch Linux package.
</details>
<summary>Innocuous informational messages only.</summary>
</security_assessment>

[1/2] Reviewing PKGBUILD...
+ Reviewed cleanuparr.install. Status: SAFE -- Innocuous informational messages only.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard AUR practices for building a .NET application from source. It fetches the upstream repository via git with a tag, builds dependencies locally using `dotnet nuget push` into a local source, and builds the main application. There are no suspicious network requests, obfuscated code, or dangerous commands like `eval`, `curl|bash`, or `base64`. The `sha256sums` for the VCS sources are set to `SKIP` (except the first source, which has a pinned checksum – that is harmless and likely ignored by makepkg). All operations are confined to building and packaging the application as intended. No evidence of exfiltration, backdoors, or supply-chain injection.
</details>
<summary>Standard PKGBUILD for .NET application from GitHub.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD for .NET application from GitHub.
Reviewed all required files.
Deciding which files to review next...
Note: 1541 files available for selection; offering the 50 highest-priority to the model. 1379 lower-priority file(s) were not offered.
LLM response for file selection:
cleanuparr.service
src/Cleanuparr/code/Makefile
src/Cleanuparr/code/entrypoint.sh
src/Cleanuparr/code/frontend/package.json
src/Cleanuparr/code/frontend/public/sw.js
src/Cleanuparr/code/frontend/src/app/app.config.ts
src/Cleanuparr/code/frontend/src/app/app.routes.ts
src/Cleanuparr/code/frontend/src/app/app.ts
src/Cleanuparr/code/frontend/src/app/core/api/account.api.ts
src/Cleanuparr/code/frontend/src/app/core/api/arr.api.ts
Decided to review 10 additional files: cleanuparr.service, src/Cleanuparr/code/Makefile, src/Cleanuparr/code/entrypoint.sh, src/Cleanuparr/code/frontend/package.json, src/Cleanuparr/code/frontend/public/sw.js, src/Cleanuparr/code/frontend/src/app/app.config.ts, src/Cleanuparr/code/frontend/src/app/app.routes.ts, src/Cleanuparr/code/frontend/src/app/app.ts, src/Cleanuparr/code/frontend/src/app/core/api/account.api.ts, src/Cleanuparr/code/frontend/src/app/core/api/arr.api.ts
Reviewing additional files...
Reviewing additional files...
[0/10] Reviewing cleanuparr.service...
[0/10] Reviewing cleanuparr.service, src/Cleanuparr/code/Makefile...
[0/10] Reviewing cleanuparr.service, src/Cleanuparr/code/Makefile, src/Cleanuparr/code/entrypoint.sh...
[0/10] Reviewing cleanuparr.service, src/Cleanuparr/code/Makefile, src/Cleanuparr/code/entrypoint.sh, src/Cleanuparr/code/frontend/package.json...
[0/10] Reviewing cleanuparr.service, src/Cleanuparr/code/Makefile, src/Cleanuparr/code/entrypoint.sh, src/Cleanuparr/code/frontend/package.json, src/Cleanuparr/code/frontend/public/sw.js...
[0/10] Reviewing cleanuparr.service, src/Cleanuparr/code/Makefile, src/Cleanuparr/code/entrypoint.sh, src/Cleanuparr/code/frontend/package.json, src/Cleanuparr/code/frontend/public/sw.js, src/Cleanuparr/code/frontend/src/app/app.config.ts...
[0/10] Reviewing cleanuparr.service, src/Cleanuparr/code/Makefile, src/Cleanuparr/code/entrypoint.sh, src/Cleanuparr/code/frontend/package.json, src/Cleanuparr/code/frontend/public/sw.js, src/Cleanuparr/code/frontend/src/app/app.config.ts, src/Cleanuparr/code/frontend/src/app/app.routes.ts...
[0/10] Reviewing cleanuparr.service, src/Cleanuparr/code/Makefile, src/Cleanuparr/code/entrypoint.sh, src/Cleanuparr/code/frontend/package.json, src/Cleanuparr/code/frontend/public/sw.js, src/Cleanuparr/code/frontend/src/app/app.config.ts, src/Cleanuparr/code/frontend/src/app/app.routes.ts, src/Cleanuparr/code/frontend/src/app/app.ts...
[0/10] Reviewing cleanuparr.service, src/Cleanuparr/code/Makefile, src/Cleanuparr/code/entrypoint.sh, src/Cleanuparr/code/frontend/package.json, src/Cleanuparr/code/frontend/public/sw.js, src/Cleanuparr/code/frontend/src/app/app.config.ts, src/Cleanuparr/code/frontend/src/app/app.routes.ts, src/Cleanuparr/code/frontend/src/app/app.ts, src/Cleanuparr/code/frontend/src/app/core/api/account.api.ts...
[0/10] Reviewing cleanuparr.service, src/Cleanuparr/code/Makefile, src/Cleanuparr/code/entrypoint.sh, src/Cleanuparr/code/frontend/package.json, src/Cleanuparr/code/frontend/public/sw.js, src/Cleanuparr/code/frontend/src/app/app.config.ts, src/Cleanuparr/code/frontend/src/app/app.routes.ts, src/Cleanuparr/code/frontend/src/app/app.ts, src/Cleanuparr/code/frontend/src/app/core/api/account.api.ts, src/Cleanuparr/code/frontend/src/app/core/api/arr.api.ts...
LLM auditresponse for sw.js:
<security_assessment>
<decision>SAFE</decision>
<details>
The file contains a single line that registers a service worker fetch event handler with an empty callback function. This is a benign stub that performs no operations. There is no evidence of any malicious behavior such as network requests, data exfiltration, code execution, or obfuscation. The content is trivial and harmless.
</details>
<summary>Empty service worker stub; no security issues.</summary>
</security_assessment>

[1/10] Reviewing cleanuparr.service, src/Cleanuparr/code/Makefile, src/Cleanuparr/code/entrypoint.sh, src/Cleanuparr/code/frontend/package.json, src/Cleanuparr/code/frontend/src/app/app.config.ts, src/Cleanuparr/code/frontend/src/app/app.routes.ts, src/Cleanuparr/code/frontend/src/app/app.ts, src/Cleanuparr/code/frontend/src/app/core/api/account.api.ts, src/Cleanuparr/code/frontend/src/app/core/api/arr.api.ts...
+ Reviewed src/Cleanuparr/code/frontend/public/sw.js. Status: SAFE -- Empty service worker stub; no security issues.
LLM auditresponse for app.ts:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard Angular root component (AppComponent). It injects two services: `ThemeService` and `AuthService`. In `ngOnInit`, it subscribes to `auth.checkStatus()`, which is a typical authentication status check. There is no obfuscated code, no network requests to unexpected hosts, no file system manipulation, no execution of external binaries, and no signs of injected malicious behavior. The file is part of the upstream application's own source code and performs only expected application initialization.
</details>
<summary>Standard Angular component, no suspicious behavior found.</summary>
</security_assessment>

[2/10] Reviewing cleanuparr.service, src/Cleanuparr/code/Makefile, src/Cleanuparr/code/entrypoint.sh, src/Cleanuparr/code/frontend/package.json, src/Cleanuparr/code/frontend/src/app/app.config.ts, src/Cleanuparr/code/frontend/src/app/app.routes.ts, src/Cleanuparr/code/frontend/src/app/core/api/account.api.ts, src/Cleanuparr/code/frontend/src/app/core/api/arr.api.ts...
+ Reviewed src/Cleanuparr/code/frontend/src/app/app.ts. Status: SAFE -- Standard Angular component, no suspicious behavior found.
LLM auditresponse for package.json:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard `package.json` file for an Angular application. It declares dependencies on well-known npm packages (Angular, RxJS, Tailwind CSS, etc.) and devDependencies for linting and building. The `scripts` section contains only routine Angular CLI commands (`ng serve`, `ng build`). There are no suspicious scripts, obfuscated code, network requests, or system modifications. The file is entirely benign and consistent with normal packaging practices.
</details>
<summary>Standard npm configuration file with no security issues.</summary>
</security_assessment>

[3/10] Reviewing cleanuparr.service, src/Cleanuparr/code/Makefile, src/Cleanuparr/code/entrypoint.sh, src/Cleanuparr/code/frontend/src/app/app.config.ts, src/Cleanuparr/code/frontend/src/app/app.routes.ts, src/Cleanuparr/code/frontend/src/app/core/api/account.api.ts, src/Cleanuparr/code/frontend/src/app/core/api/arr.api.ts...
+ Reviewed src/Cleanuparr/code/frontend/package.json. Status: SAFE -- Standard npm configuration file with no security issues.
LLM auditresponse for arr.api.ts:
<security_assessment>
<decision>SAFE</decision>
<details>
This TypeScript file defines an Angular service that performs standard CRUD operations against a local API (`/api/configuration/${type}`) using Angular's HttpClient. All HTTP calls are relative to the application's own backend, with no external or suspicious destinations. There is no obfuscated code, no dynamic code execution, no file system access, and no unexpected behavior. The code is typical for a frontend service that manages configuration for arr-type applications (Sonarr, Radarr, etc.). No supply-chain attack indicators are present.
</details>
<summary>Standard Angular API service, no security issues.</summary>
</security_assessment>

[4/10] Reviewing cleanuparr.service, src/Cleanuparr/code/Makefile, src/Cleanuparr/code/entrypoint.sh, src/Cleanuparr/code/frontend/src/app/app.config.ts, src/Cleanuparr/code/frontend/src/app/app.routes.ts, src/Cleanuparr/code/frontend/src/app/core/api/account.api.ts...
+ Reviewed src/Cleanuparr/code/frontend/src/app/core/api/arr.api.ts. Status: SAFE -- Standard Angular API service, no security issues.
LLM auditresponse for cleanuparr.service:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard systemd service unit file for a package named `cleanuparr`. It defines the service parameters, environment variables, and security hardening options. No code is executed directly from this file; it only configures how the systemd service manager should run the binary `/usr/lib/cleanuparr/Cleanuparr`. There are no network requests, obfuscated commands, file downloads, or signs of injection. The hardening options are appropriate for a daemon service. No malicious behavior is present.
</details>
<summary>Standard systemd service unit; no security issues.</summary>
</security_assessment>

[5/10] Reviewing src/Cleanuparr/code/Makefile, src/Cleanuparr/code/entrypoint.sh, src/Cleanuparr/code/frontend/src/app/app.config.ts, src/Cleanuparr/code/frontend/src/app/app.routes.ts, src/Cleanuparr/code/frontend/src/app/core/api/account.api.ts...
+ Reviewed cleanuparr.service. Status: SAFE -- Standard systemd service unit; no security issues.
LLM auditresponse for app.config.ts:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard Angular application configuration file. It imports Angular core modules, router, HTTP client, animations, and icon libraries (Tabler Icons). It defines providers for routing (with component input binding), HTTP interceptors (base URL, authentication, error handling), animations, and icons. There is no obfuscated code, no network requests to unexpected hosts, no file operations, no system modifications, and no execution of external code. The interceptors are imported from local project paths and are typical for an Angular app. Nothing in this file indicates malicious activity or supply-chain attack; it is a normal packaging artifact.
</details>
<summary>Standard Angular configuration file, no malicious content.</summary>
</security_assessment>

[6/10] Reviewing src/Cleanuparr/code/Makefile, src/Cleanuparr/code/entrypoint.sh, src/Cleanuparr/code/frontend/src/app/app.routes.ts, src/Cleanuparr/code/frontend/src/app/core/api/account.api.ts...
+ Reviewed src/Cleanuparr/code/frontend/src/app/app.config.ts. Status: SAFE -- Standard Angular configuration file, no malicious content.
LLM auditresponse for account.api.ts:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard Angular service file that defines an HTTP client for interacting with the application's own backend API endpoints (all relative URLs like `/api/account`). It contains no obfuscation, no external network requests, no execution of arbitrary commands, and no file system operations. It is part of the upstream application's frontend code and performs only legitimate API calls for account management. No evidence of malicious behavior or supply-chain attack.
</details>
<summary>Standard Angular API service, no malicious content.</summary>
</security_assessment>

[7/10] Reviewing src/Cleanuparr/code/Makefile, src/Cleanuparr/code/entrypoint.sh, src/Cleanuparr/code/frontend/src/app/app.routes.ts...
+ Reviewed src/Cleanuparr/code/frontend/src/app/core/api/account.api.ts. Status: SAFE -- Standard Angular API service, no malicious content.
LLM auditresponse for app.routes.ts:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard Angular routing configuration file. It defines application routes with lazy-loaded components and guards for authentication and form navigation. There are no suspicious operations, no network requests, no obfuscated code, and no system-level commands. All imports reference the application&#39;s own modules and features, consistent with normal Angular development practices. No evidence of malicious or supply-chain attack behavior.
</details>
<summary>Standard Angular routing file with no malicious content.</summary>
</security_assessment>

[8/10] Reviewing src/Cleanuparr/code/Makefile, src/Cleanuparr/code/entrypoint.sh...
+ Reviewed src/Cleanuparr/code/frontend/src/app/app.routes.ts. Status: SAFE -- Standard Angular routing file with no malicious content.
LLM auditresponse for entrypoint.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard Docker container entrypoint script that manages user/group creation and privilege dropping for a containerized application. It uses environment variables (PUID, PGID, UMASK) and performs typical operations: checking if running as root, creating a user/group if missing, setting umask, ensuring /config is writable, and then executing the incoming command via `gosu` or directly. There are no network requests, no obfuscated code, no dangerous commands like `eval`, `curl`, `wget`, or `base64`, and no attempts to exfiltrate data or download/execute untrusted code. The script does exactly what a container entrypoint should do—manage permissions—and contains no malicious or suspicious behavior. The use of `gosu` is a legitimate dependency for dropping privileges. Overall, the file is consistent with normal packaging practices for containerized applications.
</details>
<summary>Standard container entrypoint script, no security issues.</summary>
</security_assessment>

[9/10] Reviewing src/Cleanuparr/code/Makefile...
+ Reviewed src/Cleanuparr/code/entrypoint.sh. Status: SAFE -- Standard container entrypoint script, no security issues.
LLM auditresponse for Makefile:
<security_assessment>
<decision>SAFE</decision>
<details>
This Makefile is a standard build helper for a .NET project (Cleanuparr). It contains targets for Entity Framework migrations (`migrate-data`, `migrate-events`, `migrate-users`) and a Docker build (`docker-build`). The Docker build target requires a Personal Access Token (PAT) and username as build arguments, which is typical for authenticating to a private package feed during a Docker build. There are no suspicious commands (no `curl`, `wget`, `eval`, `base64`, `exec`, or obfuscated code). The use of authentication tokens as build arguments is a normal practice for building containers that require access to private repositories and is not evidence of a supply-chain attack. The file does not exfiltrate data, download or execute arbitrary code, or perform any actions outside the scope of building and deploying the application.
</details>
<summary>Standard build helper, no malicious behavior detected.</summary>
</security_assessment>

[10/10] Reviewing ...
+ Reviewed src/Cleanuparr/code/Makefile. Status: SAFE -- Standard build helper, no malicious behavior detected.
Reviewed all additional files.
Reviewed additional files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 35,989
  Completion Tokens: 6,444
  Total Tokens: 42,433
  Total Cost: $0.004399
  Execution Time: 80.10 seconds
Full audit report can be found in /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-report-cleanuparr.txt
Final Status: SAFE


No issues found.
