---
package: immich-cli
pkgbase: immich
pkgver: 3.4.2
pkgrel: 1
result: safe
model: deepseek/deepseek-v4-flash
provider: custom
aur_sleuth_rev: 3f8f339d2184315a824bf6b8e30068212deac13a
prompt_tokens: 49972
completion_tokens: 10968
total_tokens: 60940
cost: 0.00647172
execution_time: 78.4
files_reviewed: 17
files_skipped: 0
maintainer_files: 17
source_fetch: not_attempted
upstream_files: 0
upstream_named_files: 0
unpinned_sources: 4
injection_attempts: 0
date: 2026-11-19T00:10:09Z
file_verdicts:
  - file: .gitignore
    status: safe
    summary: Standard gitignore file with no security concerns.
  - file: .git-blame-ignore-revs
    status: safe
    summary: Benign Git ignore-revs file with no security concerns.
  - file: BREAKING CHANGELOG.md
    status: safe
    summary: Plain text changelog, no code or threats.
  - file: .SRCINFO
    status: safe
    summary: Standard package metadata, no malicious code detected.
  - file: LICENSE
    status: safe
    summary: Standard license file, no security issues.
  - file: REUSE.toml
    status: safe
    summary: Declarative metadata file; no executable or dangerous content.
  - file: immich-server.install
    status: safe
    summary: Standard install script, no malicious content.
  - file: immich-server.service
    status: safe
    summary: Standard systemd service file, no malicious content.
  - file: immich.conf
    status: safe
    summary: Configuration file with no malicious content.
  - file: immich.sysusers
    status: safe
    summary: Standard sysusers config; no security issues.
  - file: nest-cli.json.patch
    status: safe
    summary: Routine configuration patch, no security issues.
  - file: immich.tmpfiles
    status: safe
    summary: Standard tmpfiles configuration, no threats.
  - file: nginx.immich.conf
    status: safe
    summary: Standard nginx config, no security issues.
  - file: postgres-path.patch
    status: safe
    summary: Routine path adaptation patch - no security issues.
  - file: sh-serverhome.patch
    status: safe
    summary: Routine packaging patch; no malicious indicators.
  - file: sharp.patch
    status: safe
    summary: Standard patch adding install hook for native build.
  - file: PKGBUILD
    status: safe
    summary: Standard PKGBUILD; no evidence of malicious code injection.
---

immich-cli is built from immich
Materializing immich-cli from local mirror...
Materialized immich-cli
Analyzing immich-cli AUR package with deepseek/deepseek-v4-flash
Performing initial audit of PKGBUILD to ensure that we can safely run `makepkg`
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
The PKGBUILD contains no top-level command substitutions or variable assignments that execute external commands. All top-level code consists solely of standard variable definitions (strings, arrays, and version constraints) and the `source` array with URLs and patch file names. The `prepare()`, `build()`, and `package_*()` functions are not executed during `makepkg --printsrcinfo`, so any code inside them is out of scope. Running this command to parse metadata is safe.
</details>
<evidence></evidence>
<summary>No top-level code executes malicious commands.</summary>
</security_assessment>

+ Initial PKGBUILD audit complete -- No top-level code executes malicious commands.
Note: 4 remote source(s) have no checksum (sha256sums=SKIP), so the bytes are not verifiable: https://download.geonames.org/export/dump/cities500.zip, https://download.geonames.org/export/dump/admin1CodesASCII.txt, https://download.geonames.org/export/dump/admin2Codes.txt, https://download.geonames.org/export/dump/countryInfo.txt
Reviewing the 17 file(s) in the AUR repository.
Reviewing the AUR repository's files...
[0/17] Reviewing .SRCINFO...
[0/17] Reviewing .SRCINFO, .git-blame-ignore-revs...
[0/17] Reviewing .SRCINFO, .git-blame-ignore-revs, .gitignore...
LLM auditresponse for .gitignore:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard `.gitignore` file used in a Git repository. It lists files and directories that should be ignored by version control, such as tarballs, package archives, log files, and data files. There is no executable code, no network operations, and no obfuscation. The content is entirely benign and consistent with normal packaging workflows.
</details>
<evidence></evidence>
<summary>Standard gitignore file with no security concerns.</summary>
</security_assessment>

[1/17] Reviewing .SRCINFO, .git-blame-ignore-revs...
+ Reviewed .gitignore. Status: SAFE -- Standard gitignore file with no security concerns.
[1/17] Reviewing .SRCINFO, .git-blame-ignore-revs, BREAKING CHANGELOG.md...
LLM auditresponse for .git-blame-ignore-revs:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a Git configuration file used to suppress specific commits from `git blame` output. It contains only a single commit hash and a blank line. There is no executable code, no network operations, no obfuscation, and no mechanism for supply-chain interference. It poses no security risk.
</details>
<evidence></evidence>
<summary>Benign Git ignore-revs file with no security concerns.</summary>
</security_assessment>

