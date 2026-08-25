---
package: opencode-desktop
pkgver: 1.18.22
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 76c02596d4f1a58500b30a8fd37c0598e2c7d68c
prompt_tokens: 55864
completion_tokens: 8951
total_tokens: 64815
cost: 0.006536110196
execution_time: 625.9
files_reviewed: 12
files_skipped: 0
files_unauditable: 113
unpinned_sources: 0
date: 2026-08-25T03:21:28Z
file_verdicts:
  - file: enable-pacman-target.patch
    status: safe
    summary: Patch adds pacman target to electron-builder config; safe.
  - file: PKGBUILD
    status: safe
    summary: Standard AUR PKGBUILD with no malicious behavior detected.
  - file: opencode-desktop.sh
    status: safe
    summary: Ordinary Electron launcher script; no security concerns detected.
  - file: src/opencode-desktop/.opencode/tool/github-triage.ts
    status: safe
    summary: Legitimate GitHub issue assignment tool, no security issues.
  - file: src/opencode-desktop/infra/app.ts
    status: safe
    summary: Standard SST infrastructure configuration, no malicious content.
  - file: src/opencode-desktop/.opencode/tool/github-pr-search.ts
    status: safe
    summary: Standard GitHub PR search tool; no malicious behavior detected.
  - file: src/opencode-desktop/infra/secret.ts
    status: safe
    summary: Safe infrastructure secrets definition for SST deployment.
  - file: src/opencode-desktop/github/index.ts
    status: safe
    summary: Legitimate application source code, no malicious patterns.
  - file: src/opencode-desktop/infra/lake.ts
    status: safe
    summary: Standard infrastructure definition, no malicious content.
  - file: src/opencode-desktop/artifacts/glm52-rise-video/src/data.ts
    status: safe
    summary: Static data file with no security concerns.
  - file: src/opencode-desktop/infra/monitoring.ts
    status: safe
    summary: Legitimate Honeycomb monitoring configuration; no malicious behavior found.
  - file: src/opencode-desktop/infra/stats.ts
    status: safe
    summary: Legitimate infrastructure config, no malicious behavior.
---

Cloning https://aur.archlinux.org/opencode-desktop.git...
Cloned opencode-desktop
Analyzing opencode-desktop AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains only standard variable assignments, comments, and function definitions for `prepare()`, `build()`, and `package()` which are **not executed** during `makepkg --nobuild --nodeps --noprepare` or `makepkg --printsrcinfo`. The top-level scope is purely declarative with no command substitutions, backtick expansions, or function calls that could execute arbitrary code. The `source` array points to the upstream project&#39;s own git repository (plus two local files that are part of the AUR package itself), and the sole `sha256sums` entry for the VCS source is `SKIP`, which is expected and not a security concern at this stage. There is no `pkgver()` function or any other code that would run during sourcing. Therefore, running the two specified commands is safe.
</details>
<evidence></evidence>
<summary>No code executes during source fetch.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No code executes during source fetch.
Downloading sources (attempt 1/3)...
makepkg --nobuild --nodeps --noprepare successful
Running makepkg --printsrcinfo to get source files for agent...
makepkg --printsrcinfo successful
Reviewing required files...
[0/2] Reviewing PKGBUILD...
[0/2] Reviewing PKGBUILD, enable-pacman-target.patch...
LLM auditresponse for enable-pacman-target.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard patch file that modifies an electron-builder configuration to add the `pacman` target to the Linux build targets list. The change is clearly documented in the patch header and is a common practice for AUR packages that need to produce a `.pkg.tar.zst` archive to extract launcher files and icons. There is no obfuscation, encoded commands, network requests, or any suspicious operations. The patch simply adds a string to an array in a TypeScript configuration file. No malicious behavior is present.
</details>
<evidence></evidence>
<summary>Patch adds pacman target to electron-builder config; safe.</summary>
</security_assessment>

[1/2] Reviewing PKGBUILD...
+ Reviewed enable-pacman-target.patch. Status: SAFE -- Patch adds pacman target to electron-builder config; safe.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD is a well-structured Arch Linux package for the opencode-desktop application. It fetches the upstream source from the official GitHub repository using a git tag (v$pkgver), applies a local patch, and builds the application using standard tooling (bun, electron-builder). All network destinations are the project's own GitHub repository. The build process does not download or execute arbitrary code from unexpected hosts, nor does it attempt to exfiltrate data, obfuscate commands, or tamper with system files beyond the normal scope of packaging. The extraction of the .desktop file and icons from the electron-builder-created .pacman archive is an unconventional but legitimate technique to keep packaging in sync with upstream definitions. There is no evidence of injected malicious code or supply-chain attack vectors.
</details>
<evidence></evidence>
<summary>Standard AUR PKGBUILD with no malicious behavior detected.</summary>
</security_assessment>

