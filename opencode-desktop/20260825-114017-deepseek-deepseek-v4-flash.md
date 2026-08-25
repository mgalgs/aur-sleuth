---
package: opencode-desktop
pkgver: 1.18.23
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 34eecedf33cdb5da67bea8964402044d560850d8
prompt_tokens: 53652
completion_tokens: 8361
total_tokens: 62013
cost: 0.0060099396
execution_time: 835.7
files_reviewed: 12
files_skipped: 0
files_unauditable: 113
unpinned_sources: 0
date: 2026-08-25T11:40:16Z
file_verdicts:
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD, no malicious code found.
  - file: enable-pacman-target.patch
    status: safe
    summary: Standard patch adding pacman target for AUR packaging.
  - file: src/opencode-desktop/.opencode/tool/github-pr-search.ts
    status: safe
    summary: Legitimate GitHub API tool, no security issues.
  - file: src/opencode-desktop/artifacts/glm52-rise-video/package.json
    status: safe
    summary: Standard Remotion project package.json, no malicious content.
  - file: src/opencode-desktop/.opencode/tool/github-triage.ts
    status: safe
    summary: Legitimate GitHub API tool with no malicious indicators.
  - file: src/opencode-desktop/github/index.ts
    status: safe
    summary: Legitimate GitHub Actions workflow file for OpenCode AI assistant.
  - file: src/opencode-desktop/artifacts/glm52-rise-video/src/data.ts
    status: safe
    summary: Static data file; no executable or malicious code.
  - file: src/opencode-desktop/infra/app.ts
    status: safe
    summary: AUR infrastructure configuration file - no malicious code found.
  - file: src/opencode-desktop/infra/monitoring.ts
    status: safe
    summary: Legitimate monitoring configuration for Honeycomb alerts.
  - file: src/opencode-desktop/infra/secret.ts
    status: safe
    summary: Standard SST secret configuration; no security issues.
  - file: opencode-desktop.sh
    status: safe
    summary: Standard electron launcher script, no security issues.
  - file: src/opencode-desktop/infra/lake.ts
    status: safe
    summary: Standard IaC file; no supply-chain attack detected.
---

Cloning https://aur.archlinux.org/opencode-desktop.git...
Cloned opencode-desktop
Analyzing opencode-desktop AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD's global scope contains only variable assignments, source array definitions, and standard dependency lists. No command substitutions, function calls, or other code execution occurs at the top level aside from the normal sourcing of the file. The `pkgver()` function is not defined; `pkgver` is a static variable. The `source` array defines a git clone from the official upstream repository and two local source files with checksums. There are no network requests to suspicious hosts, no obfuscated code, and no dangerous operations in the scope that runs during `makepkg --nobuild --nodeps --noprepare` or `makepkg --printsrcinfo`. The `prepare()`, `build()`, and `package()` functions contain only standard packaging operations that are not executed at this stage. This is a safe, conventional PKGBUILD for the narrow pre-audit gate.
</details>
<evidence></evidence>
<summary>Standard PKGBUILD, no global scope threats.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- Standard PKGBUILD, no global scope threats.
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Running makepkg --printsrcinfo to get source files for agent...
makepkg --printsrcinfo successful
Reviewing required files...
[0/2] Reviewing PKGBUILD...
[0/2] Reviewing PKGBUILD, enable-pacman-target.patch...
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD follows standard Arch packaging practices for a desktop application built from source. It clones the upstream repository from the official GitHub source (`github.com/anomalyco/opencode.git`) using a pinned tag, which is the intended distribution channel. The SHA256 checksums for the shell wrapper and patch are provided and verified. All build and install steps are consistent with packaging a Node.js/Electron application for Arch Linux: dependency installation, building, path sanitization, and extraction of icons and desktop entries from the electron-builder output. The script does not download or execute any code from external or untrusted hosts, nor does it contain obfuscated or encoded commands. There is no evidence of data exfiltration, backdoors, or system tampering beyond the application&#x27;s own installation directory. The modifications (Wayland app_id override, removal of musl prebuilds, stripping build host paths) are legitimate packaging hygiene, not malicious behavior.
</details>
<evidence>
</evidence>
<summary>Standard AUR PKGBUILD, no malicious code found.</summary>
</security_assessment>