[1/17] Reviewing .SRCINFO, .git-blame-ignore-revs, BREAKING CHANGELOG.md, LICENSE...
[2/17] Reviewing .SRCINFO, BREAKING CHANGELOG.md, LICENSE...
+ Reviewed .git-blame-ignore-revs. Status: SAFE -- Benign Git ignore-revs file with no security concerns.
LLM auditresponse for BREAKING CHANGELOG.md:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a plain text changelog (BREAKING CHANGELOG.md) containing only a summary statement and a “None currently.” line. There is no executable code, no obfuscation, no network requests, and no system modifications. The content is purely documentation and poses no security risk.
</details>
<evidence></evidence>
<summary>Plain text changelog, no code or threats.</summary>
</security_assessment>

[2/17] Reviewing .SRCINFO, BREAKING CHANGELOG.md, LICENSE, PKGBUILD...
[3/17] Reviewing .SRCINFO, LICENSE, PKGBUILD...
+ Reviewed BREAKING CHANGELOG.md. Status: SAFE -- Plain text changelog, no code or threats.
LLM auditresponse for .SRCINFO:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is an AUR .SRCINFO metadata file for the immich package (self-hosted photos/videos backup tool). It defines package metadata, dependencies, sources, and checksums. All remote sources originate from the project&#x27;s own GitHub repository or from well-known third-party data providers (geonames.org, raw.githubusercontent.com/nvkelso/natural-earth-vector) that are plausibly related to the application&#x27;s geo-tagging functionality. The SKIP checksums on some data sources are a standard practice in AUR packaging for frequently updated or VCS sources and do not indicate malicious activity. No obfuscated code, unexpected network requests, system modifications, or any executable instructions are present in this metadata-only file. The file contains no commands or scripts that could perform exfiltration, backdoor installation, or other dangerous operations.
</details>
<evidence></evidence>
<summary>Standard package metadata, no malicious code detected.</summary>
</security_assessment>

[3/17] Reviewing .SRCINFO, LICENSE, PKGBUILD, REUSE.toml...
[4/17] Reviewing LICENSE, PKGBUILD, REUSE.toml...
+ Reviewed .SRCINFO. Status: SAFE -- Standard package metadata, no malicious code detected.
LLM auditresponse for LICENSE:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a standard software license (ISC-like). It contains no executable code, no network requests, no file operations, no obfuscation, and no suspicious content. There are no security concerns.
</details>
<evidence></evidence>
<summary>Standard license file, no security issues.</summary>
</security_assessment>

[4/17] Reviewing LICENSE, PKGBUILD, REUSE.toml, immich-server.install...
[5/17] Reviewing PKGBUILD, REUSE.toml, immich-server.install...
+ Reviewed LICENSE. Status: SAFE -- Standard license file, no security issues.
LLM auditresponse for REUSE.toml:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a REUSE configuration file (TOML format) that declares copyright and license metadata for various files in the repository. It contains no executable code, network requests, obfuscated content, file operations, or any instructions that could modify the system. The content is purely declarative and follows standard practices for license compliance. No supply‑chain attack indicators or unusual behaviors are present.
</details>
<evidence></evidence>
<summary>Declarative metadata file; no executable or dangerous content.</summary>
</security_assessment>

[5/17] Reviewing PKGBUILD, REUSE.toml, immich-server.install, immich-server.service...
[6/17] Reviewing PKGBUILD, immich-server.install, immich-server.service...
+ Reviewed REUSE.toml. Status: SAFE -- Declarative metadata file; no executable or dangerous content.
LLM auditresponse for immich-server.install:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard Arch Linux .install script for the immich-server package. It contains only informational echo messages that guide the user through post-installation setup steps (configuring PostgreSQL, nginx, hosts, services, and firewall) and a version-checked upgrade notice about a separate package (immich-machine-learning). There are no network requests, file modifications, obfuscated commands, or any operations that could exfiltrate data, execute arbitrary code, or deviate from normal packaging practices. All functions are either no-ops or print static messages. The script poses no security threat.
</details>
<evidence></evidence>
<summary>Standard install script, no malicious content.</summary>
</security_assessment>