[2/2] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard AUR PKGBUILD with no malicious behavior detected.
Reviewed all required files.
Deciding which files to review next...
Note: 113 compiled/archived file(s) cannot be audited as text and were not reviewed (src/opencode-desktop/README.ar.md, src/opencode-desktop/artifacts/glm52-rise-video/out/flash-share.mp4, src/opencode-desktop/artifacts/glm52-rise-video/out/glm-52-broke-out.mp4 and 110 more). For a package that ships prebuilt binaries, the audit covers the packaging, not the payload.
Note: 4866 files available for selection; offering the 50 highest-priority to the model. 2814 lower-priority file(s) were not offered.
LLM response for file selection:
opencode-desktop.sh
src/opencode-desktop/.opencode/tool/github-pr-search.ts
src/opencode-desktop/.opencode/tool/github-triage.ts
src/opencode-desktop/github/index.ts
src/opencode-desktop/infra/app.ts
src/opencode-desktop/infra/monitoring.ts
src/opencode-desktop/infra/secret.ts
src/opencode-desktop/infra/lake.ts
src/opencode-desktop/artifacts/glm52-rise-video/src/data.ts
src/opencode-desktop/infra/stats.ts
Decided to review 10 additional files: opencode-desktop.sh, src/opencode-desktop/.opencode/tool/github-pr-search.ts, src/opencode-desktop/.opencode/tool/github-triage.ts, src/opencode-desktop/github/index.ts, src/opencode-desktop/infra/app.ts, src/opencode-desktop/infra/monitoring.ts, src/opencode-desktop/infra/secret.ts, src/opencode-desktop/infra/lake.ts, src/opencode-desktop/artifacts/glm52-rise-video/src/data.ts, src/opencode-desktop/infra/stats.ts
Reviewing additional files...
Reviewing additional files...
[0/10] Reviewing opencode-desktop.sh...
[0/10] Reviewing opencode-desktop.sh, src/opencode-desktop/.opencode/tool/github-triage.ts...
[0/10] Reviewing opencode-desktop.sh, src/opencode-desktop/.opencode/tool/github-triage.ts, src/opencode-desktop/.opencode/tool/github-pr-search.ts...
LLM auditresponse for opencode-desktop.sh:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a straightforward launcher script that executes the Electron runtime with the application's main file. It contains no network operations, file downloads, obfuscation, or unusual system modifications. The script only invokes `/usr/bin/electron42` with a fixed application path and forwards all user-provided arguments. This is a standard packaging pattern for Electron applications.
</details>
<evidence></evidence>
<summary>Ordinary Electron launcher script; no security concerns detected.</summary>
</security_assessment>

[1/10] Reviewing src/opencode-desktop/.opencode/tool/github-triage.ts, src/opencode-desktop/.opencode/tool/github-pr-search.ts...
+ Reviewed opencode-desktop.sh. Status: SAFE -- Ordinary Electron launcher script; no security concerns detected.
[1/10] Reviewing src/opencode-desktop/.opencode/tool/github-triage.ts, src/opencode-desktop/.opencode/tool/github-pr-search.ts, src/opencode-desktop/github/index.ts...
LLM auditresponse for github-triage.ts:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a legitimate TypeScript plugin tool for assigning GitHub issues to predefined team members. It uses the official GitHub API (`api.github.com`) with a token from the environment variable `GITHUB_TOKEN`, which is standard practice for GitHub integrations. There is no obfuscated code, no suspicious network requests to unknown or unexpected hosts, no file system manipulation, no eval or encoded commands, and no behavior that deviates from its stated purpose of assigning issues. The use of `Math.random()` for random selection is benign and not a security concern. The code is consistent with normal packaging and application functionality.
</details>
<evidence></evidence>
<summary>Legitimate GitHub issue assignment tool, no security issues.</summary>
</security_assessment>

