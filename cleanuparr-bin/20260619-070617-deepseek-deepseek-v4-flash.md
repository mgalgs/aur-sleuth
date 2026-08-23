---
package: cleanuparr-bin
pkgver: 2.9.14
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: openrouter.ai
base_url: https://openrouter.ai/api/v1
aur_sleuth_rev: 1b22d23ffa2e20617928e10a86ab2640838223e7
prompt_tokens: 457222
completion_tokens: 8008
total_tokens: 465230
cost: 0.04259142
execution_time: 105.3
files_reviewed: 12
files_skipped: 0
date: 2026-06-19T07:06:16Z
file_verdicts:
  - file: cleanuparr.install
    status: safe
    summary: Informational echo messages, no malicious code.
  - file: PKGBUILD
    status: safe
    summary: Standard binary package, no malicious code found.
  - file: src/Cleanuparr-2.9.14-linux-amd64/wwwroot/sw.js
    status: safe
    summary: Empty fetch listener, no malicious code.
  - file: .nvchecker.toml
    status: safe
    summary: Standard nvchecker config, no security concerns.
  - file: cleanuparr.tmpfiles
    status: safe
    summary: Standard tmpfiles configuration; no security issues.
  - file: cleanuparr.sysusers
    status: safe
    summary: Standard sysusers config, no malicious content.
  - file: src/Cleanuparr-2.9.14-linux-amd64/BuildHost-netcore/Microsoft.CodeAnalysis.Workspaces.MSBuild.BuildHost.deps.json
    status: safe
    summary: .NET dependency metadata file, no malicious content.
  - file: src/Cleanuparr-2.9.14-linux-amd64/BuildHost-netcore/Microsoft.CodeAnalysis.Workspaces.MSBuild.BuildHost.runtimeconfig.json
    status: safe
    summary: Standard .NET runtime config file, no malicious content.
  - file: src/Cleanuparr-2.9.14-linux-amd64/wwwroot/main-SKGWKCKX.js
    status: safe
    summary: Standard Angular frontend, no malicious code found.
  - file: cleanuparr.service
    status: safe
    summary: Safe systemd service file, no malicious content.
  - file: src/Cleanuparr-2.9.14-linux-amd64/wwwroot/chunk-2ASHAX27.js
    status: safe
    summary: Angular UI code, no malicious behavior found.
  - file: src/Cleanuparr-2.9.14-linux-amd64/Cleanuparr.staticwebassets.endpoints.json
    status: safe
    summary: Standard ASP.NET static web assets manifest; no malicious content.
---

Cloning https://aur.archlinux.org/cleanuparr-bin.git to /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-vyhl41pf...
Cloned repository to /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-vyhl41pf
Analyzing cleanuparr-bin AUR package (working in /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-vyhl41pf) with deepseek/deepseek-v4-flash from https://openrouter.ai/api/v1
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains no executable code in global scope or `pkgver()` that would run during `makepkg --nobuild --nodeps --noprepare`. The source array uses standard HTTPS downloads from the project's official GitHub releases, with pinned SHA256 checksums (not SKIP). No dangerous commands (curl|bash, eval, base64 decoding, etc.) are present outside the `package()` function, which is not executed by the requested commands. The local source files (service, sysusers, tmpfiles, install) are textual configuration files. The `source_x86_64` and `source_aarch64` arrays contain valid, expected URLs. There is no top-level command substitution, no hidden network requests to untrusted hosts, and no obfuscated data. This is a standard AUR bin package.
</details>
<summary>
Safe PKGBUILD with no suspicious top-level code or sources.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete [grey50]-- Safe PKGBUILD with no suspicious top-level code or sources.[/]
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
The file contains only informational `echo` statements that print usage tips and configuration guidance for the user. There are no network operations, file writes, command executions, or any other potentially dangerous actions. The content is benign and consistent with standard AUR package installation messages.
</details>
<summary>Informational echo messages, no malicious code.</summary>
</security_assessment>