[7/17] Reviewing PKGBUILD, immich-server.service...
+ Reviewed immich-server.install. Status: SAFE -- Standard install script, no malicious content.
[7/17] Reviewing PKGBUILD, immich-server.service, immich.conf...
LLM auditresponse for immich-server.service:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a systemd service unit for the Immich server. It uses standard security hardening directives such as `ProtectHome=true`, `ProtectSystem=strict`, `NoNewPrivileges=yes`, and `RestrictNamespaces=yes`. The `ExecStart` runs the node application normally. The `BindReadOnlyPaths` directive maps specific ffmpeg binaries from the jellyfin-ffmpeg package, which is a packaging choice and not a malicious action. There is no evidence of network requests, obfuscated code, data exfiltration, or any other supply-chain attack indicators. The file is consistent with legitimate packaging practices.
</details>
<evidence>
</evidence>
<summary>Standard systemd service file, no malicious content.</summary>
</security_assessment>

[7/17] Reviewing PKGBUILD, immich-server.service, immich.conf, immich.sysusers...
[8/17] Reviewing PKGBUILD, immich.conf, immich.sysusers...
+ Reviewed immich-server.service. Status: SAFE -- Standard systemd service file, no malicious content.
LLM auditresponse for immich.conf:
<security_assessment>
<decision>SAFE</decision>
<details>
The file is a plain-text configuration file for the immich application. It contains environment variable settings for database, Redis, media storage location, and machine learning configuration. There is no executable code, no obfuscation, no network requests, no file operations, and no system modifications. The content is consistent with standard upstream configuration for immich. No evidence of malicious or dangerous behavior.
</details>
<evidence>
</evidence>
<summary>
Configuration file with no malicious content.
</summary>
</security_assessment>

[8/17] Reviewing PKGBUILD, immich.conf, immich.sysusers, immich.tmpfiles...
[9/17] Reviewing PKGBUILD, immich.sysusers, immich.tmpfiles...
+ Reviewed immich.conf. Status: SAFE -- Configuration file with no malicious content.
LLM auditresponse for immich.sysusers:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard systemd sysusers configuration file that defines a system user `immich` and adds it to the supplementary groups `redis` and `valkey`. Such files are commonly used in Arch Linux packages to create service users with appropriate group memberships. There is no executable code, no network requests, no obfuscation, and no deviation from normal packaging practices. The file is safe.
</details>
<evidence>
</evidence>
<summary>Standard sysusers config; no security issues.</summary>
</security_assessment>

[9/17] Reviewing PKGBUILD, immich.sysusers, immich.tmpfiles, nest-cli.json.patch...
[10/17] Reviewing PKGBUILD, immich.tmpfiles, nest-cli.json.patch...
+ Reviewed immich.sysusers. Status: SAFE -- Standard sysusers config; no security issues.
LLM auditresponse for nest-cli.json.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard patch file for a NestJS configuration. It changes a plugin name from `@nestjs/swagger` to `@nestjs/swagger/plugin`, which is a legitimate plugin path for the NestJS Swagger module. There is no malicious code, obfuscation, network activity, or any deviation from normal packaging practices. The patch simply modifies a JSON configuration file.
</details>
<evidence>
</evidence>
<summary>Routine configuration patch, no security issues.</summary>
</security_assessment>

[10/17] Reviewing PKGBUILD, immich.tmpfiles, nest-cli.json.patch, nginx.immich.conf...
[11/17] Reviewing PKGBUILD, immich.tmpfiles, nginx.immich.conf...
+ Reviewed nest-cli.json.patch. Status: SAFE -- Routine configuration patch, no security issues.
LLM auditresponse for immich.tmpfiles:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is a standard systemd-tmpfiles configuration (tmpfiles.d) that defines directories, a symbolic link, and recursive ownership/permissions for the Immich application runtime state. The rules only create directories under /var/lib/immich and /var/lib/immich-revgeo, set ownership to the `immich` user, and link a runtime path to the upload directory. There are no network requests, no obfuscated or encoded code, no execution of arbitrary commands, and no exfiltration of data. The content follows the expected tmpfiles.d format and does not exhibit any malicious behavior.
</details>
<evidence></evidence>
<summary>Standard tmpfiles configuration, no threats.</summary>
</security_assessment>

[11/17] Reviewing PKGBUILD, immich.tmpfiles, nginx.immich.conf, postgres-path.patch...
[12/17] Reviewing PKGBUILD, nginx.immich.conf, postgres-path.patch...
+ Reviewed immich.tmpfiles. Status: SAFE -- Standard tmpfiles configuration, no threats.
LLM auditresponse for nginx.immich.conf:
<security_assessment>
<decision>SAFE</decision>
<details>
This file is an nginx configuration snippet for the Immich application. It sets up a reverse proxy to `localhost:2283` with standard proxy headers and compression settings. There is no executable code, no network requests initiated by this file, no obfuscation, and no system modifications. The configuration is adapted from the official Immich repository and contains only benign nginx directives. No indicators of malicious behavior are present.
</details>
<evidence></evidence>
<summary>Standard nginx config, no security issues.</summary>
</security_assessment>