[1/2] Reviewing enable-pacman-target.patch...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD, no malicious code found.
LLM auditresponse for enable-pacman-target.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard patch file that modifies an electron-builder configuration to add 'pacman' as a Linux target. The purpose is to generate a .pacman archive (native Arch Linux package format) so that the AUR PKGBUILD can extract the .desktop launcher and hicolor icon set during packaging. The patch is clean, well-commented, and performs no network requests, file operations, or code execution. There is no obfuscation, encoded commands, or evidence of malicious intent. This is an ordinary supply-chain hygiene practice for AUR packages that wrap electron-builder.
</details>
<evidence></evidence>
<summary>Standard patch adding pacman target for AUR packaging.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed enable-pacman-target.patch. Status: SAFE -- Standard patch adding pacman target for AUR packaging.
Reviewed all required files.
Deciding which files to review next...
Note: 113 compiled/archived file(s) cannot be audited as text and were not reviewed (src/opencode-desktop/README.ar.md, src/opencode-desktop/artifacts/glm52-rise-video/out/flash-share.mp4, src/opencode-desktop/artifacts/glm52-rise-video/out/glm-52-broke-out.mp4 and 110 more). For a package that ships prebuilt binaries, the audit covers the packaging, not the payload.
Note: 4868 files available for selection; offering the 50 highest-priority to the model. 2815 lower-priority file(s) were not offered.
LLM response for file selection:
opencode-desktop.sh
src/opencode-desktop/.opencode/tool/github-pr-search.ts
src/opencode-desktop/.opencode/tool/github-triage.ts
src/opencode-desktop/artifacts/glm52-rise-video/package.json
src/opencode-desktop/artifacts/glm52-rise-video/src/data.ts
src/opencode-desktop/github/index.ts
src/opencode-desktop/infra/app.ts
src/opencode-desktop/infra/monitoring.ts
src/opencode-desktop/infra/secret.ts
src/opencode-desktop/infra/lake.ts
Decided to review 10 additional files: opencode-desktop.sh, src/opencode-desktop/.opencode/tool/github-pr-search.ts, src/opencode-desktop/.opencode/tool/github-triage.ts, src/opencode-desktop/artifacts/glm52-rise-video/package.json, src/opencode-desktop/artifacts/glm52-rise-video/src/data.ts, src/opencode-desktop/github/index.ts, src/opencode-desktop/infra/app.ts, src/opencode-desktop/infra/monitoring.ts, src/opencode-desktop/infra/secret.ts, src/opencode-desktop/infra/lake.ts
Reviewing additional files...
Reviewing additional files...
[0/10] Reviewing opencode-desktop.sh...
[0/10] Reviewing opencode-desktop.sh, src/opencode-desktop/.opencode/tool/github-triage.ts...
[0/10] Reviewing opencode-desktop.sh, src/opencode-desktop/.opencode/tool/github-triage.ts, src/opencode-desktop/.opencode/tool/github-pr-search.ts...
LLM auditresponse for github-pr-search.ts:
<security_assessment>
<decision>SAFE</decision>
<details>
This file defines a tool for searching GitHub pull requests in the anomalyco/opencode repository via the official GitHub API. It uses the environment variable `GITHUB_TOKEN` for authentication, which is a standard practice for GitHub API integrations. All network requests go to `https://api.github.com`, the legitimate GitHub API endpoint. There is no obfuscated code, no suspicious file operations, no eval or base64 decoding, and no deviation from expected application functionality. The code is consistent with a legitimate integration tool for GitHub. No evidence of malicious or supply-chain attack behavior was found.
</details>
<evidence>
</evidence>
<summary>Legitimate GitHub API tool, no security issues.</summary>
</security_assessment>

[0/10] Reviewing opencode-desktop.sh, src/opencode-desktop/.opencode/tool/github-triage.ts, src/opencode-desktop/.opencode/tool/github-pr-search.ts, src/opencode-desktop/artifacts/glm52-rise-video/package.json...
[1/10] Reviewing opencode-desktop.sh, src/opencode-desktop/.opencode/tool/github-triage.ts, src/opencode-desktop/artifacts/glm52-rise-video/package.json...
+ Reviewed src/opencode-desktop/.opencode/tool/github-pr-search.ts. Status: SAFE -- Legitimate GitHub API tool, no security issues.
LLM auditresponse for package.json:
<security_assessment>
<decision>SAFE</decision>
<details>
This `package.json` is a standard configuration file for a Remotion-based video rendering project. It declares npm dependencies (`@remotion/cli`, `react`, `react-dom`, `remotion`, `typescript`) and scripts that invoke `remotion render` and `remotion still` commands. There are no suspicious network requests, obfuscated code, dangerous commands (eval, base64, curl, wget), or any actions that deviate from normal packaging practices. The file is purely declarative and does not execute any arbitrary or malicious code.
</details>
<evidence></evidence>
<summary>Standard Remotion project package.json, no malicious content.</summary>
</security_assessment>