[1/10] Reviewing src/opencode-desktop/.opencode/tool/github-triage.ts, src/opencode-desktop/.opencode/tool/github-pr-search.ts, src/opencode-desktop/github/index.ts, src/opencode-desktop/infra/app.ts...
[2/10] Reviewing src/opencode-desktop/.opencode/tool/github-pr-search.ts, src/opencode-desktop/github/index.ts, src/opencode-desktop/infra/app.ts...
+ Reviewed src/opencode-desktop/.opencode/tool/github-triage.ts. Status: SAFE -- Legitimate GitHub issue assignment tool, no security issues.
LLM auditresponse for app.ts:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a TypeScript configuration for a cloud infrastructure deployment using the SST framework. It defines secrets, a Cloudflare Worker (API), an Astro site, and a static site. All operations are standard infrastructure-as-code patterns: linking secrets, setting environment variables, configuring Cloudflare bindings, and specifying build commands. There is no evidence of malicious behavior such as data exfiltration, obfuscated code, unexpected network requests, or execution of untrusted code. The file is part of the upstream application source, not a packaging script, and its content is consistent with legitimate application deployment configuration.
</details>
<evidence></evidence>
<summary>Standard SST infrastructure configuration, no malicious content.</summary>
</security_assessment>

[2/10] Reviewing src/opencode-desktop/.opencode/tool/github-pr-search.ts, src/opencode-desktop/github/index.ts, src/opencode-desktop/infra/app.ts, src/opencode-desktop/infra/monitoring.ts...
[3/10] Reviewing src/opencode-desktop/.opencode/tool/github-pr-search.ts, src/opencode-desktop/github/index.ts, src/opencode-desktop/infra/monitoring.ts...
+ Reviewed src/opencode-desktop/infra/app.ts. Status: SAFE -- Standard SST infrastructure configuration, no malicious content.
LLM auditresponse for github-pr-search.ts:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is an OpenCode plugin tool that searches GitHub pull requests in the anomalyco/opencode repository via the official GitHub Search API. It constructs a query scoped to the package's own upstream repo and uses `process.env.GITHUB_TOKEN` solely as a Bearer token for GitHub API authentication. The only network destination is `https://api.github.com`, which is the expected host for this functionality. There is no obfuscated code, no dynamic code execution, no unexpected file operations, and no data exfiltration to third-party hosts. Using an environment variable for a GitHub token is standard practice for such tools. This is upstream application functionality, not an injected supply-chain attack.
</details>
<evidence>
</evidence>
<summary>
Standard GitHub PR search tool; no malicious behavior detected.
</summary>
</security_assessment>

[4/10] Reviewing src/opencode-desktop/github/index.ts, src/opencode-desktop/infra/monitoring.ts...
+ Reviewed src/opencode-desktop/.opencode/tool/github-pr-search.ts. Status: SAFE -- Standard GitHub PR search tool; no malicious behavior detected.
[4/10] Reviewing src/opencode-desktop/github/index.ts, src/opencode-desktop/infra/monitoring.ts, src/opencode-desktop/infra/secret.ts...
LLM auditresponse for secret.ts:
<security_assessment>
<decision>SAFE</decision>
<details>
This file defines cloud resource secrets (R2, Honeycomb, Upstash) using the SST framework and a random password generator. The code is standard infrastructure-as-a-setup for a cloud-deployed application. There are no obfuscated commands, unexpected network requests, file system modifications, or data exfiltration attempts. The file does exactly what it advertises: it declares secret configurations for the application's infrastructure.
</details>
<evidence></evidence>
<summary>Safe infrastructure secrets definition for SST deployment.</summary>
</security_assessment>

[5/10] Reviewing src/opencode-desktop/github/index.ts, src/opencode-desktop/infra/monitoring.ts...
+ Reviewed src/opencode-desktop/infra/secret.ts. Status: SAFE -- Safe infrastructure secrets definition for SST deployment.
[5/10] Reviewing src/opencode-desktop/github/index.ts, src/opencode-desktop/infra/monitoring.ts, src/opencode-desktop/infra/lake.ts...
LLM auditresponse for index.ts:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a TypeScript source file for the OpenCode GitHub integration, designed to automate code review and modification via GitHub Actions. All network requests are to legitimate, expected services: GitHub API (`api.github.com`), the application's own token exchange API (`api.opencode.ai`), and a share-image generation service (`social-cards.sst.dev`). The code spawns a local `opencode` server, configures git with temporary credentials, fetches PR/issue data, runs AI-driven commands, and pushes changes. There is no obfuscation, no downloading and executing of untrusted code, no exfiltration of sensitive system data, and no backdoor. The operations align with the stated purpose of the application. No evidence of a supply-chain attack or malicious injection was found.
</details>
<evidence></evidence>
<summary>Legitimate application source code, no malicious patterns.</summary>
</security_assessment>