[1/2] Reviewing PKGBUILD...
+ Reviewed cleanuparr.install. Status: SAFE -- Informational echo messages, no malicious code.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD is a standard AUR binary package that fetches a pre-compiled release zip from the project's official GitHub repository (`github.com/Cleanuparr/Cleanuparr`). All source files have pinned checksums (`sha256sums`), ensuring integrity. The `package()` function performs routine installation steps: creating directories, installing systemd unit/sysusers/tmpfiles helpers, and copying the extracted binary contents to `/usr/lib/cleanuparr`. No network requests, obfuscated commands, dangerous operations (`eval`, `curl|bash`, etc.), or modifications to unrelated system files are present. The packaging follows normal AUR practices for a `-bin` package, and there is no evidence of a supply-chain attack or malicious intent.
</details>
<summary>Standard binary package, no malicious code found.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard binary package, no malicious code found.
Reviewed all required files.
Deciding which files to review next...
Note: 54 files available for selection; offering the 50 highest-priority to the model. 4 lower-priority file(s) were not offered.
LLM response for file selection:
cleanuparr.service
cleanuparr.sysusers
cleanuparr.tmpfiles
.nvchecker.toml
src/Cleanuparr-2.9.14-linux-amd64/wwwroot/sw.js
src/Cleanuparr-2.9.14-linux-amd64/wwwroot/main-SKGWKCKX.js
src/Cleanuparr-2.9.14-linux-amd64/Cleanuparr.staticwebassets.endpoints.json
src/Cleanuparr-2.9.14-linux-amd64/BuildHost-netcore/Microsoft.CodeAnalysis.Workspaces.MSBuild.BuildHost.deps.json
src/Cleanuparr-2.9.14-linux-amd64/BuildHost-netcore/Microsoft.CodeAnalysis.Workspaces.MSBuild.BuildHost.runtimeconfig.json
src/Cleanuparr-2.9.14-linux-amd64/wwwroot/chunk-2ASHAX27.js
Decided to review 10 additional files: cleanuparr.service, cleanuparr.sysusers, cleanuparr.tmpfiles, .nvchecker.toml, src/Cleanuparr-2.9.14-linux-amd64/wwwroot/sw.js, src/Cleanuparr-2.9.14-linux-amd64/wwwroot/main-SKGWKCKX.js, src/Cleanuparr-2.9.14-linux-amd64/Cleanuparr.staticwebassets.endpoints.json, src/Cleanuparr-2.9.14-linux-amd64/BuildHost-netcore/Microsoft.CodeAnalysis.Workspaces.MSBuild.BuildHost.deps.json, src/Cleanuparr-2.9.14-linux-amd64/BuildHost-netcore/Microsoft.CodeAnalysis.Workspaces.MSBuild.BuildHost.runtimeconfig.json, src/Cleanuparr-2.9.14-linux-amd64/wwwroot/chunk-2ASHAX27.js
Reviewing additional files...
Reviewing additional files...
[0/10] Reviewing cleanuparr.sysusers...
[0/10] Reviewing cleanuparr.sysusers, cleanuparr.service...
[0/10] Reviewing cleanuparr.sysusers, cleanuparr.service, cleanuparr.tmpfiles...
[0/10] Reviewing cleanuparr.sysusers, cleanuparr.service, cleanuparr.tmpfiles, .nvchecker.toml...
[0/10] Reviewing cleanuparr.sysusers, cleanuparr.service, cleanuparr.tmpfiles, .nvchecker.toml, src/Cleanuparr-2.9.14-linux-amd64/wwwroot/sw.js...
[0/10] Reviewing cleanuparr.sysusers, cleanuparr.service, cleanuparr.tmpfiles, .nvchecker.toml, src/Cleanuparr-2.9.14-linux-amd64/wwwroot/sw.js, src/Cleanuparr-2.9.14-linux-amd64/wwwroot/main-SKGWKCKX.js...
[0/10] Reviewing cleanuparr.sysusers, cleanuparr.service, cleanuparr.tmpfiles, .nvchecker.toml, src/Cleanuparr-2.9.14-linux-amd64/wwwroot/sw.js, src/Cleanuparr-2.9.14-linux-amd64/wwwroot/main-SKGWKCKX.js, src/Cleanuparr-2.9.14-linux-amd64/Cleanuparr.staticwebassets.endpoints.json...
[0/10] Reviewing cleanuparr.sysusers, cleanuparr.service, cleanuparr.tmpfiles, .nvchecker.toml, src/Cleanuparr-2.9.14-linux-amd64/wwwroot/sw.js, src/Cleanuparr-2.9.14-linux-amd64/wwwroot/main-SKGWKCKX.js, src/Cleanuparr-2.9.14-linux-amd64/Cleanuparr.staticwebassets.endpoints.json, src/Cleanuparr-2.9.14-linux-amd64/BuildHost-netcore/Microsoft.CodeAnalysis.Workspaces.MSBuild.BuildHost.runtimeconfig.json...
[0/10] Reviewing cleanuparr.sysusers, cleanuparr.service, cleanuparr.tmpfiles, .nvchecker.toml, src/Cleanuparr-2.9.14-linux-amd64/wwwroot/sw.js, src/Cleanuparr-2.9.14-linux-amd64/wwwroot/main-SKGWKCKX.js, src/Cleanuparr-2.9.14-linux-amd64/Cleanuparr.staticwebassets.endpoints.json, src/Cleanuparr-2.9.14-linux-amd64/BuildHost-netcore/Microsoft.CodeAnalysis.Workspaces.MSBuild.BuildHost.runtimeconfig.json, src/Cleanuparr-2.9.14-linux-amd64/BuildHost-netcore/Microsoft.CodeAnalysis.Workspaces.MSBuild.BuildHost.deps.json...
[0/10] Reviewing cleanuparr.sysusers, cleanuparr.service, cleanuparr.tmpfiles, .nvchecker.toml, src/Cleanuparr-2.9.14-linux-amd64/wwwroot/sw.js, src/Cleanuparr-2.9.14-linux-amd64/wwwroot/main-SKGWKCKX.js, src/Cleanuparr-2.9.14-linux-amd64/Cleanuparr.staticwebassets.endpoints.json, src/Cleanuparr-2.9.14-linux-amd64/BuildHost-netcore/Microsoft.CodeAnalysis.Workspaces.MSBuild.BuildHost.runtimeconfig.json, src/Cleanuparr-2.9.14-linux-amd64/BuildHost-netcore/Microsoft.CodeAnalysis.Workspaces.MSBuild.BuildHost.deps.json, src/Cleanuparr-2.9.14-linux-amd64/wwwroot/chunk-2ASHAX27.js...
LLM auditresponse for sw.js:
<security_assessment>
<decision>SAFE</decision>
<details>
The file contains a single line that registers a fetch event listener with an empty callback function. This is a standard minimal service worker stub that performs no operations. No network requests, obfuscation, file operations, or any other potentially dangerous behavior is present. The code is benign and consistent with ordinary service worker scaffolding.
</details>
<summary>Empty fetch listener, no malicious code.</summary>
</security_assessment>