[1/10] Reviewing opencode-desktop.sh, src/opencode-desktop/.opencode/tool/github-triage.ts, src/opencode-desktop/artifacts/glm52-rise-video/package.json, src/opencode-desktop/artifacts/glm52-rise-video/src/data.ts...
[2/10] Reviewing opencode-desktop.sh, src/opencode-desktop/.opencode/tool/github-triage.ts, src/opencode-desktop/artifacts/glm52-rise-video/src/data.ts...
+ Reviewed src/opencode-desktop/artifacts/glm52-rise-video/package.json. Status: SAFE -- Standard Remotion project package.json, no malicious content.
LLM auditresponse for github-triage.ts:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a TypeScript tool that assigns GitHub issues to team members via the GitHub API. It uses standard environment variables (`GITHUB_TOKEN`, `ISSUE_NUMBER`) and only communicates with `api.github.com`. There is no obfuscation, unexpected network requests, file system modifications, or execution of untrusted code. All operations serve the intended application functionality—a GitHub issue triage mechanism within the OpenCode desktop project. No malicious or supply-chain attack indicators are present.
</details>
<evidence>
</evidence>
<summary>Legitimate GitHub API tool with no malicious indicators.</summary>
</security_assessment>

[2/10] Reviewing opencode-desktop.sh, src/opencode-desktop/.opencode/tool/github-triage.ts, src/opencode-desktop/artifacts/glm52-rise-video/src/data.ts, src/opencode-desktop/github/index.ts...
[3/10] Reviewing opencode-desktop.sh, src/opencode-desktop/artifacts/glm52-rise-video/src/data.ts, src/opencode-desktop/github/index.ts...
+ Reviewed src/opencode-desktop/.opencode/tool/github-triage.ts. Status: SAFE -- Legitimate GitHub API tool with no malicious indicators.
LLM auditresponse for index.ts:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is the main GitHub Actions workflow script for the OpenCode AI coding assistant. It processes issue and pull request comments, fetches repository data, spawns a local OpenCode server, and interacts with the OpenCode API and GitHub API to perform AI-driven code modifications. All network requests are to legitimate services (GitHub API, api.opencode.ai, github.com/user-attachments) and align with the application's stated purpose. There is no obfuscated code, no base64 command execution, no exfiltration of sensitive local data, and no unexpected system modifications. The git operations and file handling are standard for a CI automation workflow. The file is a normal part of the OpenCode desktop package for automating code review and modification via GitHub Actions, with no evidence of supply-chain attack or malicious intent.
</details>
<evidence></evidence>
<summary>Legitimate GitHub Actions workflow file for OpenCode AI assistant.</summary>
</security_assessment>

[3/10] Reviewing opencode-desktop.sh, src/opencode-desktop/artifacts/glm52-rise-video/src/data.ts, src/opencode-desktop/github/index.ts, src/opencode-desktop/infra/app.ts...
[4/10] Reviewing opencode-desktop.sh, src/opencode-desktop/artifacts/glm52-rise-video/src/data.ts, src/opencode-desktop/infra/app.ts...
+ Reviewed src/opencode-desktop/github/index.ts. Status: SAFE -- Legitimate GitHub Actions workflow file for OpenCode AI assistant.
LLM auditresponse for data.ts:
<security_assessment>
<decision>SAFE</decision>
<details>
The file `data.ts` contains only static TypeScript type definitions and data declarations. It exports types and constant arrays of daily token volumes for various AI models. There are no function calls, network requests, file operations, obfuscated strings, or any executable logic. The content is purely declarative data, consistent with a chart or visualization dataset. No security concerns are present.
</details>
<evidence>
</evidence>
<summary>Static data file; no executable or malicious code.</summary>
</security_assessment>

[4/10] Reviewing opencode-desktop.sh, src/opencode-desktop/artifacts/glm52-rise-video/src/data.ts, src/opencode-desktop/infra/app.ts, src/opencode-desktop/infra/monitoring.ts...
[5/10] Reviewing opencode-desktop.sh, src/opencode-desktop/infra/app.ts, src/opencode-desktop/infra/monitoring.ts...
+ Reviewed src/opencode-desktop/artifacts/glm52-rise-video/src/data.ts. Status: SAFE -- Static data file; no executable or malicious code.
LLM auditresponse for app.ts:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard infrastructure-as-code configuration for SST (Serverless Stack) deploying a Cloudflare Worker, an Astro site, and a static site. It declares secrets, environment variables, and Cloudflare resources. There is no obfuscated code, no suspicious network requests, no dangerous commands, and no exfiltration of data. The content is entirely declarative and consistent with legitimate packaging and deployment practices. No evidence of a supply chain attack.
</details>
<evidence></evidence>
<summary>AUR infrastructure configuration file - no malicious code found.</summary>
</security_assessment>