[6/10] Reviewing src/opencode-desktop/infra/monitoring.ts, src/opencode-desktop/infra/lake.ts...
+ Reviewed src/opencode-desktop/github/index.ts. Status: SAFE -- Legitimate application source code, no malicious patterns.
[6/10] Reviewing src/opencode-desktop/infra/monitoring.ts, src/opencode-desktop/infra/lake.ts, src/opencode-desktop/artifacts/glm52-rise-video/src/data.ts...
LLM auditresponse for lake.ts:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a TypeScript module using Pulumi (via SST) to define AWS infrastructure resources for an application called "opencode-desktop". It creates S3 Tables buckets, Glue catalogs, Athena workgroups, Firehose delivery streams, IAM roles/policies, and other related resources. There is no evidence of malicious behavior such as obfuscated code, network requests to unexpected hosts, exfiltration of local data, backdoors, or execution of attacker-controlled code. The file uses standard infrastructure-as-code patterns, including random password generation for secrets and SSM parameter storage, which are normal for such deployments. The health check command only fetches a local endpoint within the container. No suspicious or dangerous activities are present.
</details>
<evidence>
</evidence>
<summary>Standard infrastructure definition, no malicious content.</summary>
</security_assessment>

[7/10] Reviewing src/opencode-desktop/infra/monitoring.ts, src/opencode-desktop/artifacts/glm52-rise-video/src/data.ts...
+ Reviewed src/opencode-desktop/infra/lake.ts. Status: SAFE -- Standard infrastructure definition, no malicious content.
[7/10] Reviewing src/opencode-desktop/infra/monitoring.ts, src/opencode-desktop/artifacts/glm52-rise-video/src/data.ts, src/opencode-desktop/infra/stats.ts...
LLM auditresponse for data.ts:
<security_assessment>
<decision>SAFE</decision>
<details>
This file contains only static constant data exports (types and arrays of daily token volume records). There is no executable code, network requests, file operations, obfuscation, or any dynamic behavior that could be exploited. The data appears to be legitimate token usage statistics for AI models, formatted for visualization. No security concerns.
</details>
<evidence></evidence>
<summary>Static data file with no security concerns.</summary>
</security_assessment>

[8/10] Reviewing src/opencode-desktop/infra/monitoring.ts, src/opencode-desktop/infra/stats.ts...
+ Reviewed src/opencode-desktop/artifacts/glm52-rise-video/src/data.ts. Status: SAFE -- Static data file with no security concerns.
LLM auditresponse for monitoring.ts:
<security_assessment>
<decision>SAFE</decision>
<details>
This file defines Honeycomb monitoring infrastructure for the OpenCode application: alert triggers, queries, and a Discord webhook recipient. The webhook URL uses the package's own domain, and the secret is imported from a local module. All operations are standard infrastructure-as-code for a legitimate monitoring setup. There is no obfuscated code, no unexpected network destinations, no file system modifications, and no exfiltration of sensitive data. The file performs exactly its stated purpose—configuring alerts for the application's own metrics.
</details>
<evidence></evidence>
<summary>
Legitimate Honeycomb monitoring configuration; no malicious behavior found.
</summary>
</security_assessment>

[9/10] Reviewing src/opencode-desktop/infra/stats.ts...
+ Reviewed src/opencode-desktop/infra/monitoring.ts. Status: SAFE -- Legitimate Honeycomb monitoring configuration; no malicious behavior found.
LLM auditresponse for stats.ts:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a Pulumi/SST infrastructure-as-code configuration that provisions cloud resources (AWS S3 Tables, PlanetScale database, Cloudflare SolidStart app, and a stat sync service). It contains no obfuscated code, unexpected network requests, data exfiltration, or backdoors. All operations are standard for deploying the application's backend infrastructure. The hardcoded Cloudflare account ID is a configuration choice, not evidence of malice. The file does not fetch or execute untrusted code at build or runtime. It is a legitimate part of the opencode-desktop package's deployment scripts.
</details>
<evidence>
</evidence>
<summary>Legitimate infrastructure config, no malicious behavior.</summary>
</security_assessment>

[10/10] Reviewing ...
+ Reviewed src/opencode-desktop/infra/stats.ts. Status: SAFE -- Legitimate infrastructure config, no malicious behavior.
Reviewed all additional files.
Reviewed additional files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 55,864
  Completion Tokens: 8,951
  Total Tokens: 64,815
  Total Cost: $0.006536
  Execution Time: 625.90 seconds

Final Status: SAFE


No issues found.