[12/17] Reviewing PKGBUILD, nginx.immich.conf, postgres-path.patch, sh-serverhome.patch...
[13/17] Reviewing PKGBUILD, postgres-path.patch, sh-serverhome.patch...
+ Reviewed nginx.immich.conf. Status: SAFE -- Standard nginx config, no security issues.
LLM auditresponse for postgres-path.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
This is a standard patch that adjusts PostgreSQL binary paths from the upstream layout (`/usr/lib/postgresql/${version}/bin/`) to Arch Linux's layout (`/usr/bin/`). It performs only straightforward string substitutions across TypeScript source files (the main service and its test spec). There is no obfuscated code, no network operations, no file exfiltration, and no execution of untrusted content. The patch is a routine packaging adjustment to match the distribution's filesystem hierarchy, which is normal and expected for AUR packages.
</details>
<evidence></evidence>
<summary>Routine path adaptation patch - no security issues.</summary>
</security_assessment>

[14/17] Reviewing PKGBUILD, sh-serverhome.patch...
+ Reviewed postgres-path.patch. Status: SAFE -- Routine path adaptation patch - no security issues.
[14/17] Reviewing PKGBUILD, sh-serverhome.patch, sharp.patch...
LLM auditresponse for sh-serverhome.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
This patch modifies the Immich server start script to adapt it to the Arch Linux package's installation structure. The changes are standard packaging adjustments: replacing a dynamic SERVER_HOME computation with a hardcoded path pointing to the expected installation directory, and adding a jellyfin-ffmpeg library path to LD_LIBRARY_PATH (likely to satisfy runtime dependencies). There is no evidence of malicious behavior, obfuscation, network requests, or execution of untrusted code. The patch is consistent with routine AUR packaging practices.
</details>
<evidence>
</evidence>
<summary>Routine packaging patch; no malicious indicators.</summary>
</security_assessment>

[15/17] Reviewing PKGBUILD, sharp.patch...
+ Reviewed sh-serverhome.patch. Status: SAFE -- Routine packaging patch; no malicious indicators.
LLM auditresponse for sharp.patch:
<security_assessment>
<decision>SAFE</decision>
<details>
The patch adds an `"install"` script to the sharp package&#39;s `package.json` that simply runs the existing build script (`pnpm run build`). This is a common and expected modification for AUR packages that need to ensure native modules are compiled during installation. There is no malicious behavior: no network requests to unexpected hosts, no obfuscated code, no file exfiltration, and no execution of attacker-controlled content. The change is entirely consistent with standard packaging practices for Node.js native addons.
</details>
<evidence></evidence>
<summary>Standard patch adding install hook for native build.</summary>
</security_assessment>

[16/17] Reviewing PKGBUILD...
+ Reviewed sharp.patch. Status: SAFE -- Standard patch adding install hook for native build.
LLM auditresponse for PKGBUILD:
<security_assessment>
<decision>SAFE</decision>
<details>
This PKGBUILD follows standard AUR packaging patterns for a Node.js monorepo split into server and CLI subpackages. It fetches the upstream source tarball and several geodata files from official locations (github.com/immich-app, geonames.org, nvkelso/natural-earth-vector), applies three local patches, and uses `pnpm` to install dependencies and build the project. No obfuscated code, no network requests to unexpected hosts, no execution of unverified remote content, and no exfiltration of local data is present. The geodata sources have SKIP checksums and are not pinned to specific commits; while this is a supply-chain transparency concern, it is explicitly excluded as a sole criterion for marking UNSAFE. All operations are consistent with building and installing the immutable software described.
</details>
<evidence>
</evidence>
<summary>Standard PKGBUILD; no evidence of malicious code injection.</summary>
</security_assessment>

[17/17] Reviewing ...
+ Reviewed PKGBUILD. Status: SAFE -- Standard PKGBUILD; no evidence of malicious code injection.
Reviewed all the AUR repository's files.
Audit complete! Result: No issues found
API Usage Summary
  Models: deepseek/deepseek-v4-flash
  Prompt Tokens: 49,972
  Completion Tokens: 10,968
  Total Tokens: 60,940
  Total Cost: $0.006472
  Execution Time: 78.40 seconds

Final Status: SAFE


No issues found.