[6/10] Reviewing opencode-desktop.sh, src/opencode-desktop/infra/monitoring.ts...
+ Reviewed src/opencode-desktop/infra/app.ts. Status: SAFE -- AUR infrastructure configuration file - no malicious code found.
[6/10] Reviewing opencode-desktop.sh, src/opencode-desktop/infra/monitoring.ts, src/opencode-desktop/infra/secret.ts...
LLM auditresponse for monitoring.ts:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is an infrastructure-as-code configuration for setting up monitoring alerts in Honeycomb for the OpenCode application. It defines webhook recipients, queries, and triggers to monitor HTTP errors, TPS, and free-tier requests. The code imports secrets and domain names from local modules, and uses standard SDK constructs to configure alerts. There is no obfuscated code, no network requests to unexpected hosts, no execution of untrusted binaries, no file system manipulation, and no behavior that deviates from legitimate application monitoring setup. All operations are purely declarative and tied to the application's own upstream monitoring infrastructure.</details>
<evidence></evidence>
<summary>Legitimate monitoring configuration for Honeycomb alerts.</summary>
</security_assessment>

[6/10] Reviewing opencode-desktop.sh, src/opencode-desktop/infra/monitoring.ts, src/opencode-desktop/infra/secret.ts, src/opencode-desktop/infra/lake.ts...
[7/10] Reviewing opencode-desktop.sh, src/opencode-desktop/infra/secret.ts, src/opencode-desktop/infra/lake.ts...
+ Reviewed src/opencode-desktop/infra/monitoring.ts. Status: SAFE -- Legitimate monitoring configuration for Honeycomb alerts.
LLM auditresponse for secret.ts:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a configuration snippet for a TypeScript application using the SST (Serverless Stack) framework. It defines a linkable secret wrapper and exports several secret declarations (R2AccessKey, HoneycombApiKey, UpstashRedisRestUrl, etc.) and a random password for a Honeycomb webhook secret. There is no obfuscation, no network requests, no file system operations, no encoded or dangerous commands, and no deviation from standard infrastructure-as-code patterns. The code serves the application's stated purpose (managing cloud secrets) and contains no signs of a supply-chain attack or malicious injection.
</details>
<evidence></evidence>
<summary>Standard SST secret configuration; no security issues.</summary>
</security_assessment>

[8/10] Reviewing opencode-desktop.sh, src/opencode-desktop/infra/lake.ts...
+ Reviewed src/opencode-desktop/infra/secret.ts. Status: SAFE -- Standard SST secret configuration; no security issues.
LLM auditresponse for opencode-desktop.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard launch wrapper for an Electron-based application. It executes the electron42 binary with the application path and any provided arguments. There is no obfuscation, no network requests, no suspicious file operations, and no deviation from normal packaging practices. The script is minimal and performs exactly what is expected: launching the packaged application.
</details>
<evidence></evidence>
<summary>Standard electron launcher script, no security issues.</summary>
</security_assessment>

[9/10] Reviewing src/opencode-desktop/infra/lake.ts...
+ Reviewed opencode-desktop.sh. Status: SAFE -- Standard electron launcher script, no security issues.
LLM auditresponse for lake.ts:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a TypeScript infrastructure-as-code definition for deploying AWS resources (S3 Tables, Glue catalog, Athena, Firehose, ECS, etc.) using a framework resembling Pulumi/SST. It constructs storage, ingestion, and query infrastructure for a data lake component of the OpenCode application. No malicious patterns are present: no obfuscated code, no unexpected network downloads, no data exfiltration, and no shell injection. The only dynamic code is a health check command that fetches `localhost:3000/health`—standard practice. The Dockerfile reference points to an internal project path. The random password and SSM parameter usage are normal. Nothing in this file deviates from legitimate IaC packaging.
</details>
<evidence></evidence>
<summary>Standard IaC file; no supply-chain attack detected.</summary>
</security_assessment>

[10/10] Reviewing ...
+ Reviewed src/opencode-desktop/infra/lake.ts. Status: SAFE -- Standard IaC file; no supply-chain attack detected.
Reviewed all additional files.
Reviewed additional files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 53,652
  Completion Tokens: 8,361
  Total Tokens: 62,013
  Total Cost: $0.006010
  Execution Time: 835.70 seconds

Final Status: SAFE


No issues found.