[1/10] Reviewing cleanuparr.sysusers, cleanuparr.service, cleanuparr.tmpfiles, .nvchecker.toml, src/Cleanuparr-2.9.14-linux-amd64/wwwroot/main-SKGWKCKX.js, src/Cleanuparr-2.9.14-linux-amd64/Cleanuparr.staticwebassets.endpoints.json, src/Cleanuparr-2.9.14-linux-amd64/BuildHost-netcore/Microsoft.CodeAnalysis.Workspaces.MSBuild.BuildHost.runtimeconfig.json, src/Cleanuparr-2.9.14-linux-amd64/BuildHost-netcore/Microsoft.CodeAnalysis.Workspaces.MSBuild.BuildHost.deps.json, src/Cleanuparr-2.9.14-linux-amd64/wwwroot/chunk-2ASHAX27.js...
+ Reviewed src/Cleanuparr-2.9.14-linux-amd64/wwwroot/sw.js. Status: SAFE -- Empty fetch listener, no malicious code.
LLM auditresponse for .nvchecker.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard [nvchecker](https://github.com/lilydjwg/nvchecker) configuration file. It simply defines how to check for new versions of the `cleanuparr-bin` package by querying the official GitHub repository `Cleanuparr/Cleanuparr` for tags with a `v` prefix. There is no executable code, no network destinations other than the project's own upstream, and no obfuscation or suspicious operations. This file is used solely for version tracking and is a normal part of AUR packaging practices.
</details>
<summary>Standard nvchecker config, no security concerns.</summary>
</security_assessment>

[2/10] Reviewing cleanuparr.sysusers, cleanuparr.service, cleanuparr.tmpfiles, src/Cleanuparr-2.9.14-linux-amd64/wwwroot/main-SKGWKCKX.js, src/Cleanuparr-2.9.14-linux-amd64/Cleanuparr.staticwebassets.endpoints.json, src/Cleanuparr-2.9.14-linux-amd64/BuildHost-netcore/Microsoft.CodeAnalysis.Workspaces.MSBuild.BuildHost.runtimeconfig.json, src/Cleanuparr-2.9.14-linux-amd64/BuildHost-netcore/Microsoft.CodeAnalysis.Workspaces.MSBuild.BuildHost.deps.json, src/Cleanuparr-2.9.14-linux-amd64/wwwroot/chunk-2ASHAX27.js...
+ Reviewed .nvchecker.toml. Status: SAFE -- Standard nvchecker config, no security concerns.
LLM auditresponse for cleanuparr.tmpfiles:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard systemd-tmpfiles configuration snippet. It defines two directories under `/usr/lib/cleanuparr/config` with mode 0755 and a symlink from `/etc/cleanuparr/config.xml` to `/var/lib/cleanuparr/config.xml`. There are no executable commands, network requests, obfuscated content, or any operations that deviate from normal packaging practices. The entries are routine for applications that need persistent configuration directories and a central configuration file.
</details>
<summary>Standard tmpfiles configuration; no security issues.</summary>
</security_assessment>

LLM auditresponse for cleanuparr.sysusers:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `cleanuparr.sysusers` is a standard systemd sysusers.d configuration. It defines a system user `cleanuparr` with a home directory and adds it to a supplementary group `media`. There are no executable commands, network requests, obfuscated code, or any other malicious elements. This is a routine packaging artifact for daemon services.
</details>
<summary>Standard sysusers config, no malicious content.</summary>
</security_assessment>

[3/10] Reviewing cleanuparr.sysusers, cleanuparr.service, src/Cleanuparr-2.9.14-linux-amd64/wwwroot/main-SKGWKCKX.js, src/Cleanuparr-2.9.14-linux-amd64/Cleanuparr.staticwebassets.endpoints.json, src/Cleanuparr-2.9.14-linux-amd64/BuildHost-netcore/Microsoft.CodeAnalysis.Workspaces.MSBuild.BuildHost.runtimeconfig.json, src/Cleanuparr-2.9.14-linux-amd64/BuildHost-netcore/Microsoft.CodeAnalysis.Workspaces.MSBuild.BuildHost.deps.json, src/Cleanuparr-2.9.14-linux-amd64/wwwroot/chunk-2ASHAX27.js...
+ Reviewed cleanuparr.tmpfiles. Status: SAFE -- Standard tmpfiles configuration; no security issues.
[4/10] Reviewing cleanuparr.service, src/Cleanuparr-2.9.14-linux-amd64/wwwroot/main-SKGWKCKX.js, src/Cleanuparr-2.9.14-linux-amd64/Cleanuparr.staticwebassets.endpoints.json, src/Cleanuparr-2.9.14-linux-amd64/BuildHost-netcore/Microsoft.CodeAnalysis.Workspaces.MSBuild.BuildHost.runtimeconfig.json, src/Cleanuparr-2.9.14-linux-amd64/BuildHost-netcore/Microsoft.CodeAnalysis.Workspaces.MSBuild.BuildHost.deps.json, src/Cleanuparr-2.9.14-linux-amd64/wwwroot/chunk-2ASHAX27.js...
+ Reviewed cleanuparr.sysusers. Status: SAFE -- Standard sysusers config, no malicious content.
LLM auditresponse for Microsoft.CodeAnalysis.Workspaces.MSBuild.BuildHost.deps.json:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a .NET `deps.json` manifest for the `Microsoft.CodeAnalysis.Workspaces.MSBuild.BuildHost` assembly. It contains metadata only: runtime targets, dependency lists, library paths, and SHA-512 hashes for NuGet packages. All referenced packages are from official Microsoft sources (e.g., `Microsoft.Build.Locator`, `Newtonsoft.Json`, `System.CommandLine`). There are no executable instructions, network requests, shell commands, or obfuscated content. The file performs no actions and has no mechanism to execute code. It is a standard metadata file generated by the .NET SDK and poses no security risk.
</details>
<summary>.NET dependency metadata file, no malicious content.</summary>
</security_assessment>

[5/10] Reviewing cleanuparr.service, src/Cleanuparr-2.9.14-linux-amd64/wwwroot/main-SKGWKCKX.js, src/Cleanuparr-2.9.14-linux-amd64/Cleanuparr.staticwebassets.endpoints.json, src/Cleanuparr-2.9.14-linux-amd64/BuildHost-netcore/Microsoft.CodeAnalysis.Workspaces.MSBuild.BuildHost.runtimeconfig.json, src/Cleanuparr-2.9.14-linux-amd64/wwwroot/chunk-2ASHAX27.js...
+ Reviewed src/Cleanuparr-2.9.14-linux-amd64/BuildHost-netcore/Microsoft.CodeAnalysis.Workspaces.MSBuild.BuildHost.deps.json. Status: SAFE -- .NET dependency metadata file, no malicious content.
LLM auditresponse for Microsoft.CodeAnalysis.Workspaces.MSBuild.BuildHost.runtimeconfig.json:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard .NET runtime configuration JSON (`runtimeconfig.json`). It only defines runtime settings (target framework, framework version, roll-forward policy, and a metadata updater property). There is no executable code, network requests, obfuscation, or any deviation from normal packaging practices. No security issues are present.
</details>
<summary>Standard .NET runtime config file, no malicious content.</summary>
</security_assessment>

[6/10] Reviewing cleanuparr.service, src/Cleanuparr-2.9.14-linux-amd64/wwwroot/main-SKGWKCKX.js, src/Cleanuparr-2.9.14-linux-amd64/Cleanuparr.staticwebassets.endpoints.json, src/Cleanuparr-2.9.14-linux-amd64/wwwroot/chunk-2ASHAX27.js...
+ Reviewed src/Cleanuparr-2.9.14-linux-amd64/BuildHost-netcore/Microsoft.CodeAnalysis.Workspaces.MSBuild.BuildHost.runtimeconfig.json. Status: SAFE -- Standard .NET runtime config file, no malicious content.
LLM auditresponse for main-SKGWKCKX.js:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a minified Angular application bundle for the Cleanuparr media management tool. It contains standard UI components (sidebar, toolbar, authentication, settings routing) and makes legitimate network requests only to the project's own domains (github.com/Cleanuparr and cleanuparr.github.io) for version checking and support links. The code uses static imports and does not contain eval, base64 decoding, or any obfuscated payloads. No suspicious system-level operations, data exfiltration, or unexpected remote downloads are present. The minification is standard for production builds and does not indicate malice.
</details>
<summary>Standard Angular frontend, no malicious code found.</summary>
</security_assessment>

LLM auditresponse for cleanuparr.service:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a systemd service unit for the Cleanuparr daemon. It defines how the service is started, its environment variables, and its security hardening parameters. There are no signs of malicious code: no network downloads or commands (curl, wget, bash), no obfuscated or encoded payloads, no attempts to exfiltrate or tamper with system files. The comments provide legitimate configuration guidance for different deployment scenarios. The hardening directives (ProtectSystem=full, PrivateTmp, NoNewPrivileges, etc.) are standard security best practices. The service simply launches the application binary from the expected package install path.
</details>
<summary>
Safe systemd service file, no malicious content.
</summary>
</security_assessment>

[7/10] Reviewing cleanuparr.service, src/Cleanuparr-2.9.14-linux-amd64/Cleanuparr.staticwebassets.endpoints.json, src/Cleanuparr-2.9.14-linux-amd64/wwwroot/chunk-2ASHAX27.js...
+ Reviewed src/Cleanuparr-2.9.14-linux-amd64/wwwroot/main-SKGWKCKX.js. Status: SAFE -- Standard Angular frontend, no malicious code found.
[8/10] Reviewing src/Cleanuparr-2.9.14-linux-amd64/Cleanuparr.staticwebassets.endpoints.json, src/Cleanuparr-2.9.14-linux-amd64/wwwroot/chunk-2ASHAX27.js...
+ Reviewed cleanuparr.service. Status: SAFE -- Safe systemd service file, no malicious content.
LLM auditresponse for chunk-2ASHAX27.js:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a minified Angular component bundle for the CleanupArr web UI, specifically the "Seeker Stats" tab containing Searches, Quality Scores, and Upgrades components. The code defines UI rendering logic, manages local state with signals, and makes API calls to an internal backend (e.g., `getSummary()`, `getEvents()`, `getScores()`) — all standard for the application's stated purpose. No network requests to unexpected hosts, no eval, no base64 decoding, no file system access, and no system commands are present. The minification is standard production JavaScript, not obfuscation intended to hide malicious behavior. The code is consistent with the expected functionality of this AUR package (a media management dashboard).
</details>
<summary>Angular UI code, no malicious behavior found.</summary>
</security_assessment>

[9/10] Reviewing src/Cleanuparr-2.9.14-linux-amd64/Cleanuparr.staticwebassets.endpoints.json...
+ Reviewed src/Cleanuparr-2.9.14-linux-amd64/wwwroot/chunk-2ASHAX27.js. Status: SAFE -- Angular UI code, no malicious behavior found.
LLM auditresponse for Cleanuparr.staticwebassets.endpoints.json:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `Cleanuparr.staticwebassets.endpoints.json` is a standard ASP.NET Core static web assets manifest. It is a declarative JSON configuration file that maps routes to pre-compressed asset files (e.g., JavaScript chunks, CSS, icons) and defines caching and content negotiation headers. The content is machine-generated, contains no executable code, and includes no suspicious patterns such as network requests, obfuscated data, or commands. It serves purely as a build artifact for serving web application resources and poses no security risk.</details>
<summary>
Standard ASP.NET static web assets manifest; no malicious content.
</summary>
</security_assessment>

[10/10] Reviewing ...
+ Reviewed src/Cleanuparr-2.9.14-linux-amd64/Cleanuparr.staticwebassets.endpoints.json. Status: SAFE -- Standard ASP.NET static web assets manifest; no malicious content.
Reviewed all additional files.
Reviewed additional files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 457,222
  Completion Tokens: 8,008
  Total Tokens: 465,230
  Total Cost: $0.042591
  Execution Time: 105.30 seconds
Full audit report can be found in /home/mgalgs/aur-sleuth-data/bulk-reports/deepseek-deepseek-v4-flash/aur-sleuth-report-cleanuparr-bin.txt
Final Status: SAFE


No issues found.
